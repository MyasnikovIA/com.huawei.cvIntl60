package android.support.design.widget;

/* renamed from: android.support.design.widget.k */
/* loaded from: classes.dex */
public final class C0282k {
    /* renamed from: a */
    public static float m2167a(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* renamed from: a */
    public static float m2166a(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    /* renamed from: b */
    public static boolean m2170b(float f, float f2, float f3) {
        return f + f3 >= f2;
    }

    /* renamed from: a */
    public static float m2168a(float f, float f2, float f3, float f4, float f5, float f6) {
        return m2169b(m2167a(f, f2, f3, f4), m2167a(f, f2, f5, f4), m2167a(f, f2, f5, f6), m2167a(f, f2, f3, f6));
    }

    /* renamed from: b */
    private static float m2169b(float f, float f2, float f3, float f4) {
        return (f <= f2 || f <= f3 || f <= f4) ? (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2 : f;
    }
}
