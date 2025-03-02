package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.MediaCodecUtil;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.drm.FrameworkMediaCrypto;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.TraceUtil;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

@TargetApi(16)
/* loaded from: classes.dex */
public abstract class MediaCodecTrackRenderer extends SampleSourceTrackRenderer {
    private static final byte[] ADAPTATION_WORKAROUND_BUFFER = Util.getBytesFromHexString("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private static final int ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT = 32;
    private static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    protected static final int SOURCE_STATE_NOT_READY = 0;
    protected static final int SOURCE_STATE_READY = 1;
    protected static final int SOURCE_STATE_READY_READ_MAY_FAIL = 2;
    private MediaCodec codec;
    public final CodecCounters codecCounters;
    private long codecHotswapTimeMs;
    private boolean codecIsAdaptive;
    private boolean codecNeedsAdaptationWorkaround;
    private boolean codecNeedsAdaptationWorkaroundBuffer;
    private boolean codecNeedsDiscardToSpsWorkaround;
    private boolean codecNeedsEosFlushWorkaround;
    private boolean codecNeedsEosPropagationWorkaround;
    private boolean codecNeedsFlushWorkaround;
    private boolean codecNeedsMonoChannelCountWorkaround;
    private boolean codecReceivedBuffers;
    private boolean codecReceivedEos;
    private int codecReconfigurationState;
    private boolean codecReconfigured;
    private int codecReinitializationState;
    private final List<Long> decodeOnlyPresentationTimestamps;
    private final boolean deviceNeedsAutoFrcWorkaround;
    private DrmInitData drmInitData;
    private final DrmSessionManager<FrameworkMediaCrypto> drmSessionManager;
    protected final Handler eventHandler;
    private final EventListener eventListener;
    private MediaFormat format;
    private final MediaFormatHolder formatHolder;
    private ByteBuffer[] inputBuffers;
    private int inputIndex;
    private boolean inputStreamEnded;
    private final MediaCodecSelector mediaCodecSelector;
    private boolean openedDrmSession;
    private final MediaCodec.BufferInfo outputBufferInfo;
    private ByteBuffer[] outputBuffers;
    private int outputIndex;
    private boolean outputStreamEnded;
    private final boolean playClearSamplesWithoutKeys;
    private final SampleHolder sampleHolder;
    private boolean shouldSkipAdaptationWorkaroundOutputBuffer;
    private int sourceState;
    private boolean waitingForFirstSyncFrame;
    private boolean waitingForKeys;

    public interface EventListener {
        void onCryptoError(MediaCodec.CryptoException cryptoException);

        void onDecoderInitializationError(DecoderInitializationException decoderInitializationException);

        void onDecoderInitialized(String str, long j, long j2);
    }

    protected abstract void configureCodec(MediaCodec mediaCodec, boolean z, android.media.MediaFormat mediaFormat, MediaCrypto mediaCrypto);

    protected abstract boolean handlesTrack(MediaCodecSelector mediaCodecSelector, MediaFormat mediaFormat);

    protected abstract boolean processOutputBuffer(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, int i, boolean z);

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final String decoderName;
        public final String diagnosticInfo;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable th, boolean z, int i) {
            super("Decoder init failed: [" + i + "], " + mediaFormat, th);
            this.mimeType = mediaFormat.mimeType;
            this.secureDecoderRequired = z;
            this.decoderName = null;
            this.diagnosticInfo = buildCustomDiagnosticInfo(i);
        }

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable th, boolean z, String str) {
            super("Decoder init failed: " + str + ", " + mediaFormat, th);
            this.mimeType = mediaFormat.mimeType;
            this.secureDecoderRequired = z;
            this.decoderName = str;
            this.diagnosticInfo = Util.SDK_INT >= 21 ? getDiagnosticInfoV21(th) : null;
        }

        @TargetApi(21)
        private static String getDiagnosticInfoV21(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        private static String buildCustomDiagnosticInfo(int i) {
            return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }
    }

    public MediaCodecTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, boolean z, Handler handler, EventListener eventListener) {
        this(new SampleSource[]{sampleSource}, mediaCodecSelector, drmSessionManager, z, handler, eventListener);
    }

    public MediaCodecTrackRenderer(SampleSource[] sampleSourceArr, MediaCodecSelector mediaCodecSelector, DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, boolean z, Handler handler, EventListener eventListener) {
        super(sampleSourceArr);
        Assertions.checkState(Util.SDK_INT >= 16);
        this.mediaCodecSelector = (MediaCodecSelector) Assertions.checkNotNull(mediaCodecSelector);
        this.drmSessionManager = drmSessionManager;
        this.playClearSamplesWithoutKeys = z;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.deviceNeedsAutoFrcWorkaround = deviceNeedsAutoFrcWorkaround();
        this.codecCounters = new CodecCounters();
        this.sampleHolder = new SampleHolder(0);
        this.formatHolder = new MediaFormatHolder();
        this.decodeOnlyPresentationTimestamps = new ArrayList();
        this.outputBufferInfo = new MediaCodec.BufferInfo();
        this.codecReconfigurationState = 0;
        this.codecReinitializationState = 0;
    }

    @Override // com.google.android.exoplayer.SampleSourceTrackRenderer
    protected final boolean handlesTrack(MediaFormat mediaFormat) {
        return handlesTrack(this.mediaCodecSelector, mediaFormat);
    }

    protected DecoderInfo getDecoderInfo(MediaCodecSelector mediaCodecSelector, String str, boolean z) {
        return mediaCodecSelector.getDecoderInfo(str, z);
    }

    protected final void maybeInitCodec() {
        boolean z;
        MediaCrypto mediaCrypto;
        DecoderInfo decoderInfo;
        if (shouldInitCodec()) {
            String str = this.format.mimeType;
            if (this.drmInitData == null) {
                z = false;
                mediaCrypto = null;
            } else {
                if (this.drmSessionManager == null) {
                    throw new ExoPlaybackException("Media requires a DrmSessionManager");
                }
                if (!this.openedDrmSession) {
                    this.drmSessionManager.open(this.drmInitData);
                    this.openedDrmSession = true;
                }
                int state = this.drmSessionManager.getState();
                if (state == 0) {
                    throw new ExoPlaybackException(this.drmSessionManager.getError());
                }
                if (state == 3 || state == 4) {
                    MediaCrypto wrappedMediaCrypto = this.drmSessionManager.getMediaCrypto().getWrappedMediaCrypto();
                    z = this.drmSessionManager.requiresSecureDecoderComponent(str);
                    mediaCrypto = wrappedMediaCrypto;
                } else {
                    return;
                }
            }
            try {
                decoderInfo = getDecoderInfo(this.mediaCodecSelector, str, z);
            } catch (MediaCodecUtil.DecoderQueryException e) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, e, z, -49998));
                decoderInfo = null;
            }
            if (decoderInfo == null) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, (Throwable) null, z, -49999));
            }
            String str2 = decoderInfo.name;
            this.codecIsAdaptive = decoderInfo.adaptive;
            this.codecNeedsDiscardToSpsWorkaround = codecNeedsDiscardToSpsWorkaround(str2, this.format);
            this.codecNeedsFlushWorkaround = codecNeedsFlushWorkaround(str2);
            this.codecNeedsAdaptationWorkaround = codecNeedsAdaptationWorkaround(str2);
            this.codecNeedsEosPropagationWorkaround = codecNeedsEosPropagationWorkaround(str2);
            this.codecNeedsEosFlushWorkaround = codecNeedsEosFlushWorkaround(str2);
            this.codecNeedsMonoChannelCountWorkaround = codecNeedsMonoChannelCountWorkaround(str2, this.format);
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                TraceUtil.beginSection("createByCodecName(" + str2 + ")");
                this.codec = MediaCodec.createByCodecName(str2);
                TraceUtil.endSection();
                TraceUtil.beginSection("configureCodec");
                configureCodec(this.codec, decoderInfo.adaptive, getFrameworkMediaFormat(this.format), mediaCrypto);
                TraceUtil.endSection();
                TraceUtil.beginSection("codec.start()");
                this.codec.start();
                TraceUtil.endSection();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                notifyDecoderInitialized(str2, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                this.inputBuffers = this.codec.getInputBuffers();
                this.outputBuffers = this.codec.getOutputBuffers();
            } catch (Exception e2) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, e2, z, str2));
            }
            this.codecHotswapTimeMs = getState() == 3 ? SystemClock.elapsedRealtime() : -1L;
            this.inputIndex = -1;
            this.outputIndex = -1;
            this.waitingForFirstSyncFrame = true;
            this.codecCounters.codecInitCount++;
        }
    }

    private void notifyAndThrowDecoderInitError(DecoderInitializationException decoderInitializationException) {
        notifyDecoderInitializationError(decoderInitializationException);
        throw new ExoPlaybackException(decoderInitializationException);
    }

    protected boolean shouldInitCodec() {
        return this.codec == null && this.format != null;
    }

    protected final boolean codecInitialized() {
        return this.codec != null;
    }

    protected final boolean haveFormat() {
        return this.format != null;
    }

    @Override // com.google.android.exoplayer.SampleSourceTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
        this.format = null;
        this.drmInitData = null;
        try {
            releaseCodec();
            try {
                if (this.openedDrmSession) {
                    this.drmSessionManager.close();
                    this.openedDrmSession = false;
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                if (this.openedDrmSession) {
                    this.drmSessionManager.close();
                    this.openedDrmSession = false;
                }
                throw th;
            } finally {
            }
        }
    }

    protected void releaseCodec() {
        if (this.codec != null) {
            this.codecHotswapTimeMs = -1L;
            this.inputIndex = -1;
            this.outputIndex = -1;
            this.waitingForKeys = false;
            this.decodeOnlyPresentationTimestamps.clear();
            this.inputBuffers = null;
            this.outputBuffers = null;
            this.codecReconfigured = false;
            this.codecReceivedBuffers = false;
            this.codecIsAdaptive = false;
            this.codecNeedsDiscardToSpsWorkaround = false;
            this.codecNeedsFlushWorkaround = false;
            this.codecNeedsAdaptationWorkaround = false;
            this.codecNeedsEosPropagationWorkaround = false;
            this.codecNeedsEosFlushWorkaround = false;
            this.codecNeedsMonoChannelCountWorkaround = false;
            this.codecNeedsAdaptationWorkaroundBuffer = false;
            this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
            this.codecReceivedEos = false;
            this.codecReconfigurationState = 0;
            this.codecReinitializationState = 0;
            this.codecCounters.codecReleaseCount++;
            try {
                this.codec.stop();
                try {
                    this.codec.release();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.codec.release();
                    throw th;
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.exoplayer.SampleSourceTrackRenderer
    protected void onDiscontinuity(long j) {
        this.sourceState = 0;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        if (this.codec != null) {
            flushCodec();
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onStarted() {
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onStopped() {
    }

    @Override // com.google.android.exoplayer.SampleSourceTrackRenderer
    protected void doSomeWork(long j, long j2, boolean z) {
        int i;
        if (z) {
            i = this.sourceState == 0 ? 1 : this.sourceState;
        } else {
            i = 0;
        }
        this.sourceState = i;
        if (this.format == null) {
            readFormat(j);
        }
        maybeInitCodec();
        if (this.codec != null) {
            TraceUtil.beginSection("drainAndFeed");
            while (drainOutputBuffer(j, j2)) {
            }
            if (feedInputBuffer(j, true)) {
                while (feedInputBuffer(j, false)) {
                }
            }
            TraceUtil.endSection();
        }
        this.codecCounters.ensureUpdated();
    }

    private void readFormat(long j) {
        if (readSource(j, this.formatHolder, null) == -4) {
            onInputFormatChanged(this.formatHolder);
        }
    }

    protected void flushCodec() {
        this.codecHotswapTimeMs = -1L;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.waitingForFirstSyncFrame = true;
        this.waitingForKeys = false;
        this.decodeOnlyPresentationTimestamps.clear();
        this.codecNeedsAdaptationWorkaroundBuffer = false;
        this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
        if (this.codecNeedsFlushWorkaround || (this.codecNeedsEosFlushWorkaround && this.codecReceivedEos)) {
            releaseCodec();
            maybeInitCodec();
        } else if (this.codecReinitializationState != 0) {
            releaseCodec();
            maybeInitCodec();
        } else {
            this.codec.flush();
            this.codecReceivedBuffers = false;
        }
        if (this.codecReconfigured && this.format != null) {
            this.codecReconfigurationState = 1;
        }
    }

    private boolean feedInputBuffer(long j, boolean z) {
        int readSource;
        if (this.inputStreamEnded || this.codecReinitializationState == 2) {
            return false;
        }
        if (this.inputIndex < 0) {
            this.inputIndex = this.codec.dequeueInputBuffer(0L);
            if (this.inputIndex < 0) {
                return false;
            }
            this.sampleHolder.data = this.inputBuffers[this.inputIndex];
            this.sampleHolder.clearData();
        }
        if (this.codecReinitializationState == 1) {
            if (!this.codecNeedsEosPropagationWorkaround) {
                this.codecReceivedEos = true;
                this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                this.inputIndex = -1;
            }
            this.codecReinitializationState = 2;
            return false;
        }
        if (this.codecNeedsAdaptationWorkaroundBuffer) {
            this.codecNeedsAdaptationWorkaroundBuffer = false;
            this.sampleHolder.data.put(ADAPTATION_WORKAROUND_BUFFER);
            this.codec.queueInputBuffer(this.inputIndex, 0, ADAPTATION_WORKAROUND_BUFFER.length, 0L, 0);
            this.inputIndex = -1;
            this.codecReceivedBuffers = true;
            return true;
        }
        if (this.waitingForKeys) {
            readSource = -3;
        } else {
            if (this.codecReconfigurationState == 1) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= this.format.initializationData.size()) {
                        break;
                    }
                    this.sampleHolder.data.put(this.format.initializationData.get(i2));
                    i = i2 + 1;
                }
                this.codecReconfigurationState = 2;
            }
            readSource = readSource(j, this.formatHolder, this.sampleHolder);
            if (z && this.sourceState == 1 && readSource == -2) {
                this.sourceState = 2;
            }
        }
        if (readSource == -2) {
            return false;
        }
        if (readSource == -4) {
            if (this.codecReconfigurationState == 2) {
                this.sampleHolder.clearData();
                this.codecReconfigurationState = 1;
            }
            onInputFormatChanged(this.formatHolder);
            return true;
        }
        if (readSource == -1) {
            if (this.codecReconfigurationState == 2) {
                this.sampleHolder.clearData();
                this.codecReconfigurationState = 1;
            }
            this.inputStreamEnded = true;
            if (!this.codecReceivedBuffers) {
                processEndOfStream();
                return false;
            }
            try {
                if (!this.codecNeedsEosPropagationWorkaround) {
                    this.codecReceivedEos = true;
                    this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                    this.inputIndex = -1;
                }
                return false;
            } catch (MediaCodec.CryptoException e) {
                notifyCryptoError(e);
                throw new ExoPlaybackException(e);
            }
        }
        if (this.waitingForFirstSyncFrame) {
            if (!this.sampleHolder.isSyncFrame()) {
                this.sampleHolder.clearData();
                if (this.codecReconfigurationState == 2) {
                    this.codecReconfigurationState = 1;
                }
                return true;
            }
            this.waitingForFirstSyncFrame = false;
        }
        boolean isEncrypted = this.sampleHolder.isEncrypted();
        this.waitingForKeys = shouldWaitForKeys(isEncrypted);
        if (this.waitingForKeys) {
            return false;
        }
        if (this.codecNeedsDiscardToSpsWorkaround && !isEncrypted) {
            NalUnitUtil.discardToSps(this.sampleHolder.data);
            if (this.sampleHolder.data.position() == 0) {
                return true;
            }
            this.codecNeedsDiscardToSpsWorkaround = false;
        }
        try {
            int position = this.sampleHolder.data.position();
            int i3 = position - this.sampleHolder.size;
            long j2 = this.sampleHolder.timeUs;
            if (this.sampleHolder.isDecodeOnly()) {
                this.decodeOnlyPresentationTimestamps.add(Long.valueOf(j2));
            }
            onQueuedInputBuffer(j2, this.sampleHolder.data, position, isEncrypted);
            if (isEncrypted) {
                this.codec.queueSecureInputBuffer(this.inputIndex, 0, getFrameworkCryptoInfo(this.sampleHolder, i3), j2, 0);
            } else {
                this.codec.queueInputBuffer(this.inputIndex, 0, position, j2, 0);
            }
            this.inputIndex = -1;
            this.codecReceivedBuffers = true;
            this.codecReconfigurationState = 0;
            this.codecCounters.inputBufferCount++;
            return true;
        } catch (MediaCodec.CryptoException e2) {
            notifyCryptoError(e2);
            throw new ExoPlaybackException(e2);
        }
    }

    private static MediaCodec.CryptoInfo getFrameworkCryptoInfo(SampleHolder sampleHolder, int i) {
        MediaCodec.CryptoInfo frameworkCryptoInfoV16 = sampleHolder.cryptoInfo.getFrameworkCryptoInfoV16();
        if (i != 0) {
            if (frameworkCryptoInfoV16.numBytesOfClearData == null) {
                frameworkCryptoInfoV16.numBytesOfClearData = new int[1];
            }
            int[] iArr = frameworkCryptoInfoV16.numBytesOfClearData;
            iArr[0] = iArr[0] + i;
        }
        return frameworkCryptoInfoV16;
    }

    private android.media.MediaFormat getFrameworkMediaFormat(MediaFormat mediaFormat) {
        android.media.MediaFormat frameworkMediaFormatV16 = mediaFormat.getFrameworkMediaFormatV16();
        if (this.deviceNeedsAutoFrcWorkaround) {
            frameworkMediaFormatV16.setInteger("auto-frc", 0);
        }
        return frameworkMediaFormatV16;
    }

    private boolean shouldWaitForKeys(boolean z) {
        if (!this.openedDrmSession) {
            return false;
        }
        int state = this.drmSessionManager.getState();
        if (state == 0) {
            throw new ExoPlaybackException(this.drmSessionManager.getError());
        }
        if (state != 4) {
            return z || !this.playClearSamplesWithoutKeys;
        }
        return false;
    }

    protected void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) {
        MediaFormat mediaFormat = this.format;
        this.format = mediaFormatHolder.format;
        this.drmInitData = mediaFormatHolder.drmInitData;
        if (!Util.areEqual(this.format, mediaFormat)) {
            if (this.codec != null && canReconfigureCodec(this.codec, this.codecIsAdaptive, mediaFormat, this.format)) {
                this.codecReconfigured = true;
                this.codecReconfigurationState = 1;
                this.codecNeedsAdaptationWorkaroundBuffer = this.codecNeedsAdaptationWorkaround && this.format.width == mediaFormat.width && this.format.height == mediaFormat.height;
            } else if (this.codecReceivedBuffers) {
                this.codecReinitializationState = 1;
            } else {
                releaseCodec();
                maybeInitCodec();
            }
        }
    }

    protected void onOutputFormatChanged(MediaCodec mediaCodec, android.media.MediaFormat mediaFormat) {
    }

    protected void onOutputStreamEnded() {
    }

    protected void onQueuedInputBuffer(long j, ByteBuffer byteBuffer, int i, boolean z) {
    }

    protected void onProcessedOutputBuffer(long j) {
    }

    protected boolean canReconfigureCodec(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        return false;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return (this.format == null || this.waitingForKeys || (this.sourceState == 0 && this.outputIndex < 0 && !isWithinHotswapPeriod())) ? false : true;
    }

    protected final int getSourceState() {
        return this.sourceState;
    }

    private boolean isWithinHotswapPeriod() {
        return SystemClock.elapsedRealtime() < this.codecHotswapTimeMs + MAX_CODEC_HOTSWAP_TIME_MS;
    }

    protected long getDequeueOutputBufferTimeoutUs() {
        return 0L;
    }

    private boolean drainOutputBuffer(long j, long j2) {
        if (this.outputStreamEnded) {
            return false;
        }
        if (this.outputIndex < 0) {
            this.outputIndex = this.codec.dequeueOutputBuffer(this.outputBufferInfo, getDequeueOutputBufferTimeoutUs());
        }
        if (this.outputIndex == -2) {
            processOutputFormat();
            return true;
        }
        if (this.outputIndex == -3) {
            this.outputBuffers = this.codec.getOutputBuffers();
            this.codecCounters.outputBuffersChangedCount++;
            return true;
        }
        if (this.outputIndex < 0) {
            if (this.codecNeedsEosPropagationWorkaround && (this.inputStreamEnded || this.codecReinitializationState == 2)) {
                processEndOfStream();
                return true;
            }
            return false;
        }
        if (this.shouldSkipAdaptationWorkaroundOutputBuffer) {
            this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
            this.codec.releaseOutputBuffer(this.outputIndex, false);
            this.outputIndex = -1;
            return true;
        }
        if ((this.outputBufferInfo.flags & 4) != 0) {
            processEndOfStream();
            return false;
        }
        int decodeOnlyIndex = getDecodeOnlyIndex(this.outputBufferInfo.presentationTimeUs);
        if (processOutputBuffer(j, j2, this.codec, this.outputBuffers[this.outputIndex], this.outputBufferInfo, this.outputIndex, decodeOnlyIndex != -1)) {
            onProcessedOutputBuffer(this.outputBufferInfo.presentationTimeUs);
            if (decodeOnlyIndex != -1) {
                this.decodeOnlyPresentationTimestamps.remove(decodeOnlyIndex);
            }
            this.outputIndex = -1;
            return true;
        }
        return false;
    }

    private void processOutputFormat() {
        android.media.MediaFormat outputFormat = this.codec.getOutputFormat();
        if (this.codecNeedsAdaptationWorkaround && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.shouldSkipAdaptationWorkaroundOutputBuffer = true;
            return;
        }
        if (this.codecNeedsMonoChannelCountWorkaround) {
            outputFormat.setInteger("channel-count", 1);
        }
        onOutputFormatChanged(this.codec, outputFormat);
        this.codecCounters.outputFormatChangedCount++;
    }

    private void processEndOfStream() {
        if (this.codecReinitializationState == 2) {
            releaseCodec();
            maybeInitCodec();
        } else {
            this.outputStreamEnded = true;
            onOutputStreamEnded();
        }
    }

    /* renamed from: com.google.android.exoplayer.MediaCodecTrackRenderer$1 */
    class RunnableC11741 implements Runnable {
        final /* synthetic */ DecoderInitializationException val$e;

        RunnableC11741(DecoderInitializationException decoderInitializationException) {
            decoderInitializationException = decoderInitializationException;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaCodecTrackRenderer.this.eventListener.onDecoderInitializationError(decoderInitializationException);
        }
    }

    private void notifyDecoderInitializationError(DecoderInitializationException decoderInitializationException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecTrackRenderer.1
                final /* synthetic */ DecoderInitializationException val$e;

                RunnableC11741(DecoderInitializationException decoderInitializationException2) {
                    decoderInitializationException = decoderInitializationException2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onDecoderInitializationError(decoderInitializationException);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.MediaCodecTrackRenderer$2 */
    class RunnableC11752 implements Runnable {
        final /* synthetic */ MediaCodec.CryptoException val$e;

        RunnableC11752(MediaCodec.CryptoException cryptoException) {
            cryptoException = cryptoException;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaCodecTrackRenderer.this.eventListener.onCryptoError(cryptoException);
        }
    }

    private void notifyCryptoError(MediaCodec.CryptoException cryptoException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecTrackRenderer.2
                final /* synthetic */ MediaCodec.CryptoException val$e;

                RunnableC11752(MediaCodec.CryptoException cryptoException2) {
                    cryptoException = cryptoException2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onCryptoError(cryptoException);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.MediaCodecTrackRenderer$3 */
    class RunnableC11763 implements Runnable {
        final /* synthetic */ String val$decoderName;
        final /* synthetic */ long val$initializationDuration;
        final /* synthetic */ long val$initializedTimestamp;

        RunnableC11763(String str, long j, long j2) {
            str = str;
            j = j;
            j2 = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaCodecTrackRenderer.this.eventListener.onDecoderInitialized(str, j, j2);
        }
    }

    private void notifyDecoderInitialized(String str, long j, long j2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecTrackRenderer.3
                final /* synthetic */ String val$decoderName;
                final /* synthetic */ long val$initializationDuration;
                final /* synthetic */ long val$initializedTimestamp;

                RunnableC11763(String str2, long j3, long j22) {
                    str = str2;
                    j = j3;
                    j2 = j22;
                }

                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onDecoderInitialized(str, j, j2);
                }
            });
        }
    }

    private int getDecodeOnlyIndex(long j) {
        int size = this.decodeOnlyPresentationTimestamps.size();
        for (int i = 0; i < size; i++) {
            if (this.decodeOnlyPresentationTimestamps.get(i).longValue() == j) {
                return i;
            }
        }
        return -1;
    }

    private static boolean codecNeedsFlushWorkaround(String str) {
        return Util.SDK_INT < 18 || (Util.SDK_INT == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (Util.SDK_INT == 19 && Util.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private static boolean codecNeedsAdaptationWorkaround(String str) {
        return Util.SDK_INT < 24 && ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) && (Util.DEVICE.equals("flounder") || Util.DEVICE.equals("flounder_lte") || Util.DEVICE.equals("grouper") || Util.DEVICE.equals("tilapia"));
    }

    private static boolean codecNeedsDiscardToSpsWorkaround(String str, MediaFormat mediaFormat) {
        return Util.SDK_INT < 21 && mediaFormat.initializationData.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private static boolean codecNeedsEosPropagationWorkaround(String str) {
        return Util.SDK_INT <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str));
    }

    private static boolean codecNeedsEosFlushWorkaround(String str) {
        return Util.SDK_INT <= 23 && "OMX.google.vorbis.decoder".equals(str);
    }

    private static boolean codecNeedsMonoChannelCountWorkaround(String str, MediaFormat mediaFormat) {
        return Util.SDK_INT <= 18 && mediaFormat.channelCount == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private static boolean deviceNeedsAutoFrcWorkaround() {
        return Util.SDK_INT <= 22 && "foster".equals(Util.DEVICE) && "NVIDIA".equals(Util.MANUFACTURER);
    }
}
