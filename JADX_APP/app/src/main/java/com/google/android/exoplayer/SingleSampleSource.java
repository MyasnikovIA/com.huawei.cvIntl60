package com.google.android.exoplayer;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class SingleSampleSource implements SampleSource, SampleSource.SampleSourceReader, Loader.Callback, Loader.Loadable {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private static final int INITIAL_SAMPLE_SIZE = 1;
    private static final int STATE_END_OF_STREAM = 2;
    private static final int STATE_SEND_FORMAT = 0;
    private static final int STATE_SEND_SAMPLE = 1;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private final DataSource dataSource;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private final MediaFormat format;
    private Loader loader;
    private boolean loadingFinished;
    private final int minLoadableRetryCount;
    private long pendingDiscontinuityPositionUs;
    private byte[] sampleData;
    private int sampleSize;
    private int state;
    private final Uri uri;

    public interface EventListener {
        void onLoadError(int i, IOException iOException);
    }

    public SingleSampleSource(Uri uri, DataSource dataSource, MediaFormat mediaFormat) {
        this(uri, dataSource, mediaFormat, 3);
    }

    public SingleSampleSource(Uri uri, DataSource dataSource, MediaFormat mediaFormat, int i) {
        this(uri, dataSource, mediaFormat, i, null, null, 0);
    }

    public SingleSampleSource(Uri uri, DataSource dataSource, MediaFormat mediaFormat, int i, Handler handler, EventListener eventListener, int i2) {
        this.uri = uri;
        this.dataSource = dataSource;
        this.format = mediaFormat;
        this.minLoadableRetryCount = i;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.eventSourceId = i2;
        this.sampleData = new byte[1];
    }

    @Override // com.google.android.exoplayer.SampleSource
    public SampleSource.SampleSourceReader register() {
        return this;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean prepare(long j) {
        if (this.loader == null) {
            this.loader = new Loader("Loader:" + this.format.mimeType);
            return true;
        }
        return true;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int getTrackCount() {
        return 1;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public MediaFormat getFormat(int i) {
        return this.format;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void enable(int i, long j) {
        this.state = 0;
        this.pendingDiscontinuityPositionUs = Long.MIN_VALUE;
        clearCurrentLoadableException();
        maybeStartLoading();
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean continueBuffering(int i, long j) {
        maybeStartLoading();
        return this.loadingFinished;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void maybeThrowError() {
        if (this.currentLoadableException != null && this.currentLoadableExceptionCount > this.minLoadableRetryCount) {
            throw this.currentLoadableException;
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long readDiscontinuity(int i) {
        long j = this.pendingDiscontinuityPositionUs;
        this.pendingDiscontinuityPositionUs = Long.MIN_VALUE;
        return j;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        if (this.state == 2) {
            return -1;
        }
        if (this.state == 0) {
            mediaFormatHolder.format = this.format;
            this.state = 1;
            return -4;
        }
        Assertions.checkState(this.state == 1);
        if (!this.loadingFinished) {
            return -2;
        }
        sampleHolder.timeUs = 0L;
        sampleHolder.size = this.sampleSize;
        sampleHolder.flags = 1;
        sampleHolder.ensureSpaceForWrite(sampleHolder.size);
        sampleHolder.data.put(this.sampleData, 0, this.sampleSize);
        this.state = 2;
        return -3;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void seekToUs(long j) {
        if (this.state == 2) {
            this.pendingDiscontinuityPositionUs = j;
            this.state = 1;
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long getBufferedPositionUs() {
        return this.loadingFinished ? -3L : 0L;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void disable(int i) {
        this.state = 2;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void release() {
        if (this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
    }

    private void maybeStartLoading() {
        if (!this.loadingFinished && this.state != 2 && !this.loader.isLoading()) {
            if (this.currentLoadableException != null) {
                if (SystemClock.elapsedRealtime() - this.currentLoadableExceptionTimestamp >= getRetryDelayMillis(this.currentLoadableExceptionCount)) {
                    this.currentLoadableException = null;
                } else {
                    return;
                }
            }
            this.loader.startLoading(this, this);
        }
    }

    private void clearCurrentLoadableException() {
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
    }

    private long getRetryDelayMillis(long j) {
        return Math.min((j - 1) * 1000, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Loader.Loadable loadable) {
        this.loadingFinished = true;
        clearCurrentLoadableException();
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Loader.Loadable loadable) {
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        this.currentLoadableException = iOException;
        this.currentLoadableExceptionCount++;
        this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        notifyLoadError(iOException);
        maybeStartLoading();
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public void cancelLoad() {
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public boolean isLoadCanceled() {
        return false;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public void load() {
        int i = 0;
        this.sampleSize = 0;
        try {
            this.dataSource.open(new DataSpec(this.uri));
            while (i != -1) {
                this.sampleSize = i + this.sampleSize;
                if (this.sampleSize == this.sampleData.length) {
                    this.sampleData = Arrays.copyOf(this.sampleData, this.sampleData.length * 2);
                }
                i = this.dataSource.read(this.sampleData, this.sampleSize, this.sampleData.length - this.sampleSize);
            }
        } finally {
            this.dataSource.close();
        }
    }

    /* renamed from: com.google.android.exoplayer.SingleSampleSource$1 */
    class RunnableC11831 implements Runnable {
        final /* synthetic */ IOException val$e;

        RunnableC11831(IOException iOException) {
            iOException = iOException;
        }

        @Override // java.lang.Runnable
        public void run() {
            SingleSampleSource.this.eventListener.onLoadError(SingleSampleSource.this.eventSourceId, iOException);
        }
    }

    private void notifyLoadError(IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.SingleSampleSource.1
                final /* synthetic */ IOException val$e;

                RunnableC11831(IOException iOException2) {
                    iOException = iOException2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SingleSampleSource.this.eventListener.onLoadError(SingleSampleSource.this.eventSourceId, iOException);
                }
            });
        }
    }
}
