package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: a */
    boolean f2980a;

    /* renamed from: b */
    int f2981b;

    /* renamed from: c */
    int[] f2982c;

    /* renamed from: d */
    View[] f2983d;

    /* renamed from: e */
    final SparseIntArray f2984e;

    /* renamed from: f */
    final SparseIntArray f2985f;

    /* renamed from: g */
    AbstractC0583c f2986g;

    /* renamed from: h */
    final Rect f2987h;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f2980a = false;
        this.f2981b = -1;
        this.f2984e = new SparseIntArray();
        this.f2985f = new SparseIntArray();
        this.f2986g = new C0581a();
        this.f2987h = new Rect();
        m3079a(m3384a(context, attributeSet, i, i2).f3155b);
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    /* renamed from: a */
    public void mo3090a(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.mo3090a(false);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public int mo3073a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        if (this.f3000i == 0) {
            return this.f2981b;
        }
        if (c0614t.m3574e() < 1) {
            return 0;
        }
        return m3061a(c0610p, c0614t, c0614t.m3574e() - 1) + 1;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: b */
    public int mo3093b(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        if (this.f3000i == 1) {
            return this.f2981b;
        }
        if (c0614t.m3574e() < 1) {
            return 0;
        }
        return m3061a(c0610p, c0614t, c0614t.m3574e() - 1) + 1;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3083a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0582b)) {
            super.m3415a(view, accessibilityNodeInfoCompat);
            return;
        }
        C0582b c0582b = (C0582b) layoutParams;
        int m3061a = m3061a(c0610p, c0614t, c0582b.m3491f());
        if (this.f3000i == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(c0582b.m3099a(), c0582b.m3100b(), m3061a, 1, this.f2981b > 1 && c0582b.m3100b() == this.f2981b, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(m3061a, 1, c0582b.m3099a(), c0582b.m3100b(), this.f2981b > 1 && c0582b.m3100b() == this.f2981b, false));
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: c */
    public void mo3096c(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        if (c0614t.m3570a()) {
            m3058L();
        }
        super.mo3096c(c0610p, c0614t);
        m3057K();
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3084a(RecyclerView.C0614t c0614t) {
        super.mo3084a(c0614t);
        this.f2980a = false;
    }

    /* renamed from: K */
    private void m3057K() {
        this.f2984e.clear();
        this.f2985f.clear();
    }

    /* renamed from: L */
    private void m3058L() {
        int v = m3477v();
        for (int i = 0; i < v; i++) {
            C0582b c0582b = (C0582b) m3460i(i).getLayoutParams();
            int f = c0582b.m3491f();
            this.f2984e.put(f, c0582b.m3100b());
            this.f2985f.put(f, c0582b.m3099a());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3087a(RecyclerView recyclerView, int i, int i2) {
        this.f2986g.m3101a();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3086a(RecyclerView recyclerView) {
        this.f2986g.m3101a();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: b */
    public void mo3094b(RecyclerView recyclerView, int i, int i2) {
        this.f2986g.m3101a();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3089a(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.f2986g.m3101a();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3088a(RecyclerView recyclerView, int i, int i2, int i3) {
        this.f2986g.m3101a();
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public RecyclerView.C0604j mo3074a() {
        return this.f3000i == 0 ? new C0582b(-2, -1) : new C0582b(-1, -2);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public RecyclerView.C0604j mo3075a(Context context, AttributeSet attributeSet) {
        return new C0582b(context, attributeSet);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public RecyclerView.C0604j mo3076a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0582b((ViewGroup.MarginLayoutParams) layoutParams) : new C0582b(layoutParams);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public boolean mo3091a(RecyclerView.C0604j c0604j) {
        return c0604j instanceof C0582b;
    }

    /* renamed from: M */
    private void m3059M() {
        int z;
        if (m3161g() == 1) {
            z = (m3480y() - m3393C()) - m3391A();
        } else {
            z = (m3481z() - m3394D()) - m3392B();
        }
        m3070m(z);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public void mo3080a(Rect rect, int i, int i2) {
        int a2;
        int a3;
        if (this.f2982c == null) {
            super.mo3080a(rect, i, i2);
        }
        int C = m3393C() + m3391A();
        int B = m3392B() + m3394D();
        if (this.f3000i == 1) {
            a3 = m3382a(i2, B + rect.height(), m3397G());
            a2 = m3382a(i, C + this.f2982c[this.f2982c.length - 1], m3396F());
        } else {
            a2 = m3382a(i, C + rect.width(), m3396F());
            a3 = m3382a(i2, B + this.f2982c[this.f2982c.length - 1], m3397G());
        }
        m3453f(a2, a3);
    }

    /* renamed from: m */
    private void m3070m(int i) {
        this.f2982c = m3066a(this.f2982c, this.f2981b, i);
    }

    /* renamed from: a */
    static int[] m3066a(int[] iArr, int i, int i2) {
        int i3;
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        iArr[0] = 0;
        int i4 = i2 / i;
        int i5 = i2 % i;
        int i6 = 1;
        int i7 = 0;
        int i8 = 0;
        while (i6 <= i) {
            i7 += i5;
            if (i7 <= 0 || i - i7 >= i5) {
                i3 = i4;
            } else {
                i3 = i4 + 1;
                i7 -= i;
            }
            int i9 = i8 + i3;
            iArr[i6] = i9;
            i6++;
            i8 = i9;
        }
        return iArr;
    }

    /* renamed from: a */
    int m3071a(int i, int i2) {
        return (this.f3000i == 1 && m3164h()) ? this.f2982c[this.f2981b - i] - this.f2982c[(this.f2981b - i) - i2] : this.f2982c[i + i2] - this.f2982c[i];
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    /* renamed from: a */
    void mo3081a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, LinearLayoutManager.C0585a c0585a, int i) {
        super.mo3081a(c0610p, c0614t, c0585a, i);
        m3059M();
        if (c0614t.m3574e() > 0 && !c0614t.m3570a()) {
            m3068b(c0610p, c0614t, c0585a, i);
        }
        m3060N();
    }

    /* renamed from: N */
    private void m3060N() {
        if (this.f2983d == null || this.f2983d.length != this.f2981b) {
            this.f2983d = new View[this.f2981b];
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public int mo3072a(int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        m3059M();
        m3060N();
        return super.mo3072a(i, c0610p, c0614t);
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: b */
    public int mo3092b(int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        m3059M();
        m3060N();
        return super.mo3092b(i, c0610p, c0614t);
    }

    /* renamed from: b */
    private void m3068b(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, LinearLayoutManager.C0585a c0585a, int i) {
        boolean z = i == 1;
        int m3067b = m3067b(c0610p, c0614t, c0585a.f3011b);
        if (z) {
            while (m3067b > 0 && c0585a.f3011b > 0) {
                c0585a.f3011b--;
                m3067b = m3067b(c0610p, c0614t, c0585a.f3011b);
            }
            return;
        }
        int m3574e = c0614t.m3574e() - 1;
        int i2 = c0585a.f3011b;
        int i3 = m3067b;
        while (i2 < m3574e) {
            int m3067b2 = m3067b(c0610p, c0614t, i2 + 1);
            if (m3067b2 <= i3) {
                break;
            }
            i2++;
            i3 = m3067b2;
        }
        c0585a.f3011b = i2;
    }

    @Override // android.support.v7.widget.LinearLayoutManager
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
                if (m3067b(c0610p, c0614t, d) != 0) {
                    view = view2;
                } else if (((RecyclerView.C0604j) i5.getLayoutParams()).m3489d()) {
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

    /* renamed from: a */
    private int m3061a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, int i) {
        if (!c0614t.m3570a()) {
            return this.f2986g.m3104c(i, this.f2981b);
        }
        int m3529b = c0610p.m3529b(i);
        if (m3529b == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        return this.f2986g.m3104c(m3529b, this.f2981b);
    }

    /* renamed from: b */
    private int m3067b(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, int i) {
        if (!c0614t.m3570a()) {
            return this.f2986g.m3103b(i, this.f2981b);
        }
        int i2 = this.f2985f.get(i, -1);
        if (i2 == -1) {
            int m3529b = c0610p.m3529b(i);
            if (m3529b == -1) {
                Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
                return 0;
            }
            return this.f2986g.m3103b(m3529b, this.f2981b);
        }
        return i2;
    }

    /* renamed from: c */
    private int m3069c(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, int i) {
        if (!c0614t.m3570a()) {
            return this.f2986g.mo3097a(i);
        }
        int i2 = this.f2984e.get(i, -1);
        if (i2 == -1) {
            int m3529b = c0610p.m3529b(i);
            if (m3529b == -1) {
                Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
                return 1;
            }
            return this.f2986g.mo3097a(m3529b);
        }
        return i2;
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    /* renamed from: a */
    void mo3085a(RecyclerView.C0614t c0614t, LinearLayoutManager.C0587c c0587c, RecyclerView.AbstractC0603i.a aVar) {
        int i = this.f2981b;
        for (int i2 = 0; i2 < this.f2981b && c0587c.m3185a(c0614t) && i > 0; i2++) {
            int i3 = c0587c.f3022d;
            aVar.mo3487b(i3, Math.max(0, c0587c.f3025g));
            i -= this.f2986g.mo3097a(i3);
            c0587c.f3022d += c0587c.f3023e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x009a, code lost:
    
        r17.f3016b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009f, code lost:
    
        return;
     */
    @Override // android.support.v7.widget.LinearLayoutManager
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void mo3082a(android.support.v7.widget.RecyclerView.C0610p r14, android.support.v7.widget.RecyclerView.C0614t r15, android.support.v7.widget.LinearLayoutManager.C0587c r16, android.support.v7.widget.LinearLayoutManager.C0586b r17) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.GridLayoutManager.mo3082a(android.support.v7.widget.RecyclerView$p, android.support.v7.widget.RecyclerView$t, android.support.v7.widget.LinearLayoutManager$c, android.support.v7.widget.LinearLayoutManager$b):void");
    }

    /* renamed from: a */
    private void m3065a(View view, int i, boolean z) {
        int a2;
        int i2;
        C0582b c0582b = (C0582b) view.getLayoutParams();
        Rect rect = c0582b.f3159d;
        int i3 = rect.top + rect.bottom + c0582b.topMargin + c0582b.bottomMargin;
        int i4 = c0582b.rightMargin + rect.right + rect.left + c0582b.leftMargin;
        int m3071a = m3071a(c0582b.f2988a, c0582b.f2989b);
        if (this.f3000i == 1) {
            int a3 = m3383a(m3071a, i, i4, c0582b.width, false);
            i2 = m3383a(this.f3001j.mo4066f(), m3479x(), i3, c0582b.height, true);
            a2 = a3;
        } else {
            int a4 = m3383a(m3071a, i, i3, c0582b.height, false);
            a2 = m3383a(this.f3001j.mo4066f(), m3478w(), i4, c0582b.width, true);
            i2 = a4;
        }
        m3064a(view, a2, i2, z);
    }

    /* renamed from: a */
    private void m3062a(float f, int i) {
        m3070m(Math.max(Math.round(this.f2981b * f), i));
    }

    /* renamed from: a */
    private void m3064a(View view, int i, int i2, boolean z) {
        boolean b;
        RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
        if (z) {
            b = m3426a(view, i, i2, c0604j);
        } else {
            b = m3436b(view, i, i2, c0604j);
        }
        if (b) {
            view.measure(i, i2);
        }
    }

    /* renamed from: a */
    private void m3063a(RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t, int i, int i2, boolean z) {
        int i3;
        int i4;
        int i5 = 0;
        if (z) {
            i4 = 1;
            i3 = 0;
        } else {
            i3 = i - 1;
            i4 = -1;
            i = -1;
        }
        while (i3 != i) {
            View view = this.f2983d[i3];
            C0582b c0582b = (C0582b) view.getLayoutParams();
            c0582b.f2989b = m3069c(c0610p, c0614t, m3444d(view));
            c0582b.f2988a = i5;
            i5 += c0582b.f2989b;
            i3 += i4;
        }
    }

    /* renamed from: a */
    public void m3079a(int i) {
        if (i != this.f2981b) {
            this.f2980a = true;
            if (i < 1) {
                throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
            }
            this.f2981b = i;
            this.f2986g.m3101a();
            m3470o();
        }
    }

    /* renamed from: android.support.v7.widget.GridLayoutManager$c */
    public static abstract class AbstractC0583c {

        /* renamed from: a */
        final SparseIntArray f2990a = new SparseIntArray();

        /* renamed from: b */
        private boolean f2991b = false;

        /* renamed from: a */
        public abstract int mo3097a(int i);

        /* renamed from: a */
        public void m3101a() {
            this.f2990a.clear();
        }

        /* renamed from: b */
        int m3103b(int i, int i2) {
            if (!this.f2991b) {
                return mo3098a(i, i2);
            }
            int i3 = this.f2990a.get(i, -1);
            if (i3 == -1) {
                int mo3098a = mo3098a(i, i2);
                this.f2990a.put(i, mo3098a);
                return mo3098a;
            }
            return i3;
        }

        /* renamed from: a */
        public int mo3098a(int i, int i2) {
            int i3;
            int i4;
            int m3102b;
            int mo3097a = mo3097a(i);
            if (mo3097a == i2) {
                return 0;
            }
            if (!this.f2991b || this.f2990a.size() <= 0 || (m3102b = m3102b(i)) < 0) {
                i3 = 0;
                i4 = 0;
            } else {
                i4 = this.f2990a.get(m3102b) + mo3097a(m3102b);
                i3 = m3102b + 1;
            }
            int i5 = i3;
            while (i5 < i) {
                int mo3097a2 = mo3097a(i5);
                int i6 = i4 + mo3097a2;
                if (i6 == i2) {
                    mo3097a2 = 0;
                } else if (i6 <= i2) {
                    mo3097a2 = i6;
                }
                i5++;
                i4 = mo3097a2;
            }
            if (i4 + mo3097a <= i2) {
                return i4;
            }
            return 0;
        }

        /* renamed from: b */
        int m3102b(int i) {
            int i2 = 0;
            int size = this.f2990a.size() - 1;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (this.f2990a.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= this.f2990a.size()) {
                return -1;
            }
            return this.f2990a.keyAt(i4);
        }

        /* renamed from: c */
        public int m3104c(int i, int i2) {
            int mo3097a = mo3097a(i);
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < i) {
                int mo3097a2 = mo3097a(i3);
                int i6 = i5 + mo3097a2;
                if (i6 == i2) {
                    i4++;
                    mo3097a2 = 0;
                } else if (i6 > i2) {
                    i4++;
                } else {
                    mo3097a2 = i6;
                }
                i3++;
                i5 = mo3097a2;
            }
            if (i5 + mo3097a > i2) {
                return i4 + 1;
            }
            return i4;
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: a */
    public View mo3078a(View view, int i, RecyclerView.C0610p c0610p, RecyclerView.C0614t c0614t) {
        int i2;
        int i3;
        int v;
        int i4;
        int min;
        View e = m3448e(view);
        if (e == null) {
            return null;
        }
        C0582b c0582b = (C0582b) e.getLayoutParams();
        int i5 = c0582b.f2988a;
        int i6 = c0582b.f2988a + c0582b.f2989b;
        if (super.mo3078a(view, i, c0610p, c0614t) == null) {
            return null;
        }
        if ((m3158f(i) == 1) != this.f3002k) {
            i2 = m3477v() - 1;
            i3 = -1;
            v = -1;
        } else {
            i2 = 0;
            i3 = 1;
            v = m3477v();
        }
        boolean z = this.f3000i == 1 && m3164h();
        View view2 = null;
        int i7 = -1;
        int i8 = 0;
        View view3 = null;
        int i9 = -1;
        int i10 = 0;
        int m3061a = m3061a(c0610p, c0614t, i2);
        int i11 = i2;
        while (i11 != v) {
            int m3061a2 = m3061a(c0610p, c0614t, i11);
            View i12 = m3460i(i11);
            if (i12 == e) {
                break;
            }
            if (i12.hasFocusable() && m3061a2 != m3061a) {
                if (view2 != null) {
                    break;
                }
            } else {
                C0582b c0582b2 = (C0582b) i12.getLayoutParams();
                int i13 = c0582b2.f2988a;
                int i14 = c0582b2.f2988a + c0582b2.f2989b;
                if (!i12.hasFocusable() || i13 != i5 || i14 != i6) {
                    boolean z2 = false;
                    if ((i12.hasFocusable() && view2 == null) || (!i12.hasFocusable() && view3 == null)) {
                        z2 = true;
                    } else {
                        int min2 = Math.min(i14, i6) - Math.max(i13, i5);
                        if (i12.hasFocusable()) {
                            if (min2 > i8) {
                                z2 = true;
                            } else if (min2 == i8) {
                                if (z == (i13 > i7)) {
                                    z2 = true;
                                }
                            }
                        } else if (view2 == null && m3428a(i12, false, true)) {
                            if (min2 > i10) {
                                z2 = true;
                            } else if (min2 == i10) {
                                if (z == (i13 > i9)) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                    if (z2) {
                        if (i12.hasFocusable()) {
                            i7 = c0582b2.f2988a;
                            i8 = Math.min(i14, i6) - Math.max(i13, i5);
                            min = i10;
                            i4 = i9;
                            view2 = i12;
                        } else {
                            i4 = c0582b2.f2988a;
                            min = Math.min(i14, i6) - Math.max(i13, i5);
                            view3 = i12;
                        }
                        i11 += i3;
                        i10 = min;
                        i9 = i4;
                    }
                } else {
                    return i12;
                }
            }
            min = i10;
            i4 = i9;
            i11 += i3;
            i10 = min;
            i9 = i4;
        }
        if (view2 == null) {
            view2 = view3;
        }
        return view2;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.AbstractC0603i
    /* renamed from: b */
    public boolean mo3095b() {
        return this.f3005n == null && !this.f2980a;
    }

    /* renamed from: android.support.v7.widget.GridLayoutManager$a */
    public static final class C0581a extends AbstractC0583c {
        @Override // android.support.v7.widget.GridLayoutManager.AbstractC0583c
        /* renamed from: a */
        public int mo3097a(int i) {
            return 1;
        }

        @Override // android.support.v7.widget.GridLayoutManager.AbstractC0583c
        /* renamed from: a */
        public int mo3098a(int i, int i2) {
            return i % i2;
        }
    }

    /* renamed from: android.support.v7.widget.GridLayoutManager$b */
    public static class C0582b extends RecyclerView.C0604j {

        /* renamed from: a */
        int f2988a;

        /* renamed from: b */
        int f2989b;

        public C0582b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2988a = -1;
            this.f2989b = 0;
        }

        public C0582b(int i, int i2) {
            super(i, i2);
            this.f2988a = -1;
            this.f2989b = 0;
        }

        public C0582b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2988a = -1;
            this.f2989b = 0;
        }

        public C0582b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2988a = -1;
            this.f2989b = 0;
        }

        /* renamed from: a */
        public int m3099a() {
            return this.f2988a;
        }

        /* renamed from: b */
        public int m3100b() {
            return this.f2989b;
        }
    }
}
