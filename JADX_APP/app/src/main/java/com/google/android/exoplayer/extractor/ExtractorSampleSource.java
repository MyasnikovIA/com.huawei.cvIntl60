package com.google.android.exoplayer.extractor;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ExtractorSampleSource implements SampleSource, SampleSource.SampleSourceReader, ExtractorOutput, Loader.Callback {
    private static final List<Class<? extends Extractor>> DEFAULT_EXTRACTOR_CLASSES = new ArrayList();
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE = 6;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT_ON_DEMAND = 3;
    private static final int MIN_RETRY_COUNT_DEFAULT_FOR_MEDIA = -1;
    private static final long NO_RESET_PENDING = Long.MIN_VALUE;
    private final Allocator allocator;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private final DataSource dataSource;
    private long downstreamPositionUs;
    private volatile DrmInitData drmInitData;
    private int enabledTrackCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private int extractedSampleCount;
    private int extractedSampleCountAtStartOfLoad;
    private final ExtractorHolder extractorHolder;
    private boolean havePendingNextSampleUs;
    private long lastSeekPositionUs;
    private ExtractingLoadable loadable;
    private Loader loader;
    private boolean loadingFinished;
    private long maxTrackDurationUs;
    private MediaFormat[] mediaFormats;
    private final int minLoadableRetryCount;
    private boolean[] pendingDiscontinuities;
    private boolean[] pendingMediaFormat;
    private long pendingNextSampleUs;
    private long pendingResetPositionUs;
    private boolean prepared;
    private int remainingReleaseCount;
    private final int requestedBufferSize;
    private final SparseArray<InternalTrackOutput> sampleQueues;
    private long sampleTimeOffsetUs;
    private volatile SeekMap seekMap;
    private boolean[] trackEnabledStates;
    private volatile boolean tracksBuilt;
    private final Uri uri;

    public interface EventListener {
        void onLoadError(int i, IOException iOException);
    }

    static /* synthetic */ int access$308(ExtractorSampleSource extractorSampleSource) {
        int i = extractorSampleSource.extractedSampleCount;
        extractorSampleSource.extractedSampleCount = i + 1;
        return i;
    }

    public static final class UnrecognizedInputFormatException extends ParserException {
        public UnrecognizedInputFormatException(Extractor[] extractorArr) {
            super("None of the available extractors (" + Util.getCommaDelimitedSimpleClassNames(extractorArr) + ") could read the stream.");
        }
    }

    static {
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.webm.WebmExtractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e) {
        }
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.mp4.FragmentedMp4Extractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e2) {
        }
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.mp4.Mp4Extractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e3) {
        }
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.mp3.Mp3Extractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e4) {
        }
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.ts.AdtsExtractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e5) {
        }
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.ts.TsExtractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e6) {
        }
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.flv.FlvExtractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e7) {
        }
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.ogg.OggExtractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e8) {
        }
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.ts.PsExtractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e9) {
        }
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.extractor.wav.WavExtractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e10) {
        }
        try {
            DEFAULT_EXTRACTOR_CLASSES.add(Class.forName("com.google.android.exoplayer.ext.flac.FlacExtractor").asSubclass(Extractor.class));
        } catch (ClassNotFoundException e11) {
        }
    }

    public ExtractorSampleSource(Uri uri, DataSource dataSource, Allocator allocator, int i, Extractor... extractorArr) {
        this(uri, dataSource, allocator, i, -1, extractorArr);
    }

    public ExtractorSampleSource(Uri uri, DataSource dataSource, Allocator allocator, int i, Handler handler, EventListener eventListener, int i2, Extractor... extractorArr) {
        this(uri, dataSource, allocator, i, -1, handler, eventListener, i2, extractorArr);
    }

    public ExtractorSampleSource(Uri uri, DataSource dataSource, Allocator allocator, int i, int i2, Extractor... extractorArr) {
        this(uri, dataSource, allocator, i, i2, null, null, 0, extractorArr);
    }

    public ExtractorSampleSource(Uri uri, DataSource dataSource, Allocator allocator, int i, int i2, Handler handler, EventListener eventListener, int i3, Extractor... extractorArr) {
        this.uri = uri;
        this.dataSource = dataSource;
        this.eventListener = eventListener;
        this.eventHandler = handler;
        this.eventSourceId = i3;
        this.allocator = allocator;
        this.requestedBufferSize = i;
        this.minLoadableRetryCount = i2;
        if (extractorArr == null || extractorArr.length == 0) {
            extractorArr = new Extractor[DEFAULT_EXTRACTOR_CLASSES.size()];
            int i4 = 0;
            while (true) {
                int i5 = i4;
                if (i5 >= extractorArr.length) {
                    break;
                }
                try {
                    extractorArr[i5] = DEFAULT_EXTRACTOR_CLASSES.get(i5).newInstance();
                    i4 = i5 + 1;
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException("Unexpected error creating default extractor", e);
                } catch (InstantiationException e2) {
                    throw new IllegalStateException("Unexpected error creating default extractor", e2);
                }
            }
        }
        this.extractorHolder = new ExtractorHolder(extractorArr, this);
        this.sampleQueues = new SparseArray<>();
        this.pendingResetPositionUs = Long.MIN_VALUE;
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
        if (this.loader == null) {
            this.loader = new Loader("Loader:ExtractorSampleSource");
        }
        maybeStartLoading();
        if (this.seekMap == null || !this.tracksBuilt || !haveFormatsForAllTracks()) {
            return false;
        }
        int size = this.sampleQueues.size();
        this.trackEnabledStates = new boolean[size];
        this.pendingDiscontinuities = new boolean[size];
        this.pendingMediaFormat = new boolean[size];
        this.mediaFormats = new MediaFormat[size];
        this.maxTrackDurationUs = -1L;
        for (int i = 0; i < size; i++) {
            MediaFormat format = this.sampleQueues.valueAt(i).getFormat();
            this.mediaFormats[i] = format;
            if (format.durationUs != -1 && format.durationUs > this.maxTrackDurationUs) {
                this.maxTrackDurationUs = format.durationUs;
            }
        }
        this.prepared = true;
        return true;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int getTrackCount() {
        return this.sampleQueues.size();
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public MediaFormat getFormat(int i) {
        Assertions.checkState(this.prepared);
        return this.mediaFormats[i];
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void enable(int i, long j) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(!this.trackEnabledStates[i]);
        this.enabledTrackCount++;
        this.trackEnabledStates[i] = true;
        this.pendingMediaFormat[i] = true;
        this.pendingDiscontinuities[i] = false;
        if (this.enabledTrackCount == 1) {
            if (!this.seekMap.isSeekable()) {
                j = 0;
            }
            this.downstreamPositionUs = j;
            this.lastSeekPositionUs = j;
            restartFrom(j);
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void disable(int i) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackEnabledStates[i]);
        this.enabledTrackCount--;
        this.trackEnabledStates[i] = false;
        if (this.enabledTrackCount == 0) {
            this.downstreamPositionUs = Long.MIN_VALUE;
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
            } else {
                clearState();
                this.allocator.trim(0);
            }
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean continueBuffering(int i, long j) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackEnabledStates[i]);
        this.downstreamPositionUs = j;
        discardSamplesForDisabledTracks(this.downstreamPositionUs);
        if (this.loadingFinished) {
            return true;
        }
        maybeStartLoading();
        if (isPendingReset()) {
            return false;
        }
        return !this.sampleQueues.valueAt(i).isEmpty();
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
        this.downstreamPositionUs = j;
        if (this.pendingDiscontinuities[i] || isPendingReset()) {
            return -2;
        }
        InternalTrackOutput valueAt = this.sampleQueues.valueAt(i);
        if (this.pendingMediaFormat[i]) {
            mediaFormatHolder.format = valueAt.getFormat();
            mediaFormatHolder.drmInitData = this.drmInitData;
            this.pendingMediaFormat[i] = false;
            return -4;
        }
        if (!valueAt.getSample(sampleHolder)) {
            return this.loadingFinished ? -1 : -2;
        }
        sampleHolder.flags = (sampleHolder.timeUs < this.lastSeekPositionUs ? C1167C.SAMPLE_FLAG_DECODE_ONLY : 0) | sampleHolder.flags;
        if (this.havePendingNextSampleUs) {
            this.sampleTimeOffsetUs = this.pendingNextSampleUs - sampleHolder.timeUs;
            this.havePendingNextSampleUs = false;
        }
        sampleHolder.timeUs += this.sampleTimeOffsetUs;
        return -3;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void maybeThrowError() {
        int i;
        if (this.currentLoadableException != null) {
            if (isCurrentLoadableExceptionFatal()) {
                throw this.currentLoadableException;
            }
            if (this.minLoadableRetryCount != -1) {
                i = this.minLoadableRetryCount;
            } else {
                i = (this.seekMap == null || this.seekMap.isSeekable()) ? 3 : 6;
            }
            if (this.currentLoadableExceptionCount > i) {
                throw this.currentLoadableException;
            }
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void seekToUs(long j) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.enabledTrackCount > 0);
        if (!this.seekMap.isSeekable()) {
            j = 0;
        }
        long j2 = isPendingReset() ? this.pendingResetPositionUs : this.downstreamPositionUs;
        this.downstreamPositionUs = j;
        this.lastSeekPositionUs = j;
        if (j2 != j) {
            boolean z = !isPendingReset();
            for (int i = 0; z && i < this.sampleQueues.size(); i++) {
                z &= this.sampleQueues.valueAt(i).skipToKeyframeBefore(j);
            }
            if (!z) {
                restartFrom(j);
            }
            for (int i2 = 0; i2 < this.pendingDiscontinuities.length; i2++) {
                this.pendingDiscontinuities[i2] = true;
            }
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long getBufferedPositionUs() {
        if (this.loadingFinished) {
            return -3L;
        }
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        long j = Long.MIN_VALUE;
        for (int i = 0; i < this.sampleQueues.size(); i++) {
            j = Math.max(j, this.sampleQueues.valueAt(i).getLargestParsedTimestampUs());
        }
        return j == Long.MIN_VALUE ? this.downstreamPositionUs : j;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void release() {
        Assertions.checkState(this.remainingReleaseCount > 0);
        int i = this.remainingReleaseCount - 1;
        this.remainingReleaseCount = i;
        if (i == 0 && this.loader != null) {
            this.loader.release(new Runnable() { // from class: com.google.android.exoplayer.extractor.ExtractorSampleSource.1
                RunnableC12011() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    ExtractorSampleSource.this.extractorHolder.release();
                }
            });
            this.loader = null;
        }
    }

    /* renamed from: com.google.android.exoplayer.extractor.ExtractorSampleSource$1 */
    class RunnableC12011 implements Runnable {
        RunnableC12011() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ExtractorSampleSource.this.extractorHolder.release();
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Loader.Loadable loadable) {
        this.loadingFinished = true;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Loader.Loadable loadable) {
        if (this.enabledTrackCount > 0) {
            restartFrom(this.pendingResetPositionUs);
        } else {
            clearState();
            this.allocator.trim(0);
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        this.currentLoadableException = iOException;
        this.currentLoadableExceptionCount = this.extractedSampleCount > this.extractedSampleCountAtStartOfLoad ? 1 : this.currentLoadableExceptionCount + 1;
        this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        notifyLoadError(iOException);
        maybeStartLoading();
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorOutput
    public TrackOutput track(int i) {
        InternalTrackOutput internalTrackOutput = this.sampleQueues.get(i);
        if (internalTrackOutput == null) {
            InternalTrackOutput internalTrackOutput2 = new InternalTrackOutput(this.allocator);
            this.sampleQueues.put(i, internalTrackOutput2);
            return internalTrackOutput2;
        }
        return internalTrackOutput;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorOutput
    public void endTracks() {
        this.tracksBuilt = true;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorOutput
    public void drmInitData(DrmInitData drmInitData) {
        this.drmInitData = drmInitData;
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

    private void maybeStartLoading() {
        int i = 0;
        if (!this.loadingFinished && !this.loader.isLoading()) {
            if (this.currentLoadableException != null) {
                if (!isCurrentLoadableExceptionFatal()) {
                    Assertions.checkState(this.loadable != null);
                    if (SystemClock.elapsedRealtime() - this.currentLoadableExceptionTimestamp >= getRetryDelayMillis(this.currentLoadableExceptionCount)) {
                        this.currentLoadableException = null;
                        if (!this.prepared) {
                            while (i < this.sampleQueues.size()) {
                                this.sampleQueues.valueAt(i).clear();
                                i++;
                            }
                            this.loadable = createLoadableFromStart();
                        } else if (!this.seekMap.isSeekable() && this.maxTrackDurationUs == -1) {
                            while (i < this.sampleQueues.size()) {
                                this.sampleQueues.valueAt(i).clear();
                                i++;
                            }
                            this.loadable = createLoadableFromStart();
                            this.pendingNextSampleUs = this.downstreamPositionUs;
                            this.havePendingNextSampleUs = true;
                        }
                        this.extractedSampleCountAtStartOfLoad = this.extractedSampleCount;
                        this.loader.startLoading(this.loadable, this);
                        return;
                    }
                    return;
                }
                return;
            }
            this.sampleTimeOffsetUs = 0L;
            this.havePendingNextSampleUs = false;
            if (!this.prepared) {
                this.loadable = createLoadableFromStart();
            } else {
                Assertions.checkState(isPendingReset());
                if (this.maxTrackDurationUs != -1 && this.pendingResetPositionUs >= this.maxTrackDurationUs) {
                    this.loadingFinished = true;
                    this.pendingResetPositionUs = Long.MIN_VALUE;
                    return;
                } else {
                    this.loadable = createLoadableFromPositionUs(this.pendingResetPositionUs);
                    this.pendingResetPositionUs = Long.MIN_VALUE;
                }
            }
            this.extractedSampleCountAtStartOfLoad = this.extractedSampleCount;
            this.loader.startLoading(this.loadable, this);
        }
    }

    private ExtractingLoadable createLoadableFromStart() {
        return new ExtractingLoadable(this.uri, this.dataSource, this.extractorHolder, this.allocator, this.requestedBufferSize, 0L);
    }

    private ExtractingLoadable createLoadableFromPositionUs(long j) {
        return new ExtractingLoadable(this.uri, this.dataSource, this.extractorHolder, this.allocator, this.requestedBufferSize, this.seekMap.getPosition(j));
    }

    private boolean haveFormatsForAllTracks() {
        for (int i = 0; i < this.sampleQueues.size(); i++) {
            if (!this.sampleQueues.valueAt(i).hasFormat()) {
                return false;
            }
        }
        return true;
    }

    private void discardSamplesForDisabledTracks(long j) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.trackEnabledStates.length) {
                if (!this.trackEnabledStates[i2]) {
                    this.sampleQueues.valueAt(i2).discardUntil(j);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private void clearState() {
        for (int i = 0; i < this.sampleQueues.size(); i++) {
            this.sampleQueues.valueAt(i).clear();
        }
        this.loadable = null;
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != Long.MIN_VALUE;
    }

    private boolean isCurrentLoadableExceptionFatal() {
        return this.currentLoadableException instanceof UnrecognizedInputFormatException;
    }

    private long getRetryDelayMillis(long j) {
        return Math.min((j - 1) * 1000, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }

    /* renamed from: com.google.android.exoplayer.extractor.ExtractorSampleSource$2 */
    class RunnableC12022 implements Runnable {
        final /* synthetic */ IOException val$e;

        RunnableC12022(IOException iOException) {
            iOException = iOException;
        }

        @Override // java.lang.Runnable
        public void run() {
            ExtractorSampleSource.this.eventListener.onLoadError(ExtractorSampleSource.this.eventSourceId, iOException);
        }
    }

    private void notifyLoadError(IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.extractor.ExtractorSampleSource.2
                final /* synthetic */ IOException val$e;

                RunnableC12022(IOException iOException2) {
                    iOException = iOException2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ExtractorSampleSource.this.eventListener.onLoadError(ExtractorSampleSource.this.eventSourceId, iOException);
                }
            });
        }
    }

    private class InternalTrackOutput extends DefaultTrackOutput {
        public InternalTrackOutput(Allocator allocator) {
            super(allocator);
        }

        @Override // com.google.android.exoplayer.extractor.DefaultTrackOutput, com.google.android.exoplayer.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, byte[] bArr) {
            super.sampleMetadata(j, i, i2, i3, bArr);
            ExtractorSampleSource.access$308(ExtractorSampleSource.this);
        }
    }

    private static class ExtractingLoadable implements Loader.Loadable {
        private final Allocator allocator;
        private final DataSource dataSource;
        private final ExtractorHolder extractorHolder;
        private volatile boolean loadCanceled;
        private boolean pendingExtractorSeek;
        private final PositionHolder positionHolder = new PositionHolder();
        private final int requestedBufferSize;
        private final Uri uri;

        public ExtractingLoadable(Uri uri, DataSource dataSource, ExtractorHolder extractorHolder, Allocator allocator, int i, long j) {
            this.uri = (Uri) Assertions.checkNotNull(uri);
            this.dataSource = (DataSource) Assertions.checkNotNull(dataSource);
            this.extractorHolder = (ExtractorHolder) Assertions.checkNotNull(extractorHolder);
            this.allocator = (Allocator) Assertions.checkNotNull(allocator);
            this.requestedBufferSize = i;
            this.positionHolder.position = j;
            this.pendingExtractorSeek = true;
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
            this.loadCanceled = true;
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Loadable
        public boolean isLoadCanceled() {
            return this.loadCanceled;
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Loadable
        public void load() {
            Throwable th;
            DefaultExtractorInput defaultExtractorInput;
            int i;
            int i2;
            int i3 = 0;
            while (i3 == 0 && !this.loadCanceled) {
                try {
                    long j = this.positionHolder.position;
                    long open = this.dataSource.open(new DataSpec(this.uri, j, -1L, null));
                    if (open != -1) {
                        open += j;
                    }
                    DefaultExtractorInput defaultExtractorInput2 = new DefaultExtractorInput(this.dataSource, j, open);
                    try {
                        Extractor selectExtractor = this.extractorHolder.selectExtractor(defaultExtractorInput2);
                        if (this.pendingExtractorSeek) {
                            selectExtractor.seek();
                            this.pendingExtractorSeek = false;
                        }
                        int i4 = i3;
                        while (i4 == 0) {
                            try {
                                if (this.loadCanceled) {
                                    break;
                                }
                                this.allocator.blockWhileTotalBytesAllocatedExceeds(this.requestedBufferSize);
                                i4 = selectExtractor.read(defaultExtractorInput2, this.positionHolder);
                            } catch (Throwable th2) {
                                th = th2;
                                defaultExtractorInput = defaultExtractorInput2;
                                i = i4;
                                if (i != 1 && defaultExtractorInput != null) {
                                    this.positionHolder.position = defaultExtractorInput.getPosition();
                                }
                                this.dataSource.close();
                                throw th;
                            }
                        }
                        if (i4 == 1) {
                            i2 = 0;
                        } else {
                            if (defaultExtractorInput2 != null) {
                                this.positionHolder.position = defaultExtractorInput2.getPosition();
                            }
                            i2 = i4;
                        }
                        this.dataSource.close();
                        i3 = i2;
                    } catch (Throwable th3) {
                        th = th3;
                        defaultExtractorInput = defaultExtractorInput2;
                        i = i3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    defaultExtractorInput = null;
                    i = i3;
                }
            }
        }
    }

    private static final class ExtractorHolder {
        private Extractor extractor;
        private final ExtractorOutput extractorOutput;
        private final Extractor[] extractors;

        public ExtractorHolder(Extractor[] extractorArr, ExtractorOutput extractorOutput) {
            this.extractors = extractorArr;
            this.extractorOutput = extractorOutput;
        }

        public Extractor selectExtractor(ExtractorInput extractorInput) {
            if (this.extractor != null) {
                return this.extractor;
            }
            Extractor[] extractorArr = this.extractors;
            int length = extractorArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                Extractor extractor = extractorArr[i];
                try {
                } catch (EOFException e) {
                } finally {
                    extractorInput.resetPeekPosition();
                }
                if (!extractor.sniff(extractorInput)) {
                    i++;
                } else {
                    this.extractor = extractor;
                    break;
                }
            }
            if (this.extractor == null) {
                throw new UnrecognizedInputFormatException(this.extractors);
            }
            this.extractor.init(this.extractorOutput);
            return this.extractor;
        }

        public void release() {
            if (this.extractor != null) {
                this.extractor.release();
                this.extractor = null;
            }
        }
    }
}
