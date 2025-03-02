package android.support.design.p038a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* renamed from: android.support.design.a.i */
/* loaded from: classes.dex */
public class C0163i {

    /* renamed from: a */
    private long f1051a;

    /* renamed from: b */
    private long f1052b;

    /* renamed from: c */
    @Nullable
    private TimeInterpolator f1053c;

    /* renamed from: d */
    private int f1054d;

    /* renamed from: e */
    private int f1055e;

    public C0163i(long j, long j2) {
        this.f1051a = 0L;
        this.f1052b = 300L;
        this.f1053c = null;
        this.f1054d = 0;
        this.f1055e = 1;
        this.f1051a = j;
        this.f1052b = j2;
    }

    public C0163i(long j, long j2, @NonNull TimeInterpolator timeInterpolator) {
        this.f1051a = 0L;
        this.f1052b = 300L;
        this.f1053c = null;
        this.f1054d = 0;
        this.f1055e = 1;
        this.f1051a = j;
        this.f1052b = j2;
        this.f1053c = timeInterpolator;
    }

    /* renamed from: a */
    public void m1381a(Animator animator) {
        animator.setStartDelay(m1380a());
        animator.setDuration(m1382b());
        animator.setInterpolator(m1383c());
        if (animator instanceof ValueAnimator) {
            ((ValueAnimator) animator).setRepeatCount(m1384d());
            ((ValueAnimator) animator).setRepeatMode(m1385e());
        }
    }

    /* renamed from: a */
    public long m1380a() {
        return this.f1051a;
    }

    /* renamed from: b */
    public long m1382b() {
        return this.f1052b;
    }

    /* renamed from: c */
    public TimeInterpolator m1383c() {
        return this.f1053c != null ? this.f1053c : C0155a.f1038b;
    }

    /* renamed from: d */
    public int m1384d() {
        return this.f1054d;
    }

    /* renamed from: e */
    public int m1385e() {
        return this.f1055e;
    }

    /* renamed from: a */
    static C0163i m1378a(ValueAnimator valueAnimator) {
        C0163i c0163i = new C0163i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), m1379b(valueAnimator));
        c0163i.f1054d = valueAnimator.getRepeatCount();
        c0163i.f1055e = valueAnimator.getRepeatMode();
        return c0163i;
    }

    /* renamed from: b */
    private static TimeInterpolator m1379b(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return C0155a.f1038b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return C0155a.f1039c;
        }
        if (interpolator instanceof DecelerateInterpolator) {
            return C0155a.f1040d;
        }
        return interpolator;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0163i c0163i = (C0163i) obj;
        if (m1380a() == c0163i.m1380a() && m1382b() == c0163i.m1382b() && m1384d() == c0163i.m1384d() && m1385e() == c0163i.m1385e()) {
            return m1383c().getClass().equals(c0163i.m1383c().getClass());
        }
        return false;
    }

    public int hashCode() {
        return (((((((((int) (m1380a() ^ (m1380a() >>> 32))) * 31) + ((int) (m1382b() ^ (m1382b() >>> 32)))) * 31) + m1383c().getClass().hashCode()) * 31) + m1384d()) * 31) + m1385e();
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + m1380a() + " duration: " + m1382b() + " interpolator: " + m1383c().getClass() + " repeatCount: " + m1384d() + " repeatMode: " + m1385e() + "}\n";
    }
}
