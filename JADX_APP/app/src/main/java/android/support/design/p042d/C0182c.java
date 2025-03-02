package android.support.design.p042d;

import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.design.widget.CoordinatorLayout;
import android.view.View;
import android.view.ViewParent;

/* renamed from: android.support.design.d.c */
/* loaded from: classes.dex */
public final class C0182c {

    /* renamed from: a */
    private final View f1140a;

    /* renamed from: b */
    private boolean f1141b;

    /* renamed from: c */
    @IdRes
    private int f1142c;

    /* renamed from: a */
    public boolean m1498a() {
        return this.f1141b;
    }

    /* renamed from: b */
    public Bundle m1499b() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f1141b);
        bundle.putInt("expandedComponentIdHint", this.f1142c);
        return bundle;
    }

    /* renamed from: a */
    public void m1497a(Bundle bundle) {
        this.f1141b = bundle.getBoolean("expanded", false);
        this.f1142c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f1141b) {
            m1495d();
        }
    }

    /* renamed from: a */
    public void m1496a(@IdRes int i) {
        this.f1142c = i;
    }

    @IdRes
    /* renamed from: c */
    public int m1500c() {
        return this.f1142c;
    }

    /* renamed from: d */
    private void m1495d() {
        ViewParent parent = this.f1140a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).m1807b(this.f1140a);
        }
    }
}
