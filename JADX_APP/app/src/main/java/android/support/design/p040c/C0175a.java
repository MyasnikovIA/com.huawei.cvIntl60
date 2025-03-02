package android.support.design.p040c;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.support.design.p040c.InterfaceC0179d;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;

/* renamed from: android.support.design.c.a */
/* loaded from: classes.dex */
public final class C0175a {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static Animator m1465a(InterfaceC0179d interfaceC0179d, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(interfaceC0179d, (Property<InterfaceC0179d, V>) InterfaceC0179d.b.f1135a, (TypeEvaluator) InterfaceC0179d.a.f1133a, (Object[]) new InterfaceC0179d.d[]{new InterfaceC0179d.d(f, f2, f3)});
        if (Build.VERSION.SDK_INT < 21) {
            return ofObject;
        }
        InterfaceC0179d.d revealInfo = interfaceC0179d.getRevealInfo();
        if (revealInfo == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) interfaceC0179d, (int) f, (int) f2, revealInfo.f1139c, f3);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofObject, createCircularReveal);
        return animatorSet;
    }

    /* renamed from: android.support.design.c.a$1 */
    static class AnonymousClass1 extends AnimatorListenerAdapter {
        AnonymousClass1() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            InterfaceC0179d.this.mo1466a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            InterfaceC0179d.this.mo1468b();
        }
    }

    /* renamed from: a */
    public static Animator.AnimatorListener m1464a(InterfaceC0179d interfaceC0179d) {
        return new AnimatorListenerAdapter() { // from class: android.support.design.c.a.1
            AnonymousClass1() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                InterfaceC0179d.this.mo1466a();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                InterfaceC0179d.this.mo1468b();
            }
        };
    }
}
