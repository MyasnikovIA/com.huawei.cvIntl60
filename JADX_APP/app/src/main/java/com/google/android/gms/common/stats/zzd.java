package com.google.android.gms.common.stats;

import android.support.v4.util.SimpleArrayMap;
import com.google.android.exoplayer.hls.HlsChunkSource;

/* loaded from: classes.dex */
public class zzd {

    /* renamed from: FX */
    private final long f6440FX;

    /* renamed from: FY */
    private final int f6441FY;

    /* renamed from: FZ */
    private final SimpleArrayMap<String, Long> f6442FZ;

    public zzd() {
        this.f6440FX = HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS;
        this.f6441FY = 10;
        this.f6442FZ = new SimpleArrayMap<>(10);
    }

    public zzd(int i, long j) {
        this.f6440FX = j;
        this.f6441FY = i;
        this.f6442FZ = new SimpleArrayMap<>();
    }
}
