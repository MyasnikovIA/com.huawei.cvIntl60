package android.support.design.bottomappbar;

import android.support.design.p045g.C0186b;
import android.support.design.p045g.C0188d;

/* renamed from: android.support.design.bottomappbar.a */
/* loaded from: classes.dex */
public class C0174a extends C0186b {

    /* renamed from: a */
    private float f1115a;

    /* renamed from: b */
    private float f1116b;

    /* renamed from: c */
    private float f1117c;

    /* renamed from: d */
    private float f1118d;

    /* renamed from: e */
    private float f1119e;

    @Override // android.support.design.p045g.C0186b
    /* renamed from: a */
    public void mo1455a(float f, float f2, C0188d c0188d) {
        if (this.f1117c == 0.0f) {
            c0188d.m1525b(f, 0.0f);
            return;
        }
        float f3 = ((this.f1116b * 2.0f) + this.f1117c) / 2.0f;
        float f4 = f2 * this.f1115a;
        float f5 = (f / 2.0f) + this.f1119e;
        float f6 = (this.f1118d * f2) + ((1.0f - f2) * f3);
        if (f6 / f3 >= 1.0f) {
            c0188d.m1525b(f, 0.0f);
            return;
        }
        float f7 = f3 + f4;
        float f8 = f6 + f4;
        float sqrt = (float) Math.sqrt((f7 * f7) - (f8 * f8));
        float f9 = f5 - sqrt;
        float f10 = f5 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f8));
        float f11 = 90.0f - degrees;
        c0188d.m1525b(f9 - f4, 0.0f);
        c0188d.m1523a(f9 - f4, 0.0f, f9 + f4, f4 * 2.0f, 270.0f, degrees);
        c0188d.m1523a(f5 - f3, (-f3) - f6, f5 + f3, f3 - f6, 180.0f - f11, (2.0f * f11) - 180.0f);
        c0188d.m1523a(f10 - f4, 0.0f, f10 + f4, f4 * 2.0f, 270.0f - degrees, degrees);
        c0188d.m1525b(f, 0.0f);
    }

    /* renamed from: a */
    void m1454a(float f) {
        this.f1119e = f;
    }

    /* renamed from: a */
    float m1453a() {
        return this.f1119e;
    }

    /* renamed from: b */
    float m1456b() {
        return this.f1118d;
    }

    /* renamed from: b */
    void m1457b(float f) {
        this.f1118d = f;
    }

    /* renamed from: c */
    float m1458c() {
        return this.f1117c;
    }

    /* renamed from: c */
    void m1459c(float f) {
        this.f1117c = f;
    }

    /* renamed from: d */
    float m1460d() {
        return this.f1116b;
    }

    /* renamed from: d */
    void m1461d(float f) {
        this.f1116b = f;
    }

    /* renamed from: e */
    float m1462e() {
        return this.f1115a;
    }

    /* renamed from: e */
    void m1463e(float f) {
        this.f1115a = f;
    }
}
