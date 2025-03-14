package com.google.android.exoplayer.upstream.cache;

import java.util.Comparator;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class LeastRecentlyUsedCacheEvictor implements CacheEvictor, Comparator<CacheSpan> {
    private long currentSize;
    private final TreeSet<CacheSpan> leastRecentlyUsed = new TreeSet<>(this);
    private final long maxBytes;

    public LeastRecentlyUsedCacheEvictor(long j) {
        this.maxBytes = j;
    }

    @Override // com.google.android.exoplayer.upstream.cache.CacheEvictor
    public void onCacheInitialized() {
    }

    @Override // com.google.android.exoplayer.upstream.cache.CacheEvictor
    public void onStartFile(Cache cache, String str, long j, long j2) {
        evictCache(cache, j2);
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
        this.leastRecentlyUsed.add(cacheSpan);
        this.currentSize += cacheSpan.length;
        evictCache(cache, 0L);
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
        this.leastRecentlyUsed.remove(cacheSpan);
        this.currentSize -= cacheSpan.length;
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        onSpanRemoved(cache, cacheSpan);
        onSpanAdded(cache, cacheSpan2);
    }

    @Override // java.util.Comparator
    public int compare(CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        if (cacheSpan.lastAccessTimestamp - cacheSpan2.lastAccessTimestamp == 0) {
            return cacheSpan.compareTo(cacheSpan2);
        }
        return cacheSpan.lastAccessTimestamp < cacheSpan2.lastAccessTimestamp ? -1 : 1;
    }

    private void evictCache(Cache cache, long j) {
        while (this.currentSize + j > this.maxBytes) {
            cache.removeSpan(this.leastRecentlyUsed.first());
        }
    }
}
