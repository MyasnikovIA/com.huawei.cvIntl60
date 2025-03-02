package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;

/* renamed from: android.support.v7.widget.ap */
/* loaded from: classes.dex */
class C0665ap {

    /* renamed from: b */
    int f3573b;

    /* renamed from: c */
    int f3574c;

    /* renamed from: d */
    int f3575d;

    /* renamed from: e */
    int f3576e;

    /* renamed from: h */
    boolean f3579h;

    /* renamed from: i */
    boolean f3580i;

    /* renamed from: a */
    boolean f3572a = true;

    /* renamed from: f */
    int f3577f = 0;

    /* renamed from: g */
    int f3578g = 0;

    C0665ap() {
    }

    /* renamed from: a */
    boolean m3991a(RecyclerView.C0614t c0614t) {
        return this.f3574c >= 0 && this.f3574c < c0614t.m3574e();
    }

    /* renamed from: a */
    View m3990a(RecyclerView.C0610p c0610p) {
        View m3535c = c0610p.m3535c(this.f3574c);
        this.f3574c += this.f3575d;
        return m3535c;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f3573b + ", mCurrentPosition=" + this.f3574c + ", mItemDirection=" + this.f3575d + ", mLayoutDirection=" + this.f3576e + ", mStartLine=" + this.f3577f + ", mEndLine=" + this.f3578g + '}';
    }
}
