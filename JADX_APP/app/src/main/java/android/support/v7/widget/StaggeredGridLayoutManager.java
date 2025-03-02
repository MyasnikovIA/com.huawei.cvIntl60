package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.AbstractC0603i implements RecyclerView.AbstractC0613s.b {

    /* renamed from: A */
    private SavedState f3311A;

    /* renamed from: B */
    private int f3312B;

    /* renamed from: G */
    private int[] f3317G;

    /* renamed from: a */
    C0640c[] f3319a;

    /* renamed from: b */
    @NonNull
    AbstractC0671av f3320b;

    /* renamed from: c */
    @NonNull
    AbstractC0671av f3321c;

    /* renamed from: j */
    private int f3328j;

    /* renamed from: k */
    private int f3329k;

    /* renamed from: l */
    @NonNull
    private final C0665ap f3330l;

    /* renamed from: m */
    private BitSet f3331m;

    /* renamed from: o */
    private boolean f3333o;

    /* renamed from: z */
    private boolean f3334z;

    /* renamed from: i */
    private int f3327i = -1;

    /* renamed from: d */
    boolean f3322d = false;

    /* renamed from: e */
    boolean f3323e = false;

    /* renamed from: f */
    int f3324f = -1;

    /* renamed from: g */
    int f3325g = Integer.MIN_VALUE;

    /* renamed from: h */
    LazySpanLookup f3326h = new LazySpanLookup();

    /* renamed from: n */
    private int f3332n = 2;

    /* renamed from: C */
    private final Rect f3313C = new Rect();

    /* renamed from: D */
    private final C0638a f3314D = new C0638a();

    /* renamed from: E */
    private boolean f3315E = false;

    /* renamed from: F */
    private boolean f3316F = true;

    /* renamed from: H */
    private final Runnable f3318H = new Runnable() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.1
        RunnableC06351() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m3727g();
        }
    };

    /* renamed from: android.support.v7.widget.StaggeredGridLayoutManager$1 */
    class RunnableC06351 implements Runnable {
        RunnableC06351() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m3727g();
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.AbstractC0603i.b a2 = m3384a(context, attributeSet, i, i2);
        m3722b(a2.f3154a);
        m3717a(a2.f3155b);
        m3720a(a2.f3156c);
        this.f3330l = new C0665ap();
        m3676M();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: c */
    public boolean mo3151c() {
        return this.f3332n != 0;
    }

    /* renamed from: M */
    private void m3676M() {
        this.f3320b = AbstractC0671av.m4053a(this, this.f3328j);
        this.f3321c = AbstractC0671av.m4053a(this, 1 - this.f3328j);
    }

    /* renamed from: g */
    boolean m3727g() {
        int m3716L;
        int m3715K;
        if (m3477v() == 0 || this.f3332n == 0 || !m3472q()) {
            return false;
        }
        if (this.f3323e) {
            m3716L = m3715K();
            m3715K = m3716L();
        } else {
            m3716L = m3716L();
            m3715K = m3715K();
        }
        if (m3716L == 0 && m3728h() != null) {
            this.f3326h.m3739a();
            m3399I();
            m3470o();
            return true;
        }
        if (!this.f3315E) {
            return false;
        }
        int i = this.f3323e ? -1 : 1;
        LazySpanLookup.FullSpanItem m3738a = this.f3326h.m3738a(m3716L, m3715K + 1, i, true);
        if (m3738a == null) {
            this.f3315E = false;
            this.f3326h.m3737a(m3715K + 1);
            return false;
        }
        LazySpanLookup.FullSpanItem m3738a2 = this.f3326h.m3738a(m3716L, m3738a.f3338a, i * (-1), true);
        if (m3738a2 == null) {
            this.f3326h.m3737a(m3738a.f3338a);
        } else {
            this.f3326h.m3737a(m3738a2.f3338a + 1);
        }
        m3399I();
        m3470o();
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: l */
    public void mo3466l(int i) {
        if (i == 0) {
            m3727g();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3141a(RecyclerView recyclerView, RecyclerView.C0610p c0610p) {
        super.mo3141a(recyclerView, c0610p);
        m3429a(this.f3318H);
        for (int i = 0; i < this.f3327i; i++) {
            this.f3319a[i].m3777e();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x005d A[SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.view.View m3728h() {
        /*
            r12 = this;
            r0 = -1
            r5 = 0
            r3 = 1
            int r1 = r12.m3477v()
            int r1 = r1 + (-1)
            java.util.BitSet r9 = new java.util.BitSet
            int r2 = r12.f3327i
            r9.<init>(r2)
            int r2 = r12.f3327i
            r9.set(r5, r2, r3)
            int r2 = r12.f3328j
            if (r2 != r3) goto L49
            boolean r2 = r12.m3730j()
            if (r2 == 0) goto L49
            r2 = r3
        L20:
            boolean r4 = r12.f3323e
            if (r4 == 0) goto L4b
            r8 = r0
        L25:
            if (r1 >= r8) goto L50
            r4 = r3
        L28:
            r7 = r1
        L29:
            if (r7 == r8) goto Lb5
            android.view.View r6 = r12.m3460i(r7)
            android.view.ViewGroup$LayoutParams r0 = r6.getLayoutParams()
            android.support.v7.widget.StaggeredGridLayoutManager$b r0 = (android.support.v7.widget.StaggeredGridLayoutManager.C0639b) r0
            android.support.v7.widget.StaggeredGridLayoutManager$c r1 = r0.f3359a
            int r1 = r1.f3365e
            boolean r1 = r9.get(r1)
            if (r1 == 0) goto L59
            android.support.v7.widget.StaggeredGridLayoutManager$c r1 = r0.f3359a
            boolean r1 = r12.m3690a(r1)
            if (r1 == 0) goto L52
            r0 = r6
        L48:
            return r0
        L49:
            r2 = r0
            goto L20
        L4b:
            int r4 = r1 + 1
            r8 = r4
            r1 = r5
            goto L25
        L50:
            r4 = r0
            goto L28
        L52:
            android.support.v7.widget.StaggeredGridLayoutManager$c r1 = r0.f3359a
            int r1 = r1.f3365e
            r9.clear(r1)
        L59:
            boolean r1 = r0.f3360b
            if (r1 == 0) goto L61
        L5d:
            int r0 = r7 + r4
            r7 = r0
            goto L29
        L61:
            int r1 = r7 + r4
            if (r1 == r8) goto L5d
            int r1 = r7 + r4
            android.view.View r10 = r12.m3460i(r1)
            boolean r1 = r12.f3323e
            if (r1 == 0) goto L9d
            android.support.v7.widget.av r1 = r12.f3320b
            int r1 = r1.mo4059b(r6)
            android.support.v7.widget.av r11 = r12.f3320b
            int r11 = r11.mo4059b(r10)
            if (r1 >= r11) goto L7f
            r0 = r6
            goto L48
        L7f:
            if (r1 != r11) goto Lb7
            r1 = r3
        L82:
            if (r1 == 0) goto L5d
            android.view.ViewGroup$LayoutParams r1 = r10.getLayoutParams()
            android.support.v7.widget.StaggeredGridLayoutManager$b r1 = (android.support.v7.widget.StaggeredGridLayoutManager.C0639b) r1
            android.support.v7.widget.StaggeredGridLayoutManager$c r0 = r0.f3359a
            int r0 = r0.f3365e
            android.support.v7.widget.StaggeredGridLayoutManager$c r1 = r1.f3359a
            int r1 = r1.f3365e
            int r0 = r0 - r1
            if (r0 >= 0) goto Lb1
            r1 = r3
        L96:
            if (r2 >= 0) goto Lb3
            r0 = r3
        L99:
            if (r1 == r0) goto L5d
            r0 = r6
            goto L48
        L9d:
            android.support.v7.widget.av r1 = r12.f3320b
            int r1 = r1.mo4055a(r6)
            android.support.v7.widget.av r11 = r12.f3320b
            int r11 = r11.mo4055a(r10)
            if (r1 <= r11) goto Lad
            r0 = r6
            goto L48
        Lad:
            if (r1 != r11) goto Lb7
            r1 = r3
            goto L82
        Lb1:
            r1 = r5
            goto L96
        Lb3:
            r0 = r5
            goto L99
        Lb5:
            r0 = 0
            goto L48
        Lb7:
            r1 = r5
            goto L82
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.StaggeredGridLayoutManager.m3728h():android.view.View");
    }

    /* renamed from: a */
    private boolean m3690a(C0640c c0640c) {
        if (this.f3323e) {
            if (c0640c.m3775d() < this.f3320b.mo4062d()) {
                return !c0640c.m3772c(c0640c.f3361a.get(c0640c.f3361a.size() + (-1))).f3360b;
            }
        } else if (c0640c.m3769b() > this.f3320b.mo4060c()) {
            return c0640c.m3772c(c0640c.f3361a.get(0)).f3360b ? false : true;
        }
        return false;
    }

    /* renamed from: a */
    public void m3717a(int i) {
        mo3143a((String) null);
        if (i != this.f3327i) {
            m3729i();
            this.f3327i = i;
            this.f3331m = new BitSet(this.f3327i);
            this.f3319a = new C0640c[this.f3327i];
            for (int i2 = 0; i2 < this.f3327i; i2++) {
                this.f3319a[i2] = new C0640c(i2);
            }
            m3470o();
        }
    }

    /* renamed from: b */
    public void m3722b(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        mo3143a((String) null);
        if (i != this.f3328j) {
            this.f3328j = i;
            AbstractC0671av abstractC0671av = this.f3320b;
            this.f3320b = this.f3321c;
            this.f3321c = abstractC0671av;
            m3470o();
        }
    }

    /* renamed from: a */
    public void m3720a(boolean z) {
        mo3143a((String) null);
        if (this.f3311A != null && this.f3311A.f3349h != z) {
            this.f3311A.f3349h = z;
        }
        this.f3322d = z;
        m3470o();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3143a(String str) {
        if (this.f3311A == null) {
            super.mo3143a(str);
        }
    }

    /* renamed from: i */
    public void m3729i() {
        this.f3326h.m3739a();
        m3470o();
    }

    /* renamed from: N */
    private void m3677N() {
        if (this.f3328j == 1 || !m3730j()) {
            this.f3323e = this.f3322d;
        } else {
            this.f3323e = this.f3322d ? false : true;
        }
    }

    /* renamed from: j */
    boolean m3730j() {
        return m3475t() == 1;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3080a(Rect rect, int i, int i2) {
        int a2;
        int a3;
        int C = m3393C() + m3391A();
        int B = m3392B() + m3394D();
        if (this.f3328j == 1) {
            a3 = m3382a(i2, B + rect.height(), m3397G());
            a2 = m3382a(i, C + (this.f3329k * this.f3327i), m3396F());
        } else {
            a2 = m3382a(i, C + rect.width(), m3396F());
            a3 = m3382a(i2, B + (this.f3329k * this.f3327i), m3397G());
        }
        m3453f(a2, a3);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: c */
    public void mo3096c(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        m3683a(c0610p, c0614t, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m3683a(android.support.v7.widget.RecyclerView.C0610p r9, android.support.v7.widget.RecyclerView.C0614t r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 393
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.StaggeredGridLayoutManager.m3683a(android.support.v7.widget.RecyclerView$p, android.support.v7.widget.RecyclerView$t, boolean):void");
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3084a(RecyclerView.C0614t c0614t) {
        super.mo3084a(c0614t);
        this.f3324f = -1;
        this.f3325g = Integer.MIN_VALUE;
        this.f3311A = null;
        this.f3314D.m3756a();
    }

    /* renamed from: O */
    private void m3678O() {
        float max;
        if (this.f3321c.mo4069h() != 1073741824) {
            float f = 0.0f;
            int v = m3477v();
            int i = 0;
            while (i < v) {
                View i2 = m3460i(i);
                float mo4065e = this.f3321c.mo4065e(i2);
                if (mo4065e < f) {
                    max = f;
                } else {
                    max = Math.max(f, ((C0639b) i2.getLayoutParams()).m3760a() ? (1.0f * mo4065e) / this.f3327i : mo4065e);
                }
                i++;
                f = max;
            }
            int i3 = this.f3329k;
            int round = Math.round(this.f3327i * f);
            if (this.f3321c.mo4069h() == Integer.MIN_VALUE) {
                round = Math.min(round, this.f3321c.mo4066f());
            }
            m3726f(round);
            if (this.f3329k != i3) {
                for (int i4 = 0; i4 < v; i4++) {
                    View i5 = m3460i(i4);
                    C0639b c0639b = (C0639b) i5.getLayoutParams();
                    if (!c0639b.f3360b) {
                        if (m3730j() && this.f3328j == 1) {
                            i5.offsetLeftAndRight(((-((this.f3327i - 1) - c0639b.f3359a.f3365e)) * this.f3329k) - ((-((this.f3327i - 1) - c0639b.f3359a.f3365e)) * i3));
                        } else {
                            int i6 = c0639b.f3359a.f3365e * this.f3329k;
                            int i7 = c0639b.f3359a.f3365e * i3;
                            if (this.f3328j == 1) {
                                i5.offsetLeftAndRight(i6 - i7);
                            } else {
                                i5.offsetTopAndBottom(i6 - i7);
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private void m3685a(C0638a c0638a) {
        if (this.f3311A.f3344c > 0) {
            if (this.f3311A.f3344c == this.f3327i) {
                for (int i = 0; i < this.f3327i; i++) {
                    this.f3319a[i].m3777e();
                    int i2 = this.f3311A.f3345d[i];
                    if (i2 != Integer.MIN_VALUE) {
                        if (this.f3311A.f3350i) {
                            i2 += this.f3320b.mo4062d();
                        } else {
                            i2 += this.f3320b.mo4060c();
                        }
                    }
                    this.f3319a[i].m3774c(i2);
                }
            } else {
                this.f3311A.m3752a();
                this.f3311A.f3342a = this.f3311A.f3343b;
            }
        }
        this.f3334z = this.f3311A.f3351j;
        m3720a(this.f3311A.f3349h);
        m3677N();
        if (this.f3311A.f3342a != -1) {
            this.f3324f = this.f3311A.f3342a;
            c0638a.f3354c = this.f3311A.f3350i;
        } else {
            c0638a.f3354c = this.f3323e;
        }
        if (this.f3311A.f3346e > 1) {
            this.f3326h.f3336a = this.f3311A.f3347f;
            this.f3326h.f3337b = this.f3311A.f3348g;
        }
    }

    /* renamed from: a */
    void m3719a(RecyclerView.C0614t c0614t, C0638a c0638a) {
        if (!m3723b(c0614t, c0638a) && !m3698c(c0614t, c0638a)) {
            c0638a.m3759b();
            c0638a.f3352a = 0;
        }
    }

    /* renamed from: c */
    private boolean m3698c(RecyclerView.C0614t c0614t, C0638a c0638a) {
        int m3712v;
        if (this.f3333o) {
            m3712v = m3713w(c0614t.m3574e());
        } else {
            m3712v = m3712v(c0614t.m3574e());
        }
        c0638a.f3352a = m3712v;
        c0638a.f3353b = Integer.MIN_VALUE;
        return true;
    }

    /* renamed from: b */
    boolean m3723b(RecyclerView.C0614t c0614t, C0638a c0638a) {
        int mo4060c;
        if (c0614t.m3570a() || this.f3324f == -1) {
            return false;
        }
        if (this.f3324f < 0 || this.f3324f >= c0614t.m3574e()) {
            this.f3324f = -1;
            this.f3325g = Integer.MIN_VALUE;
            return false;
        }
        if (this.f3311A == null || this.f3311A.f3342a == -1 || this.f3311A.f3344c < 1) {
            View c = mo3150c(this.f3324f);
            if (c != null) {
                c0638a.f3352a = this.f3323e ? m3715K() : m3716L();
                if (this.f3325g != Integer.MIN_VALUE) {
                    if (c0638a.f3354c) {
                        c0638a.f3353b = (this.f3320b.mo4062d() - this.f3325g) - this.f3320b.mo4059b(c);
                        return true;
                    }
                    c0638a.f3353b = (this.f3320b.mo4060c() + this.f3325g) - this.f3320b.mo4055a(c);
                    return true;
                }
                if (this.f3320b.mo4065e(c) > this.f3320b.mo4066f()) {
                    if (c0638a.f3354c) {
                        mo4060c = this.f3320b.mo4062d();
                    } else {
                        mo4060c = this.f3320b.mo4060c();
                    }
                    c0638a.f3353b = mo4060c;
                    return true;
                }
                int mo4055a = this.f3320b.mo4055a(c) - this.f3320b.mo4060c();
                if (mo4055a < 0) {
                    c0638a.f3353b = -mo4055a;
                    return true;
                }
                int mo4062d = this.f3320b.mo4062d() - this.f3320b.mo4059b(c);
                if (mo4062d < 0) {
                    c0638a.f3353b = mo4062d;
                    return true;
                }
                c0638a.f3353b = Integer.MIN_VALUE;
                return true;
            }
            c0638a.f3352a = this.f3324f;
            if (this.f3325g == Integer.MIN_VALUE) {
                c0638a.f3354c = m3711u(c0638a.f3352a) == 1;
                c0638a.m3759b();
            } else {
                c0638a.m3757a(this.f3325g);
            }
            c0638a.f3355d = true;
            return true;
        }
        c0638a.f3353b = Integer.MIN_VALUE;
        c0638a.f3352a = this.f3324f;
        return true;
    }

    /* renamed from: f */
    void m3726f(int i) {
        this.f3329k = i / this.f3327i;
        this.f3312B = View.MeasureSpec.makeMeasureSpec(i, this.f3321c.mo4069h());
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: b */
    public boolean mo3095b() {
        return this.f3311A == null;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: c */
    public int mo3149c(RecyclerView.C0614t c0614t) {
        return m3692b(c0614t);
    }

    /* renamed from: b */
    private int m3692b(RecyclerView.C0614t c0614t) {
        if (m3477v() == 0) {
            return 0;
        }
        return C0678bb.m4110a(c0614t, this.f3320b, m3721b(!this.f3316F), m3725c(this.f3316F ? false : true), this, this.f3316F, this.f3323e);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: d */
    public int mo3152d(RecyclerView.C0614t c0614t) {
        return m3692b(c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: e */
    public int mo3155e(RecyclerView.C0614t c0614t) {
        return m3699i(c0614t);
    }

    /* renamed from: i */
    private int m3699i(RecyclerView.C0614t c0614t) {
        if (m3477v() == 0) {
            return 0;
        }
        return C0678bb.m4109a(c0614t, this.f3320b, m3721b(!this.f3316F), m3725c(this.f3316F ? false : true), this, this.f3316F);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: f */
    public int mo3159f(RecyclerView.C0614t c0614t) {
        return m3699i(c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: g */
    public int mo3162g(RecyclerView.C0614t c0614t) {
        return m3700j(c0614t);
    }

    /* renamed from: j */
    private int m3700j(RecyclerView.C0614t c0614t) {
        if (m3477v() == 0) {
            return 0;
        }
        return C0678bb.m4111b(c0614t, this.f3320b, m3721b(!this.f3316F), m3725c(this.f3316F ? false : true), this, this.f3316F);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: h */
    public int mo3163h(RecyclerView.C0614t c0614t) {
        return m3700j(c0614t);
    }

    /* renamed from: a */
    private void m3689a(View view, C0639b c0639b, boolean z) {
        if (c0639b.f3360b) {
            if (this.f3328j == 1) {
                m3687a(view, this.f3312B, m3383a(m3481z(), m3479x(), m3392B() + m3394D(), c0639b.height, true), z);
                return;
            } else {
                m3687a(view, m3383a(m3480y(), m3478w(), m3391A() + m3393C(), c0639b.width, true), this.f3312B, z);
                return;
            }
        }
        if (this.f3328j == 1) {
            m3687a(view, m3383a(this.f3329k, m3478w(), 0, c0639b.width, false), m3383a(m3481z(), m3479x(), m3392B() + m3394D(), c0639b.height, true), z);
        } else {
            m3687a(view, m3383a(m3480y(), m3478w(), m3391A() + m3393C(), c0639b.width, true), m3383a(this.f3329k, m3479x(), 0, c0639b.height, false), z);
        }
    }

    /* renamed from: a */
    private void m3687a(View view, int i, int i2, boolean z) {
        boolean b;
        m3435b(view, this.f3313C);
        C0639b c0639b = (C0639b) view.getLayoutParams();
        int m3691b = m3691b(i, c0639b.leftMargin + this.f3313C.left, c0639b.rightMargin + this.f3313C.right);
        int m3691b2 = m3691b(i2, c0639b.topMargin + this.f3313C.top, c0639b.bottomMargin + this.f3313C.bottom);
        if (z) {
            b = m3426a(view, m3691b, m3691b2, c0639b);
        } else {
            b = m3436b(view, m3691b, m3691b2, c0639b);
        }
        if (b) {
            view.measure(m3691b, m3691b2);
        }
    }

    /* renamed from: b */
    private int m3691b(int i, int i2, int i3) {
        if (i2 != 0 || i3 != 0) {
            int mode = View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                return View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode);
            }
            return i;
        }
        return i;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3140a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f3311A = (SavedState) parcelable;
            m3470o();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: d */
    public Parcelable mo3154d() {
        int m3762a;
        if (this.f3311A != null) {
            return new SavedState(this.f3311A);
        }
        SavedState savedState = new SavedState();
        savedState.f3349h = this.f3322d;
        savedState.f3350i = this.f3333o;
        savedState.f3351j = this.f3334z;
        if (this.f3326h != null && this.f3326h.f3336a != null) {
            savedState.f3347f = this.f3326h.f3336a;
            savedState.f3346e = savedState.f3347f.length;
            savedState.f3348g = this.f3326h.f3337b;
        } else {
            savedState.f3346e = 0;
        }
        if (m3477v() > 0) {
            savedState.f3342a = this.f3333o ? m3715K() : m3716L();
            savedState.f3343b = m3731k();
            savedState.f3344c = this.f3327i;
            savedState.f3345d = new int[this.f3327i];
            for (int i = 0; i < this.f3327i; i++) {
                if (this.f3333o) {
                    m3762a = this.f3319a[i].m3770b(Integer.MIN_VALUE);
                    if (m3762a != Integer.MIN_VALUE) {
                        m3762a -= this.f3320b.mo4062d();
                    }
                } else {
                    m3762a = this.f3319a[i].m3762a(Integer.MIN_VALUE);
                    if (m3762a != Integer.MIN_VALUE) {
                        m3762a -= this.f3320b.mo4060c();
                    }
                }
                savedState.f3345d[i] = m3762a;
            }
        } else {
            savedState.f3342a = -1;
            savedState.f3343b = -1;
            savedState.f3344c = 0;
        }
        return savedState;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3083a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0639b)) {
            super.m3415a(view, accessibilityNodeInfoCompat);
            return;
        }
        C0639b c0639b = (C0639b) layoutParams;
        if (this.f3328j == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(c0639b.m3761b(), c0639b.f3360b ? this.f3327i : 1, -1, -1, c0639b.f3360b, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(-1, -1, c0639b.m3761b(), c0639b.f3360b ? this.f3327i : 1, c0639b.f3360b, false));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3142a(AccessibilityEvent accessibilityEvent) {
        super.mo3142a(accessibilityEvent);
        if (m3477v() > 0) {
            View m3721b = m3721b(false);
            View m3725c = m3725c(false);
            if (m3721b != null && m3725c != null) {
                int d = m3444d(m3721b);
                int d2 = m3444d(m3725c);
                if (d < d2) {
                    accessibilityEvent.setFromIndex(d);
                    accessibilityEvent.setToIndex(d2);
                } else {
                    accessibilityEvent.setFromIndex(d2);
                    accessibilityEvent.setToIndex(d);
                }
            }
        }
    }

    /* renamed from: k */
    int m3731k() {
        View m3725c = this.f3323e ? m3725c(true) : m3721b(true);
        if (m3725c == null) {
            return -1;
        }
        return m3444d(m3725c);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public int mo3073a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return this.f3328j == 0 ? this.f3327i : super.mo3073a(c0610p, c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: b */
    public int mo3093b(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return this.f3328j == 1 ? this.f3327i : super.mo3093b(c0610p, c0614t);
    }

    /* renamed from: b */
    View m3721b(boolean z) {
        int mo4060c = this.f3320b.mo4060c();
        int mo4062d = this.f3320b.mo4062d();
        int v = m3477v();
        View view = null;
        for (int i = 0; i < v; i++) {
            View i2 = m3460i(i);
            int mo4055a = this.f3320b.mo4055a(i2);
            if (this.f3320b.mo4059b(i2) > mo4060c && mo4055a < mo4062d) {
                if (mo4055a < mo4060c && z) {
                    if (view == null) {
                        view = i2;
                    }
                } else {
                    return i2;
                }
            }
        }
        return view;
    }

    /* renamed from: c */
    View m3725c(boolean z) {
        int mo4060c = this.f3320b.mo4060c();
        int mo4062d = this.f3320b.mo4062d();
        View view = null;
        for (int v = m3477v() - 1; v >= 0; v--) {
            View i = m3460i(v);
            int mo4055a = this.f3320b.mo4055a(i);
            int mo4059b = this.f3320b.mo4059b(i);
            if (mo4059b > mo4060c && mo4055a < mo4062d) {
                if (mo4059b > mo4062d && z) {
                    if (view == null) {
                        view = i;
                    }
                } else {
                    return i;
                }
            }
        }
        return view;
    }

    /* renamed from: b */
    private void m3695b(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, boolean z) {
        int mo4062d;
        int m3708r = m3708r(Integer.MIN_VALUE);
        if (m3708r != Integer.MIN_VALUE && (mo4062d = this.f3320b.mo4062d() - m3708r) > 0) {
            int i = mo4062d - (-m3724c(-mo4062d, c0610p, c0614t));
            if (z && i > 0) {
                this.f3320b.mo4057a(i);
            }
        }
    }

    /* renamed from: c */
    private void m3697c(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, boolean z) {
        int mo4060c;
        int m3706q = m3706q(Integer.MAX_VALUE);
        if (m3706q != Integer.MAX_VALUE && (mo4060c = m3706q - this.f3320b.mo4060c()) > 0) {
            int m3724c = mo4060c - m3724c(mo4060c, c0610p, c0614t);
            if (z && m3724c > 0) {
                this.f3320b.mo4057a(-m3724c);
            }
        }
    }

    /* renamed from: b */
    private void m3693b(int i, RecyclerView.C0614t c0614t) {
        int i2;
        int i3;
        int m3572c;
        boolean z = false;
        this.f3330l.f3573b = 0;
        this.f3330l.f3574c = i;
        if (!m3474s() || (m3572c = c0614t.m3572c()) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.f3323e == (m3572c < i)) {
                i2 = this.f3320b.mo4066f();
                i3 = 0;
            } else {
                i3 = this.f3320b.mo4066f();
                i2 = 0;
            }
        }
        if (m3473r()) {
            this.f3330l.f3577f = this.f3320b.mo4060c() - i3;
            this.f3330l.f3578g = i2 + this.f3320b.mo4062d();
        } else {
            this.f3330l.f3578g = i2 + this.f3320b.mo4064e();
            this.f3330l.f3577f = -i3;
        }
        this.f3330l.f3579h = false;
        this.f3330l.f3572a = true;
        C0665ap c0665ap = this.f3330l;
        if (this.f3320b.mo4069h() == 0 && this.f3320b.mo4064e() == 0) {
            z = true;
        }
        c0665ap.f3580i = z;
    }

    /* renamed from: m */
    private void m3701m(int i) {
        this.f3330l.f3576e = i;
        this.f3330l.f3575d = this.f3323e != (i == -1) ? -1 : 1;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: j */
    public void mo3462j(int i) {
        super.mo3462j(i);
        for (int i2 = 0; i2 < this.f3327i; i2++) {
            this.f3319a[i2].m3776d(i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: k */
    public void mo3464k(int i) {
        super.mo3464k(i);
        for (int i2 = 0; i2 < this.f3327i; i2++) {
            this.f3319a[i2].m3776d(i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: b */
    public void mo3094b(RecyclerView recyclerView, int i, int i2) {
        m3696c(i, i2, 2);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3087a(RecyclerView recyclerView, int i, int i2) {
        m3696c(i, i2, 1);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3086a(RecyclerView recyclerView) {
        this.f3326h.m3739a();
        m3470o();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3088a(RecyclerView recyclerView, int i, int i2, int i3) {
        m3696c(i, i2, 8);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3089a(RecyclerView recyclerView, int i, int i2, Object obj) {
        m3696c(i, i2, 4);
    }

    /* renamed from: c */
    private void m3696c(int i, int i2, int i3) {
        int i4;
        int i5;
        int m3715K = this.f3323e ? m3715K() : m3716L();
        if (i3 == 8) {
            if (i < i2) {
                i4 = i2 + 1;
                i5 = i;
            } else {
                i4 = i + 1;
                i5 = i2;
            }
        } else {
            i4 = i + i2;
            i5 = i;
        }
        this.f3326h.m3743b(i5);
        switch (i3) {
            case 1:
                this.f3326h.m3744b(i, i2);
                break;
            case 2:
                this.f3326h.m3740a(i, i2);
                break;
            case 8:
                this.f3326h.m3740a(i, 1);
                this.f3326h.m3744b(i2, 1);
                break;
        }
        if (i4 > m3715K) {
            if (i5 <= (this.f3323e ? m3716L() : m3715K())) {
                m3470o();
            }
        }
    }

    /* renamed from: a */
    private int m3679a(RecyclerView.C0610p c0610p, C0665ap c0665ap, RecyclerView.C0614t c0614t) {
        int i;
        int mo4060c;
        int m3708r;
        C0640c c0640c;
        int mo4065e;
        int i2;
        int mo4065e2;
        int i3;
        boolean z;
        this.f3331m.set(0, this.f3327i, true);
        if (this.f3330l.f3580i) {
            if (c0665ap.f3576e == 1) {
                i = Integer.MAX_VALUE;
            } else {
                i = Integer.MIN_VALUE;
            }
        } else if (c0665ap.f3576e == 1) {
            i = c0665ap.f3578g + c0665ap.f3573b;
        } else {
            i = c0665ap.f3577f - c0665ap.f3573b;
        }
        m3681a(c0665ap.f3576e, i);
        if (this.f3323e) {
            mo4060c = this.f3320b.mo4062d();
        } else {
            mo4060c = this.f3320b.mo4060c();
        }
        boolean z2 = false;
        while (c0665ap.m3991a(c0614t) && (this.f3330l.f3580i || !this.f3331m.isEmpty())) {
            View m3990a = c0665ap.m3990a(c0610p);
            C0639b c0639b = (C0639b) m3990a.getLayoutParams();
            int f = c0639b.m3491f();
            int m3745c = this.f3326h.m3745c(f);
            boolean z3 = m3745c == -1;
            if (z3) {
                C0640c m3680a = c0639b.f3360b ? this.f3319a[0] : m3680a(c0665ap);
                this.f3326h.m3741a(f, m3680a);
                c0640c = m3680a;
            } else {
                c0640c = this.f3319a[m3745c];
            }
            c0639b.f3359a = c0640c;
            if (c0665ap.f3576e == 1) {
                m3433b(m3990a);
            } else {
                m3434b(m3990a, 0);
            }
            m3689a(m3990a, c0639b, false);
            if (c0665ap.f3576e == 1) {
                int m3708r2 = c0639b.f3360b ? m3708r(mo4060c) : c0640c.m3770b(mo4060c);
                i2 = m3708r2 + this.f3320b.mo4065e(m3990a);
                if (z3 && c0639b.f3360b) {
                    LazySpanLookup.FullSpanItem m3702n = m3702n(m3708r2);
                    m3702n.f3339b = -1;
                    m3702n.f3338a = f;
                    this.f3326h.m3742a(m3702n);
                    mo4065e = m3708r2;
                } else {
                    mo4065e = m3708r2;
                }
            } else {
                int m3706q = c0639b.f3360b ? m3706q(mo4060c) : c0640c.m3762a(mo4060c);
                mo4065e = m3706q - this.f3320b.mo4065e(m3990a);
                if (z3 && c0639b.f3360b) {
                    LazySpanLookup.FullSpanItem m3703o = m3703o(m3706q);
                    m3703o.f3339b = 1;
                    m3703o.f3338a = f;
                    this.f3326h.m3742a(m3703o);
                }
                i2 = m3706q;
            }
            if (c0639b.f3360b && c0665ap.f3575d == -1) {
                if (z3) {
                    this.f3315E = true;
                } else {
                    if (c0665ap.f3576e == 1) {
                        z = !m3732m();
                    } else {
                        z = !m3733n();
                    }
                    if (z) {
                        LazySpanLookup.FullSpanItem m3748f = this.f3326h.m3748f(f);
                        if (m3748f != null) {
                            m3748f.f3341d = true;
                        }
                        this.f3315E = true;
                    }
                }
            }
            m3688a(m3990a, c0639b, c0665ap);
            if (m3730j() && this.f3328j == 1) {
                int mo4062d = c0639b.f3360b ? this.f3321c.mo4062d() : this.f3321c.mo4062d() - (((this.f3327i - 1) - c0640c.f3365e) * this.f3329k);
                i3 = mo4062d - this.f3321c.mo4065e(m3990a);
                mo4065e2 = mo4062d;
            } else {
                int mo4060c2 = c0639b.f3360b ? this.f3321c.mo4060c() : (c0640c.f3365e * this.f3329k) + this.f3321c.mo4060c();
                mo4065e2 = mo4060c2 + this.f3321c.mo4065e(m3990a);
                i3 = mo4060c2;
            }
            if (this.f3328j == 1) {
                m3412a(m3990a, i3, mo4065e, mo4065e2, i2);
            } else {
                m3412a(m3990a, mo4065e, i3, i2, mo4065e2);
            }
            if (c0639b.f3360b) {
                m3681a(this.f3330l.f3576e, i);
            } else {
                m3686a(c0640c, this.f3330l.f3576e, i);
            }
            m3684a(c0610p, this.f3330l);
            if (this.f3330l.f3579h && m3990a.hasFocusable()) {
                if (c0639b.f3360b) {
                    this.f3331m.clear();
                } else {
                    this.f3331m.set(c0640c.f3365e, false);
                }
            }
            z2 = true;
        }
        if (!z2) {
            m3684a(c0610p, this.f3330l);
        }
        if (this.f3330l.f3576e == -1) {
            m3708r = this.f3320b.mo4060c() - m3706q(this.f3320b.mo4060c());
        } else {
            m3708r = m3708r(this.f3320b.mo4062d()) - this.f3320b.mo4062d();
        }
        if (m3708r > 0) {
            return Math.min(c0665ap.f3573b, m3708r);
        }
        return 0;
    }

    /* renamed from: n */
    private LazySpanLookup.FullSpanItem m3702n(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f3340c = new int[this.f3327i];
        for (int i2 = 0; i2 < this.f3327i; i2++) {
            fullSpanItem.f3340c[i2] = i - this.f3319a[i2].m3770b(i);
        }
        return fullSpanItem;
    }

    /* renamed from: o */
    private LazySpanLookup.FullSpanItem m3703o(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f3340c = new int[this.f3327i];
        for (int i2 = 0; i2 < this.f3327i; i2++) {
            fullSpanItem.f3340c[i2] = this.f3319a[i2].m3762a(i) - i;
        }
        return fullSpanItem;
    }

    /* renamed from: a */
    private void m3688a(View view, C0639b c0639b, C0665ap c0665ap) {
        if (c0665ap.f3576e == 1) {
            if (c0639b.f3360b) {
                m3705p(view);
                return;
            } else {
                c0639b.f3359a.m3771b(view);
                return;
            }
        }
        if (c0639b.f3360b) {
            m3707q(view);
        } else {
            c0639b.f3359a.m3767a(view);
        }
    }

    /* renamed from: a */
    private void m3684a(RecyclerView.C0610p c0610p, C0665ap c0665ap) {
        int min;
        int min2;
        if (c0665ap.f3572a && !c0665ap.f3580i) {
            if (c0665ap.f3573b == 0) {
                if (c0665ap.f3576e == -1) {
                    m3694b(c0610p, c0665ap.f3578g);
                    return;
                } else {
                    m3682a(c0610p, c0665ap.f3577f);
                    return;
                }
            }
            if (c0665ap.f3576e == -1) {
                int m3704p = c0665ap.f3577f - m3704p(c0665ap.f3577f);
                if (m3704p < 0) {
                    min2 = c0665ap.f3578g;
                } else {
                    min2 = c0665ap.f3578g - Math.min(m3704p, c0665ap.f3573b);
                }
                m3694b(c0610p, min2);
                return;
            }
            int m3709s = m3709s(c0665ap.f3578g) - c0665ap.f3578g;
            if (m3709s < 0) {
                min = c0665ap.f3577f;
            } else {
                min = Math.min(m3709s, c0665ap.f3573b) + c0665ap.f3577f;
            }
            m3682a(c0610p, min);
        }
    }

    /* renamed from: p */
    private void m3705p(View view) {
        for (int i = this.f3327i - 1; i >= 0; i--) {
            this.f3319a[i].m3771b(view);
        }
    }

    /* renamed from: q */
    private void m3707q(View view) {
        for (int i = this.f3327i - 1; i >= 0; i--) {
            this.f3319a[i].m3767a(view);
        }
    }

    /* renamed from: a */
    private void m3681a(int i, int i2) {
        for (int i3 = 0; i3 < this.f3327i; i3++) {
            if (!this.f3319a[i3].f3361a.isEmpty()) {
                m3686a(this.f3319a[i3], i, i2);
            }
        }
    }

    /* renamed from: a */
    private void m3686a(C0640c c0640c, int i, int i2) {
        int m3781i = c0640c.m3781i();
        if (i == -1) {
            if (m3781i + c0640c.m3769b() <= i2) {
                this.f3331m.set(c0640c.f3365e, false);
            }
        } else if (c0640c.m3775d() - m3781i >= i2) {
            this.f3331m.set(c0640c.f3365e, false);
        }
    }

    /* renamed from: p */
    private int m3704p(int i) {
        int m3762a = this.f3319a[0].m3762a(i);
        for (int i2 = 1; i2 < this.f3327i; i2++) {
            int m3762a2 = this.f3319a[i2].m3762a(i);
            if (m3762a2 > m3762a) {
                m3762a = m3762a2;
            }
        }
        return m3762a;
    }

    /* renamed from: q */
    private int m3706q(int i) {
        int m3762a = this.f3319a[0].m3762a(i);
        for (int i2 = 1; i2 < this.f3327i; i2++) {
            int m3762a2 = this.f3319a[i2].m3762a(i);
            if (m3762a2 < m3762a) {
                m3762a = m3762a2;
            }
        }
        return m3762a;
    }

    /* renamed from: m */
    boolean m3732m() {
        int m3770b = this.f3319a[0].m3770b(Integer.MIN_VALUE);
        for (int i = 1; i < this.f3327i; i++) {
            if (this.f3319a[i].m3770b(Integer.MIN_VALUE) != m3770b) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: n */
    boolean m3733n() {
        int m3762a = this.f3319a[0].m3762a(Integer.MIN_VALUE);
        for (int i = 1; i < this.f3327i; i++) {
            if (this.f3319a[i].m3762a(Integer.MIN_VALUE) != m3762a) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: r */
    private int m3708r(int i) {
        int m3770b = this.f3319a[0].m3770b(i);
        for (int i2 = 1; i2 < this.f3327i; i2++) {
            int m3770b2 = this.f3319a[i2].m3770b(i);
            if (m3770b2 > m3770b) {
                m3770b = m3770b2;
            }
        }
        return m3770b;
    }

    /* renamed from: s */
    private int m3709s(int i) {
        int m3770b = this.f3319a[0].m3770b(i);
        for (int i2 = 1; i2 < this.f3327i; i2++) {
            int m3770b2 = this.f3319a[i2].m3770b(i);
            if (m3770b2 < m3770b) {
                m3770b = m3770b2;
            }
        }
        return m3770b;
    }

    /* renamed from: a */
    private void m3682a(RecyclerView.C0610p c0610p, int i) {
        while (m3477v() > 0) {
            View i2 = m3460i(0);
            if (this.f3320b.mo4059b(i2) <= i && this.f3320b.mo4061c(i2) <= i) {
                C0639b c0639b = (C0639b) i2.getLayoutParams();
                if (c0639b.f3360b) {
                    for (int i3 = 0; i3 < this.f3327i; i3++) {
                        if (this.f3319a[i3].f3361a.size() == 1) {
                            return;
                        }
                    }
                    for (int i4 = 0; i4 < this.f3327i; i4++) {
                        this.f3319a[i4].m3780h();
                    }
                } else if (c0639b.f3359a.f3361a.size() != 1) {
                    c0639b.f3359a.m3780h();
                } else {
                    return;
                }
                m3416a(i2, c0610p);
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    private void m3694b(RecyclerView.C0610p c0610p, int i) {
        for (int v = m3477v() - 1; v >= 0; v--) {
            View i2 = m3460i(v);
            if (this.f3320b.mo4055a(i2) >= i && this.f3320b.mo4063d(i2) >= i) {
                C0639b c0639b = (C0639b) i2.getLayoutParams();
                if (c0639b.f3360b) {
                    for (int i3 = 0; i3 < this.f3327i; i3++) {
                        if (this.f3319a[i3].f3361a.size() == 1) {
                            return;
                        }
                    }
                    for (int i4 = 0; i4 < this.f3327i; i4++) {
                        this.f3319a[i4].m3779g();
                    }
                } else if (c0639b.f3359a.f3361a.size() != 1) {
                    c0639b.f3359a.m3779g();
                } else {
                    return;
                }
                m3416a(i2, c0610p);
            } else {
                return;
            }
        }
    }

    /* renamed from: t */
    private boolean m3710t(int i) {
        if (this.f3328j == 0) {
            return (i == -1) != this.f3323e;
        }
        return ((i == -1) == this.f3323e) == m3730j();
    }

    /* renamed from: a */
    private C0640c m3680a(C0665ap c0665ap) {
        int i;
        int i2;
        int i3;
        C0640c c0640c = null;
        if (m3710t(c0665ap.f3576e)) {
            i = this.f3327i - 1;
            i2 = -1;
            i3 = -1;
        } else {
            i = 0;
            i2 = 1;
            i3 = this.f3327i;
        }
        if (c0665ap.f3576e == 1) {
            int i4 = Integer.MAX_VALUE;
            int mo4060c = this.f3320b.mo4060c();
            int i5 = i;
            while (i5 != i3) {
                C0640c c0640c2 = this.f3319a[i5];
                int m3770b = c0640c2.m3770b(mo4060c);
                if (m3770b >= i4) {
                    m3770b = i4;
                    c0640c2 = c0640c;
                }
                i5 += i2;
                i4 = m3770b;
                c0640c = c0640c2;
            }
        } else {
            int i6 = Integer.MIN_VALUE;
            int mo4062d = this.f3320b.mo4062d();
            int i7 = i;
            while (i7 != i3) {
                C0640c c0640c3 = this.f3319a[i7];
                int m3762a = c0640c3.m3762a(mo4062d);
                if (m3762a <= i6) {
                    m3762a = i6;
                    c0640c3 = c0640c;
                }
                i7 += i2;
                i6 = m3762a;
                c0640c = c0640c3;
            }
        }
        return c0640c;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: f */
    public boolean mo3160f() {
        return this.f3328j == 1;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: e */
    public boolean mo3157e() {
        return this.f3328j == 0;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public int mo3072a(int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return m3724c(i, c0610p, c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: b */
    public int mo3092b(int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return m3724c(i, c0610p, c0614t);
    }

    /* renamed from: u */
    private int m3711u(int i) {
        if (m3477v() == 0) {
            return this.f3323e ? 1 : -1;
        }
        return (i < m3716L()) == this.f3323e ? 1 : -1;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0613s.b
    /* renamed from: d */
    public PointF mo3153d(int i) {
        int m3711u = m3711u(i);
        PointF pointF = new PointF();
        if (m3711u == 0) {
            return null;
        }
        if (this.f3328j == 0) {
            pointF.x = m3711u;
            pointF.y = 0.0f;
            return pointF;
        }
        pointF.x = 0.0f;
        pointF.y = m3711u;
        return pointF;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: e */
    public void mo3156e(int i) {
        if (this.f3311A != null && this.f3311A.f3342a != i) {
            this.f3311A.m3753b();
        }
        this.f3324f = i;
        this.f3325g = Integer.MIN_VALUE;
        m3470o();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: a */
    public void mo3138a(int i, int i2, RecyclerView.C0614t c0614t, RecyclerView.AbstractC0603i.a aVar) {
        int m3770b;
        if (this.f3328j != 0) {
            i = i2;
        }
        if (m3477v() != 0 && i != 0) {
            m3718a(i, c0614t);
            if (this.f3317G == null || this.f3317G.length < this.f3327i) {
                this.f3317G = new int[this.f3327i];
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.f3327i; i4++) {
                if (this.f3330l.f3575d == -1) {
                    m3770b = this.f3330l.f3577f - this.f3319a[i4].m3762a(this.f3330l.f3577f);
                } else {
                    m3770b = this.f3319a[i4].m3770b(this.f3330l.f3578g) - this.f3330l.f3578g;
                }
                if (m3770b >= 0) {
                    this.f3317G[i3] = m3770b;
                    i3++;
                }
            }
            Arrays.sort(this.f3317G, 0, i3);
            for (int i5 = 0; i5 < i3 && this.f3330l.m3991a(c0614t); i5++) {
                aVar.mo3487b(this.f3330l.f3574c, this.f3317G[i5]);
                this.f3330l.f3574c += this.f3330l.f3575d;
            }
        }
    }

    /* renamed from: a */
    void m3718a(int i, RecyclerView.C0614t c0614t) {
        int i2;
        int m3716L;
        if (i > 0) {
            m3716L = m3715K();
            i2 = 1;
        } else {
            i2 = -1;
            m3716L = m3716L();
        }
        this.f3330l.f3572a = true;
        m3693b(m3716L, c0614t);
        m3701m(i2);
        this.f3330l.f3574c = this.f3330l.f3575d + m3716L;
        this.f3330l.f3573b = Math.abs(i);
    }

    /* renamed from: c */
    int m3724c(int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        if (m3477v() == 0 || i == 0) {
            return 0;
        }
        m3718a(i, c0614t);
        int m3679a = m3679a(c0610p, this.f3330l, c0614t);
        if (this.f3330l.f3573b >= m3679a) {
            i = i < 0 ? -m3679a : m3679a;
        }
        this.f3320b.mo4057a(-i);
        this.f3333o = this.f3323e;
        this.f3330l.f3573b = 0;
        m3684a(c0610p, this.f3330l);
        return i;
    }

    /* renamed from: K */
    int m3715K() {
        int v = m3477v();
        if (v == 0) {
            return 0;
        }
        return m3444d(m3460i(v - 1));
    }

    /* renamed from: L */
    int m3716L() {
        if (m3477v() == 0) {
            return 0;
        }
        return m3444d(m3460i(0));
    }

    /* renamed from: v */
    private int m3712v(int i) {
        int v = m3477v();
        for (int i2 = 0; i2 < v; i2++) {
            int d = m3444d(m3460i(i2));
            if (d >= 0 && d < i) {
                return d;
            }
        }
        return 0;
    }

    /* renamed from: w */
    private int m3713w(int i) {
        for (int v = m3477v() - 1; v >= 0; v--) {
            int d = m3444d(m3460i(v));
            if (d >= 0 && d < i) {
                return d;
            }
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public RecyclerView.C0604j mo3074a() {
        return this.f3328j == 0 ? new C0639b(-2, -1) : new C0639b(-1, -2);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public RecyclerView.C0604j mo3075a(Context context, AttributeSet attributeSet) {
        return new C0639b(context, attributeSet);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public RecyclerView.C0604j mo3076a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0639b((ViewGroup.MarginLayoutParams) layoutParams) : new C0639b(layoutParams);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public boolean mo3091a(RecyclerView.C0604j c0604j) {
        return c0604j instanceof C0639b;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    @Nullable
    /* renamed from: a */
    public View mo3078a(View view, int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        View e;
        int m3716L;
        int m3783k;
        int m3783k2;
        int m3783k3;
        View m3765a;
        if (m3477v() != 0 && (e = m3448e(view)) != null) {
            m3677N();
            int m3714x = m3714x(i);
            if (m3714x == Integer.MIN_VALUE) {
                return null;
            }
            C0639b c0639b = (C0639b) e.getLayoutParams();
            boolean z = c0639b.f3360b;
            C0640c c0640c = c0639b.f3359a;
            if (m3714x == 1) {
                m3716L = m3715K();
            } else {
                m3716L = m3716L();
            }
            m3693b(m3716L, c0614t);
            m3701m(m3714x);
            this.f3330l.f3574c = this.f3330l.f3575d + m3716L;
            this.f3330l.f3573b = (int) (0.33333334f * this.f3320b.mo4066f());
            this.f3330l.f3579h = true;
            this.f3330l.f3572a = false;
            m3679a(c0610p, this.f3330l, c0614t);
            this.f3333o = this.f3323e;
            if (!z && (m3765a = c0640c.m3765a(m3716L, m3714x)) != null && m3765a != e) {
                return m3765a;
            }
            if (m3710t(m3714x)) {
                for (int i2 = this.f3327i - 1; i2 >= 0; i2--) {
                    View m3765a2 = this.f3319a[i2].m3765a(m3716L, m3714x);
                    if (m3765a2 != null && m3765a2 != e) {
                        return m3765a2;
                    }
                }
            } else {
                for (int i3 = 0; i3 < this.f3327i; i3++) {
                    View m3765a3 = this.f3319a[i3].m3765a(m3716L, m3714x);
                    if (m3765a3 != null && m3765a3 != e) {
                        return m3765a3;
                    }
                }
            }
            boolean z2 = (!this.f3322d) == (m3714x == -1);
            if (!z) {
                if (z2) {
                    m3783k3 = c0640c.m3782j();
                } else {
                    m3783k3 = c0640c.m3783k();
                }
                View c = mo3150c(m3783k3);
                if (c != null && c != e) {
                    return c;
                }
            }
            if (m3710t(m3714x)) {
                for (int i4 = this.f3327i - 1; i4 >= 0; i4--) {
                    if (i4 != c0640c.f3365e) {
                        if (z2) {
                            m3783k2 = this.f3319a[i4].m3782j();
                        } else {
                            m3783k2 = this.f3319a[i4].m3783k();
                        }
                        View c2 = mo3150c(m3783k2);
                        if (c2 != null && c2 != e) {
                            return c2;
                        }
                    }
                }
            } else {
                for (int i5 = 0; i5 < this.f3327i; i5++) {
                    if (z2) {
                        m3783k = this.f3319a[i5].m3782j();
                    } else {
                        m3783k = this.f3319a[i5].m3783k();
                    }
                    View c3 = mo3150c(m3783k);
                    if (c3 != null && c3 != e) {
                        return c3;
                    }
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: x */
    private int m3714x(int i) {
        switch (i) {
            case 1:
                return (this.f3328j == 1 || !m3730j()) ? -1 : 1;
            case 2:
                return (this.f3328j != 1 && m3730j()) ? -1 : 1;
            case 17:
                return this.f3328j != 0 ? Integer.MIN_VALUE : -1;
            case 33:
                return this.f3328j != 1 ? Integer.MIN_VALUE : -1;
            case 66:
                return this.f3328j != 0 ? Integer.MIN_VALUE : 1;
            case 130:
                return this.f3328j == 1 ? 1 : Integer.MIN_VALUE;
            default:
                return Integer.MIN_VALUE;
        }
    }

    /* renamed from: android.support.v7.widget.StaggeredGridLayoutManager$b */
    public static class C0639b extends RecyclerView.C0604j {

        /* renamed from: a */
        C0640c f3359a;

        /* renamed from: b */
        boolean f3360b;

        public C0639b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0639b(int i, int i2) {
            super(i, i2);
        }

        public C0639b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public C0639b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        /* renamed from: a */
        public boolean m3760a() {
            return this.f3360b;
        }

        /* renamed from: b */
        public final int m3761b() {
            if (this.f3359a == null) {
                return -1;
            }
            return this.f3359a.f3365e;
        }
    }

    /* renamed from: android.support.v7.widget.StaggeredGridLayoutManager$c */
    class C0640c {

        /* renamed from: a */
        ArrayList<View> f3361a = new ArrayList<>();

        /* renamed from: b */
        int f3362b = Integer.MIN_VALUE;

        /* renamed from: c */
        int f3363c = Integer.MIN_VALUE;

        /* renamed from: d */
        int f3364d = 0;

        /* renamed from: e */
        final int f3365e;

        C0640c(int i) {
            this.f3365e = i;
        }

        /* renamed from: a */
        int m3762a(int i) {
            if (this.f3362b != Integer.MIN_VALUE) {
                return this.f3362b;
            }
            if (this.f3361a.size() != 0) {
                m3766a();
                return this.f3362b;
            }
            return i;
        }

        /* renamed from: a */
        void m3766a() {
            LazySpanLookup.FullSpanItem m3748f;
            View view = this.f3361a.get(0);
            C0639b m3772c = m3772c(view);
            this.f3362b = StaggeredGridLayoutManager.this.f3320b.mo4055a(view);
            if (m3772c.f3360b && (m3748f = StaggeredGridLayoutManager.this.f3326h.m3748f(m3772c.m3491f())) != null && m3748f.f3339b == -1) {
                this.f3362b -= m3748f.m3749a(this.f3365e);
            }
        }

        /* renamed from: b */
        int m3769b() {
            if (this.f3362b != Integer.MIN_VALUE) {
                return this.f3362b;
            }
            m3766a();
            return this.f3362b;
        }

        /* renamed from: b */
        int m3770b(int i) {
            if (this.f3363c != Integer.MIN_VALUE) {
                return this.f3363c;
            }
            if (this.f3361a.size() != 0) {
                m3773c();
                return this.f3363c;
            }
            return i;
        }

        /* renamed from: c */
        void m3773c() {
            LazySpanLookup.FullSpanItem m3748f;
            View view = this.f3361a.get(this.f3361a.size() - 1);
            C0639b m3772c = m3772c(view);
            this.f3363c = StaggeredGridLayoutManager.this.f3320b.mo4059b(view);
            if (!m3772c.f3360b || (m3748f = StaggeredGridLayoutManager.this.f3326h.m3748f(m3772c.m3491f())) == null || m3748f.f3339b != 1) {
                return;
            }
            this.f3363c = m3748f.m3749a(this.f3365e) + this.f3363c;
        }

        /* renamed from: d */
        int m3775d() {
            if (this.f3363c != Integer.MIN_VALUE) {
                return this.f3363c;
            }
            m3773c();
            return this.f3363c;
        }

        /* renamed from: a */
        void m3767a(View view) {
            C0639b m3772c = m3772c(view);
            m3772c.f3359a = this;
            this.f3361a.add(0, view);
            this.f3362b = Integer.MIN_VALUE;
            if (this.f3361a.size() == 1) {
                this.f3363c = Integer.MIN_VALUE;
            }
            if (m3772c.m3489d() || m3772c.m3490e()) {
                this.f3364d += StaggeredGridLayoutManager.this.f3320b.mo4065e(view);
            }
        }

        /* renamed from: b */
        void m3771b(View view) {
            C0639b m3772c = m3772c(view);
            m3772c.f3359a = this;
            this.f3361a.add(view);
            this.f3363c = Integer.MIN_VALUE;
            if (this.f3361a.size() == 1) {
                this.f3362b = Integer.MIN_VALUE;
            }
            if (m3772c.m3489d() || m3772c.m3490e()) {
                this.f3364d += StaggeredGridLayoutManager.this.f3320b.mo4065e(view);
            }
        }

        /* renamed from: a */
        void m3768a(boolean z, int i) {
            int m3762a;
            if (z) {
                m3762a = m3770b(Integer.MIN_VALUE);
            } else {
                m3762a = m3762a(Integer.MIN_VALUE);
            }
            m3777e();
            if (m3762a != Integer.MIN_VALUE) {
                if (!z || m3762a >= StaggeredGridLayoutManager.this.f3320b.mo4062d()) {
                    if (z || m3762a <= StaggeredGridLayoutManager.this.f3320b.mo4060c()) {
                        if (i != Integer.MIN_VALUE) {
                            m3762a += i;
                        }
                        this.f3363c = m3762a;
                        this.f3362b = m3762a;
                    }
                }
            }
        }

        /* renamed from: e */
        void m3777e() {
            this.f3361a.clear();
            m3778f();
            this.f3364d = 0;
        }

        /* renamed from: f */
        void m3778f() {
            this.f3362b = Integer.MIN_VALUE;
            this.f3363c = Integer.MIN_VALUE;
        }

        /* renamed from: c */
        void m3774c(int i) {
            this.f3362b = i;
            this.f3363c = i;
        }

        /* renamed from: g */
        void m3779g() {
            int size = this.f3361a.size();
            View remove = this.f3361a.remove(size - 1);
            C0639b m3772c = m3772c(remove);
            m3772c.f3359a = null;
            if (m3772c.m3489d() || m3772c.m3490e()) {
                this.f3364d -= StaggeredGridLayoutManager.this.f3320b.mo4065e(remove);
            }
            if (size == 1) {
                this.f3362b = Integer.MIN_VALUE;
            }
            this.f3363c = Integer.MIN_VALUE;
        }

        /* renamed from: h */
        void m3780h() {
            View remove = this.f3361a.remove(0);
            C0639b m3772c = m3772c(remove);
            m3772c.f3359a = null;
            if (this.f3361a.size() == 0) {
                this.f3363c = Integer.MIN_VALUE;
            }
            if (m3772c.m3489d() || m3772c.m3490e()) {
                this.f3364d -= StaggeredGridLayoutManager.this.f3320b.mo4065e(remove);
            }
            this.f3362b = Integer.MIN_VALUE;
        }

        /* renamed from: i */
        public int m3781i() {
            return this.f3364d;
        }

        /* renamed from: c */
        C0639b m3772c(View view) {
            return (C0639b) view.getLayoutParams();
        }

        /* renamed from: d */
        void m3776d(int i) {
            if (this.f3362b != Integer.MIN_VALUE) {
                this.f3362b += i;
            }
            if (this.f3363c != Integer.MIN_VALUE) {
                this.f3363c += i;
            }
        }

        /* renamed from: j */
        public int m3782j() {
            return StaggeredGridLayoutManager.this.f3322d ? m3763a(this.f3361a.size() - 1, -1, true) : m3763a(0, this.f3361a.size(), true);
        }

        /* renamed from: k */
        public int m3783k() {
            if (StaggeredGridLayoutManager.this.f3322d) {
                return m3763a(0, this.f3361a.size(), true);
            }
            return m3763a(this.f3361a.size() - 1, -1, true);
        }

        /* renamed from: a */
        int m3764a(int i, int i2, boolean z, boolean z2, boolean z3) {
            boolean z4;
            boolean z5;
            int mo4060c = StaggeredGridLayoutManager.this.f3320b.mo4060c();
            int mo4062d = StaggeredGridLayoutManager.this.f3320b.mo4062d();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f3361a.get(i);
                int mo4055a = StaggeredGridLayoutManager.this.f3320b.mo4055a(view);
                int mo4059b = StaggeredGridLayoutManager.this.f3320b.mo4059b(view);
                if (z3) {
                    z4 = mo4055a <= mo4062d;
                } else {
                    z4 = mo4055a < mo4062d;
                }
                if (z3) {
                    z5 = mo4059b >= mo4060c;
                } else {
                    z5 = mo4059b > mo4060c;
                }
                if (z4 && z5) {
                    if (z && z2) {
                        if (mo4055a >= mo4060c && mo4059b <= mo4062d) {
                            return StaggeredGridLayoutManager.this.m3444d(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.m3444d(view);
                        }
                        if (mo4055a < mo4060c || mo4059b > mo4062d) {
                            return StaggeredGridLayoutManager.this.m3444d(view);
                        }
                    }
                }
                i += i3;
            }
            return -1;
        }

        /* renamed from: a */
        int m3763a(int i, int i2, boolean z) {
            return m3764a(i, i2, false, false, z);
        }

        /* renamed from: a */
        public View m3765a(int i, int i2) {
            View view = null;
            if (i2 == -1) {
                int size = this.f3361a.size();
                int i3 = 0;
                while (i3 < size) {
                    View view2 = this.f3361a.get(i3);
                    if ((StaggeredGridLayoutManager.this.f3322d && StaggeredGridLayoutManager.this.m3444d(view2) <= i) || ((!StaggeredGridLayoutManager.this.f3322d && StaggeredGridLayoutManager.this.m3444d(view2) >= i) || !view2.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view = view2;
                }
                return view;
            }
            int size2 = this.f3361a.size() - 1;
            while (size2 >= 0) {
                View view3 = this.f3361a.get(size2);
                if (StaggeredGridLayoutManager.this.f3322d && StaggeredGridLayoutManager.this.m3444d(view3) >= i) {
                    break;
                }
                if (!StaggeredGridLayoutManager.this.f3322d && StaggeredGridLayoutManager.this.m3444d(view3) <= i) {
                    return view;
                }
                if (!view3.hasFocusable()) {
                    break;
                }
                size2--;
                view = view3;
            }
            return view;
        }
    }

    static class LazySpanLookup {

        /* renamed from: a */
        int[] f3336a;

        /* renamed from: b */
        List<FullSpanItem> f3337b;

        LazySpanLookup() {
        }

        /* renamed from: a */
        int m3737a(int i) {
            if (this.f3337b != null) {
                for (int size = this.f3337b.size() - 1; size >= 0; size--) {
                    if (this.f3337b.get(size).f3338a >= i) {
                        this.f3337b.remove(size);
                    }
                }
            }
            return m3743b(i);
        }

        /* renamed from: b */
        int m3743b(int i) {
            if (this.f3336a == null || i >= this.f3336a.length) {
                return -1;
            }
            int m3736g = m3736g(i);
            if (m3736g == -1) {
                Arrays.fill(this.f3336a, i, this.f3336a.length, -1);
                return this.f3336a.length;
            }
            Arrays.fill(this.f3336a, i, m3736g + 1, -1);
            return m3736g + 1;
        }

        /* renamed from: c */
        int m3745c(int i) {
            if (this.f3336a == null || i >= this.f3336a.length) {
                return -1;
            }
            return this.f3336a[i];
        }

        /* renamed from: a */
        void m3741a(int i, C0640c c0640c) {
            m3747e(i);
            this.f3336a[i] = c0640c.f3365e;
        }

        /* renamed from: d */
        int m3746d(int i) {
            int length = this.f3336a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        /* renamed from: e */
        void m3747e(int i) {
            if (this.f3336a == null) {
                this.f3336a = new int[Math.max(i, 10) + 1];
                Arrays.fill(this.f3336a, -1);
            } else if (i >= this.f3336a.length) {
                int[] iArr = this.f3336a;
                this.f3336a = new int[m3746d(i)];
                System.arraycopy(iArr, 0, this.f3336a, 0, iArr.length);
                Arrays.fill(this.f3336a, iArr.length, this.f3336a.length, -1);
            }
        }

        /* renamed from: a */
        void m3739a() {
            if (this.f3336a != null) {
                Arrays.fill(this.f3336a, -1);
            }
            this.f3337b = null;
        }

        /* renamed from: a */
        void m3740a(int i, int i2) {
            if (this.f3336a != null && i < this.f3336a.length) {
                m3747e(i + i2);
                System.arraycopy(this.f3336a, i + i2, this.f3336a, i, (this.f3336a.length - i) - i2);
                Arrays.fill(this.f3336a, this.f3336a.length - i2, this.f3336a.length, -1);
                m3734c(i, i2);
            }
        }

        /* renamed from: c */
        private void m3734c(int i, int i2) {
            if (this.f3337b != null) {
                int i3 = i + i2;
                for (int size = this.f3337b.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f3337b.get(size);
                    if (fullSpanItem.f3338a >= i) {
                        if (fullSpanItem.f3338a < i3) {
                            this.f3337b.remove(size);
                        } else {
                            fullSpanItem.f3338a -= i2;
                        }
                    }
                }
            }
        }

        /* renamed from: b */
        void m3744b(int i, int i2) {
            if (this.f3336a != null && i < this.f3336a.length) {
                m3747e(i + i2);
                System.arraycopy(this.f3336a, i, this.f3336a, i + i2, (this.f3336a.length - i) - i2);
                Arrays.fill(this.f3336a, i, i + i2, -1);
                m3735d(i, i2);
            }
        }

        /* renamed from: d */
        private void m3735d(int i, int i2) {
            if (this.f3337b != null) {
                for (int size = this.f3337b.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f3337b.get(size);
                    if (fullSpanItem.f3338a >= i) {
                        fullSpanItem.f3338a += i2;
                    }
                }
            }
        }

        /* renamed from: g */
        private int m3736g(int i) {
            if (this.f3337b == null) {
                return -1;
            }
            FullSpanItem m3748f = m3748f(i);
            if (m3748f != null) {
                this.f3337b.remove(m3748f);
            }
            int size = this.f3337b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                }
                if (this.f3337b.get(i2).f3338a >= i) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f3337b.get(i2);
            this.f3337b.remove(i2);
            return fullSpanItem.f3338a;
        }

        /* renamed from: a */
        public void m3742a(FullSpanItem fullSpanItem) {
            if (this.f3337b == null) {
                this.f3337b = new ArrayList();
            }
            int size = this.f3337b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f3337b.get(i);
                if (fullSpanItem2.f3338a == fullSpanItem.f3338a) {
                    this.f3337b.remove(i);
                }
                if (fullSpanItem2.f3338a >= fullSpanItem.f3338a) {
                    this.f3337b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f3337b.add(fullSpanItem);
        }

        /* renamed from: f */
        public FullSpanItem m3748f(int i) {
            if (this.f3337b == null) {
                return null;
            }
            for (int size = this.f3337b.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f3337b.get(size);
                if (fullSpanItem.f3338a == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: a */
        public FullSpanItem m3738a(int i, int i2, int i3, boolean z) {
            if (this.f3337b == null) {
                return null;
            }
            int size = this.f3337b.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.f3337b.get(i4);
                if (fullSpanItem.f3338a >= i2) {
                    return null;
                }
                if (fullSpanItem.f3338a >= i) {
                    if (i3 == 0 || fullSpanItem.f3339b == i3) {
                        return fullSpanItem;
                    }
                    if (z && fullSpanItem.f3341d) {
                        return fullSpanItem;
                    }
                }
            }
            return null;
        }

        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1
                C06361() {
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            };

            /* renamed from: a */
            int f3338a;

            /* renamed from: b */
            int f3339b;

            /* renamed from: c */
            int[] f3340c;

            /* renamed from: d */
            boolean f3341d;

            FullSpanItem(Parcel parcel) {
                this.f3338a = parcel.readInt();
                this.f3339b = parcel.readInt();
                this.f3341d = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    this.f3340c = new int[readInt];
                    parcel.readIntArray(this.f3340c);
                }
            }

            FullSpanItem() {
            }

            /* renamed from: a */
            int m3749a(int i) {
                if (this.f3340c == null) {
                    return 0;
                }
                return this.f3340c[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f3338a);
                parcel.writeInt(this.f3339b);
                parcel.writeInt(this.f3341d ? 1 : 0);
                if (this.f3340c != null && this.f3340c.length > 0) {
                    parcel.writeInt(this.f3340c.length);
                    parcel.writeIntArray(this.f3340c);
                } else {
                    parcel.writeInt(0);
                }
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f3338a + ", mGapDir=" + this.f3339b + ", mHasUnwantedGapAfter=" + this.f3341d + ", mGapPerSpan=" + Arrays.toString(this.f3340c) + '}';
            }

            /* renamed from: android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$1 */
            static class C06361 implements Parcelable.Creator<FullSpanItem> {
                C06361() {
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.SavedState.1
            C06371() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        int f3342a;

        /* renamed from: b */
        int f3343b;

        /* renamed from: c */
        int f3344c;

        /* renamed from: d */
        int[] f3345d;

        /* renamed from: e */
        int f3346e;

        /* renamed from: f */
        int[] f3347f;

        /* renamed from: g */
        List<LazySpanLookup.FullSpanItem> f3348g;

        /* renamed from: h */
        boolean f3349h;

        /* renamed from: i */
        boolean f3350i;

        /* renamed from: j */
        boolean f3351j;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f3342a = parcel.readInt();
            this.f3343b = parcel.readInt();
            this.f3344c = parcel.readInt();
            if (this.f3344c > 0) {
                this.f3345d = new int[this.f3344c];
                parcel.readIntArray(this.f3345d);
            }
            this.f3346e = parcel.readInt();
            if (this.f3346e > 0) {
                this.f3347f = new int[this.f3346e];
                parcel.readIntArray(this.f3347f);
            }
            this.f3349h = parcel.readInt() == 1;
            this.f3350i = parcel.readInt() == 1;
            this.f3351j = parcel.readInt() == 1;
            this.f3348g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f3344c = savedState.f3344c;
            this.f3342a = savedState.f3342a;
            this.f3343b = savedState.f3343b;
            this.f3345d = savedState.f3345d;
            this.f3346e = savedState.f3346e;
            this.f3347f = savedState.f3347f;
            this.f3349h = savedState.f3349h;
            this.f3350i = savedState.f3350i;
            this.f3351j = savedState.f3351j;
            this.f3348g = savedState.f3348g;
        }

        /* renamed from: a */
        void m3752a() {
            this.f3345d = null;
            this.f3344c = 0;
            this.f3346e = 0;
            this.f3347f = null;
            this.f3348g = null;
        }

        /* renamed from: b */
        void m3753b() {
            this.f3345d = null;
            this.f3344c = 0;
            this.f3342a = -1;
            this.f3343b = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f3342a);
            parcel.writeInt(this.f3343b);
            parcel.writeInt(this.f3344c);
            if (this.f3344c > 0) {
                parcel.writeIntArray(this.f3345d);
            }
            parcel.writeInt(this.f3346e);
            if (this.f3346e > 0) {
                parcel.writeIntArray(this.f3347f);
            }
            parcel.writeInt(this.f3349h ? 1 : 0);
            parcel.writeInt(this.f3350i ? 1 : 0);
            parcel.writeInt(this.f3351j ? 1 : 0);
            parcel.writeList(this.f3348g);
        }

        /* renamed from: android.support.v7.widget.StaggeredGridLayoutManager$SavedState$1 */
        static class C06371 implements Parcelable.Creator<SavedState> {
            C06371() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }

    /* renamed from: android.support.v7.widget.StaggeredGridLayoutManager$a */
    class C0638a {

        /* renamed from: a */
        int f3352a;

        /* renamed from: b */
        int f3353b;

        /* renamed from: c */
        boolean f3354c;

        /* renamed from: d */
        boolean f3355d;

        /* renamed from: e */
        boolean f3356e;

        /* renamed from: f */
        int[] f3357f;

        C0638a() {
            m3756a();
        }

        /* renamed from: a */
        void m3756a() {
            this.f3352a = -1;
            this.f3353b = Integer.MIN_VALUE;
            this.f3354c = false;
            this.f3355d = false;
            this.f3356e = false;
            if (this.f3357f != null) {
                Arrays.fill(this.f3357f, -1);
            }
        }

        /* renamed from: a */
        void m3758a(C0640c[] c0640cArr) {
            int length = c0640cArr.length;
            if (this.f3357f == null || this.f3357f.length < length) {
                this.f3357f = new int[StaggeredGridLayoutManager.this.f3319a.length];
            }
            for (int i = 0; i < length; i++) {
                this.f3357f[i] = c0640cArr[i].m3762a(Integer.MIN_VALUE);
            }
        }

        /* renamed from: b */
        void m3759b() {
            this.f3353b = this.f3354c ? StaggeredGridLayoutManager.this.f3320b.mo4062d() : StaggeredGridLayoutManager.this.f3320b.mo4060c();
        }

        /* renamed from: a */
        void m3757a(int i) {
            if (this.f3354c) {
                this.f3353b = StaggeredGridLayoutManager.this.f3320b.mo4062d() - i;
            } else {
                this.f3353b = StaggeredGridLayoutManager.this.f3320b.mo4060c() + i;
            }
        }
    }
}
