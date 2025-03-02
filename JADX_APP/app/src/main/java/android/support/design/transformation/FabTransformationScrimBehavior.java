package android.support.design.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.design.p038a.C0156b;
import android.support.design.p038a.C0163i;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    /* renamed from: a */
    private final C0163i f1321a;

    /* renamed from: b */
    private final C0163i f1322b;

    public FabTransformationScrimBehavior() {
        this.f1321a = new C0163i(75L, 150L);
        this.f1322b = new C0163i(0L, 150L);
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1321a = new C0163i(75L, 150L);
        this.f1322b = new C0163i(0L, 150L);
    }

    @Override // android.support.design.transformation.ExpandableBehavior, android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1620a(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1646a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return super.mo1646a(coordinatorLayout, (CoordinatorLayout) view, motionEvent);
    }

    @Override // android.support.design.transformation.ExpandableTransformationBehavior
    @NonNull
    /* renamed from: b */
    protected AnimatorSet mo1624b(View view, View view2, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        m1645a(view2, z, z2, arrayList, new ArrayList());
        AnimatorSet animatorSet = new AnimatorSet();
        C0156b.m1361a(animatorSet, arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.transformation.FabTransformationScrimBehavior.1

            /* renamed from: a */
            final /* synthetic */ boolean f1323a;

            /* renamed from: b */
            final /* synthetic */ View f1324b;

            C02111(boolean z3, View view22) {
                z = z3;
                view2 = view22;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (z) {
                    view2.setVisibility(0);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!z) {
                    view2.setVisibility(4);
                }
            }
        });
        return animatorSet;
    }

    /* renamed from: android.support.design.transformation.FabTransformationScrimBehavior$1 */
    class C02111 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ boolean f1323a;

        /* renamed from: b */
        final /* synthetic */ View f1324b;

        C02111(boolean z3, View view22) {
            z = z3;
            view2 = view22;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (z) {
                view2.setVisibility(0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!z) {
                view2.setVisibility(4);
            }
        }
    }

    /* renamed from: a */
    private void m1645a(View view, boolean z, boolean z2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofFloat;
        C0163i c0163i = z ? this.f1321a : this.f1322b;
        if (z) {
            if (!z2) {
                view.setAlpha(0.0f);
            }
            ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 1.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f);
        }
        c0163i.m1381a((Animator) ofFloat);
        list.add(ofFloat);
    }
}
