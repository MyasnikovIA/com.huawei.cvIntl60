package com.google.android.exoplayer.upstream.cache;

import android.net.Uri;
import android.util.Log;
import com.google.android.exoplayer.upstream.DataSink;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.FileDataSource;
import com.google.android.exoplayer.upstream.TeeDataSource;
import com.google.android.exoplayer.upstream.cache.CacheDataSink;
import java.io.IOException;
import java.io.InterruptedIOException;

/* loaded from: classes.dex */
public final class CacheDataSource implements DataSource {
    private static final String TAG = "CacheDataSource";
    private final boolean blockOnCache;
    private long bytesRemaining;
    private final Cache cache;
    private final DataSource cacheReadDataSource;
    private final DataSource cacheWriteDataSource;
    private DataSource currentDataSource;
    private final EventListener eventListener;
    private int flags;
    private boolean ignoreCache;
    private final boolean ignoreCacheOnError;
    private String key;
    private CacheSpan lockedSpan;
    private long readPosition;
    private long totalCachedBytesRead;
    private final DataSource upstreamDataSource;
    private Uri uri;

    public interface EventListener {
        void onCachedBytesRead(long j, long j2);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, boolean z, boolean z2) {
        this(cache, dataSource, z, z2, Long.MAX_VALUE);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, boolean z, boolean z2, long j) {
        this(cache, dataSource, new FileDataSource(), new CacheDataSink(cache, j), z, z2, null);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, DataSource dataSource2, DataSink dataSink, boolean z, boolean z2, EventListener eventListener) {
        this.cache = cache;
        this.cacheReadDataSource = dataSource2;
        this.blockOnCache = z;
        this.ignoreCacheOnError = z2;
        this.upstreamDataSource = dataSource;
        if (dataSink != null) {
            this.cacheWriteDataSource = new TeeDataSource(dataSource, dataSink);
        } else {
            this.cacheWriteDataSource = null;
        }
        this.eventListener = eventListener;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) {
        try {
            this.uri = dataSpec.uri;
            this.flags = dataSpec.flags;
            this.key = dataSpec.key;
            this.readPosition = dataSpec.position;
            this.bytesRemaining = dataSpec.length;
            openNextSource();
            return dataSpec.length;
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) {
        try {
            int read = this.currentDataSource.read(bArr, i, i2);
            if (read >= 0) {
                if (this.currentDataSource == this.cacheReadDataSource) {
                    this.totalCachedBytesRead += read;
                }
                this.readPosition += read;
                if (this.bytesRemaining != -1) {
                    this.bytesRemaining -= read;
                    return read;
                }
                return read;
            }
            closeCurrentSource();
            if (this.bytesRemaining > 0 && this.bytesRemaining != -1) {
                openNextSource();
                return read(bArr, i, i2);
            }
            return read;
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() {
        notifyBytesRead();
        try {
            closeCurrentSource();
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    private void openNextSource() {
        DataSpec dataSpec;
        CacheSpan cacheSpan = null;
        if (!this.ignoreCache) {
            if (this.bytesRemaining == -1) {
                Log.w(TAG, "Cache bypassed due to unbounded length.");
            } else if (this.blockOnCache) {
                try {
                    cacheSpan = this.cache.startReadWrite(this.key, this.readPosition);
                } catch (InterruptedException e) {
                    throw new InterruptedIOException();
                }
            } else {
                cacheSpan = this.cache.startReadWriteNonBlocking(this.key, this.readPosition);
            }
        }
        if (cacheSpan == null) {
            this.currentDataSource = this.upstreamDataSource;
            dataSpec = new DataSpec(this.uri, this.readPosition, this.bytesRemaining, this.key, this.flags);
        } else if (cacheSpan.isCached) {
            Uri fromFile = Uri.fromFile(cacheSpan.file);
            long j = this.readPosition - cacheSpan.position;
            dataSpec = new DataSpec(fromFile, this.readPosition, j, Math.min(cacheSpan.length - j, this.bytesRemaining), this.key, this.flags);
            this.currentDataSource = this.cacheReadDataSource;
        } else {
            this.lockedSpan = cacheSpan;
            dataSpec = new DataSpec(this.uri, this.readPosition, cacheSpan.isOpenEnded() ? this.bytesRemaining : Math.min(cacheSpan.length, this.bytesRemaining), this.key, this.flags);
            this.currentDataSource = this.cacheWriteDataSource != null ? this.cacheWriteDataSource : this.upstreamDataSource;
        }
        this.currentDataSource.open(dataSpec);
    }

    /* JADX WARN: Finally extract failed */
    private void closeCurrentSource() {
        if (this.currentDataSource != null) {
            try {
                this.currentDataSource.close();
                this.currentDataSource = null;
                if (this.lockedSpan != null) {
                    this.cache.releaseHoleSpan(this.lockedSpan);
                    this.lockedSpan = null;
                }
            } catch (Throwable th) {
                if (this.lockedSpan != null) {
                    this.cache.releaseHoleSpan(this.lockedSpan);
                    this.lockedSpan = null;
                }
                throw th;
            }
        }
    }

    private void handleBeforeThrow(IOException iOException) {
        if (this.ignoreCacheOnError) {
            if (this.currentDataSource == this.cacheReadDataSource || (iOException instanceof CacheDataSink.CacheDataSinkException)) {
                this.ignoreCache = true;
            }
        }
    }

    private void notifyBytesRead() {
        if (this.eventListener != null && this.totalCachedBytesRead > 0) {
            this.eventListener.onCachedBytesRead(this.cache.getCacheSpace(), this.totalCachedBytesRead);
            this.totalCachedBytesRead = 0L;
        }
    }
}
