package android.support.design.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: a */
    @Nullable
    private AnimatorSet f1302a;

    @NonNull
    /* renamed from: b */
    protected abstract AnimatorSet mo1624b(View view, View view2, boolean z, boolean z2);

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.design.transformation.ExpandableBehavior
    @CallSuper
    /* renamed from: a */
    protected boolean mo1621a(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.f1302a != null;
        if (z3) {
            this.f1302a.cancel();
        }
        this.f1302a = mo1624b(view, view2, z, z3);
        this.f1302a.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.transformation.ExpandableTransformationBehavior.1
            C02051() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ExpandableTransformationBehavior.this.f1302a = null;
            }
        });
        this.f1302a.start();
        if (!z2) {
            this.f1302a.end();
        }
        return true;
    }

    /* renamed from: android.support.design.transformation.ExpandableTransformationBehavior$1 */
    class C02051 extends AnimatorListenerAdapter {
        C02051() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f1302a = null;
        }
    }
}
