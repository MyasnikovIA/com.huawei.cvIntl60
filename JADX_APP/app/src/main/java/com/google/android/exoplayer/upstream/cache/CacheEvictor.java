package com.google.android.exoplayer.upstream.cache;

import com.google.android.exoplayer.upstream.cache.Cache;

/* loaded from: classes.dex */
public interface CacheEvictor extends Cache.Listener {
    void onCacheInitialized();

    void onStartFile(Cache cache, String str, long j, long j2);
}
