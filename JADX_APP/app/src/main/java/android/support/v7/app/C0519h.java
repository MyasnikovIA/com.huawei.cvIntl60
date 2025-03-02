package android.support.v7.app;

/* renamed from: android.support.v7.app.h */
/* loaded from: classes.dex */
class C0519h {

    /* renamed from: d */
    private static C0519h f2393d;

    /* renamed from: a */
    public long f2394a;

    /* renamed from: b */
    public long f2395b;

    /* renamed from: c */
    public int f2396c;

    C0519h() {
    }

    /* renamed from: a */
    static C0519h m2620a() {
        if (f2393d == null) {
            f2393d = new C0519h();
        }
        return f2393d;
    }

    /* renamed from: a */
    public void m2621a(long j, double d, double d2) {
        float f = 6.24006f + (0.01720197f * ((j - 946728000000L) / 8.64E7f));
        double sin = f + (0.03341960161924362d * Math.sin(f)) + (3.4906598739326E-4d * Math.sin(2.0f * f)) + (5.236000106378924E-6d * Math.sin(3.0f * f)) + 1.796593063d + 3.141592653589793d;
        double sin2 = (Math.sin(f) * 0.0053d) + ((-d2) / 360.0d) + Math.round((r2 - 9.0E-4f) - r6) + 9.0E-4f + ((-0.0069d) * Math.sin(2.0d * sin));
        double asin = Math.asin(Math.sin(sin) * Math.sin(0.4092797040939331d));
        double d3 = 0.01745329238474369d * d;
        double sin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(d3) * Math.sin(asin))) / (Math.cos(asin) * Math.cos(d3));
        if (sin3 >= 1.0d) {
            this.f2396c = 1;
            this.f2394a = -1L;
            this.f2395b = -1L;
        } else {
            if (sin3 <= -1.0d) {
                this.f2396c = 0;
                this.f2394a = -1L;
                this.f2395b = -1L;
                return;
            }
            float acos = (float) (Math.acos(sin3) / 6.283185307179586d);
            this.f2394a = Math.round((acos + sin2) * 8.64E7d) + 946728000000L;
            this.f2395b = Math.round((sin2 - acos) * 8.64E7d) + 946728000000L;
            if (this.f2395b < j && this.f2394a > j) {
                this.f2396c = 0;
            } else {
                this.f2396c = 1;
            }
        }
    }
}
