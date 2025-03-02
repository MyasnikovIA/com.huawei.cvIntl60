package com.p052a.p053a.p057d.p060b.p062b;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

/* renamed from: com.a.a.d.b.b.i */
/* loaded from: classes.dex */
public final class C0784i {

    /* renamed from: a */
    private final int f4270a;

    /* renamed from: b */
    private final int f4271b;

    /* renamed from: c */
    private final Context f4272c;

    /* renamed from: d */
    private final int f4273d;

    /* renamed from: com.a.a.d.b.b.i$c */
    interface c {
        /* renamed from: a */
        int mo4762a();

        /* renamed from: b */
        int mo4763b();
    }

    C0784i(a aVar) {
        this.f4272c = aVar.f4275b;
        this.f4273d = m4749b(aVar.f4276c) ? aVar.f4282i / 2 : aVar.f4282i;
        int m4746a = m4746a(aVar.f4276c, aVar.f4280g, aVar.f4281h);
        int mo4762a = aVar.f4277d.mo4762a() * aVar.f4277d.mo4763b() * 4;
        int round = Math.round(mo4762a * aVar.f4279f);
        int round2 = Math.round(mo4762a * aVar.f4278e);
        int i = m4746a - this.f4273d;
        if (round2 + round <= i) {
            this.f4271b = round2;
            this.f4270a = round;
        } else {
            float f = i / (aVar.f4279f + aVar.f4278e);
            this.f4271b = Math.round(aVar.f4278e * f);
            this.f4270a = Math.round(f * aVar.f4279f);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            Log.d("MemorySizeCalculator", "Calculation complete, Calculated memory cache size: " + m4747a(this.f4271b) + ", pool size: " + m4747a(this.f4270a) + ", byte array size: " + m4747a(this.f4273d) + ", memory class limited? " + (round2 + round > m4746a) + ", max size: " + m4747a(m4746a) + ", memoryClass: " + aVar.f4276c.getMemoryClass() + ", isLowMemoryDevice: " + m4749b(aVar.f4276c));
        }
    }

    /* renamed from: a */
    public int m4750a() {
        return this.f4271b;
    }

    /* renamed from: b */
    public int m4751b() {
        return this.f4270a;
    }

    /* renamed from: c */
    public int m4752c() {
        return this.f4273d;
    }

    /* renamed from: a */
    private static int m4746a(ActivityManager activityManager, float f, float f2) {
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (!m4749b(activityManager)) {
            f2 = f;
        }
        return Math.round(memoryClass * f2);
    }

    /* renamed from: a */
    private String m4747a(int i) {
        return Formatter.formatFileSize(this.f4272c, i);
    }

    /* renamed from: b */
    public static boolean m4749b(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return false;
    }

    /* renamed from: com.a.a.d.b.b.i$a */
    public static final class a {

        /* renamed from: a */
        static final int f4274a;

        /* renamed from: b */
        private final Context f4275b;

        /* renamed from: c */
        private ActivityManager f4276c;

        /* renamed from: d */
        private c f4277d;

        /* renamed from: f */
        private float f4279f;

        /* renamed from: e */
        private float f4278e = 2.0f;

        /* renamed from: g */
        private float f4280g = 0.4f;

        /* renamed from: h */
        private float f4281h = 0.33f;

        /* renamed from: i */
        private int f4282i = 4194304;

        static {
            f4274a = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f4279f = f4274a;
            this.f4275b = context;
            this.f4276c = (ActivityManager) context.getSystemService("activity");
            this.f4277d = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT >= 26 && C0784i.m4749b(this.f4276c)) {
                this.f4279f = 0.0f;
            }
        }

        /* renamed from: a */
        public C0784i m4761a() {
            return new C0784i(this);
        }
    }

    /* renamed from: com.a.a.d.b.b.i$b */
    private static final class b implements c {

        /* renamed from: a */
        private final DisplayMetrics f4283a;

        public b(DisplayMetrics displayMetrics) {
            this.f4283a = displayMetrics;
        }

        @Override // com.p052a.p053a.p057d.p060b.p062b.C0784i.c
        /* renamed from: a */
        public int mo4762a() {
            return this.f4283a.widthPixels;
        }

        @Override // com.p052a.p053a.p057d.p060b.p062b.C0784i.c
        /* renamed from: b */
        public int mo4763b() {
            return this.f4283a.heightPixels;
        }
    }
}
