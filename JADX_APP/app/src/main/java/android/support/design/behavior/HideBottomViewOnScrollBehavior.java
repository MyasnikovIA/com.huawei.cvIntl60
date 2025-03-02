package android.support.design.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.support.design.p038a.C0155a;
import android.support.design.widget.CoordinatorLayout;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.AbstractC0243b<V> {

    /* renamed from: a */
    private int f1090a;

    /* renamed from: b */
    private int f1091b;

    /* renamed from: c */
    private ViewPropertyAnimator f1092c;

    public HideBottomViewOnScrollBehavior() {
        this.f1090a = 0;
        this.f1091b = 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1090a = 0;
        this.f1091b = 2;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1418a(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f1090a = v.getMeasuredHeight();
        return super.mo1418a(coordinatorLayout, (CoordinatorLayout) v, i);
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1419a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        return i == 2;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public void mo1416a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        if (this.f1091b != 1 && i2 > 0) {
            mo1420b(v);
        } else if (this.f1091b != 2 && i2 < 0) {
            mo1417a((HideBottomViewOnScrollBehavior<V>) v);
        }
    }

    /* renamed from: a */
    protected void mo1417a(V v) {
        if (this.f1092c != null) {
            this.f1092c.cancel();
            v.clearAnimation();
        }
        this.f1091b = 2;
        m1415a((HideBottomViewOnScrollBehavior<V>) v, 0, 225L, C0155a.f1040d);
    }

    /* renamed from: b */
    protected void mo1420b(V v) {
        if (this.f1092c != null) {
            this.f1092c.cancel();
            v.clearAnimation();
        }
        this.f1091b = 1;
        m1415a((HideBottomViewOnScrollBehavior<V>) v, this.f1090a, 175L, C0155a.f1039c);
    }

    /* renamed from: a */
    private void m1415a(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f1092c = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: android.support.design.behavior.HideBottomViewOnScrollBehavior.1
            C01681() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HideBottomViewOnScrollBehavior.this.f1092c = null;
            }
        });
    }

    /* renamed from: android.support.design.behavior.HideBottomViewOnScrollBehavior$1 */
    class C01681 extends AnimatorListenerAdapter {
        C01681() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f1092c = null;
        }
    }
}
