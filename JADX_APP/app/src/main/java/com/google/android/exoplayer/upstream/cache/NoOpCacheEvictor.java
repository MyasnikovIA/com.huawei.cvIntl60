package com.google.android.exoplayer.upstream.cache;

/* loaded from: classes.dex */
public final class NoOpCacheEvictor implements CacheEvictor {
    @Override // com.google.android.exoplayer.upstream.cache.CacheEvictor
    public void onCacheInitialized() {
    }

    @Override // com.google.android.exoplayer.upstream.cache.CacheEvictor
    public void onStartFile(Cache cache, String str, long j, long j2) {
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
    }
}
