package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.exoplayer.MediaCodecTrackRenderer;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.audio.AudioTrack;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.drm.FrameworkMediaCrypto;
import com.google.android.exoplayer.util.MimeTypes;
import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

@TargetApi(16)
/* loaded from: classes.dex */
public class MediaCodecAudioTrackRenderer extends MediaCodecTrackRenderer implements MediaClock {
    public static final int MSG_SET_PLAYBACK_PARAMS = 2;
    public static final int MSG_SET_VOLUME = 1;
    private boolean allowPositionDiscontinuity;
    private int audioSessionId;
    private final AudioTrack audioTrack;
    private boolean audioTrackHasData;
    private long currentPositionUs;
    private final EventListener eventListener;
    private long lastFeedElapsedRealtimeMs;
    private boolean passthroughEnabled;
    private android.media.MediaFormat passthroughMediaFormat;
    private int pcmEncoding;

    public interface EventListener extends MediaCodecTrackRenderer.EventListener {
        void onAudioTrackInitializationError(AudioTrack.InitializationException initializationException);

        void onAudioTrackUnderrun(int i, long j, long j2);

        void onAudioTrackWriteError(AudioTrack.WriteException writeException);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector) {
        this(sampleSource, mediaCodecSelector, (DrmSessionManager) null, true);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean z) {
        this(sampleSource, mediaCodecSelector, drmSessionManager, z, null, null);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, Handler handler, EventListener eventListener) {
        this(sampleSource, mediaCodecSelector, null, true, handler, eventListener);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener) {
        this(sampleSource, mediaCodecSelector, drmSessionManager, z, handler, eventListener, (AudioCapabilities) null, 3);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener, AudioCapabilities audioCapabilities, int i) {
        this(new SampleSource[]{sampleSource}, mediaCodecSelector, drmSessionManager, z, handler, eventListener, audioCapabilities, i);
    }

    public MediaCodecAudioTrackRenderer(SampleSource[] sampleSourceArr, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener, AudioCapabilities audioCapabilities, int i) {
        super(sampleSourceArr, mediaCodecSelector, (DrmSessionManager<FrameworkMediaCrypto>) drmSessionManager, z, handler, eventListener);
        this.eventListener = eventListener;
        this.audioSessionId = 0;
        this.audioTrack = new AudioTrack(audioCapabilities, i);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean handlesTrack(MediaCodecSelector mediaCodecSelector, MediaFormat mediaFormat) {
        String str = mediaFormat.mimeType;
        if (MimeTypes.isAudio(str)) {
            return MimeTypes.AUDIO_UNKNOWN.equals(str) || (allowPassthrough(str) && mediaCodecSelector.getPassthroughDecoderInfo() != null) || mediaCodecSelector.getDecoderInfo(str, false) != null;
        }
        return false;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected DecoderInfo getDecoderInfo(MediaCodecSelector mediaCodecSelector, String str, boolean z) {
        DecoderInfo passthroughDecoderInfo;
        if (allowPassthrough(str) && (passthroughDecoderInfo = mediaCodecSelector.getPassthroughDecoderInfo()) != null) {
            this.passthroughEnabled = true;
            return passthroughDecoderInfo;
        }
        this.passthroughEnabled = false;
        return super.getDecoderInfo(mediaCodecSelector, str, z);
    }

    protected boolean allowPassthrough(String str) {
        return this.audioTrack.isPassthroughSupported(str);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void configureCodec(MediaCodec mediaCodec, boolean z, android.media.MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        String string = mediaFormat.getString(IMediaFormat.KEY_MIME);
        if (this.passthroughEnabled) {
            mediaFormat.setString(IMediaFormat.KEY_MIME, MimeTypes.AUDIO_RAW);
            mediaCodec.configure(mediaFormat, (Surface) null, mediaCrypto, 0);
            mediaFormat.setString(IMediaFormat.KEY_MIME, string);
            this.passthroughMediaFormat = mediaFormat;
            return;
        }
        mediaCodec.configure(mediaFormat, (Surface) null, mediaCrypto, 0);
        this.passthroughMediaFormat = null;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected MediaClock getMediaClock() {
        return this;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) {
        super.onInputFormatChanged(mediaFormatHolder);
        this.pcmEncoding = MimeTypes.AUDIO_RAW.equals(mediaFormatHolder.format.mimeType) ? mediaFormatHolder.format.pcmEncoding : 2;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void onOutputFormatChanged(MediaCodec mediaCodec, android.media.MediaFormat mediaFormat) {
        boolean z = this.passthroughMediaFormat != null;
        String string = z ? this.passthroughMediaFormat.getString(IMediaFormat.KEY_MIME) : MimeTypes.AUDIO_RAW;
        if (z) {
            mediaFormat = this.passthroughMediaFormat;
        }
        this.audioTrack.configure(string, mediaFormat.getInteger("channel-count"), mediaFormat.getInteger("sample-rate"), this.pcmEncoding);
    }

    protected void onAudioSessionId(int i) {
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onStarted() {
        super.onStarted();
        this.audioTrack.play();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onStopped() {
        this.audioTrack.pause();
        super.onStopped();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return super.isEnded() && !this.audioTrack.hasPendingData();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return this.audioTrack.hasPendingData() || super.isReady();
    }

    @Override // com.google.android.exoplayer.MediaClock
    public long getPositionUs() {
        long currentPositionUs = this.audioTrack.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                currentPositionUs = Math.max(this.currentPositionUs, currentPositionUs);
            }
            this.currentPositionUs = currentPositionUs;
            this.allowPositionDiscontinuity = false;
        }
        return this.currentPositionUs;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.SampleSourceTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
        this.audioSessionId = 0;
        try {
            this.audioTrack.release();
        } finally {
            super.onDisabled();
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.SampleSourceTrackRenderer
    protected void onDiscontinuity(long j) {
        super.onDiscontinuity(j);
        this.audioTrack.reset();
        this.currentPositionUs = j;
        this.allowPositionDiscontinuity = true;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean processOutputBuffer(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, int i, boolean z) {
        if (this.passthroughEnabled && (bufferInfo.flags & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        }
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.codecCounters.skippedOutputBufferCount++;
            this.audioTrack.handleDiscontinuity();
            return true;
        }
        if (!this.audioTrack.isInitialized()) {
            try {
                if (this.audioSessionId != 0) {
                    this.audioTrack.initialize(this.audioSessionId);
                } else {
                    this.audioSessionId = this.audioTrack.initialize();
                    onAudioSessionId(this.audioSessionId);
                }
                this.audioTrackHasData = false;
                if (getState() == 3) {
                    this.audioTrack.play();
                }
            } catch (AudioTrack.InitializationException e) {
                notifyAudioTrackInitializationError(e);
                throw new ExoPlaybackException(e);
            }
        } else {
            boolean z2 = this.audioTrackHasData;
            this.audioTrackHasData = this.audioTrack.hasPendingData();
            if (z2 && !this.audioTrackHasData && getState() == 3) {
                long elapsedRealtime = SystemClock.elapsedRealtime() - this.lastFeedElapsedRealtimeMs;
                long bufferSizeUs = this.audioTrack.getBufferSizeUs();
                notifyAudioTrackUnderrun(this.audioTrack.getBufferSize(), bufferSizeUs == -1 ? -1L : bufferSizeUs / 1000, elapsedRealtime);
            }
        }
        try {
            int handleBuffer = this.audioTrack.handleBuffer(byteBuffer, bufferInfo.offset, bufferInfo.size, bufferInfo.presentationTimeUs);
            this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
            if ((handleBuffer & 1) != 0) {
                handleAudioTrackDiscontinuity();
                this.allowPositionDiscontinuity = true;
            }
            if ((handleBuffer & 2) != 0) {
                mediaCodec.releaseOutputBuffer(i, false);
                this.codecCounters.renderedOutputBufferCount++;
                return true;
            }
            return false;
        } catch (AudioTrack.WriteException e2) {
            notifyAudioTrackWriteError(e2);
            throw new ExoPlaybackException(e2);
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void onOutputStreamEnded() {
        this.audioTrack.handleEndOfStream();
    }

    protected void handleAudioTrackDiscontinuity() {
    }

    @Override // com.google.android.exoplayer.TrackRenderer, com.google.android.exoplayer.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int i, Object obj) {
        switch (i) {
            case 1:
                this.audioTrack.setVolume(((Float) obj).floatValue());
                break;
            case 2:
                this.audioTrack.setPlaybackParams((PlaybackParams) obj);
                break;
            default:
                super.handleMessage(i, obj);
                break;
        }
    }

    /* renamed from: com.google.android.exoplayer.MediaCodecAudioTrackRenderer$1 */
    class RunnableC11701 implements Runnable {
        final /* synthetic */ AudioTrack.InitializationException val$e;

        RunnableC11701(AudioTrack.InitializationException initializationException) {
            initializationException = initializationException;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackInitializationError(initializationException);
        }
    }

    private void notifyAudioTrackInitializationError(AudioTrack.InitializationException initializationException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecAudioTrackRenderer.1
                final /* synthetic */ AudioTrack.InitializationException val$e;

                RunnableC11701(AudioTrack.InitializationException initializationException2) {
                    initializationException = initializationException2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackInitializationError(initializationException);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.MediaCodecAudioTrackRenderer$2 */
    class RunnableC11712 implements Runnable {
        final /* synthetic */ AudioTrack.WriteException val$e;

        RunnableC11712(AudioTrack.WriteException writeException) {
            writeException = writeException;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackWriteError(writeException);
        }
    }

    private void notifyAudioTrackWriteError(AudioTrack.WriteException writeException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecAudioTrackRenderer.2
                final /* synthetic */ AudioTrack.WriteException val$e;

                RunnableC11712(AudioTrack.WriteException writeException2) {
                    writeException = writeException2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackWriteError(writeException);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.MediaCodecAudioTrackRenderer$3 */
    class RunnableC11723 implements Runnable {
        final /* synthetic */ int val$bufferSize;
        final /* synthetic */ long val$bufferSizeMs;
        final /* synthetic */ long val$elapsedSinceLastFeedMs;

        RunnableC11723(int i, long j, long j2) {
            i = i;
            j = j;
            j2 = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackUnderrun(i, j, j2);
        }
    }

    private void notifyAudioTrackUnderrun(int i, long j, long j2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecAudioTrackRenderer.3
                final /* synthetic */ int val$bufferSize;
                final /* synthetic */ long val$bufferSizeMs;
                final /* synthetic */ long val$elapsedSinceLastFeedMs;

                RunnableC11723(int i2, long j3, long j22) {
                    i = i2;
                    j = j3;
                    j2 = j22;
                }

                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackUnderrun(i, j, j2);
                }
            });
        }
    }
}
