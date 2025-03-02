package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

/* renamed from: android.support.design.widget.s */
/* loaded from: classes.dex */
class C0290s {

    /* renamed from: a */
    private final View f1861a;

    /* renamed from: b */
    private int f1862b;

    /* renamed from: c */
    private int f1863c;

    /* renamed from: d */
    private int f1864d;

    /* renamed from: e */
    private int f1865e;

    public C0290s(View view) {
        this.f1861a = view;
    }

    /* renamed from: a */
    public void m2203a() {
        this.f1862b = this.f1861a.getTop();
        this.f1863c = this.f1861a.getLeft();
        m2202c();
    }

    /* renamed from: c */
    private void m2202c() {
        ViewCompat.offsetTopAndBottom(this.f1861a, this.f1864d - (this.f1861a.getTop() - this.f1862b));
        ViewCompat.offsetLeftAndRight(this.f1861a, this.f1865e - (this.f1861a.getLeft() - this.f1863c));
    }

    /* renamed from: a */
    public boolean m2204a(int i) {
        if (this.f1864d == i) {
            return false;
        }
        this.f1864d = i;
        m2202c();
        return true;
    }

    /* renamed from: b */
    public boolean m2206b(int i) {
        if (this.f1865e == i) {
            return false;
        }
        this.f1865e = i;
        m2202c();
        return true;
    }

    /* renamed from: b */
    public int m2205b() {
        return this.f1864d;
    }
}
