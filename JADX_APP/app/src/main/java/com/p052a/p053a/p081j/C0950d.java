package com.p052a.p053a.p081j;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;

/* renamed from: com.a.a.j.d */
/* loaded from: classes.dex */
public final class C0950d {

    /* renamed from: a */
    private static final double f4958a;

    static {
        f4958a = 17 <= Build.VERSION.SDK_INT ? 1.0d / Math.pow(10.0d, 6.0d) : 1.0d;
    }

    @TargetApi(17)
    /* renamed from: a */
    public static long m5397a() {
        return 17 <= Build.VERSION.SDK_INT ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }

    /* renamed from: a */
    public static double m5396a(long j) {
        return (m5397a() - j) * f4958a;
    }
}
