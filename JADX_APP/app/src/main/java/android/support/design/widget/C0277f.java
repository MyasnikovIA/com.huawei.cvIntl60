package android.support.design.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.p038a.C0155a;
import android.support.design.p038a.C0156b;
import android.support.design.p038a.C0160f;
import android.support.design.p038a.C0161g;
import android.support.design.p038a.C0162h;
import android.support.design.p044f.C0184a;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: android.support.design.widget.f */
/* loaded from: classes.dex */
class C0277f {

    /* renamed from: a */
    static final TimeInterpolator f1733a = C0155a.f1039c;

    /* renamed from: p */
    static final int[] f1734p = {R.attr.state_pressed, R.attr.state_enabled};

    /* renamed from: q */
    static final int[] f1735q = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};

    /* renamed from: r */
    static final int[] f1736r = {R.attr.state_focused, R.attr.state_enabled};

    /* renamed from: s */
    static final int[] f1737s = {R.attr.state_hovered, R.attr.state_enabled};

    /* renamed from: t */
    static final int[] f1738t = {R.attr.state_enabled};

    /* renamed from: u */
    static final int[] f1739u = new int[0];

    /* renamed from: A */
    private float f1740A;

    /* renamed from: B */
    private ArrayList<Animator.AnimatorListener> f1741B;

    /* renamed from: C */
    private ArrayList<Animator.AnimatorListener> f1742C;

    /* renamed from: H */
    private ViewTreeObserver.OnPreDrawListener f1747H;

    /* renamed from: c */
    @Nullable
    Animator f1749c;

    /* renamed from: d */
    @Nullable
    C0162h f1750d;

    /* renamed from: e */
    @Nullable
    C0162h f1751e;

    /* renamed from: f */
    C0283l f1752f;

    /* renamed from: g */
    Drawable f1753g;

    /* renamed from: h */
    Drawable f1754h;

    /* renamed from: i */
    C0272a f1755i;

    /* renamed from: j */
    Drawable f1756j;

    /* renamed from: k */
    float f1757k;

    /* renamed from: l */
    float f1758l;

    /* renamed from: m */
    float f1759m;

    /* renamed from: n */
    int f1760n;

    /* renamed from: v */
    final C0292u f1762v;

    /* renamed from: w */
    final InterfaceC0284m f1763w;

    /* renamed from: x */
    @Nullable
    private C0162h f1764x;

    /* renamed from: y */
    @Nullable
    private C0162h f1765y;

    /* renamed from: b */
    int f1748b = 0;

    /* renamed from: o */
    float f1761o = 1.0f;

    /* renamed from: D */
    private final Rect f1743D = new Rect();

    /* renamed from: E */
    private final RectF f1744E = new RectF();

    /* renamed from: F */
    private final RectF f1745F = new RectF();

    /* renamed from: G */
    private final Matrix f1746G = new Matrix();

    /* renamed from: z */
    private final C0286o f1766z = new C0286o();

    /* renamed from: android.support.design.widget.f$d */
    interface d {
        /* renamed from: a */
        void mo1869a();

        /* renamed from: b */
        void mo1870b();
    }

    C0277f(C0292u c0292u, InterfaceC0284m interfaceC0284m) {
        this.f1762v = c0292u;
        this.f1763w = interfaceC0284m;
        this.f1766z.m2201a(f1734p, m2074a((f) new c()));
        this.f1766z.m2201a(f1735q, m2074a((f) new b()));
        this.f1766z.m2201a(f1736r, m2074a((f) new b()));
        this.f1766z.m2201a(f1737s, m2074a((f) new b()));
        this.f1766z.m2201a(f1738t, m2074a((f) new e()));
        this.f1766z.m2201a(f1739u, m2074a((f) new a()));
        this.f1740A = this.f1762v.getRotation();
    }

    /* renamed from: a */
    void m2085a(ColorStateList colorStateList) {
        if (this.f1753g != null) {
            DrawableCompat.setTintList(this.f1753g, colorStateList);
        }
        if (this.f1755i != null) {
            this.f1755i.m2018a(colorStateList);
        }
    }

    /* renamed from: a */
    void m2086a(PorterDuff.Mode mode) {
        if (this.f1753g != null) {
            DrawableCompat.setTintMode(this.f1753g, mode);
        }
    }

    /* renamed from: b */
    void mo2094b(ColorStateList colorStateList) {
        if (this.f1754h != null) {
            DrawableCompat.setTintList(this.f1754h, C0184a.m1505a(colorStateList));
        }
    }

    /* renamed from: a */
    final void m2082a(float f2) {
        if (this.f1757k != f2) {
            this.f1757k = f2;
            mo2083a(this.f1757k, this.f1758l, this.f1759m);
        }
    }

    /* renamed from: a */
    float mo2081a() {
        return this.f1757k;
    }

    /* renamed from: b */
    float m2091b() {
        return this.f1758l;
    }

    /* renamed from: c */
    float m2098c() {
        return this.f1759m;
    }

    /* renamed from: b */
    final void m2092b(float f2) {
        if (this.f1758l != f2) {
            this.f1758l = f2;
            mo2083a(this.f1757k, this.f1758l, this.f1759m);
        }
    }

    /* renamed from: c */
    final void m2099c(float f2) {
        if (this.f1759m != f2) {
            this.f1759m = f2;
            mo2083a(this.f1757k, this.f1758l, this.f1759m);
        }
    }

    /* renamed from: d */
    final void m2101d() {
        m2102d(this.f1761o);
    }

    /* renamed from: d */
    final void m2102d(float f2) {
        this.f1761o = f2;
        Matrix matrix = this.f1746G;
        m2075a(f2, matrix);
        this.f1762v.setImageMatrix(matrix);
    }

    /* renamed from: a */
    private void m2075a(float f2, Matrix matrix) {
        matrix.reset();
        if (this.f1762v.getDrawable() != null && this.f1760n != 0) {
            RectF rectF = this.f1744E;
            RectF rectF2 = this.f1745F;
            rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
            rectF2.set(0.0f, 0.0f, this.f1760n, this.f1760n);
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            matrix.postScale(f2, f2, this.f1760n / 2.0f, this.f1760n / 2.0f);
        }
    }

    @Nullable
    /* renamed from: e */
    final C0162h m2104e() {
        return this.f1750d;
    }

    /* renamed from: a */
    final void m2088a(@Nullable C0162h c0162h) {
        this.f1750d = c0162h;
    }

    @Nullable
    /* renamed from: f */
    final C0162h m2105f() {
        return this.f1751e;
    }

    /* renamed from: b */
    final void m2096b(@Nullable C0162h c0162h) {
        this.f1751e = c0162h;
    }

    /* renamed from: a */
    void mo2083a(float f2, float f3, float f4) {
        if (this.f1752f != null) {
            this.f1752f.m2179a(f2, this.f1759m + f2);
            m2109j();
        }
    }

    /* renamed from: a */
    void mo2090a(int[] iArr) {
        this.f1766z.m2200a(iArr);
    }

    /* renamed from: g */
    void mo2106g() {
        this.f1766z.m2199a();
    }

    /* renamed from: a */
    void m2084a(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f1741B == null) {
            this.f1741B = new ArrayList<>();
        }
        this.f1741B.add(animatorListener);
    }

    /* renamed from: b */
    void m2093b(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f1741B != null) {
            this.f1741B.remove(animatorListener);
        }
    }

    /* renamed from: c */
    public void m2100c(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f1742C == null) {
            this.f1742C = new ArrayList<>();
        }
        this.f1742C.add(animatorListener);
    }

    /* renamed from: d */
    public void m2103d(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f1742C != null) {
            this.f1742C.remove(animatorListener);
        }
    }

    /* renamed from: a */
    void m2089a(@Nullable d dVar, boolean z) {
        if (!m2115p()) {
            if (this.f1749c != null) {
                this.f1749c.cancel();
            }
            if (m2079t()) {
                AnimatorSet m2073a = m2073a(this.f1751e != null ? this.f1751e : m2077r(), 0.0f, 0.0f, 0.0f);
                m2073a.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.f.1

                    /* renamed from: a */
                    final /* synthetic */ boolean f1767a;

                    /* renamed from: b */
                    final /* synthetic */ d f1768b;

                    /* renamed from: d */
                    private boolean f1770d;

                    AnonymousClass1(boolean z2, d dVar2) {
                        z = z2;
                        dVar = dVar2;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        C0277f.this.f1762v.m2208a(0, z);
                        C0277f.this.f1748b = 1;
                        C0277f.this.f1749c = animator;
                        this.f1770d = false;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        this.f1770d = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        C0277f.this.f1748b = 0;
                        C0277f.this.f1749c = null;
                        if (!this.f1770d) {
                            C0277f.this.f1762v.m2208a(z ? 8 : 4, z);
                            if (dVar != null) {
                                dVar.mo1870b();
                            }
                        }
                    }
                });
                if (this.f1742C != null) {
                    Iterator<Animator.AnimatorListener> it = this.f1742C.iterator();
                    while (it.hasNext()) {
                        m2073a.addListener(it.next());
                    }
                }
                m2073a.start();
                return;
            }
            this.f1762v.m2208a(z2 ? 8 : 4, z2);
            if (dVar2 != null) {
                dVar2.mo1870b();
            }
        }
    }

    /* renamed from: android.support.design.widget.f$1 */
    class AnonymousClass1 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ boolean f1767a;

        /* renamed from: b */
        final /* synthetic */ d f1768b;

        /* renamed from: d */
        private boolean f1770d;

        AnonymousClass1(boolean z2, d dVar2) {
            z = z2;
            dVar = dVar2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0277f.this.f1762v.m2208a(0, z);
            C0277f.this.f1748b = 1;
            C0277f.this.f1749c = animator;
            this.f1770d = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1770d = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0277f.this.f1748b = 0;
            C0277f.this.f1749c = null;
            if (!this.f1770d) {
                C0277f.this.f1762v.m2208a(z ? 8 : 4, z);
                if (dVar != null) {
                    dVar.mo1870b();
                }
            }
        }
    }

    /* renamed from: b */
    void m2097b(@Nullable d dVar, boolean z) {
        if (!m2114o()) {
            if (this.f1749c != null) {
                this.f1749c.cancel();
            }
            if (m2079t()) {
                if (this.f1762v.getVisibility() != 0) {
                    this.f1762v.setAlpha(0.0f);
                    this.f1762v.setScaleY(0.0f);
                    this.f1762v.setScaleX(0.0f);
                    m2102d(0.0f);
                }
                AnimatorSet m2073a = m2073a(this.f1750d != null ? this.f1750d : m2076q(), 1.0f, 1.0f, 1.0f);
                m2073a.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.f.2

                    /* renamed from: a */
                    final /* synthetic */ boolean f1771a;

                    /* renamed from: b */
                    final /* synthetic */ d f1772b;

                    AnonymousClass2(boolean z2, d dVar2) {
                        z = z2;
                        dVar = dVar2;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        C0277f.this.f1762v.m2208a(0, z);
                        C0277f.this.f1748b = 2;
                        C0277f.this.f1749c = animator;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        C0277f.this.f1748b = 0;
                        C0277f.this.f1749c = null;
                        if (dVar != null) {
                            dVar.mo1869a();
                        }
                    }
                });
                if (this.f1741B != null) {
                    Iterator<Animator.AnimatorListener> it = this.f1741B.iterator();
                    while (it.hasNext()) {
                        m2073a.addListener(it.next());
                    }
                }
                m2073a.start();
                return;
            }
            this.f1762v.m2208a(0, z2);
            this.f1762v.setAlpha(1.0f);
            this.f1762v.setScaleY(1.0f);
            this.f1762v.setScaleX(1.0f);
            m2102d(1.0f);
            if (dVar2 != null) {
                dVar2.mo1869a();
            }
        }
    }

    /* renamed from: android.support.design.widget.f$2 */
    class AnonymousClass2 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ boolean f1771a;

        /* renamed from: b */
        final /* synthetic */ d f1772b;

        AnonymousClass2(boolean z2, d dVar2) {
            z = z2;
            dVar = dVar2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0277f.this.f1762v.m2208a(0, z);
            C0277f.this.f1748b = 2;
            C0277f.this.f1749c = animator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0277f.this.f1748b = 0;
            C0277f.this.f1749c = null;
            if (dVar != null) {
                dVar.mo1869a();
            }
        }
    }

    /* renamed from: q */
    private C0162h m2076q() {
        if (this.f1764x == null) {
            this.f1764x = C0162h.m1371a(this.f1762v.getContext(), android.support.design.R.animator.design_fab_show_motion_spec);
        }
        return this.f1764x;
    }

    /* renamed from: r */
    private C0162h m2077r() {
        if (this.f1765y == null) {
            this.f1765y = C0162h.m1371a(this.f1762v.getContext(), android.support.design.R.animator.design_fab_hide_motion_spec);
        }
        return this.f1765y;
    }

    @NonNull
    /* renamed from: a */
    private AnimatorSet m2073a(@NonNull C0162h c0162h, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f1762v, (Property<C0292u, Float>) View.ALPHA, f2);
        c0162h.m1377b("opacity").m1381a((Animator) ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f1762v, (Property<C0292u, Float>) View.SCALE_X, f3);
        c0162h.m1377b("scale").m1381a((Animator) ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f1762v, (Property<C0292u, Float>) View.SCALE_Y, f3);
        c0162h.m1377b("scale").m1381a((Animator) ofFloat3);
        arrayList.add(ofFloat3);
        m2075a(f4, this.f1746G);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f1762v, new C0160f(), new C0161g(), new Matrix(this.f1746G));
        c0162h.m1377b("iconScale").m1381a((Animator) ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C0156b.m1361a(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: h */
    final Drawable m2107h() {
        return this.f1756j;
    }

    /* renamed from: i */
    void mo2108i() {
    }

    /* renamed from: j */
    final void m2109j() {
        Rect rect = this.f1743D;
        mo2087a(rect);
        mo2095b(rect);
        this.f1763w.mo1882a(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: a */
    void mo2087a(Rect rect) {
        this.f1752f.getPadding(rect);
    }

    /* renamed from: b */
    void mo2095b(Rect rect) {
    }

    /* renamed from: k */
    void m2110k() {
        if (mo2112m()) {
            m2078s();
            this.f1762v.getViewTreeObserver().addOnPreDrawListener(this.f1747H);
        }
    }

    /* renamed from: l */
    void m2111l() {
        if (this.f1747H != null) {
            this.f1762v.getViewTreeObserver().removeOnPreDrawListener(this.f1747H);
            this.f1747H = null;
        }
    }

    /* renamed from: m */
    boolean mo2112m() {
        return true;
    }

    /* renamed from: n */
    void m2113n() {
        float rotation = this.f1762v.getRotation();
        if (this.f1740A != rotation) {
            this.f1740A = rotation;
            m2080u();
        }
    }

    /* renamed from: s */
    private void m2078s() {
        if (this.f1747H == null) {
            this.f1747H = new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.design.widget.f.3
                AnonymousClass3() {
                }

                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    C0277f.this.m2113n();
                    return true;
                }
            };
        }
    }

    /* renamed from: android.support.design.widget.f$3 */
    class AnonymousClass3 implements ViewTreeObserver.OnPreDrawListener {
        AnonymousClass3() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C0277f.this.m2113n();
            return true;
        }
    }

    /* renamed from: o */
    boolean m2114o() {
        return this.f1762v.getVisibility() != 0 ? this.f1748b == 2 : this.f1748b != 1;
    }

    /* renamed from: p */
    boolean m2115p() {
        return this.f1762v.getVisibility() == 0 ? this.f1748b == 1 : this.f1748b != 2;
    }

    /* renamed from: a */
    private ValueAnimator m2074a(@NonNull f fVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f1733a);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(fVar);
        valueAnimator.addUpdateListener(fVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* renamed from: android.support.design.widget.f$f */
    private abstract class f extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        private boolean f1779a;

        /* renamed from: c */
        private float f1781c;

        /* renamed from: d */
        private float f1782d;

        /* renamed from: a */
        protected abstract float mo2116a();

        private f() {
        }

        /* synthetic */ f(C0277f c0277f, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f1779a) {
                this.f1781c = C0277f.this.f1752f.m2177a();
                this.f1782d = mo2116a();
                this.f1779a = true;
            }
            C0277f.this.f1752f.m2178a(this.f1781c + ((this.f1782d - this.f1781c) * valueAnimator.getAnimatedFraction()));
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0277f.this.f1752f.m2178a(this.f1782d);
            this.f1779a = false;
        }
    }

    /* renamed from: android.support.design.widget.f$e */
    private class e extends f {
        e() {
            super();
        }

        @Override // android.support.design.widget.C0277f.f
        /* renamed from: a */
        protected float mo2116a() {
            return C0277f.this.f1757k;
        }
    }

    /* renamed from: android.support.design.widget.f$b */
    private class b extends f {
        b() {
            super();
        }

        @Override // android.support.design.widget.C0277f.f
        /* renamed from: a */
        protected float mo2116a() {
            return C0277f.this.f1757k + C0277f.this.f1758l;
        }
    }

    /* renamed from: android.support.design.widget.f$c */
    private class c extends f {
        c() {
            super();
        }

        @Override // android.support.design.widget.C0277f.f
        /* renamed from: a */
        protected float mo2116a() {
            return C0277f.this.f1757k + C0277f.this.f1759m;
        }
    }

    /* renamed from: android.support.design.widget.f$a */
    private class a extends f {
        a() {
            super();
        }

        @Override // android.support.design.widget.C0277f.f
        /* renamed from: a */
        protected float mo2116a() {
            return 0.0f;
        }
    }

    /* renamed from: t */
    private boolean m2079t() {
        return ViewCompat.isLaidOut(this.f1762v) && !this.f1762v.isInEditMode();
    }

    /* renamed from: u */
    private void m2080u() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f1740A % 90.0f != 0.0f) {
                if (this.f1762v.getLayerType() != 1) {
                    this.f1762v.setLayerType(1, null);
                }
            } else if (this.f1762v.getLayerType() != 0) {
                this.f1762v.setLayerType(0, null);
            }
        }
        if (this.f1752f != null) {
            this.f1752f.m2180b(-this.f1740A);
        }
        if (this.f1755i != null) {
            this.f1755i.m2017a(-this.f1740A);
        }
    }
}
