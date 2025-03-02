package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.AbstractC0603i implements RecyclerView.AbstractC0613s.b {

    /* renamed from: a */
    private C0587c f2992a;

    /* renamed from: b */
    private boolean f2993b;

    /* renamed from: f */
    private boolean f2997f;

    /* renamed from: j */
    AbstractC0671av f3001j;

    /* renamed from: i */
    int f3000i = 1;

    /* renamed from: c */
    private boolean f2994c = false;

    /* renamed from: k */
    boolean f3002k = false;

    /* renamed from: d */
    private boolean f2995d = false;

    /* renamed from: e */
    private boolean f2996e = true;

    /* renamed from: l */
    int f3003l = -1;

    /* renamed from: m */
    int f3004m = Integer.MIN_VALUE;

    /* renamed from: n */
    SavedState f3005n = null;

    /* renamed from: o */
    final C0585a f3006o = new C0585a();

    /* renamed from: g */
    private final C0586b f2998g = new C0586b();

    /* renamed from: h */
    private int f2999h = 2;

    public LinearLayoutManager(Context context, int i, boolean z) {
        m3146b(i);
        m3147b(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.AbstractC0603i.b a2 = m3384a(context, attributeSet, i, i2);
        m3146b(a2.f3154a);
        m3147b(a2.f3156c);
        mo3090a(a2.f3157d);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: c */
    public boolean mo3151c() {
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public RecyclerView.C0604j mo3074a() {
        return new RecyclerView.C0604j(-2, -2);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3141a(RecyclerView recyclerView, RecyclerView.C0610p c0610p) {
        super.mo3141a(recyclerView, c0610p);
        if (this.f2997f) {
            m3438c(c0610p);
            c0610p.m3519a();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3142a(AccessibilityEvent accessibilityEvent) {
        super.mo3142a(accessibilityEvent);
        if (m3477v() > 0) {
            accessibilityEvent.setFromIndex(m3169m());
            accessibilityEvent.setToIndex(m3170n());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: d */
    public Parcelable mo3154d() {
        if (this.f3005n != null) {
            return new SavedState(this.f3005n);
        }
        SavedState savedState = new SavedState();
        if (m3477v() > 0) {
            m3165i();
            boolean z = this.f2993b ^ this.f3002k;
            savedState.f3009c = z;
            if (z) {
                View m3107M = m3107M();
                savedState.f3008b = this.f3001j.mo4062d() - this.f3001j.mo4059b(m3107M);
                savedState.f3007a = m3444d(m3107M);
                return savedState;
            }
            View m3106L = m3106L();
            savedState.f3007a = m3444d(m3106L);
            savedState.f3008b = this.f3001j.mo4055a(m3106L) - this.f3001j.mo4060c();
            return savedState;
        }
        savedState.m3172b();
        return savedState;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3140a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f3005n = (SavedState) parcelable;
            m3470o();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: e */
    public boolean mo3157e() {
        return this.f3000i == 0;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: f */
    public boolean mo3160f() {
        return this.f3000i == 1;
    }

    /* renamed from: a */
    public void mo3090a(boolean z) {
        mo3143a((String) null);
        if (this.f2995d != z) {
            this.f2995d = z;
            m3470o();
        }
    }

    /* renamed from: g */
    public int m3161g() {
        return this.f3000i;
    }

    /* renamed from: b */
    public void m3146b(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        mo3143a((String) null);
        if (i != this.f3000i || this.f3001j == null) {
            this.f3001j = AbstractC0671av.m4053a(this, i);
            this.f3006o.f3010a = this.f3001j;
            this.f3000i = i;
            m3470o();
        }
    }

    /* renamed from: K */
    private void m3105K() {
        if (this.f3000i == 1 || !m3164h()) {
            this.f3002k = this.f2994c;
        } else {
            this.f3002k = this.f2994c ? false : true;
        }
    }

    /* renamed from: b */
    public void m3147b(boolean z) {
        mo3143a((String) null);
        if (z != this.f2994c) {
            this.f2994c = z;
            m3470o();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: c */
    public View mo3150c(int i) {
        int v = m3477v();
        if (v == 0) {
            return null;
        }
        int d = i - m3444d(m3460i(0));
        if (d >= 0 && d < v) {
            View i2 = m3460i(d);
            if (m3444d(i2) == i) {
                return i2;
            }
        }
        return super.mo3150c(i);
    }

    /* renamed from: b */
    protected int m3144b(RecyclerView.C0614t c0614t) {
        if (c0614t.m3573d()) {
            return this.f3001j.mo4066f();
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0613s.b
    /* renamed from: d */
    public PointF mo3153d(int i) {
        if (m3477v() == 0) {
            return null;
        }
        int i2 = (i < m3444d(m3460i(0))) != this.f3002k ? -1 : 1;
        if (this.f3000i == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: c */
    public void mo3096c(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        View mo3150c;
        int mo4055a;
        if ((this.f3005n != null || this.f3003l != -1) && c0614t.m3574e() == 0) {
            m3438c(c0610p);
            return;
        }
        if (this.f3005n != null && this.f3005n.m3171a()) {
            this.f3003l = this.f3005n.f3007a;
        }
        m3165i();
        this.f2992a.f3019a = false;
        m3105K();
        View E = m3395E();
        if (!this.f3006o.f3014e || this.f3003l != -1 || this.f3005n != null) {
            this.f3006o.m3175a();
            this.f3006o.f3013d = this.f3002k ^ this.f2995d;
            m3116a(c0610p, c0614t, this.f3006o);
            this.f3006o.f3014e = true;
        } else if (E != null && (this.f3001j.mo4055a(E) >= this.f3001j.mo4062d() || this.f3001j.mo4059b(E) <= this.f3001j.mo4060c())) {
            this.f3006o.m3176a(E, m3444d(E));
        }
        int m3144b = m3144b(c0614t);
        if (this.f2992a.f3028j >= 0) {
            i = m3144b;
            i2 = 0;
        } else {
            i = 0;
            i2 = m3144b;
        }
        int mo4060c = this.f3001j.mo4060c() + i2;
        int mo4068g = i + this.f3001j.mo4068g();
        if (c0614t.m3570a() && this.f3003l != -1 && this.f3004m != Integer.MIN_VALUE && (mo3150c = mo3150c(this.f3003l)) != null) {
            if (this.f3002k) {
                mo4055a = (this.f3001j.mo4062d() - this.f3001j.mo4059b(mo3150c)) - this.f3004m;
            } else {
                mo4055a = this.f3004m - (this.f3001j.mo4055a(mo3150c) - this.f3001j.mo4060c());
            }
            if (mo4055a > 0) {
                mo4060c += mo4055a;
            } else {
                mo4068g -= mo4055a;
            }
        }
        if (this.f3006o.f3013d) {
            i3 = this.f3002k ? 1 : -1;
        } else {
            i3 = this.f3002k ? -1 : 1;
        }
        mo3081a(c0610p, c0614t, this.f3006o, i3);
        m3404a(c0610p);
        this.f2992a.f3030l = m3167k();
        this.f2992a.f3027i = c0614t.m3570a();
        if (this.f3006o.f3013d) {
            m3120b(this.f3006o);
            this.f2992a.f3026h = mo4060c;
            m3136a(c0610p, this.f2992a, c0614t, false);
            int i7 = this.f2992a.f3020b;
            int i8 = this.f2992a.f3022d;
            if (this.f2992a.f3021c > 0) {
                mo4068g += this.f2992a.f3021c;
            }
            m3112a(this.f3006o);
            this.f2992a.f3026h = mo4068g;
            this.f2992a.f3022d += this.f2992a.f3023e;
            m3136a(c0610p, this.f2992a, c0614t, false);
            int i9 = this.f2992a.f3020b;
            if (this.f2992a.f3021c > 0) {
                int i10 = this.f2992a.f3021c;
                m3126g(i8, i7);
                this.f2992a.f3026h = i10;
                m3136a(c0610p, this.f2992a, c0614t, false);
                i6 = this.f2992a.f3020b;
            } else {
                i6 = i7;
            }
            i4 = i9;
            i5 = i6;
        } else {
            m3112a(this.f3006o);
            this.f2992a.f3026h = mo4068g;
            m3136a(c0610p, this.f2992a, c0614t, false);
            int i11 = this.f2992a.f3020b;
            int i12 = this.f2992a.f3022d;
            if (this.f2992a.f3021c > 0) {
                mo4060c += this.f2992a.f3021c;
            }
            m3120b(this.f3006o);
            this.f2992a.f3026h = mo4060c;
            this.f2992a.f3022d += this.f2992a.f3023e;
            m3136a(c0610p, this.f2992a, c0614t, false);
            int i13 = this.f2992a.f3020b;
            if (this.f2992a.f3021c > 0) {
                int i14 = this.f2992a.f3021c;
                m3110a(i12, i11);
                this.f2992a.f3026h = i14;
                m3136a(c0610p, this.f2992a, c0614t, false);
                i4 = this.f2992a.f3020b;
                i5 = i13;
            } else {
                i4 = i11;
                i5 = i13;
            }
        }
        if (m3477v() > 0) {
            if (this.f3002k ^ this.f2995d) {
                int m3108a = m3108a(i4, c0610p, c0614t, true);
                int i15 = i5 + m3108a;
                int i16 = m3108a + i4;
                int m3118b = m3118b(i15, c0610p, c0614t, false);
                i5 = i15 + m3118b;
                i4 = m3118b + i16;
            } else {
                int m3118b2 = m3118b(i5, c0610p, c0614t, true);
                int i17 = i5 + m3118b2;
                int i18 = m3118b2 + i4;
                int m3108a2 = m3108a(i18, c0610p, c0614t, false);
                i5 = i17 + m3108a2;
                i4 = m3108a2 + i18;
            }
        }
        m3122b(c0610p, c0614t, i5, i4);
        if (!c0614t.m3570a()) {
            this.f3001j.m4056a();
        } else {
            this.f3006o.m3175a();
        }
        this.f2993b = this.f2995d;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3084a(RecyclerView.C0614t c0614t) {
        super.mo3084a(c0614t);
        this.f3005n = null;
        this.f3003l = -1;
        this.f3004m = Integer.MIN_VALUE;
        this.f3006o.m3175a();
    }

    /* renamed from: a */
    void mo3081a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, C0585a c0585a, int i) {
    }

    /* renamed from: b */
    private void m3122b(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, int i, int i2) {
        int mo4065e;
        int i3;
        if (c0614t.m3571b() && m3477v() != 0 && !c0614t.m3570a() && mo3095b()) {
            int i4 = 0;
            int i5 = 0;
            List<RecyclerView.AbstractC0617w> m3536c = c0610p.m3536c();
            int size = m3536c.size();
            int d = m3444d(m3460i(0));
            int i6 = 0;
            while (i6 < size) {
                RecyclerView.AbstractC0617w abstractC0617w = m3536c.get(i6);
                if (abstractC0617w.m3615q()) {
                    mo4065e = i5;
                    i3 = i4;
                } else {
                    if (((abstractC0617w.m3602d() < d) != this.f3002k ? (char) 65535 : (char) 1) == 65535) {
                        i3 = i4 + this.f3001j.mo4065e(abstractC0617w.f3217a);
                        mo4065e = i5;
                    } else {
                        mo4065e = this.f3001j.mo4065e(abstractC0617w.f3217a) + i5;
                        i3 = i4;
                    }
                }
                i6++;
                i5 = mo4065e;
                i4 = i3;
            }
            this.f2992a.f3029k = m3536c;
            if (i4 > 0) {
                m3126g(m3444d(m3106L()), i);
                this.f2992a.f3026h = i4;
                this.f2992a.f3021c = 0;
                this.f2992a.m3183a();
                m3136a(c0610p, this.f2992a, c0614t, false);
            }
            if (i5 > 0) {
                m3110a(m3444d(m3107M()), i2);
                this.f2992a.f3026h = i5;
                this.f2992a.f3021c = 0;
                this.f2992a.m3183a();
                m3136a(c0610p, this.f2992a, c0614t, false);
            }
            this.f2992a.f3029k = null;
        }
    }

    /* renamed from: a */
    private void m3116a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, C0585a c0585a) {
        if (!m3117a(c0614t, c0585a) && !m3123b(c0610p, c0614t, c0585a)) {
            c0585a.m3178b();
            c0585a.f3011b = this.f2995d ? c0614t.m3574e() - 1 : 0;
        }
    }

    /* renamed from: b */
    private boolean m3123b(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, C0585a c0585a) {
        View m3125g;
        int mo4060c;
        if (m3477v() == 0) {
            return false;
        }
        View E = m3395E();
        if (E != null && c0585a.m3177a(E, c0614t)) {
            c0585a.m3176a(E, m3444d(E));
            return true;
        }
        if (this.f2993b != this.f2995d) {
            return false;
        }
        if (c0585a.f3013d) {
            m3125g = m3124f(c0610p, c0614t);
        } else {
            m3125g = m3125g(c0610p, c0614t);
        }
        if (m3125g == null) {
            return false;
        }
        c0585a.m3179b(m3125g, m3444d(m3125g));
        if (!c0614t.m3570a() && mo3095b()) {
            if (this.f3001j.mo4055a(m3125g) >= this.f3001j.mo4062d() || this.f3001j.mo4059b(m3125g) < this.f3001j.mo4060c()) {
                if (c0585a.f3013d) {
                    mo4060c = this.f3001j.mo4062d();
                } else {
                    mo4060c = this.f3001j.mo4060c();
                }
                c0585a.f3012c = mo4060c;
            }
        }
        return true;
    }

    /* renamed from: a */
    private boolean m3117a(RecyclerView.C0614t c0614t, C0585a c0585a) {
        int mo4055a;
        if (c0614t.m3570a() || this.f3003l == -1) {
            return false;
        }
        if (this.f3003l < 0 || this.f3003l >= c0614t.m3574e()) {
            this.f3003l = -1;
            this.f3004m = Integer.MIN_VALUE;
            return false;
        }
        c0585a.f3011b = this.f3003l;
        if (this.f3005n != null && this.f3005n.m3171a()) {
            c0585a.f3013d = this.f3005n.f3009c;
            if (c0585a.f3013d) {
                c0585a.f3012c = this.f3001j.mo4062d() - this.f3005n.f3008b;
                return true;
            }
            c0585a.f3012c = this.f3001j.mo4060c() + this.f3005n.f3008b;
            return true;
        }
        if (this.f3004m == Integer.MIN_VALUE) {
            View mo3150c = mo3150c(this.f3003l);
            if (mo3150c != null) {
                if (this.f3001j.mo4065e(mo3150c) > this.f3001j.mo4066f()) {
                    c0585a.m3178b();
                    return true;
                }
                if (this.f3001j.mo4055a(mo3150c) - this.f3001j.mo4060c() < 0) {
                    c0585a.f3012c = this.f3001j.mo4060c();
                    c0585a.f3013d = false;
                    return true;
                }
                if (this.f3001j.mo4062d() - this.f3001j.mo4059b(mo3150c) < 0) {
                    c0585a.f3012c = this.f3001j.mo4062d();
                    c0585a.f3013d = true;
                    return true;
                }
                if (c0585a.f3013d) {
                    mo4055a = this.f3001j.mo4059b(mo3150c) + this.f3001j.m4058b();
                } else {
                    mo4055a = this.f3001j.mo4055a(mo3150c);
                }
                c0585a.f3012c = mo4055a;
                return true;
            }
            if (m3477v() > 0) {
                c0585a.f3013d = (this.f3003l < m3444d(m3460i(0))) == this.f3002k;
            }
            c0585a.m3178b();
            return true;
        }
        c0585a.f3013d = this.f3002k;
        if (this.f3002k) {
            c0585a.f3012c = this.f3001j.mo4062d() - this.f3004m;
            return true;
        }
        c0585a.f3012c = this.f3001j.mo4060c() + this.f3004m;
        return true;
    }

    /* renamed from: a */
    private int m3108a(int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, boolean z) {
        int mo4062d;
        int mo4062d2 = this.f3001j.mo4062d() - i;
        if (mo4062d2 > 0) {
            int i2 = -m3148c(-mo4062d2, c0610p, c0614t);
            int i3 = i + i2;
            if (z && (mo4062d = this.f3001j.mo4062d() - i3) > 0) {
                this.f3001j.mo4057a(mo4062d);
                return i2 + mo4062d;
            }
            return i2;
        }
        return 0;
    }

    /* renamed from: b */
    private int m3118b(int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, boolean z) {
        int mo4060c;
        int mo4060c2 = i - this.f3001j.mo4060c();
        if (mo4060c2 > 0) {
            int i2 = -m3148c(mo4060c2, c0610p, c0614t);
            int i3 = i + i2;
            if (z && (mo4060c = i3 - this.f3001j.mo4060c()) > 0) {
                this.f3001j.mo4057a(-mo4060c);
                return i2 - mo4060c;
            }
            return i2;
        }
        return 0;
    }

    /* renamed from: a */
    private void m3112a(C0585a c0585a) {
        m3110a(c0585a.f3011b, c0585a.f3012c);
    }

    /* renamed from: a */
    private void m3110a(int i, int i2) {
        this.f2992a.f3021c = this.f3001j.mo4062d() - i2;
        this.f2992a.f3023e = this.f3002k ? -1 : 1;
        this.f2992a.f3022d = i;
        this.f2992a.f3024f = 1;
        this.f2992a.f3020b = i2;
        this.f2992a.f3025g = Integer.MIN_VALUE;
    }

    /* renamed from: b */
    private void m3120b(C0585a c0585a) {
        m3126g(c0585a.f3011b, c0585a.f3012c);
    }

    /* renamed from: g */
    private void m3126g(int i, int i2) {
        this.f2992a.f3021c = i2 - this.f3001j.mo4060c();
        this.f2992a.f3022d = i;
        this.f2992a.f3023e = this.f3002k ? 1 : -1;
        this.f2992a.f3024f = -1;
        this.f2992a.f3020b = i2;
        this.f2992a.f3025g = Integer.MIN_VALUE;
    }

    /* renamed from: h */
    protected boolean m3164h() {
        return m3475t() == 1;
    }

    /* renamed from: i */
    void m3165i() {
        if (this.f2992a == null) {
            this.f2992a = m3166j();
        }
    }

    /* renamed from: j */
    C0587c m3166j() {
        return new C0587c();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: e */
    public void mo3156e(int i) {
        this.f3003l = i;
        this.f3004m = Integer.MIN_VALUE;
        if (this.f3005n != null) {
            this.f3005n.m3172b();
        }
        m3470o();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public int mo3072a(int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        if (this.f3000i == 1) {
            return 0;
        }
        return m3148c(i, c0610p, c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: b */
    public int mo3092b(int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        if (this.f3000i == 0) {
            return 0;
        }
        return m3148c(i, c0610p, c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: c */
    public int mo3149c(RecyclerView.C0614t c0614t) {
        return m3128i(c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: d */
    public int mo3152d(RecyclerView.C0614t c0614t) {
        return m3128i(c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: e */
    public int mo3155e(RecyclerView.C0614t c0614t) {
        return m3130j(c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: f */
    public int mo3159f(RecyclerView.C0614t c0614t) {
        return m3130j(c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: g */
    public int mo3162g(RecyclerView.C0614t c0614t) {
        return m3132k(c0614t);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: h */
    public int mo3163h(RecyclerView.C0614t c0614t) {
        return m3132k(c0614t);
    }

    /* renamed from: i */
    private int m3128i(RecyclerView.C0614t c0614t) {
        if (m3477v() == 0) {
            return 0;
        }
        m3165i();
        return C0678bb.m4110a(c0614t, this.f3001j, m3109a(!this.f2996e, true), m3119b(this.f2996e ? false : true, true), this, this.f2996e, this.f3002k);
    }

    /* renamed from: j */
    private int m3130j(RecyclerView.C0614t c0614t) {
        if (m3477v() == 0) {
            return 0;
        }
        m3165i();
        return C0678bb.m4109a(c0614t, this.f3001j, m3109a(!this.f2996e, true), m3119b(this.f2996e ? false : true, true), this, this.f2996e);
    }

    /* renamed from: k */
    private int m3132k(RecyclerView.C0614t c0614t) {
        if (m3477v() == 0) {
            return 0;
        }
        m3165i();
        return C0678bb.m4111b(c0614t, this.f3001j, m3109a(!this.f2996e, true), m3119b(this.f2996e ? false : true, true), this, this.f2996e);
    }

    /* renamed from: a */
    private void m3111a(int i, int i2, boolean z, RecyclerView.C0614t c0614t) {
        int mo4060c;
        this.f2992a.f3030l = m3167k();
        this.f2992a.f3026h = m3144b(c0614t);
        this.f2992a.f3024f = i;
        if (i == 1) {
            this.f2992a.f3026h += this.f3001j.mo4068g();
            View m3107M = m3107M();
            this.f2992a.f3023e = this.f3002k ? -1 : 1;
            this.f2992a.f3022d = m3444d(m3107M) + this.f2992a.f3023e;
            this.f2992a.f3020b = this.f3001j.mo4059b(m3107M);
            mo4060c = this.f3001j.mo4059b(m3107M) - this.f3001j.mo4062d();
        } else {
            View m3106L = m3106L();
            this.f2992a.f3026h += this.f3001j.mo4060c();
            this.f2992a.f3023e = this.f3002k ? 1 : -1;
            this.f2992a.f3022d = m3444d(m3106L) + this.f2992a.f3023e;
            this.f2992a.f3020b = this.f3001j.mo4055a(m3106L);
            mo4060c = (-this.f3001j.mo4055a(m3106L)) + this.f3001j.mo4060c();
        }
        this.f2992a.f3021c = i2;
        if (z) {
            this.f2992a.f3021c -= mo4060c;
        }
        this.f2992a.f3025g = mo4060c;
    }

    /* renamed from: k */
    boolean m3167k() {
        return this.f3001j.mo4069h() == 0 && this.f3001j.mo4064e() == 0;
    }

    /* renamed from: a */
    void mo3085a(RecyclerView.C0614t c0614t, C0587c c0587c, RecyclerView.AbstractC0603i.a aVar) {
        int i = c0587c.f3022d;
        if (i >= 0 && i < c0614t.m3574e()) {
            aVar.mo3487b(i, Math.max(0, c0587c.f3025g));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3139a(int i, RecyclerView.AbstractC0603i.a aVar) {
        boolean z;
        int i2;
        if (this.f3005n != null && this.f3005n.m3171a()) {
            boolean z2 = this.f3005n.f3009c;
            i2 = this.f3005n.f3007a;
            z = z2;
        } else {
            m3105K();
            z = this.f3002k;
            if (this.f3003l == -1) {
                i2 = z ? i - 1 : 0;
            } else {
                i2 = this.f3003l;
            }
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.f2999h && i2 >= 0 && i2 < i; i4++) {
            aVar.mo3487b(i2, 0);
            i2 += i3;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3138a(int i, int i2, RecyclerView.C0614t c0614t, RecyclerView.AbstractC0603i.a aVar) {
        if (this.f3000i != 0) {
            i = i2;
        }
        if (m3477v() != 0 && i != 0) {
            m3165i();
            m3111a(i > 0 ? 1 : -1, Math.abs(i), true, c0614t);
            mo3085a(c0614t, this.f2992a, aVar);
        }
    }

    /* renamed from: c */
    int m3148c(int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        if (m3477v() == 0 || i == 0) {
            return 0;
        }
        this.f2992a.f3019a = true;
        m3165i();
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        m3111a(i2, abs, true, c0614t);
        int m3136a = this.f2992a.f3025g + m3136a(c0610p, this.f2992a, c0614t, false);
        if (m3136a < 0) {
            return 0;
        }
        if (abs > m3136a) {
            i = i2 * m3136a;
        }
        this.f3001j.mo4057a(-i);
        this.f2992a.f3028j = i;
        return i;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3143a(String str) {
        if (this.f3005n == null) {
            super.mo3143a(str);
        }
    }

    /* renamed from: a */
    private void m3114a(RecyclerView.C0610p c0610p, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                for (int i3 = i2 - 1; i3 >= i; i3--) {
                    m3401a(i3, c0610p);
                }
                return;
            }
            while (i > i2) {
                m3401a(i, c0610p);
                i--;
            }
        }
    }

    /* renamed from: a */
    private void m3113a(RecyclerView.C0610p c0610p, int i) {
        if (i >= 0) {
            int v = m3477v();
            if (this.f3002k) {
                for (int i2 = v - 1; i2 >= 0; i2--) {
                    View i3 = m3460i(i2);
                    if (this.f3001j.mo4059b(i3) > i || this.f3001j.mo4061c(i3) > i) {
                        m3114a(c0610p, v - 1, i2);
                        return;
                    }
                }
                return;
            }
            for (int i4 = 0; i4 < v; i4++) {
                View i5 = m3460i(i4);
                if (this.f3001j.mo4059b(i5) > i || this.f3001j.mo4061c(i5) > i) {
                    m3114a(c0610p, 0, i4);
                    return;
                }
            }
        }
    }

    /* renamed from: b */
    private void m3121b(RecyclerView.C0610p c0610p, int i) {
        int v = m3477v();
        if (i >= 0) {
            int mo4064e = this.f3001j.mo4064e() - i;
            if (this.f3002k) {
                for (int i2 = 0; i2 < v; i2++) {
                    View i3 = m3460i(i2);
                    if (this.f3001j.mo4055a(i3) < mo4064e || this.f3001j.mo4063d(i3) < mo4064e) {
                        m3114a(c0610p, 0, i2);
                        return;
                    }
                }
                return;
            }
            for (int i4 = v - 1; i4 >= 0; i4--) {
                View i5 = m3460i(i4);
                if (this.f3001j.mo4055a(i5) < mo4064e || this.f3001j.mo4063d(i5) < mo4064e) {
                    m3114a(c0610p, v - 1, i4);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    private void m3115a(RecyclerView.C0610p c0610p, C0587c c0587c) {
        if (c0587c.f3019a && !c0587c.f3030l) {
            if (c0587c.f3024f == -1) {
                m3121b(c0610p, c0587c.f3025g);
            } else {
                m3113a(c0610p, c0587c.f3025g);
            }
        }
    }

    /* renamed from: a */
    int m3136a(RecyclerView.C0610p c0610p, C0587c c0587c, RecyclerView.C0614t c0614t, boolean z) {
        int i = c0587c.f3021c;
        if (c0587c.f3025g != Integer.MIN_VALUE) {
            if (c0587c.f3021c < 0) {
                c0587c.f3025g += c0587c.f3021c;
            }
            m3115a(c0610p, c0587c);
        }
        int i2 = c0587c.f3021c + c0587c.f3026h;
        C0586b c0586b = this.f2998g;
        while (true) {
            if ((!c0587c.f3030l && i2 <= 0) || !c0587c.m3185a(c0614t)) {
                break;
            }
            c0586b.m3180a();
            mo3082a(c0610p, c0614t, c0587c, c0586b);
            if (!c0586b.f3016b) {
                c0587c.f3020b += c0586b.f3015a * c0587c.f3024f;
                if (!c0586b.f3017c || this.f2992a.f3029k != null || !c0614t.m3570a()) {
                    c0587c.f3021c -= c0586b.f3015a;
                    i2 -= c0586b.f3015a;
                }
                if (c0587c.f3025g != Integer.MIN_VALUE) {
                    c0587c.f3025g += c0586b.f3015a;
                    if (c0587c.f3021c < 0) {
                        c0587c.f3025g += c0587c.f3021c;
                    }
                    m3115a(c0610p, c0587c);
                }
                if (z && c0586b.f3018d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - c0587c.f3021c;
    }

    /* renamed from: a */
    void mo3082a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, C0587c c0587c, C0586b c0586b) {
        int B;
        int mo4067f;
        int i;
        int i2;
        int mo4067f2;
        View m3182a = c0587c.m3182a(c0610p);
        if (m3182a == null) {
            c0586b.f3016b = true;
            return;
        }
        RecyclerView.C0604j c0604j = (RecyclerView.C0604j) m3182a.getLayoutParams();
        if (c0587c.f3029k == null) {
            if (this.f3002k == (c0587c.f3024f == -1)) {
                m3433b(m3182a);
            } else {
                m3434b(m3182a, 0);
            }
        } else {
            if (this.f3002k == (c0587c.f3024f == -1)) {
                m3409a(m3182a);
            } else {
                m3410a(m3182a, 0);
            }
        }
        m3411a(m3182a, 0, 0);
        c0586b.f3015a = this.f3001j.mo4065e(m3182a);
        if (this.f3000i == 1) {
            if (m3164h()) {
                mo4067f2 = m3480y() - m3393C();
                i = mo4067f2 - this.f3001j.mo4067f(m3182a);
            } else {
                i = m3391A();
                mo4067f2 = this.f3001j.mo4067f(m3182a) + i;
            }
            if (c0587c.f3024f == -1) {
                mo4067f = c0587c.f3020b;
                B = c0587c.f3020b - c0586b.f3015a;
                i2 = mo4067f2;
            } else {
                B = c0587c.f3020b;
                mo4067f = c0586b.f3015a + c0587c.f3020b;
                i2 = mo4067f2;
            }
        } else {
            B = m3392B();
            mo4067f = B + this.f3001j.mo4067f(m3182a);
            if (c0587c.f3024f == -1) {
                int i3 = c0587c.f3020b;
                i = c0587c.f3020b - c0586b.f3015a;
                i2 = i3;
            } else {
                i = c0587c.f3020b;
                i2 = c0587c.f3020b + c0586b.f3015a;
            }
        }
        m3412a(m3182a, i, B, i2, mo4067f);
        if (c0604j.m3489d() || c0604j.m3490e()) {
            c0586b.f3017c = true;
        }
        c0586b.f3018d = m3182a.hasFocusable();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: l */
    boolean mo3168l() {
        return (m3479x() == 1073741824 || m3478w() == 1073741824 || !m3400J()) ? false : true;
    }

    /* renamed from: f */
    int m3158f(int i) {
        switch (i) {
            case 1:
                return (this.f3000i == 1 || !m3164h()) ? -1 : 1;
            case 2:
                return (this.f3000i != 1 && m3164h()) ? -1 : 1;
            case 17:
                return this.f3000i != 0 ? Integer.MIN_VALUE : -1;
            case 33:
                return this.f3000i != 1 ? Integer.MIN_VALUE : -1;
            case 66:
                return this.f3000i != 0 ? Integer.MIN_VALUE : 1;
            case 130:
                return this.f3000i == 1 ? 1 : Integer.MIN_VALUE;
            default:
                return Integer.MIN_VALUE;
        }
    }

    /* renamed from: L */
    private View m3106L() {
        return m3460i(this.f3002k ? m3477v() - 1 : 0);
    }

    /* renamed from: M */
    private View m3107M() {
        return m3460i(this.f3002k ? 0 : m3477v() - 1);
    }

    /* renamed from: a */
    private View m3109a(boolean z, boolean z2) {
        return this.f3002k ? m3137a(m3477v() - 1, -1, z, z2) : m3137a(0, m3477v(), z, z2);
    }

    /* renamed from: b */
    private View m3119b(boolean z, boolean z2) {
        return this.f3002k ? m3137a(0, m3477v(), z, z2) : m3137a(m3477v() - 1, -1, z, z2);
    }

    /* renamed from: f */
    private View m3124f(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return this.f3002k ? m3127h(c0610p, c0614t) : m3129i(c0610p, c0614t);
    }

    /* renamed from: g */
    private View m3125g(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return this.f3002k ? m3129i(c0610p, c0614t) : m3127h(c0610p, c0614t);
    }

    /* renamed from: h */
    private View m3127h(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return mo3077a(c0610p, c0614t, 0, m3477v(), c0614t.m3574e());
    }

    /* renamed from: i */
    private View m3129i(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return mo3077a(c0610p, c0614t, m3477v() - 1, -1, c0614t.m3574e());
    }

    /* renamed from: a */
    View mo3077a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, int i, int i2, int i3) {
        View view;
        m3165i();
        int mo4060c = this.f3001j.mo4060c();
        int mo4062d = this.f3001j.mo4062d();
        int i4 = i2 > i ? 1 : -1;
        View view2 = null;
        View view3 = null;
        while (i != i2) {
            View i5 = m3460i(i);
            int d = m3444d(i5);
            if (d >= 0 && d < i3) {
                if (((RecyclerView.C0604j) i5.getLayoutParams()).m3489d()) {
                    if (view3 == null) {
                        view = view2;
                        view3 = i5;
                    }
                } else {
                    if (this.f3001j.mo4055a(i5) < mo4062d && this.f3001j.mo4059b(i5) >= mo4060c) {
                        return i5;
                    }
                    if (view2 == null) {
                        view = i5;
                    }
                }
                i += i4;
                view2 = view;
            }
            view = view2;
            i += i4;
            view2 = view;
        }
        if (view2 == null) {
            view2 = view3;
        }
        return view2;
    }

    /* renamed from: j */
    private View m3131j(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return this.f3002k ? m3134l(c0610p, c0614t) : m3135m(c0610p, c0614t);
    }

    /* renamed from: k */
    private View m3133k(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return this.f3002k ? m3135m(c0610p, c0614t) : m3134l(c0610p, c0614t);
    }

    /* renamed from: l */
    private View m3134l(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return m3145b(0, m3477v());
    }

    /* renamed from: m */
    private View m3135m(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        return m3145b(m3477v() - 1, -1);
    }

    /* renamed from: m */
    public int m3169m() {
        View m3137a = m3137a(0, m3477v(), false, true);
        if (m3137a == null) {
            return -1;
        }
        return m3444d(m3137a);
    }

    /* renamed from: n */
    public int m3170n() {
        View m3137a = m3137a(m3477v() - 1, -1, false, true);
        if (m3137a == null) {
            return -1;
        }
        return m3444d(m3137a);
    }

    /* renamed from: a */
    View m3137a(int i, int i2, boolean z, boolean z2) {
        m3165i();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        if (this.f3000i == 0) {
            return this.f3144r.m4217a(i, i2, i3, i4);
        }
        return this.f3145s.m4217a(i, i2, i3, i4);
    }

    /* renamed from: b */
    View m3145b(int i, int i2) {
        char c;
        int i3;
        int i4;
        m3165i();
        if (i2 > i) {
            c = 1;
        } else {
            c = i2 < i ? (char) 65535 : (char) 0;
        }
        if (c == 0) {
            return m3460i(i);
        }
        if (this.f3001j.mo4055a(m3460i(i)) < this.f3001j.mo4060c()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        }
        if (this.f3000i == 0) {
            return this.f3144r.m4217a(i, i2, i3, i4);
        }
        return this.f3145s.m4217a(i, i2, i3, i4);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public View mo3078a(View view, int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        int m3158f;
        View m3131j;
        View m3107M;
        m3105K();
        if (m3477v() != 0 && (m3158f = m3158f(i)) != Integer.MIN_VALUE) {
            m3165i();
            m3165i();
            m3111a(m3158f, (int) (0.33333334f * this.f3001j.mo4066f()), false, c0614t);
            this.f2992a.f3025g = Integer.MIN_VALUE;
            this.f2992a.f3019a = false;
            m3136a(c0610p, this.f2992a, c0614t, true);
            if (m3158f == -1) {
                m3131j = m3133k(c0610p, c0614t);
            } else {
                m3131j = m3131j(c0610p, c0614t);
            }
            if (m3158f == -1) {
                m3107M = m3106L();
            } else {
                m3107M = m3107M();
            }
            if (!m3107M.hasFocusable()) {
                return m3131j;
            }
            if (m3131j == null) {
                return null;
            }
            return m3107M;
        }
        return null;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: b */
    public boolean mo3095b() {
        return this.f3005n == null && this.f2993b == this.f2995d;
    }

    /* renamed from: android.support.v7.widget.LinearLayoutManager$c */
    static class C0587c {

        /* renamed from: b */
        int f3020b;

        /* renamed from: c */
        int f3021c;

        /* renamed from: d */
        int f3022d;

        /* renamed from: e */
        int f3023e;

        /* renamed from: f */
        int f3024f;

        /* renamed from: g */
        int f3025g;

        /* renamed from: j */
        int f3028j;

        /* renamed from: l */
        boolean f3030l;

        /* renamed from: a */
        boolean f3019a = true;

        /* renamed from: h */
        int f3026h = 0;

        /* renamed from: i */
        boolean f3027i = false;

        /* renamed from: k */
        List<RecyclerView.AbstractC0617w> f3029k = null;

        C0587c() {
        }

        /* renamed from: a */
        boolean m3185a(RecyclerView.C0614t c0614t) {
            return this.f3022d >= 0 && this.f3022d < c0614t.m3574e();
        }

        /* renamed from: a */
        View m3182a(RecyclerView.C0610p c0610p) {
            if (this.f3029k != null) {
                return m3181b();
            }
            View m3535c = c0610p.m3535c(this.f3022d);
            this.f3022d += this.f3023e;
            return m3535c;
        }

        /* renamed from: b */
        private View m3181b() {
            int size = this.f3029k.size();
            for (int i = 0; i < size; i++) {
                View view = this.f3029k.get(i).f3217a;
                RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
                if (!c0604j.m3489d() && this.f3022d == c0604j.m3491f()) {
                    m3184a(view);
                    return view;
                }
            }
            return null;
        }

        /* renamed from: a */
        public void m3183a() {
            m3184a((View) null);
        }

        /* renamed from: a */
        public void m3184a(View view) {
            View m3186b = m3186b(view);
            if (m3186b == null) {
                this.f3022d = -1;
            } else {
                this.f3022d = ((RecyclerView.C0604j) m3186b.getLayoutParams()).m3491f();
            }
        }

        /* renamed from: b */
        public View m3186b(View view) {
            int i;
            int size = this.f3029k.size();
            View view2 = null;
            int i2 = Integer.MAX_VALUE;
            int i3 = 0;
            while (i3 < size) {
                View view3 = this.f3029k.get(i3).f3217a;
                RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view3.getLayoutParams();
                if (view3 != view) {
                    if (c0604j.m3489d()) {
                        i = i2;
                    } else {
                        i = (c0604j.m3491f() - this.f3022d) * this.f3023e;
                        if (i < 0) {
                            i = i2;
                        } else if (i < i2) {
                            if (i == 0) {
                                return view3;
                            }
                            view2 = view3;
                        }
                    }
                    i3++;
                    i2 = i;
                }
                i = i2;
                i3++;
                i2 = i;
            }
            return view2;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.LinearLayoutManager.SavedState.1
            C05841() {
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
        int f3007a;

        /* renamed from: b */
        int f3008b;

        /* renamed from: c */
        boolean f3009c;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f3007a = parcel.readInt();
            this.f3008b = parcel.readInt();
            this.f3009c = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.f3007a = savedState.f3007a;
            this.f3008b = savedState.f3008b;
            this.f3009c = savedState.f3009c;
        }

        /* renamed from: a */
        boolean m3171a() {
            return this.f3007a >= 0;
        }

        /* renamed from: b */
        void m3172b() {
            this.f3007a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f3007a);
            parcel.writeInt(this.f3008b);
            parcel.writeInt(this.f3009c ? 1 : 0);
        }

        /* renamed from: android.support.v7.widget.LinearLayoutManager$SavedState$1 */
        static class C05841 implements Parcelable.Creator<SavedState> {
            C05841() {
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

    /* renamed from: android.support.v7.widget.LinearLayoutManager$a */
    static class C0585a {

        /* renamed from: a */
        AbstractC0671av f3010a;

        /* renamed from: b */
        int f3011b;

        /* renamed from: c */
        int f3012c;

        /* renamed from: d */
        boolean f3013d;

        /* renamed from: e */
        boolean f3014e;

        C0585a() {
            m3175a();
        }

        /* renamed from: a */
        void m3175a() {
            this.f3011b = -1;
            this.f3012c = Integer.MIN_VALUE;
            this.f3013d = false;
            this.f3014e = false;
        }

        /* renamed from: b */
        void m3178b() {
            int mo4060c;
            if (this.f3013d) {
                mo4060c = this.f3010a.mo4062d();
            } else {
                mo4060c = this.f3010a.mo4060c();
            }
            this.f3012c = mo4060c;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f3011b + ", mCoordinate=" + this.f3012c + ", mLayoutFromEnd=" + this.f3013d + ", mValid=" + this.f3014e + '}';
        }

        /* renamed from: a */
        boolean m3177a(View view, RecyclerView.C0614t c0614t) {
            RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
            return !c0604j.m3489d() && c0604j.m3491f() >= 0 && c0604j.m3491f() < c0614t.m3574e();
        }

        /* renamed from: a */
        public void m3176a(View view, int i) {
            int m4058b = this.f3010a.m4058b();
            if (m4058b >= 0) {
                m3179b(view, i);
                return;
            }
            this.f3011b = i;
            if (this.f3013d) {
                int mo4062d = (this.f3010a.mo4062d() - m4058b) - this.f3010a.mo4059b(view);
                this.f3012c = this.f3010a.mo4062d() - mo4062d;
                if (mo4062d > 0) {
                    int mo4065e = this.f3012c - this.f3010a.mo4065e(view);
                    int mo4060c = this.f3010a.mo4060c();
                    int min = mo4065e - (mo4060c + Math.min(this.f3010a.mo4055a(view) - mo4060c, 0));
                    if (min < 0) {
                        this.f3012c = Math.min(mo4062d, -min) + this.f3012c;
                        return;
                    }
                    return;
                }
                return;
            }
            int mo4055a = this.f3010a.mo4055a(view);
            int mo4060c2 = mo4055a - this.f3010a.mo4060c();
            this.f3012c = mo4055a;
            if (mo4060c2 > 0) {
                int mo4062d2 = (this.f3010a.mo4062d() - Math.min(0, (this.f3010a.mo4062d() - m4058b) - this.f3010a.mo4059b(view))) - (mo4055a + this.f3010a.mo4065e(view));
                if (mo4062d2 < 0) {
                    this.f3012c -= Math.min(mo4060c2, -mo4062d2);
                }
            }
        }

        /* renamed from: b */
        public void m3179b(View view, int i) {
            if (this.f3013d) {
                this.f3012c = this.f3010a.mo4059b(view) + this.f3010a.m4058b();
            } else {
                this.f3012c = this.f3010a.mo4055a(view);
            }
            this.f3011b = i;
        }
    }

    /* renamed from: android.support.v7.widget.LinearLayoutManager$b */
    protected static class C0586b {

        /* renamed from: a */
        public int f3015a;

        /* renamed from: b */
        public boolean f3016b;

        /* renamed from: c */
        public boolean f3017c;

        /* renamed from: d */
        public boolean f3018d;

        protected C0586b() {
        }

        /* renamed from: a */
        void m3180a() {
            this.f3015a = 0;
            this.f3016b = false;
            this.f3017c = false;
            this.f3018d = false;
        }
    }
}
