package android.support.design.widget;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.util.AttributeSet;
import android.view.View;

/* renamed from: android.support.design.widget.r */
/* loaded from: classes.dex */
class C0289r<V extends View> extends CoordinatorLayout.AbstractC0243b<V> {

    /* renamed from: a */
    private C0290s f1858a;

    /* renamed from: b */
    private int f1859b;

    /* renamed from: c */
    private int f1860c;

    public C0289r() {
        this.f1859b = 0;
        this.f1860c = 0;
    }

    public C0289r(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1859b = 0;
        this.f1860c = 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1418a(CoordinatorLayout coordinatorLayout, V v, int i) {
        mo2125b(coordinatorLayout, (CoordinatorLayout) v, i);
        if (this.f1858a == null) {
            this.f1858a = new C0290s(v);
        }
        this.f1858a.m2203a();
        if (this.f1859b != 0) {
            this.f1858a.m2204a(this.f1859b);
            this.f1859b = 0;
        }
        if (this.f1860c != 0) {
            this.f1858a.m2206b(this.f1860c);
            this.f1860c = 0;
            return true;
        }
        return true;
    }

    /* renamed from: b */
    protected void mo2125b(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.m1800a(v, i);
    }

    /* renamed from: a */
    public boolean mo1704a(int i) {
        if (this.f1858a != null) {
            return this.f1858a.m2204a(i);
        }
        this.f1859b = i;
        return false;
    }

    /* renamed from: b */
    public int mo1705b() {
        if (this.f1858a != null) {
            return this.f1858a.m2205b();
        }
        return 0;
    }
}
