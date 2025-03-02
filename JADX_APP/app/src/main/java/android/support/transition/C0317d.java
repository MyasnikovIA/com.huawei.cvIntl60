package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: android.support.transition.d */
/* loaded from: classes.dex */
public class C0317d extends AbstractC0311ai {
    public C0317d(int i) {
        m2325a(i);
    }

    public C0317d() {
    }

    @Override // android.support.transition.AbstractC0311ai, android.support.transition.AbstractC0325l
    /* renamed from: a */
    public void mo2326a(@NonNull C0331s c0331s) {
        super.mo2326a(c0331s);
        c0331s.f2134a.put("android:fade:transitionAlpha", Float.valueOf(C0306ad.m2301c(c0331s.f2135b)));
    }

    /* renamed from: a */
    private Animator m2357a(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        C0306ad.m2295a(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, C0306ad.f1974a, f2);
        ofFloat.addListener(new a(view));
        mo2381a(new C0326m() { // from class: android.support.transition.d.1

            /* renamed from: a */
            final /* synthetic */ View f2045a;

            AnonymousClass1(View view2) {
                view = view2;
            }

            @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
            /* renamed from: a */
            public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
                C0306ad.m2295a(view, 1.0f);
                C0306ad.m2303e(view);
                abstractC0325l.mo2395b(this);
            }
        });
        return ofFloat;
    }

    /* renamed from: android.support.transition.d$1 */
    class AnonymousClass1 extends C0326m {

        /* renamed from: a */
        final /* synthetic */ View f2045a;

        AnonymousClass1(View view2) {
            view = view2;
        }

        @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
        /* renamed from: a */
        public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
            C0306ad.m2295a(view, 1.0f);
            C0306ad.m2303e(view);
            abstractC0325l.mo2395b(this);
        }
    }

    @Override // android.support.transition.AbstractC0311ai
    /* renamed from: a */
    public Animator mo2324a(ViewGroup viewGroup, View view, C0331s c0331s, C0331s c0331s2) {
        float m2356a = m2356a(c0331s, 0.0f);
        return m2357a(view, m2356a != 1.0f ? m2356a : 0.0f, 1.0f);
    }

    @Override // android.support.transition.AbstractC0311ai
    /* renamed from: b */
    public Animator mo2330b(ViewGroup viewGroup, View view, C0331s c0331s, C0331s c0331s2) {
        C0306ad.m2302d(view);
        return m2357a(view, m2356a(c0331s, 1.0f), 0.0f);
    }

    /* renamed from: a */
    private static float m2356a(C0331s c0331s, float f) {
        Float f2;
        if (c0331s != null && (f2 = (Float) c0331s.f2134a.get("android:fade:transitionAlpha")) != null) {
            return f2.floatValue();
        }
        return f;
    }

    /* renamed from: android.support.transition.d$a */
    private static class a extends AnimatorListenerAdapter {

        /* renamed from: a */
        private final View f2047a;

        /* renamed from: b */
        private boolean f2048b = false;

        a(View view) {
            this.f2047a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (ViewCompat.hasOverlappingRendering(this.f2047a) && this.f2047a.getLayerType() == 0) {
                this.f2048b = true;
                this.f2047a.setLayerType(2, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0306ad.m2295a(this.f2047a, 1.0f);
            if (this.f2048b) {
                this.f2047a.setLayerType(0, null);
            }
        }
    }
}
