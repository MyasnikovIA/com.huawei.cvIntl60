package com.google.android.exoplayer.hls;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.LoadControl;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.chunk.BaseChunkSampleSourceEventListener;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;

/* loaded from: classes.dex */
public final class HlsSampleSource implements SampleSource, SampleSource.SampleSourceReader, Loader.Callback {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private static final long NO_RESET_PENDING = Long.MIN_VALUE;
    private static final int PRIMARY_TYPE_AUDIO = 2;
    private static final int PRIMARY_TYPE_NONE = 0;
    private static final int PRIMARY_TYPE_TEXT = 1;
    private static final int PRIMARY_TYPE_VIDEO = 3;
    private final int bufferSizeContribution;
    private final ChunkOperationHolder chunkOperationHolder;
    private final HlsChunkSource chunkSource;
    private int[] chunkSourceTrackIndices;
    private long currentLoadStartTimeMs;
    private Chunk currentLoadable;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private TsChunk currentTsLoadable;
    private Format downstreamFormat;
    private MediaFormat[] downstreamMediaFormats;
    private long downstreamPositionUs;
    private int enabledTrackCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private boolean[] extractorTrackEnabledStates;
    private int[] extractorTrackIndices;
    private final LinkedList<HlsExtractorWrapper> extractors;
    private long lastSeekPositionUs;
    private final LoadControl loadControl;
    private boolean loadControlRegistered;
    private Loader loader;
    private boolean loadingFinished;
    private final int minLoadableRetryCount;
    private boolean[] pendingDiscontinuities;
    private long pendingResetPositionUs;
    private boolean prepared;
    private TsChunk previousTsLoadable;
    private int remainingReleaseCount;
    private int trackCount;
    private boolean[] trackEnabledStates;
    private MediaFormat[] trackFormats;

    public interface EventListener extends BaseChunkSampleSourceEventListener {
    }

    public HlsSampleSource(HlsChunkSource hlsChunkSource, LoadControl loadControl, int i) {
        this(hlsChunkSource, loadControl, i, null, null, 0);
    }

    public HlsSampleSource(HlsChunkSource hlsChunkSource, LoadControl loadControl, int i, Handler handler, EventListener eventListener, int i2) {
        this(hlsChunkSource, loadControl, i, handler, eventListener, i2, 3);
    }

    public HlsSampleSource(HlsChunkSource hlsChunkSource, LoadControl loadControl, int i, Handler handler, EventListener eventListener, int i2, int i3) {
        this.chunkSource = hlsChunkSource;
        this.loadControl = loadControl;
        this.bufferSizeContribution = i;
        this.minLoadableRetryCount = i3;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.eventSourceId = i2;
        this.pendingResetPositionUs = Long.MIN_VALUE;
        this.extractors = new LinkedList<>();
        this.chunkOperationHolder = new ChunkOperationHolder();
    }

    @Override // com.google.android.exoplayer.SampleSource
    public SampleSource.SampleSourceReader register() {
        this.remainingReleaseCount++;
        return this;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean prepare(long j) {
        if (this.prepared) {
            return true;
        }
        if (!this.chunkSource.prepare()) {
            return false;
        }
        if (!this.extractors.isEmpty()) {
            while (true) {
                HlsExtractorWrapper first = this.extractors.getFirst();
                if (first.isPrepared()) {
                    buildTracks(first);
                    this.prepared = true;
                    maybeStartLoading();
                    return true;
                }
                if (this.extractors.size() <= 1) {
                    break;
                }
                this.extractors.removeFirst().clear();
            }
        }
        if (this.loader == null) {
            this.loader = new Loader("Loader:HLS");
            this.loadControl.register(this, this.bufferSizeContribution);
            this.loadControlRegistered = true;
        }
        if (!this.loader.isLoading()) {
            this.pendingResetPositionUs = j;
            this.downstreamPositionUs = j;
        }
        maybeStartLoading();
        return false;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int getTrackCount() {
        Assertions.checkState(this.prepared);
        return this.trackCount;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public MediaFormat getFormat(int i) {
        Assertions.checkState(this.prepared);
        return this.trackFormats[i];
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void enable(int i, long j) {
        Assertions.checkState(this.prepared);
        setTrackEnabledState(i, true);
        this.downstreamMediaFormats[i] = null;
        this.pendingDiscontinuities[i] = false;
        this.downstreamFormat = null;
        boolean z = this.loadControlRegistered;
        if (!this.loadControlRegistered) {
            this.loadControl.register(this, this.bufferSizeContribution);
            this.loadControlRegistered = true;
        }
        if (this.chunkSource.isLive()) {
            j = 0;
        }
        int i2 = this.chunkSourceTrackIndices[i];
        if (i2 != -1 && i2 != this.chunkSource.getSelectedTrackIndex()) {
            this.chunkSource.selectTrack(i2);
            seekToInternal(j);
        } else if (this.enabledTrackCount == 1) {
            this.lastSeekPositionUs = j;
            if (z && this.downstreamPositionUs == j) {
                maybeStartLoading();
            } else {
                this.downstreamPositionUs = j;
                restartFrom(j);
            }
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void disable(int i) {
        Assertions.checkState(this.prepared);
        setTrackEnabledState(i, false);
        if (this.enabledTrackCount == 0) {
            this.chunkSource.reset();
            this.downstreamPositionUs = Long.MIN_VALUE;
            if (this.loadControlRegistered) {
                this.loadControl.unregister(this);
                this.loadControlRegistered = false;
            }
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
            } else {
                clearState();
                this.loadControl.trimAllocator();
            }
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean continueBuffering(int i, long j) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackEnabledStates[i]);
        this.downstreamPositionUs = j;
        if (!this.extractors.isEmpty()) {
            discardSamplesForDisabledTracks(getCurrentExtractor(), this.downstreamPositionUs);
        }
        maybeStartLoading();
        if (this.loadingFinished) {
            return true;
        }
        if (isPendingReset() || this.extractors.isEmpty()) {
            return false;
        }
        for (int i2 = 0; i2 < this.extractors.size(); i2++) {
            HlsExtractorWrapper hlsExtractorWrapper = this.extractors.get(i2);
            if (!hlsExtractorWrapper.isPrepared()) {
                return false;
            }
            if (hlsExtractorWrapper.hasSamples(this.extractorTrackIndices[i])) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long readDiscontinuity(int i) {
        if (!this.pendingDiscontinuities[i]) {
            return Long.MIN_VALUE;
        }
        this.pendingDiscontinuities[i] = false;
        return this.lastSeekPositionUs;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        Assertions.checkState(this.prepared);
        this.downstreamPositionUs = j;
        if (this.pendingDiscontinuities[i] || isPendingReset()) {
            return -2;
        }
        HlsExtractorWrapper currentExtractor = getCurrentExtractor();
        if (!currentExtractor.isPrepared()) {
            return -2;
        }
        Format format = currentExtractor.format;
        if (!format.equals(this.downstreamFormat)) {
            notifyDownstreamFormatChanged(format, currentExtractor.trigger, currentExtractor.startTimeUs);
        }
        this.downstreamFormat = format;
        if (this.extractors.size() > 1) {
            currentExtractor.configureSpliceTo(this.extractors.get(1));
        }
        int i2 = this.extractorTrackIndices[i];
        int i3 = 0;
        HlsExtractorWrapper hlsExtractorWrapper = currentExtractor;
        while (this.extractors.size() > i3 + 1 && !hlsExtractorWrapper.hasSamples(i2)) {
            i3++;
            hlsExtractorWrapper = this.extractors.get(i3);
            if (!hlsExtractorWrapper.isPrepared()) {
                return -2;
            }
        }
        MediaFormat mediaFormat = hlsExtractorWrapper.getMediaFormat(i2);
        if (mediaFormat != null) {
            if (!mediaFormat.equals(this.downstreamMediaFormats[i])) {
                mediaFormatHolder.format = mediaFormat;
                this.downstreamMediaFormats[i] = mediaFormat;
                return -4;
            }
            this.downstreamMediaFormats[i] = mediaFormat;
        }
        if (!hlsExtractorWrapper.getSample(i2, sampleHolder)) {
            return this.loadingFinished ? -1 : -2;
        }
        sampleHolder.flags |= (sampleHolder.timeUs > this.lastSeekPositionUs ? 1 : (sampleHolder.timeUs == this.lastSeekPositionUs ? 0 : -1)) < 0 ? C1167C.SAMPLE_FLAG_DECODE_ONLY : 0;
        return -3;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void maybeThrowError() {
        if (this.currentLoadableException != null && this.currentLoadableExceptionCount > this.minLoadableRetryCount) {
            throw this.currentLoadableException;
        }
        if (this.currentLoadable == null) {
            this.chunkSource.maybeThrowError();
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void seekToUs(long j) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.enabledTrackCount > 0);
        if (this.chunkSource.isLive()) {
            j = 0;
        }
        long j2 = isPendingReset() ? this.pendingResetPositionUs : this.downstreamPositionUs;
        this.downstreamPositionUs = j;
        this.lastSeekPositionUs = j;
        if (j2 != j) {
            seekToInternal(j);
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long getBufferedPositionUs() {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.enabledTrackCount > 0);
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return -3L;
        }
        long largestParsedTimestampUs = this.extractors.getLast().getLargestParsedTimestampUs();
        long max = this.extractors.size() > 1 ? Math.max(largestParsedTimestampUs, this.extractors.get(this.extractors.size() - 2).getLargestParsedTimestampUs()) : largestParsedTimestampUs;
        return max == Long.MIN_VALUE ? this.downstreamPositionUs : max;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void release() {
        Assertions.checkState(this.remainingReleaseCount > 0);
        int i = this.remainingReleaseCount - 1;
        this.remainingReleaseCount = i;
        if (i == 0 && this.loader != null) {
            if (this.loadControlRegistered) {
                this.loadControl.unregister(this);
                this.loadControlRegistered = false;
            }
            this.loader.release();
            this.loader = null;
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Loader.Loadable loadable) {
        Assertions.checkState(loadable == this.currentLoadable);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.currentLoadStartTimeMs;
        this.chunkSource.onChunkLoadCompleted(this.currentLoadable);
        if (isTsChunk(this.currentLoadable)) {
            Assertions.checkState(this.currentLoadable == this.currentTsLoadable);
            this.previousTsLoadable = this.currentTsLoadable;
            notifyLoadCompleted(this.currentLoadable.bytesLoaded(), this.currentTsLoadable.type, this.currentTsLoadable.trigger, this.currentTsLoadable.format, this.currentTsLoadable.startTimeUs, this.currentTsLoadable.endTimeUs, elapsedRealtime, j);
        } else {
            notifyLoadCompleted(this.currentLoadable.bytesLoaded(), this.currentLoadable.type, this.currentLoadable.trigger, this.currentLoadable.format, -1L, -1L, elapsedRealtime, j);
        }
        clearCurrentLoadable();
        maybeStartLoading();
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Loader.Loadable loadable) {
        notifyLoadCanceled(this.currentLoadable.bytesLoaded());
        if (this.enabledTrackCount > 0) {
            restartFrom(this.pendingResetPositionUs);
        } else {
            clearState();
            this.loadControl.trimAllocator();
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        if (this.chunkSource.onChunkLoadError(this.currentLoadable, iOException)) {
            if (this.previousTsLoadable == null && !isPendingReset()) {
                this.pendingResetPositionUs = this.lastSeekPositionUs;
            }
            clearCurrentLoadable();
        } else {
            this.currentLoadableException = iOException;
            this.currentLoadableExceptionCount++;
            this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        }
        notifyLoadError(iOException);
        maybeStartLoading();
    }

    private void buildTracks(HlsExtractorWrapper hlsExtractorWrapper) {
        String str;
        int i;
        char c;
        char c2 = 0;
        int i2 = -1;
        int trackCount = hlsExtractorWrapper.getTrackCount();
        int i3 = 0;
        while (i3 < trackCount) {
            String str2 = hlsExtractorWrapper.getMediaFormat(i3).mimeType;
            if (MimeTypes.isVideo(str2)) {
                c = 3;
            } else if (MimeTypes.isAudio(str2)) {
                c = 2;
            } else if (MimeTypes.isText(str2)) {
                c = 1;
            } else {
                c = 0;
            }
            if (c > c2) {
                i2 = i3;
            } else if (c != c2 || i2 == -1) {
                c = c2;
            } else {
                i2 = -1;
                c = c2;
            }
            i3++;
            c2 = c;
        }
        int trackCount2 = this.chunkSource.getTrackCount();
        boolean z = i2 != -1;
        this.trackCount = trackCount;
        if (z) {
            this.trackCount += trackCount2 - 1;
        }
        this.trackFormats = new MediaFormat[this.trackCount];
        this.trackEnabledStates = new boolean[this.trackCount];
        this.pendingDiscontinuities = new boolean[this.trackCount];
        this.downstreamMediaFormats = new MediaFormat[this.trackCount];
        this.chunkSourceTrackIndices = new int[this.trackCount];
        this.extractorTrackIndices = new int[this.trackCount];
        this.extractorTrackEnabledStates = new boolean[trackCount];
        long durationUs = this.chunkSource.getDurationUs();
        int i4 = 0;
        int i5 = 0;
        while (i5 < trackCount) {
            MediaFormat copyWithDurationUs = hlsExtractorWrapper.getMediaFormat(i5).copyWithDurationUs(durationUs);
            if (MimeTypes.isAudio(copyWithDurationUs.mimeType)) {
                str = this.chunkSource.getMuxedAudioLanguage();
            } else if (!MimeTypes.APPLICATION_EIA608.equals(copyWithDurationUs.mimeType)) {
                str = null;
            } else {
                str = this.chunkSource.getMuxedCaptionLanguage();
            }
            if (i5 == i2) {
                int i6 = 0;
                while (i6 < trackCount2) {
                    this.extractorTrackIndices[i4] = i5;
                    this.chunkSourceTrackIndices[i4] = i6;
                    Variant fixedTrackVariant = this.chunkSource.getFixedTrackVariant(i6);
                    int i7 = i4 + 1;
                    this.trackFormats[i4] = fixedTrackVariant == null ? copyWithDurationUs.copyAsAdaptive(null) : copyWithFixedTrackInfo(copyWithDurationUs, fixedTrackVariant.format, str);
                    i6++;
                    i4 = i7;
                }
                i = i4;
            } else {
                this.extractorTrackIndices[i4] = i5;
                this.chunkSourceTrackIndices[i4] = -1;
                i = i4 + 1;
                this.trackFormats[i4] = copyWithDurationUs.copyWithLanguage(str);
            }
            i5++;
            i4 = i;
        }
    }

    private void setTrackEnabledState(int i, boolean z) {
        Assertions.checkState(this.trackEnabledStates[i] != z);
        int i2 = this.extractorTrackIndices[i];
        Assertions.checkState(this.extractorTrackEnabledStates[i2] != z);
        this.trackEnabledStates[i] = z;
        this.extractorTrackEnabledStates[i2] = z;
        this.enabledTrackCount += z ? 1 : -1;
    }

    private static MediaFormat copyWithFixedTrackInfo(MediaFormat mediaFormat, Format format, String str) {
        return mediaFormat.copyWithFixedTrackInfo(format.f5934id, format.bitrate, format.width == -1 ? -1 : format.width, format.height == -1 ? -1 : format.height, format.language == null ? str : format.language);
    }

    private void seekToInternal(long j) {
        this.lastSeekPositionUs = j;
        this.downstreamPositionUs = j;
        Arrays.fill(this.pendingDiscontinuities, true);
        this.chunkSource.seek();
        restartFrom(j);
    }

    private HlsExtractorWrapper getCurrentExtractor() {
        HlsExtractorWrapper hlsExtractorWrapper;
        HlsExtractorWrapper first = this.extractors.getFirst();
        while (true) {
            hlsExtractorWrapper = first;
            if (this.extractors.size() <= 1 || haveSamplesForEnabledTracks(hlsExtractorWrapper)) {
                break;
            }
            this.extractors.removeFirst().clear();
            first = this.extractors.getFirst();
        }
        return hlsExtractorWrapper;
    }

    private void discardSamplesForDisabledTracks(HlsExtractorWrapper hlsExtractorWrapper, long j) {
        if (hlsExtractorWrapper.isPrepared()) {
            for (int i = 0; i < this.extractorTrackEnabledStates.length; i++) {
                if (!this.extractorTrackEnabledStates[i]) {
                    hlsExtractorWrapper.discardUntil(i, j);
                }
            }
        }
    }

    private boolean haveSamplesForEnabledTracks(HlsExtractorWrapper hlsExtractorWrapper) {
        if (!hlsExtractorWrapper.isPrepared()) {
            return false;
        }
        for (int i = 0; i < this.extractorTrackEnabledStates.length; i++) {
            if (this.extractorTrackEnabledStates[i] && hlsExtractorWrapper.hasSamples(i)) {
                return true;
            }
        }
        return false;
    }

    private void restartFrom(long j) {
        this.pendingResetPositionUs = j;
        this.loadingFinished = false;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
        } else {
            clearState();
            maybeStartLoading();
        }
    }

    private void clearState() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.extractors.size()) {
                this.extractors.get(i2).clear();
                i = i2 + 1;
            } else {
                this.extractors.clear();
                clearCurrentLoadable();
                this.previousTsLoadable = null;
                return;
            }
        }
    }

    private void clearCurrentLoadable() {
        this.currentTsLoadable = null;
        this.currentLoadable = null;
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
    }

    private void maybeStartLoading() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long nextLoadPositionUs = getNextLoadPositionUs();
        boolean z = this.currentLoadableException != null;
        boolean update = this.loadControl.update(this, this.downstreamPositionUs, nextLoadPositionUs, this.loader.isLoading() || z);
        if (z) {
            if (elapsedRealtime - this.currentLoadableExceptionTimestamp >= getRetryDelayMillis(this.currentLoadableExceptionCount)) {
                this.currentLoadableException = null;
                this.loader.startLoading(this.currentLoadable, this);
                return;
            }
            return;
        }
        if (this.loader.isLoading() || !update) {
            return;
        }
        if (!this.prepared || this.enabledTrackCount != 0) {
            this.chunkSource.getChunkOperation(this.previousTsLoadable, this.pendingResetPositionUs != Long.MIN_VALUE ? this.pendingResetPositionUs : this.downstreamPositionUs, this.chunkOperationHolder);
            boolean z2 = this.chunkOperationHolder.endOfStream;
            Chunk chunk = this.chunkOperationHolder.chunk;
            this.chunkOperationHolder.clear();
            if (z2) {
                this.loadingFinished = true;
                this.loadControl.update(this, this.downstreamPositionUs, -1L, false);
                return;
            }
            if (chunk != null) {
                this.currentLoadStartTimeMs = elapsedRealtime;
                this.currentLoadable = chunk;
                if (isTsChunk(this.currentLoadable)) {
                    TsChunk tsChunk = (TsChunk) this.currentLoadable;
                    if (isPendingReset()) {
                        this.pendingResetPositionUs = Long.MIN_VALUE;
                    }
                    HlsExtractorWrapper hlsExtractorWrapper = tsChunk.extractorWrapper;
                    if (this.extractors.isEmpty() || this.extractors.getLast() != hlsExtractorWrapper) {
                        hlsExtractorWrapper.init(this.loadControl.getAllocator());
                        this.extractors.addLast(hlsExtractorWrapper);
                    }
                    notifyLoadStarted(tsChunk.dataSpec.length, tsChunk.type, tsChunk.trigger, tsChunk.format, tsChunk.startTimeUs, tsChunk.endTimeUs);
                    this.currentTsLoadable = tsChunk;
                } else {
                    notifyLoadStarted(this.currentLoadable.dataSpec.length, this.currentLoadable.type, this.currentLoadable.trigger, this.currentLoadable.format, -1L, -1L);
                }
                this.loader.startLoading(this.currentLoadable, this);
            }
        }
    }

    private long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished || (this.prepared && this.enabledTrackCount == 0)) {
            return -1L;
        }
        return this.currentTsLoadable != null ? this.currentTsLoadable.endTimeUs : this.previousTsLoadable.endTimeUs;
    }

    private boolean isTsChunk(Chunk chunk) {
        return chunk instanceof TsChunk;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != Long.MIN_VALUE;
    }

    private long getRetryDelayMillis(long j) {
        return Math.min((j - 1) * 1000, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }

    long usToMs(long j) {
        return j / 1000;
    }

    /* renamed from: com.google.android.exoplayer.hls.HlsSampleSource$1 */
    class RunnableC12111 implements Runnable {
        final /* synthetic */ Format val$format;
        final /* synthetic */ long val$length;
        final /* synthetic */ long val$mediaEndTimeUs;
        final /* synthetic */ long val$mediaStartTimeUs;
        final /* synthetic */ int val$trigger;
        final /* synthetic */ int val$type;

        RunnableC12111(long j, int i, int i2, Format format, long j2, long j3) {
            j = j;
            i = i;
            i2 = i2;
            format = format;
            j2 = j2;
            j3 = j3;
        }

        @Override // java.lang.Runnable
        public void run() {
            HlsSampleSource.this.eventListener.onLoadStarted(HlsSampleSource.this.eventSourceId, j, i, i2, format, HlsSampleSource.this.usToMs(j2), HlsSampleSource.this.usToMs(j3));
        }
    }

    private void notifyLoadStarted(long j, int i, int i2, Format format, long j2, long j3) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsSampleSource.1
                final /* synthetic */ Format val$format;
                final /* synthetic */ long val$length;
                final /* synthetic */ long val$mediaEndTimeUs;
                final /* synthetic */ long val$mediaStartTimeUs;
                final /* synthetic */ int val$trigger;
                final /* synthetic */ int val$type;

                RunnableC12111(long j4, int i3, int i22, Format format2, long j22, long j32) {
                    j = j4;
                    i = i3;
                    i2 = i22;
                    format = format2;
                    j2 = j22;
                    j3 = j32;
                }

                @Override // java.lang.Runnable
                public void run() {
                    HlsSampleSource.this.eventListener.onLoadStarted(HlsSampleSource.this.eventSourceId, j, i, i2, format, HlsSampleSource.this.usToMs(j2), HlsSampleSource.this.usToMs(j3));
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.hls.HlsSampleSource$2 */
    class RunnableC12122 implements Runnable {
        final /* synthetic */ long val$bytesLoaded;
        final /* synthetic */ long val$elapsedRealtimeMs;
        final /* synthetic */ Format val$format;
        final /* synthetic */ long val$loadDurationMs;
        final /* synthetic */ long val$mediaEndTimeUs;
        final /* synthetic */ long val$mediaStartTimeUs;
        final /* synthetic */ int val$trigger;
        final /* synthetic */ int val$type;

        RunnableC12122(long j, int i, int i2, Format format, long j2, long j3, long j4, long j5) {
            j = j;
            i = i;
            i2 = i2;
            format = format;
            j2 = j2;
            j3 = j3;
            j4 = j4;
            j5 = j5;
        }

        @Override // java.lang.Runnable
        public void run() {
            HlsSampleSource.this.eventListener.onLoadCompleted(HlsSampleSource.this.eventSourceId, j, i, i2, format, HlsSampleSource.this.usToMs(j2), HlsSampleSource.this.usToMs(j3), j4, j5);
        }
    }

    private void notifyLoadCompleted(long j, int i, int i2, Format format, long j2, long j3, long j4, long j5) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsSampleSource.2
                final /* synthetic */ long val$bytesLoaded;
                final /* synthetic */ long val$elapsedRealtimeMs;
                final /* synthetic */ Format val$format;
                final /* synthetic */ long val$loadDurationMs;
                final /* synthetic */ long val$mediaEndTimeUs;
                final /* synthetic */ long val$mediaStartTimeUs;
                final /* synthetic */ int val$trigger;
                final /* synthetic */ int val$type;

                RunnableC12122(long j6, int i3, int i22, Format format2, long j22, long j32, long j42, long j52) {
                    j = j6;
                    i = i3;
                    i2 = i22;
                    format = format2;
                    j2 = j22;
                    j3 = j32;
                    j4 = j42;
                    j5 = j52;
                }

                @Override // java.lang.Runnable
                public void run() {
                    HlsSampleSource.this.eventListener.onLoadCompleted(HlsSampleSource.this.eventSourceId, j, i, i2, format, HlsSampleSource.this.usToMs(j2), HlsSampleSource.this.usToMs(j3), j4, j5);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.hls.HlsSampleSource$3 */
    class RunnableC12133 implements Runnable {
        final /* synthetic */ long val$bytesLoaded;

        RunnableC12133(long j) {
            j = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            HlsSampleSource.this.eventListener.onLoadCanceled(HlsSampleSource.this.eventSourceId, j);
        }
    }

    private void notifyLoadCanceled(long j) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsSampleSource.3
                final /* synthetic */ long val$bytesLoaded;

                RunnableC12133(long j2) {
                    j = j2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    HlsSampleSource.this.eventListener.onLoadCanceled(HlsSampleSource.this.eventSourceId, j);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.hls.HlsSampleSource$4 */
    class RunnableC12144 implements Runnable {
        final /* synthetic */ IOException val$e;

        RunnableC12144(IOException iOException) {
            iOException = iOException;
        }

        @Override // java.lang.Runnable
        public void run() {
            HlsSampleSource.this.eventListener.onLoadError(HlsSampleSource.this.eventSourceId, iOException);
        }
    }

    private void notifyLoadError(IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsSampleSource.4
                final /* synthetic */ IOException val$e;

                RunnableC12144(IOException iOException2) {
                    iOException = iOException2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    HlsSampleSource.this.eventListener.onLoadError(HlsSampleSource.this.eventSourceId, iOException);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.hls.HlsSampleSource$5 */
    class RunnableC12155 implements Runnable {
        final /* synthetic */ Format val$format;
        final /* synthetic */ long val$positionUs;
        final /* synthetic */ int val$trigger;

        RunnableC12155(Format format, int i, long j) {
            format = format;
            i = i;
            j = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            HlsSampleSource.this.eventListener.onDownstreamFormatChanged(HlsSampleSource.this.eventSourceId, format, i, HlsSampleSource.this.usToMs(j));
        }
    }

    private void notifyDownstreamFormatChanged(Format format, int i, long j) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsSampleSource.5
                final /* synthetic */ Format val$format;
                final /* synthetic */ long val$positionUs;
                final /* synthetic */ int val$trigger;

                RunnableC12155(Format format2, int i2, long j2) {
                    format = format2;
                    i = i2;
                    j = j2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    HlsSampleSource.this.eventListener.onDownstreamFormatChanged(HlsSampleSource.this.eventSourceId, format, i, HlsSampleSource.this.usToMs(j));
                }
            });
        }
    }
}
