package com.p052a.p053a.p057d.p060b.p061a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.a.a.d.b.a.k */
/* loaded from: classes.dex */
public class C0771k implements InterfaceC0765e {

    /* renamed from: a */
    private static final Bitmap.Config f4230a = Bitmap.Config.ARGB_8888;

    /* renamed from: b */
    private final InterfaceC0772l f4231b;

    /* renamed from: c */
    private final Set<Bitmap.Config> f4232c;

    /* renamed from: d */
    private final int f4233d;

    /* renamed from: e */
    private final a f4234e;

    /* renamed from: f */
    private int f4235f;

    /* renamed from: g */
    private int f4236g;

    /* renamed from: h */
    private int f4237h;

    /* renamed from: i */
    private int f4238i;

    /* renamed from: j */
    private int f4239j;

    /* renamed from: k */
    private int f4240k;

    /* renamed from: com.a.a.d.b.a.k$a */
    private interface a {
        /* renamed from: a */
        void mo4716a(Bitmap bitmap);

        /* renamed from: b */
        void mo4717b(Bitmap bitmap);
    }

    C0771k(int i, InterfaceC0772l interfaceC0772l, Set<Bitmap.Config> set) {
        this.f4233d = i;
        this.f4235f = i;
        this.f4231b = interfaceC0772l;
        this.f4232c = set;
        this.f4234e = new b();
    }

    public C0771k(int i) {
        this(i, m4714e(), m4715f());
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e
    /* renamed from: a */
    public synchronized void mo4679a(Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        }
        if (bitmap.isRecycled()) {
            throw new IllegalStateException("Cannot pool recycled bitmap");
        }
        if (!bitmap.isMutable() || this.f4231b.mo4668c(bitmap) > this.f4235f || !this.f4232c.contains(bitmap.getConfig())) {
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f4231b.mo4667b(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f4232c.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } else {
            int mo4668c = this.f4231b.mo4668c(bitmap);
            this.f4231b.mo4665a(bitmap);
            this.f4234e.mo4716a(bitmap);
            this.f4239j++;
            this.f4236g = mo4668c + this.f4236g;
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f4231b.mo4667b(bitmap));
            }
            m4711c();
            m4707b();
        }
    }

    /* renamed from: b */
    private void m4707b() {
        m4708b(this.f4235f);
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e
    @NonNull
    /* renamed from: a */
    public Bitmap mo4676a(int i, int i2, Bitmap.Config config) {
        Bitmap m4710c = m4710c(i, i2, config);
        if (m4710c != null) {
            m4710c.eraseColor(0);
            return m4710c;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e
    @NonNull
    /* renamed from: b */
    public Bitmap mo4680b(int i, int i2, Bitmap.Config config) {
        Bitmap m4710c = m4710c(i, i2, config);
        if (m4710c == null) {
            return Bitmap.createBitmap(i, i2, config);
        }
        return m4710c;
    }

    @TargetApi(26)
    /* renamed from: a */
    private static void m4706a(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    @Nullable
    /* renamed from: c */
    private synchronized Bitmap m4710c(int i, int i2, Bitmap.Config config) {
        Bitmap mo4664a;
        m4706a(config);
        mo4664a = this.f4231b.mo4664a(i, i2, config != null ? config : f4230a);
        if (mo4664a == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Missing bitmap=" + this.f4231b.mo4666b(i, i2, config));
            }
            this.f4238i++;
        } else {
            this.f4237h++;
            this.f4236g -= this.f4231b.mo4668c(mo4664a);
            this.f4234e.mo4717b(mo4664a);
            m4709b(mo4664a);
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            Log.v("LruBitmapPool", "Get bitmap=" + this.f4231b.mo4666b(i, i2, config));
        }
        m4711c();
        return mo4664a;
    }

    /* renamed from: b */
    private static void m4709b(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        m4712c(bitmap);
    }

    @TargetApi(19)
    /* renamed from: c */
    private static void m4712c(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e
    /* renamed from: a */
    public void mo4677a() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        m4708b(0);
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e
    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public void mo4678a(int i) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i);
        }
        if (i >= 40) {
            mo4677a();
        } else if (i >= 20) {
            m4708b(this.f4235f / 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0014, code lost:
    
        if (android.util.Log.isLoggable("LruBitmapPool", 5) == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0016, code lost:
    
        android.util.Log.w("LruBitmapPool", "Size mismatch, resetting");
        m4713d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0020, code lost:
    
        r4.f4236g = 0;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized void m4708b(int r5) {
        /*
            r4 = this;
            monitor-enter(r4)
        L1:
            int r0 = r4.f4236g     // Catch: java.lang.Throwable -> L69
            if (r0 <= r5) goto L23
            com.a.a.d.b.a.l r0 = r4.f4231b     // Catch: java.lang.Throwable -> L69
            android.graphics.Bitmap r0 = r0.mo4663a()     // Catch: java.lang.Throwable -> L69
            if (r0 != 0) goto L25
            java.lang.String r0 = "LruBitmapPool"
            r1 = 5
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L20
            java.lang.String r0 = "LruBitmapPool"
            java.lang.String r1 = "Size mismatch, resetting"
            android.util.Log.w(r0, r1)     // Catch: java.lang.Throwable -> L69
            r4.m4713d()     // Catch: java.lang.Throwable -> L69
        L20:
            r0 = 0
            r4.f4236g = r0     // Catch: java.lang.Throwable -> L69
        L23:
            monitor-exit(r4)
            return
        L25:
            com.a.a.d.b.a.k$a r1 = r4.f4234e     // Catch: java.lang.Throwable -> L69
            r1.mo4717b(r0)     // Catch: java.lang.Throwable -> L69
            int r1 = r4.f4236g     // Catch: java.lang.Throwable -> L69
            com.a.a.d.b.a.l r2 = r4.f4231b     // Catch: java.lang.Throwable -> L69
            int r2 = r2.mo4668c(r0)     // Catch: java.lang.Throwable -> L69
            int r1 = r1 - r2
            r4.f4236g = r1     // Catch: java.lang.Throwable -> L69
            int r1 = r4.f4240k     // Catch: java.lang.Throwable -> L69
            int r1 = r1 + 1
            r4.f4240k = r1     // Catch: java.lang.Throwable -> L69
            java.lang.String r1 = "LruBitmapPool"
            r2 = 3
            boolean r1 = android.util.Log.isLoggable(r1, r2)     // Catch: java.lang.Throwable -> L69
            if (r1 == 0) goto L62
            java.lang.String r1 = "LruBitmapPool"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L69
            r2.<init>()     // Catch: java.lang.Throwable -> L69
            java.lang.String r3 = "Evicting bitmap="
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> L69
            com.a.a.d.b.a.l r3 = r4.f4231b     // Catch: java.lang.Throwable -> L69
            java.lang.String r3 = r3.mo4667b(r0)     // Catch: java.lang.Throwable -> L69
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> L69
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L69
            android.util.Log.d(r1, r2)     // Catch: java.lang.Throwable -> L69
        L62:
            r4.m4711c()     // Catch: java.lang.Throwable -> L69
            r0.recycle()     // Catch: java.lang.Throwable -> L69
            goto L1
        L69:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p052a.p053a.p057d.p060b.p061a.C0771k.m4708b(int):void");
    }

    /* renamed from: c */
    private void m4711c() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            m4713d();
        }
    }

    /* renamed from: d */
    private void m4713d() {
        Log.v("LruBitmapPool", "Hits=" + this.f4237h + ", misses=" + this.f4238i + ", puts=" + this.f4239j + ", evictions=" + this.f4240k + ", currentSize=" + this.f4236g + ", maxSize=" + this.f4235f + "\nStrategy=" + this.f4231b);
    }

    /* renamed from: e */
    private static InterfaceC0772l m4714e() {
        if (Build.VERSION.SDK_INT >= 19) {
            return new C0774n();
        }
        return new C0763c();
    }

    @TargetApi(26)
    /* renamed from: f */
    private static Set<Bitmap.Config> m4715f() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(Arrays.asList(Bitmap.Config.values()));
        if (Build.VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: com.a.a.d.b.a.k$b */
    private static class b implements a {
        b() {
        }

        @Override // com.p052a.p053a.p057d.p060b.p061a.C0771k.a
        /* renamed from: a */
        public void mo4716a(Bitmap bitmap) {
        }

        @Override // com.p052a.p053a.p057d.p060b.p061a.C0771k.a
        /* renamed from: b */
        public void mo4717b(Bitmap bitmap) {
        }
    }
}
