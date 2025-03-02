package android.support.v7.view;

import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.h */
/* loaded from: classes.dex */
public class C0533h {

    /* renamed from: b */
    ViewPropertyAnimatorListener f2582b;

    /* renamed from: d */
    private Interpolator f2584d;

    /* renamed from: e */
    private boolean f2585e;

    /* renamed from: c */
    private long f2583c = -1;

    /* renamed from: f */
    private final ViewPropertyAnimatorListenerAdapter f2586f = new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.view.h.1

        /* renamed from: b */
        private boolean f2588b = false;

        /* renamed from: c */
        private int f2589c = 0;

        AnonymousClass1() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            if (!this.f2588b) {
                this.f2588b = true;
                if (C0533h.this.f2582b != null) {
                    C0533h.this.f2582b.onAnimationStart(null);
                }
            }
        }

        /* renamed from: a */
        void m2771a() {
            this.f2589c = 0;
            this.f2588b = false;
            C0533h.this.m2769b();
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            int i = this.f2589c + 1;
            this.f2589c = i;
            if (i == C0533h.this.f2581a.size()) {
                if (C0533h.this.f2582b != null) {
                    C0533h.this.f2582b.onAnimationEnd(null);
                }
                m2771a();
            }
        }
    };

    /* renamed from: a */
    final ArrayList<ViewPropertyAnimatorCompat> f2581a = new ArrayList<>();

    /* renamed from: a */
    public C0533h m2764a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        if (!this.f2585e) {
            this.f2581a.add(viewPropertyAnimatorCompat);
        }
        return this;
    }

    /* renamed from: a */
    public C0533h m2765a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2) {
        this.f2581a.add(viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompat2.setStartDelay(viewPropertyAnimatorCompat.getDuration());
        this.f2581a.add(viewPropertyAnimatorCompat2);
        return this;
    }

    /* renamed from: a */
    public void m2768a() {
        if (!this.f2585e) {
            Iterator<ViewPropertyAnimatorCompat> it = this.f2581a.iterator();
            while (it.hasNext()) {
                ViewPropertyAnimatorCompat next = it.next();
                if (this.f2583c >= 0) {
                    next.setDuration(this.f2583c);
                }
                if (this.f2584d != null) {
                    next.setInterpolator(this.f2584d);
                }
                if (this.f2582b != null) {
                    next.setListener(this.f2586f);
                }
                next.start();
            }
            this.f2585e = true;
        }
    }

    /* renamed from: b */
    void m2769b() {
        this.f2585e = false;
    }

    /* renamed from: c */
    public void m2770c() {
        if (this.f2585e) {
            Iterator<ViewPropertyAnimatorCompat> it = this.f2581a.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.f2585e = false;
        }
    }

    /* renamed from: a */
    public C0533h m2763a(long j) {
        if (!this.f2585e) {
            this.f2583c = j;
        }
        return this;
    }

    /* renamed from: a */
    public C0533h m2767a(Interpolator interpolator) {
        if (!this.f2585e) {
            this.f2584d = interpolator;
        }
        return this;
    }

    /* renamed from: a */
    public C0533h m2766a(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (!this.f2585e) {
            this.f2582b = viewPropertyAnimatorListener;
        }
        return this;
    }

    /* renamed from: android.support.v7.view.h$1 */
    class AnonymousClass1 extends ViewPropertyAnimatorListenerAdapter {

        /* renamed from: b */
        private boolean f2588b = false;

        /* renamed from: c */
        private int f2589c = 0;

        AnonymousClass1() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            if (!this.f2588b) {
                this.f2588b = true;
                if (C0533h.this.f2582b != null) {
                    C0533h.this.f2582b.onAnimationStart(null);
                }
            }
        }

        /* renamed from: a */
        void m2771a() {
            this.f2589c = 0;
            this.f2588b = false;
            C0533h.this.m2769b();
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            int i = this.f2589c + 1;
            this.f2589c = i;
            if (i == C0533h.this.f2581a.size()) {
                if (C0533h.this.f2582b != null) {
                    C0533h.this.f2582b.onAnimationEnd(null);
                }
                m2771a();
            }
        }
    }
}
