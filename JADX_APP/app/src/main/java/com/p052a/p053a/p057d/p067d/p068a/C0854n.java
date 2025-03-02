package com.p052a.p053a.p057d.p067d.p068a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import com.p052a.p053a.p057d.EnumC0759b;
import java.io.File;

/* renamed from: com.a.a.d.d.a.n */
/* loaded from: classes.dex */
final class C0854n {

    /* renamed from: a */
    private static final File f4637a = new File("/proc/self/fd");

    /* renamed from: d */
    private static volatile C0854n f4638d;

    /* renamed from: b */
    private volatile int f4639b;

    /* renamed from: c */
    private volatile boolean f4640c = true;

    /* renamed from: a */
    static C0854n m5025a() {
        if (f4638d == null) {
            synchronized (C0854n.class) {
                if (f4638d == null) {
                    f4638d = new C0854n();
                }
            }
        }
        return f4638d;
    }

    private C0854n() {
    }

    @TargetApi(26)
    /* renamed from: a */
    boolean m5027a(int i, int i2, BitmapFactory.Options options, EnumC0759b enumC0759b, boolean z, boolean z2) {
        if (!z || Build.VERSION.SDK_INT < 26 || enumC0759b == EnumC0759b.PREFER_ARGB_8888_DISALLOW_HARDWARE || z2) {
            return false;
        }
        boolean z3 = i >= 128 && i2 >= 128 && m5026b();
        if (z3) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
            return z3;
        }
        return z3;
    }

    /* renamed from: b */
    private synchronized boolean m5026b() {
        boolean z;
        synchronized (this) {
            int i = this.f4639b + 1;
            this.f4639b = i;
            if (i >= 50) {
                this.f4639b = 0;
                int length = f4637a.list().length;
                this.f4640c = length < 700;
                if (!this.f4640c && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit 700");
                }
            }
            z = this.f4640c;
        }
        return z;
    }
}
