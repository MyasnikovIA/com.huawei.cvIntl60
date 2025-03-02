package com.google.android.gms.common.util;

import android.os.SystemClock;

/* loaded from: classes.dex */
public class zzh implements zze {

    /* renamed from: Gq */
    private static zzh f6446Gq = new zzh();

    private zzh() {
    }

    public static zze zzayl() {
        return f6446Gq;
    }

    @Override // com.google.android.gms.common.util.zze
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.zze
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.zze
    public long nanoTime() {
        return System.nanoTime();
    }
}
