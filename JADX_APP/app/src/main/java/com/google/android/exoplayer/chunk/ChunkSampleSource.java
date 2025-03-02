package com.google.android.exoplayer.chunk;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.LoadControl;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.DefaultTrackOutput;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class ChunkSampleSource implements SampleSource, SampleSource.SampleSourceReader, Loader.Callback {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private static final long NO_RESET_PENDING = Long.MIN_VALUE;
    private static final int STATE_ENABLED = 3;
    private static final int STATE_IDLE = 0;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_PREPARED = 2;
    private final int bufferSizeContribution;
    private final ChunkSource chunkSource;
    private long currentLoadStartTimeMs;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private final ChunkOperationHolder currentLoadableHolder;
    private DrmInitData downstreamDrmInitData;
    private Format downstreamFormat;
    private MediaFormat downstreamMediaFormat;
    private long downstreamPositionUs;
    private int enabledTrackCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private long lastPerformedBufferOperation;
    private long lastSeekPositionUs;
    private final LoadControl loadControl;
    private Loader loader;
    private boolean loadingFinished;
    private final LinkedList<BaseMediaChunk> mediaChunks;
    private final int minLoadableRetryCount;
    private boolean pendingDiscontinuity;
    private long pendingResetPositionUs;
    private final List<BaseMediaChunk> readOnlyMediaChunks;
    protected final DefaultTrackOutput sampleQueue;
    private int state;

    public interface EventListener extends BaseChunkSampleSourceEventListener {
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int i) {
        this(chunkSource, loadControl, i, null, null, 0);
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int i, Handler handler, EventListener eventListener, int i2) {
        this(chunkSource, loadControl, i, handler, eventListener, i2, 3);
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int i, Handler handler, EventListener eventListener, int i2, int i3) {
        this.chunkSource = chunkSource;
        this.loadControl = loadControl;
        this.bufferSizeContribution = i;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.eventSourceId = i2;
        this.minLoadableRetryCount = i3;
        this.currentLoadableHolder = new ChunkOperationHolder();
        this.mediaChunks = new LinkedList<>();
        this.readOnlyMediaChunks = Collections.unmodifiableList(this.mediaChunks);
        this.sampleQueue = new DefaultTrackOutput(loadControl.getAllocator());
        this.state = 0;
        this.pendingResetPositionUs = Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public SampleSource.SampleSourceReader register() {
        Assertions.checkState(this.state == 0);
        this.state = 1;
        return this;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean prepare(long j) {
        Assertions.checkState(this.state == 1 || this.state == 2);
        if (this.state == 2) {
            return true;
        }
        if (!this.chunkSource.prepare()) {
            return false;
        }
        if (this.chunkSource.getTrackCount() > 0) {
            this.loader = new Loader("Loader:" + this.chunkSource.getFormat(0).mimeType);
        }
        this.state = 2;
        return true;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int getTrackCount() {
        Assertions.checkState(this.state == 2 || this.state == 3);
        return this.chunkSource.getTrackCount();
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public MediaFormat getFormat(int i) {
        Assertions.checkState(this.state == 2 || this.state == 3);
        return this.chunkSource.getFormat(i);
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void enable(int i, long j) {
        Assertions.checkState(this.state == 2);
        int i2 = this.enabledTrackCount;
        this.enabledTrackCount = i2 + 1;
        Assertions.checkState(i2 == 0);
        this.state = 3;
        this.chunkSource.enable(i);
        this.loadControl.register(this, this.bufferSizeContribution);
        this.downstreamFormat = null;
        this.downstreamMediaFormat = null;
        this.downstreamDrmInitData = null;
        this.downstreamPositionUs = j;
        this.lastSeekPositionUs = j;
        this.pendingDiscontinuity = false;
        restartFrom(j);
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void disable(int i) {
        Assertions.checkState(this.state == 3);
        int i2 = this.enabledTrackCount - 1;
        this.enabledTrackCount = i2;
        Assertions.checkState(i2 == 0);
        this.state = 2;
        try {
            this.chunkSource.disable(this.mediaChunks);
            this.loadControl.unregister(this);
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
                return;
            }
            this.sampleQueue.clear();
            this.mediaChunks.clear();
            clearCurrentLoadable();
            this.loadControl.trimAllocator();
        } catch (Throwable th) {
            this.loadControl.unregister(this);
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
            } else {
                this.sampleQueue.clear();
                this.mediaChunks.clear();
                clearCurrentLoadable();
                this.loadControl.trimAllocator();
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean continueBuffering(int i, long j) {
        Assertions.checkState(this.state == 3);
        this.downstreamPositionUs = j;
        this.chunkSource.continueBuffering(j);
        updateLoadControl();
        return this.loadingFinished || !this.sampleQueue.isEmpty();
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long readDiscontinuity(int i) {
        if (!this.pendingDiscontinuity) {
            return Long.MIN_VALUE;
        }
        this.pendingDiscontinuity = false;
        return this.lastSeekPositionUs;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        Assertions.checkState(this.state == 3);
        this.downstreamPositionUs = j;
        if (this.pendingDiscontinuity || isPendingReset()) {
            return -2;
        }
        boolean z = !this.sampleQueue.isEmpty();
        BaseMediaChunk first = this.mediaChunks.getFirst();
        while (z && this.mediaChunks.size() > 1 && this.mediaChunks.get(1).getFirstSampleIndex() <= this.sampleQueue.getReadIndex()) {
            this.mediaChunks.removeFirst();
            first = this.mediaChunks.getFirst();
        }
        Format format = first.format;
        if (!format.equals(this.downstreamFormat)) {
            notifyDownstreamFormatChanged(format, first.trigger, first.startTimeUs);
        }
        this.downstreamFormat = format;
        if (z || first.isMediaFormatFinal) {
            MediaFormat mediaFormat = first.getMediaFormat();
            DrmInitData drmInitData = first.getDrmInitData();
            if (!mediaFormat.equals(this.downstreamMediaFormat) || !Util.areEqual(this.downstreamDrmInitData, drmInitData)) {
                mediaFormatHolder.format = mediaFormat;
                mediaFormatHolder.drmInitData = drmInitData;
                this.downstreamMediaFormat = mediaFormat;
                this.downstreamDrmInitData = drmInitData;
                return -4;
            }
            this.downstreamMediaFormat = mediaFormat;
            this.downstreamDrmInitData = drmInitData;
        }
        if (!z) {
            return this.loadingFinished ? -1 : -2;
        }
        if (!this.sampleQueue.getSample(sampleHolder)) {
            return -2;
        }
        sampleHolder.flags |= sampleHolder.timeUs < this.lastSeekPositionUs ? C1167C.SAMPLE_FLAG_DECODE_ONLY : 0;
        onSampleRead(first, sampleHolder);
        return -3;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void seekToUs(long j) {
        Assertions.checkState(this.state == 3);
        long j2 = isPendingReset() ? this.pendingResetPositionUs : this.downstreamPositionUs;
        this.downstreamPositionUs = j;
        this.lastSeekPositionUs = j;
        if (j2 != j) {
            if (!isPendingReset() && this.sampleQueue.skipToKeyframeBefore(j)) {
                boolean z = this.sampleQueue.isEmpty() ? false : true;
                while (z && this.mediaChunks.size() > 1 && this.mediaChunks.get(1).getFirstSampleIndex() <= this.sampleQueue.getReadIndex()) {
                    this.mediaChunks.removeFirst();
                }
            } else {
                restartFrom(j);
            }
            this.pendingDiscontinuity = true;
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void maybeThrowError() {
        if (this.currentLoadableException != null && this.currentLoadableExceptionCount > this.minLoadableRetryCount) {
            throw this.currentLoadableException;
        }
        if (this.currentLoadableHolder.chunk == null) {
            this.chunkSource.maybeThrowError();
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long getBufferedPositionUs() {
        Assertions.checkState(this.state == 3);
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return -3L;
        }
        long largestParsedTimestampUs = this.sampleQueue.getLargestParsedTimestampUs();
        return largestParsedTimestampUs == Long.MIN_VALUE ? this.downstreamPositionUs : largestParsedTimestampUs;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void release() {
        Assertions.checkState(this.state != 3);
        if (this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
        this.state = 0;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Loader.Loadable loadable) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.currentLoadStartTimeMs;
        Chunk chunk = this.currentLoadableHolder.chunk;
        this.chunkSource.onChunkLoadCompleted(chunk);
        if (isMediaChunk(chunk)) {
            BaseMediaChunk baseMediaChunk = (BaseMediaChunk) chunk;
            notifyLoadCompleted(chunk.bytesLoaded(), baseMediaChunk.type, baseMediaChunk.trigger, baseMediaChunk.format, baseMediaChunk.startTimeUs, baseMediaChunk.endTimeUs, elapsedRealtime, j);
        } else {
            notifyLoadCompleted(chunk.bytesLoaded(), chunk.type, chunk.trigger, chunk.format, -1L, -1L, elapsedRealtime, j);
        }
        clearCurrentLoadable();
        updateLoadControl();
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Loader.Loadable loadable) {
        notifyLoadCanceled(this.currentLoadableHolder.chunk.bytesLoaded());
        clearCurrentLoadable();
        if (this.state == 3) {
            restartFrom(this.pendingResetPositionUs);
            return;
        }
        this.sampleQueue.clear();
        this.mediaChunks.clear();
        clearCurrentLoadable();
        this.loadControl.trimAllocator();
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        this.currentLoadableException = iOException;
        this.currentLoadableExceptionCount++;
        this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        notifyLoadError(iOException);
        this.chunkSource.onChunkLoadError(this.currentLoadableHolder.chunk, iOException);
        updateLoadControl();
    }

    protected void onSampleRead(MediaChunk mediaChunk, SampleHolder sampleHolder) {
    }

    private void restartFrom(long j) {
        this.pendingResetPositionUs = j;
        this.loadingFinished = false;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return;
        }
        this.sampleQueue.clear();
        this.mediaChunks.clear();
        clearCurrentLoadable();
        updateLoadControl();
    }

    private void clearCurrentLoadable() {
        this.currentLoadableHolder.chunk = null;
        clearCurrentLoadableException();
    }

    private void clearCurrentLoadableException() {
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
    }

    private void updateLoadControl() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long nextLoadPositionUs = getNextLoadPositionUs();
        boolean z = this.currentLoadableException != null;
        boolean z2 = this.loader.isLoading() || z;
        if (!z2 && ((this.currentLoadableHolder.chunk == null && nextLoadPositionUs != -1) || elapsedRealtime - this.lastPerformedBufferOperation > 2000)) {
            this.lastPerformedBufferOperation = elapsedRealtime;
            doChunkOperation();
            boolean discardUpstreamMediaChunks = discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
            if (this.currentLoadableHolder.chunk == null) {
                nextLoadPositionUs = -1;
            } else if (discardUpstreamMediaChunks) {
                nextLoadPositionUs = getNextLoadPositionUs();
            }
        }
        boolean update = this.loadControl.update(this, this.downstreamPositionUs, nextLoadPositionUs, z2);
        if (z) {
            if (elapsedRealtime - this.currentLoadableExceptionTimestamp >= getRetryDelayMillis(this.currentLoadableExceptionCount)) {
                resumeFromBackOff();
            }
        } else if (!this.loader.isLoading() && update) {
            maybeStartLoading();
        }
    }

    private long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return -1L;
        }
        return this.mediaChunks.getLast().endTimeUs;
    }

    private void resumeFromBackOff() {
        this.currentLoadableException = null;
        Chunk chunk = this.currentLoadableHolder.chunk;
        if (!isMediaChunk(chunk)) {
            doChunkOperation();
            discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
            if (this.currentLoadableHolder.chunk == chunk) {
                this.loader.startLoading(chunk, this);
                return;
            } else {
                notifyLoadCanceled(chunk.bytesLoaded());
                maybeStartLoading();
                return;
            }
        }
        if (chunk == this.mediaChunks.getFirst()) {
            this.loader.startLoading(chunk, this);
            return;
        }
        BaseMediaChunk removeLast = this.mediaChunks.removeLast();
        Assertions.checkState(chunk == removeLast);
        doChunkOperation();
        this.mediaChunks.add(removeLast);
        if (this.currentLoadableHolder.chunk == chunk) {
            this.loader.startLoading(chunk, this);
            return;
        }
        notifyLoadCanceled(chunk.bytesLoaded());
        discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
        clearCurrentLoadableException();
        maybeStartLoading();
    }

    private void maybeStartLoading() {
        Chunk chunk = this.currentLoadableHolder.chunk;
        if (chunk != null) {
            this.currentLoadStartTimeMs = SystemClock.elapsedRealtime();
            if (isMediaChunk(chunk)) {
                BaseMediaChunk baseMediaChunk = (BaseMediaChunk) chunk;
                baseMediaChunk.init(this.sampleQueue);
                this.mediaChunks.add(baseMediaChunk);
                if (isPendingReset()) {
                    this.pendingResetPositionUs = Long.MIN_VALUE;
                }
                notifyLoadStarted(baseMediaChunk.dataSpec.length, baseMediaChunk.type, baseMediaChunk.trigger, baseMediaChunk.format, baseMediaChunk.startTimeUs, baseMediaChunk.endTimeUs);
            } else {
                notifyLoadStarted(chunk.dataSpec.length, chunk.type, chunk.trigger, chunk.format, -1L, -1L);
            }
            this.loader.startLoading(chunk, this);
        }
    }

    private void doChunkOperation() {
        this.currentLoadableHolder.endOfStream = false;
        this.currentLoadableHolder.queueSize = this.readOnlyMediaChunks.size();
        this.chunkSource.getChunkOperation(this.readOnlyMediaChunks, this.pendingResetPositionUs != Long.MIN_VALUE ? this.pendingResetPositionUs : this.downstreamPositionUs, this.currentLoadableHolder);
        this.loadingFinished = this.currentLoadableHolder.endOfStream;
    }

    private boolean discardUpstreamMediaChunks(int i) {
        if (this.mediaChunks.size() <= i) {
            return false;
        }
        long j = 0;
        long j2 = this.mediaChunks.getLast().endTimeUs;
        BaseMediaChunk baseMediaChunk = null;
        while (this.mediaChunks.size() > i) {
            baseMediaChunk = this.mediaChunks.removeLast();
            j = baseMediaChunk.startTimeUs;
            this.loadingFinished = false;
        }
        this.sampleQueue.discardUpstreamSamples(baseMediaChunk.getFirstSampleIndex());
        notifyUpstreamDiscarded(j, j2);
        return true;
    }

    private boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof BaseMediaChunk;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != Long.MIN_VALUE;
    }

    private long getRetryDelayMillis(long j) {
        return Math.min((j - 1) * 1000, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }

    protected final long usToMs(long j) {
        return j / 1000;
    }

    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource$1 */
    class RunnableC11871 implements Runnable {
        final /* synthetic */ Format val$format;
        final /* synthetic */ long val$length;
        final /* synthetic */ long val$mediaEndTimeUs;
        final /* synthetic */ long val$mediaStartTimeUs;
        final /* synthetic */ int val$trigger;
        final /* synthetic */ int val$type;

        RunnableC11871(long j, int i, int i2, Format format, long j2, long j3) {
            j = j;
            i = i;
            i2 = i2;
            format = format;
            j2 = j2;
            j3 = j3;
        }

        @Override // java.lang.Runnable
        public void run() {
            ChunkSampleSource.this.eventListener.onLoadStarted(ChunkSampleSource.this.eventSourceId, j, i, i2, format, ChunkSampleSource.this.usToMs(j2), ChunkSampleSource.this.usToMs(j3));
        }
    }

    private void notifyLoadStarted(long j, int i, int i2, Format format, long j2, long j3) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.1
                final /* synthetic */ Format val$format;
                final /* synthetic */ long val$length;
                final /* synthetic */ long val$mediaEndTimeUs;
                final /* synthetic */ long val$mediaStartTimeUs;
                final /* synthetic */ int val$trigger;
                final /* synthetic */ int val$type;

                RunnableC11871(long j4, int i3, int i22, Format format2, long j22, long j32) {
                    j = j4;
                    i = i3;
                    i2 = i22;
                    format = format2;
                    j2 = j22;
                    j3 = j32;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onLoadStarted(ChunkSampleSource.this.eventSourceId, j, i, i2, format, ChunkSampleSource.this.usToMs(j2), ChunkSampleSource.this.usToMs(j3));
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource$2 */
    class RunnableC11882 implements Runnable {
        final /* synthetic */ long val$bytesLoaded;
        final /* synthetic */ long val$elapsedRealtimeMs;
        final /* synthetic */ Format val$format;
        final /* synthetic */ long val$loadDurationMs;
        final /* synthetic */ long val$mediaEndTimeUs;
        final /* synthetic */ long val$mediaStartTimeUs;
        final /* synthetic */ int val$trigger;
        final /* synthetic */ int val$type;

        RunnableC11882(long j, int i, int i2, Format format, long j2, long j3, long j4, long j5) {
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
            ChunkSampleSource.this.eventListener.onLoadCompleted(ChunkSampleSource.this.eventSourceId, j, i, i2, format, ChunkSampleSource.this.usToMs(j2), ChunkSampleSource.this.usToMs(j3), j4, j5);
        }
    }

    private void notifyLoadCompleted(long j, int i, int i2, Format format, long j2, long j3, long j4, long j5) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.2
                final /* synthetic */ long val$bytesLoaded;
                final /* synthetic */ long val$elapsedRealtimeMs;
                final /* synthetic */ Format val$format;
                final /* synthetic */ long val$loadDurationMs;
                final /* synthetic */ long val$mediaEndTimeUs;
                final /* synthetic */ long val$mediaStartTimeUs;
                final /* synthetic */ int val$trigger;
                final /* synthetic */ int val$type;

                RunnableC11882(long j6, int i3, int i22, Format format2, long j22, long j32, long j42, long j52) {
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
                    ChunkSampleSource.this.eventListener.onLoadCompleted(ChunkSampleSource.this.eventSourceId, j, i, i2, format, ChunkSampleSource.this.usToMs(j2), ChunkSampleSource.this.usToMs(j3), j4, j5);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource$3 */
    class RunnableC11893 implements Runnable {
        final /* synthetic */ long val$bytesLoaded;

        RunnableC11893(long j) {
            j = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            ChunkSampleSource.this.eventListener.onLoadCanceled(ChunkSampleSource.this.eventSourceId, j);
        }
    }

    private void notifyLoadCanceled(long j) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.3
                final /* synthetic */ long val$bytesLoaded;

                RunnableC11893(long j2) {
                    j = j2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onLoadCanceled(ChunkSampleSource.this.eventSourceId, j);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource$4 */
    class RunnableC11904 implements Runnable {
        final /* synthetic */ IOException val$e;

        RunnableC11904(IOException iOException) {
            iOException = iOException;
        }

        @Override // java.lang.Runnable
        public void run() {
            ChunkSampleSource.this.eventListener.onLoadError(ChunkSampleSource.this.eventSourceId, iOException);
        }
    }

    private void notifyLoadError(IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.4
                final /* synthetic */ IOException val$e;

                RunnableC11904(IOException iOException2) {
                    iOException = iOException2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onLoadError(ChunkSampleSource.this.eventSourceId, iOException);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource$5 */
    class RunnableC11915 implements Runnable {
        final /* synthetic */ long val$mediaEndTimeUs;
        final /* synthetic */ long val$mediaStartTimeUs;

        RunnableC11915(long j, long j2) {
            j = j;
            j2 = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ChunkSampleSource.this.eventListener.onUpstreamDiscarded(ChunkSampleSource.this.eventSourceId, ChunkSampleSource.this.usToMs(j), ChunkSampleSource.this.usToMs(j2));
        }
    }

    private void notifyUpstreamDiscarded(long j, long j2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.5
                final /* synthetic */ long val$mediaEndTimeUs;
                final /* synthetic */ long val$mediaStartTimeUs;

                RunnableC11915(long j3, long j22) {
                    j = j3;
                    j2 = j22;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onUpstreamDiscarded(ChunkSampleSource.this.eventSourceId, ChunkSampleSource.this.usToMs(j), ChunkSampleSource.this.usToMs(j2));
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource$6 */
    class RunnableC11926 implements Runnable {
        final /* synthetic */ Format val$format;
        final /* synthetic */ long val$positionUs;
        final /* synthetic */ int val$trigger;

        RunnableC11926(Format format, int i, long j) {
            format = format;
            i = i;
            j = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            ChunkSampleSource.this.eventListener.onDownstreamFormatChanged(ChunkSampleSource.this.eventSourceId, format, i, ChunkSampleSource.this.usToMs(j));
        }
    }

    private void notifyDownstreamFormatChanged(Format format, int i, long j) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.6
                final /* synthetic */ Format val$format;
                final /* synthetic */ long val$positionUs;
                final /* synthetic */ int val$trigger;

                RunnableC11926(Format format2, int i2, long j2) {
                    format = format2;
                    i = i2;
                    j = j2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onDownstreamFormatChanged(ChunkSampleSource.this.eventSourceId, format, i, ChunkSampleSource.this.usToMs(j));
                }
            });
        }
    }
}
