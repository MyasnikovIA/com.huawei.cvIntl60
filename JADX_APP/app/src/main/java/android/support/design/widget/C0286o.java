package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.support.annotation.RestrictTo;
import android.util.StateSet;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.widget.o */
/* loaded from: classes.dex */
public final class C0286o {

    /* renamed from: b */
    private final ArrayList<a> f1849b = new ArrayList<>();

    /* renamed from: c */
    private a f1850c = null;

    /* renamed from: a */
    ValueAnimator f1848a = null;

    /* renamed from: d */
    private final Animator.AnimatorListener f1851d = new AnimatorListenerAdapter() { // from class: android.support.design.widget.o.1
        AnonymousClass1() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (C0286o.this.f1848a == animator) {
                C0286o.this.f1848a = null;
            }
        }
    };

    /* renamed from: android.support.design.widget.o$1 */
    class AnonymousClass1 extends AnimatorListenerAdapter {
        AnonymousClass1() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (C0286o.this.f1848a == animator) {
                C0286o.this.f1848a = null;
            }
        }
    }

    /* renamed from: a */
    public void m2201a(int[] iArr, ValueAnimator valueAnimator) {
        a aVar = new a(iArr, valueAnimator);
        valueAnimator.addListener(this.f1851d);
        this.f1849b.add(aVar);
    }

    /* renamed from: a */
    public void m2200a(int[] iArr) {
        a aVar;
        int size = this.f1849b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.f1849b.get(i);
            if (StateSet.stateSetMatches(aVar.f1853a, iArr)) {
                break;
            } else {
                i++;
            }
        }
        if (aVar != this.f1850c) {
            if (this.f1850c != null) {
                m2198b();
            }
            this.f1850c = aVar;
            if (aVar != null) {
                m2197a(aVar);
            }
        }
    }

    /* renamed from: a */
    private void m2197a(a aVar) {
        this.f1848a = aVar.f1854b;
        this.f1848a.start();
    }

    /* renamed from: b */
    private void m2198b() {
        if (this.f1848a != null) {
            this.f1848a.cancel();
            this.f1848a = null;
        }
    }

    /* renamed from: a */
    public void m2199a() {
        if (this.f1848a != null) {
            this.f1848a.end();
            this.f1848a = null;
        }
    }

    /* renamed from: android.support.design.widget.o$a */
    static class a {

        /* renamed from: a */
        final int[] f1853a;

        /* renamed from: b */
        final ValueAnimator f1854b;

        a(int[] iArr, ValueAnimator valueAnimator) {
            this.f1853a = iArr;
            this.f1854b = valueAnimator;
        }
    }
}
