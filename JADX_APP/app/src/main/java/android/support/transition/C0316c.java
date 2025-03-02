package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

/* renamed from: android.support.transition.c */
/* loaded from: classes.dex */
public class C0316c extends AbstractC0325l {

    /* renamed from: h */
    private static final String[] f2008h = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: i */
    private static final Property<Drawable, PointF> f2009i = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: android.support.transition.c.1

        /* renamed from: a */
        private Rect f2019a = new Rect();

        AnonymousClass1(Class cls, String str) {
            super(cls, str);
            this.f2019a = new Rect();
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f2019a);
            this.f2019a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f2019a);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f2019a);
            return new PointF(this.f2019a.left, this.f2019a.top);
        }
    };

    /* renamed from: j */
    private static final Property<a, PointF> f2010j = new Property<a, PointF>(PointF.class, "topLeft") { // from class: android.support.transition.c.3
        AnonymousClass3(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(a aVar, PointF pointF) {
            aVar.m2354a(pointF);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(a aVar) {
            return null;
        }
    };

    /* renamed from: k */
    private static final Property<a, PointF> f2011k = new Property<a, PointF>(PointF.class, "bottomRight") { // from class: android.support.transition.c.4
        AnonymousClass4(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(a aVar, PointF pointF) {
            aVar.m2355b(pointF);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(a aVar) {
            return null;
        }
    };

    /* renamed from: l */
    private static final Property<View, PointF> f2012l = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: android.support.transition.c.5
        AnonymousClass5(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(View view, PointF pointF) {
            C0306ad.m2297a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }
    };

    /* renamed from: m */
    private static final Property<View, PointF> f2013m = new Property<View, PointF>(PointF.class, "topLeft") { // from class: android.support.transition.c.6
        AnonymousClass6(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(View view, PointF pointF) {
            C0306ad.m2297a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }
    };

    /* renamed from: n */
    private static final Property<View, PointF> f2014n = new Property<View, PointF>(PointF.class, "position") { // from class: android.support.transition.c.7
        AnonymousClass7(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            C0306ad.m2297a(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }
    };

    /* renamed from: r */
    private static C0323j f2015r = new C0323j();

    /* renamed from: o */
    private int[] f2016o = new int[2];

    /* renamed from: p */
    private boolean f2017p = false;

    /* renamed from: q */
    private boolean f2018q = false;

    /* renamed from: android.support.transition.c$1 */
    static class AnonymousClass1 extends Property<Drawable, PointF> {

        /* renamed from: a */
        private Rect f2019a = new Rect();

        AnonymousClass1(Class cls, String str) {
            super(cls, str);
            this.f2019a = new Rect();
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f2019a);
            this.f2019a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f2019a);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f2019a);
            return new PointF(this.f2019a.left, this.f2019a.top);
        }
    }

    /* renamed from: android.support.transition.c$3 */
    static class AnonymousClass3 extends Property<a, PointF> {
        AnonymousClass3(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(a aVar, PointF pointF) {
            aVar.m2354a(pointF);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(a aVar) {
            return null;
        }
    }

    /* renamed from: android.support.transition.c$4 */
    static class AnonymousClass4 extends Property<a, PointF> {
        AnonymousClass4(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(a aVar, PointF pointF) {
            aVar.m2355b(pointF);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(a aVar) {
            return null;
        }
    }

    /* renamed from: android.support.transition.c$5 */
    static class AnonymousClass5 extends Property<View, PointF> {
        AnonymousClass5(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(View view, PointF pointF) {
            C0306ad.m2297a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }
    }

    /* renamed from: android.support.transition.c$6 */
    static class AnonymousClass6 extends Property<View, PointF> {
        AnonymousClass6(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(View view, PointF pointF) {
            C0306ad.m2297a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }
    }

    /* renamed from: android.support.transition.c$7 */
    static class AnonymousClass7 extends Property<View, PointF> {
        AnonymousClass7(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            C0306ad.m2297a(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }
    }

    @Override // android.support.transition.AbstractC0325l
    @Nullable
    /* renamed from: a */
    public String[] mo2328a() {
        return f2008h;
    }

    /* renamed from: d */
    private void m2340d(C0331s c0331s) {
        View view = c0331s.f2135b;
        if (ViewCompat.isLaidOut(view) || view.getWidth() != 0 || view.getHeight() != 0) {
            c0331s.f2134a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            c0331s.f2134a.put("android:changeBounds:parent", c0331s.f2135b.getParent());
            if (this.f2018q) {
                c0331s.f2135b.getLocationInWindow(this.f2016o);
                c0331s.f2134a.put("android:changeBounds:windowX", Integer.valueOf(this.f2016o[0]));
                c0331s.f2134a.put("android:changeBounds:windowY", Integer.valueOf(this.f2016o[1]));
            }
            if (this.f2017p) {
                c0331s.f2134a.put("android:changeBounds:clip", ViewCompat.getClipBounds(view));
            }
        }
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: a */
    public void mo2326a(@NonNull C0331s c0331s) {
        m2340d(c0331s);
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: b */
    public void mo2331b(@NonNull C0331s c0331s) {
        m2340d(c0331s);
    }

    /* renamed from: a */
    private boolean m2339a(View view, View view2) {
        if (!this.f2018q) {
            return true;
        }
        C0331s b = m2397b(view, true);
        return b == null ? view == view2 : view2 == b.f2135b;
    }

    @Override // android.support.transition.AbstractC0325l
    @Nullable
    /* renamed from: a */
    public Animator mo2323a(@NonNull ViewGroup viewGroup, @Nullable C0331s c0331s, @Nullable C0331s c0331s2) {
        ObjectAnimator m2359a;
        ObjectAnimator objectAnimator;
        Animator m2436a;
        if (c0331s == null || c0331s2 == null) {
            return null;
        }
        Map<String, Object> map = c0331s.f2134a;
        Map<String, Object> map2 = c0331s2.f2134a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view = c0331s2.f2135b;
        if (m2339a(viewGroup2, viewGroup3)) {
            Rect rect = (Rect) c0331s.f2134a.get("android:changeBounds:bounds");
            Rect rect2 = (Rect) c0331s2.f2134a.get("android:changeBounds:bounds");
            int i = rect.left;
            int i2 = rect2.left;
            int i3 = rect.top;
            int i4 = rect2.top;
            int i5 = rect.right;
            int i6 = rect2.right;
            int i7 = rect.bottom;
            int i8 = rect2.bottom;
            int i9 = i5 - i;
            int i10 = i7 - i3;
            int i11 = i6 - i2;
            int i12 = i8 - i4;
            Rect rect3 = (Rect) c0331s.f2134a.get("android:changeBounds:clip");
            Rect rect4 = (Rect) c0331s2.f2134a.get("android:changeBounds:clip");
            if ((i9 != 0 && i10 != 0) || (i11 != 0 && i12 != 0)) {
                r2 = (i == i2 && i3 == i4) ? 0 : 1;
                if (i5 != i6 || i7 != i8) {
                    r2++;
                }
            }
            if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
                r2++;
            }
            if (r2 > 0) {
                if (!this.f2017p) {
                    C0306ad.m2297a(view, i, i3, i5, i7);
                    if (r2 == 2) {
                        if (i9 == i11 && i10 == i12) {
                            m2436a = C0319f.m2359a(view, f2014n, m2411l().mo2360a(i, i3, i2, i4));
                        } else {
                            a aVar = new a(view);
                            ObjectAnimator m2359a2 = C0319f.m2359a(aVar, f2010j, m2411l().mo2360a(i, i3, i2, i4));
                            ObjectAnimator m2359a3 = C0319f.m2359a(aVar, f2011k, m2411l().mo2360a(i5, i7, i6, i8));
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(m2359a2, m2359a3);
                            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.c.8

                                /* renamed from: a */
                                final /* synthetic */ a f2028a;
                                private a mViewBounds;

                                AnonymousClass8(a aVar2) {
                                    aVar = aVar2;
                                    this.mViewBounds = aVar;
                                }
                            });
                            m2436a = animatorSet;
                        }
                    } else if (i != i2 || i3 != i4) {
                        m2436a = C0319f.m2359a(view, f2013m, m2411l().mo2360a(i, i3, i2, i4));
                    } else {
                        m2436a = C0319f.m2359a(view, f2012l, m2411l().mo2360a(i5, i7, i6, i8));
                    }
                } else {
                    C0306ad.m2297a(view, i, i3, Math.max(i9, i11) + i, Math.max(i10, i12) + i3);
                    if (i == i2 && i3 == i4) {
                        m2359a = null;
                    } else {
                        m2359a = C0319f.m2359a(view, f2014n, m2411l().mo2360a(i, i3, i2, i4));
                    }
                    Rect rect5 = rect3 == null ? new Rect(0, 0, i9, i10) : rect3;
                    Rect rect6 = rect4 == null ? new Rect(0, 0, i11, i12) : rect4;
                    if (rect5.equals(rect6)) {
                        objectAnimator = null;
                    } else {
                        ViewCompat.setClipBounds(view, rect5);
                        ObjectAnimator ofObject = ObjectAnimator.ofObject(view, "clipBounds", f2015r, rect5, rect6);
                        ofObject.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.c.9

                            /* renamed from: a */
                            final /* synthetic */ View f2030a;

                            /* renamed from: b */
                            final /* synthetic */ Rect f2031b;

                            /* renamed from: c */
                            final /* synthetic */ int f2032c;

                            /* renamed from: d */
                            final /* synthetic */ int f2033d;

                            /* renamed from: e */
                            final /* synthetic */ int f2034e;

                            /* renamed from: f */
                            final /* synthetic */ int f2035f;

                            /* renamed from: h */
                            private boolean f2037h;

                            AnonymousClass9(View view2, Rect rect42, int i22, int i42, int i62, int i82) {
                                view = view2;
                                rect4 = rect42;
                                i2 = i22;
                                i4 = i42;
                                i6 = i62;
                                i8 = i82;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                                this.f2037h = true;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (!this.f2037h) {
                                    ViewCompat.setClipBounds(view, rect4);
                                    C0306ad.m2297a(view, i2, i4, i6, i8);
                                }
                            }
                        });
                        objectAnimator = ofObject;
                    }
                    m2436a = C0330q.m2436a(m2359a, objectAnimator);
                }
                if (view2.getParent() instanceof ViewGroup) {
                    ViewGroup viewGroup4 = (ViewGroup) view2.getParent();
                    C0336x.m2443a(viewGroup4, true);
                    mo2381a(new C0326m() { // from class: android.support.transition.c.10

                        /* renamed from: a */
                        boolean f2020a = false;

                        /* renamed from: b */
                        final /* synthetic */ ViewGroup f2021b;

                        AnonymousClass10(ViewGroup viewGroup42) {
                            viewGroup4 = viewGroup42;
                        }

                        @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
                        /* renamed from: a */
                        public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
                            if (!this.f2020a) {
                                C0336x.m2443a(viewGroup4, false);
                            }
                            abstractC0325l.mo2395b(this);
                        }

                        @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
                        /* renamed from: b */
                        public void mo2335b(@NonNull AbstractC0325l abstractC0325l) {
                            C0336x.m2443a(viewGroup4, false);
                        }

                        @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
                        /* renamed from: c */
                        public void mo2336c(@NonNull AbstractC0325l abstractC0325l) {
                            C0336x.m2443a(viewGroup4, true);
                        }
                    });
                    return m2436a;
                }
                return m2436a;
            }
        } else {
            int intValue = ((Integer) c0331s.f2134a.get("android:changeBounds:windowX")).intValue();
            int intValue2 = ((Integer) c0331s.f2134a.get("android:changeBounds:windowY")).intValue();
            int intValue3 = ((Integer) c0331s2.f2134a.get("android:changeBounds:windowX")).intValue();
            int intValue4 = ((Integer) c0331s2.f2134a.get("android:changeBounds:windowY")).intValue();
            if (intValue != intValue3 || intValue2 != intValue4) {
                viewGroup.getLocationInWindow(this.f2016o);
                Bitmap createBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
                view2.draw(new Canvas(createBitmap));
                BitmapDrawable bitmapDrawable = new BitmapDrawable(createBitmap);
                float m2301c = C0306ad.m2301c(view2);
                C0306ad.m2295a(view2, 0.0f);
                C0306ad.m2293a(viewGroup).mo2285a(bitmapDrawable);
                ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, C0322i.m2363a(f2009i, m2411l().mo2360a(intValue - this.f2016o[0], intValue2 - this.f2016o[1], intValue3 - this.f2016o[0], intValue4 - this.f2016o[1])));
                ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.c.2

                    /* renamed from: a */
                    final /* synthetic */ ViewGroup f2023a;

                    /* renamed from: b */
                    final /* synthetic */ BitmapDrawable f2024b;

                    /* renamed from: c */
                    final /* synthetic */ View f2025c;

                    /* renamed from: d */
                    final /* synthetic */ float f2026d;

                    AnonymousClass2(ViewGroup viewGroup5, BitmapDrawable bitmapDrawable2, View view2, float m2301c2) {
                        viewGroup = viewGroup5;
                        bitmapDrawable = bitmapDrawable2;
                        view = view2;
                        m2301c = m2301c2;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        C0306ad.m2293a(viewGroup).mo2286b(bitmapDrawable);
                        C0306ad.m2295a(view, m2301c);
                    }
                });
                return ofPropertyValuesHolder;
            }
        }
        return null;
    }

    /* renamed from: android.support.transition.c$8 */
    class AnonymousClass8 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ a f2028a;
        private a mViewBounds;

        AnonymousClass8(a aVar2) {
            aVar = aVar2;
            this.mViewBounds = aVar;
        }
    }

    /* renamed from: android.support.transition.c$9 */
    class AnonymousClass9 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ View f2030a;

        /* renamed from: b */
        final /* synthetic */ Rect f2031b;

        /* renamed from: c */
        final /* synthetic */ int f2032c;

        /* renamed from: d */
        final /* synthetic */ int f2033d;

        /* renamed from: e */
        final /* synthetic */ int f2034e;

        /* renamed from: f */
        final /* synthetic */ int f2035f;

        /* renamed from: h */
        private boolean f2037h;

        AnonymousClass9(View view2, Rect rect42, int i22, int i42, int i62, int i82) {
            view = view2;
            rect4 = rect42;
            i2 = i22;
            i4 = i42;
            i6 = i62;
            i8 = i82;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2037h = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f2037h) {
                ViewCompat.setClipBounds(view, rect4);
                C0306ad.m2297a(view, i2, i4, i6, i8);
            }
        }
    }

    /* renamed from: android.support.transition.c$10 */
    class AnonymousClass10 extends C0326m {

        /* renamed from: a */
        boolean f2020a = false;

        /* renamed from: b */
        final /* synthetic */ ViewGroup f2021b;

        AnonymousClass10(ViewGroup viewGroup42) {
            viewGroup4 = viewGroup42;
        }

        @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
        /* renamed from: a */
        public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
            if (!this.f2020a) {
                C0336x.m2443a(viewGroup4, false);
            }
            abstractC0325l.mo2395b(this);
        }

        @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
        /* renamed from: b */
        public void mo2335b(@NonNull AbstractC0325l abstractC0325l) {
            C0336x.m2443a(viewGroup4, false);
        }

        @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
        /* renamed from: c */
        public void mo2336c(@NonNull AbstractC0325l abstractC0325l) {
            C0336x.m2443a(viewGroup4, true);
        }
    }

    /* renamed from: android.support.transition.c$2 */
    class AnonymousClass2 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f2023a;

        /* renamed from: b */
        final /* synthetic */ BitmapDrawable f2024b;

        /* renamed from: c */
        final /* synthetic */ View f2025c;

        /* renamed from: d */
        final /* synthetic */ float f2026d;

        AnonymousClass2(ViewGroup viewGroup5, BitmapDrawable bitmapDrawable2, View view2, float m2301c2) {
            viewGroup = viewGroup5;
            bitmapDrawable = bitmapDrawable2;
            view = view2;
            m2301c = m2301c2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0306ad.m2293a(viewGroup).mo2286b(bitmapDrawable);
            C0306ad.m2295a(view, m2301c);
        }
    }

    /* renamed from: android.support.transition.c$a */
    private static class a {

        /* renamed from: a */
        private int f2038a;

        /* renamed from: b */
        private int f2039b;

        /* renamed from: c */
        private int f2040c;

        /* renamed from: d */
        private int f2041d;

        /* renamed from: e */
        private View f2042e;

        /* renamed from: f */
        private int f2043f;

        /* renamed from: g */
        private int f2044g;

        a(View view) {
            this.f2042e = view;
        }

        /* renamed from: a */
        void m2354a(PointF pointF) {
            this.f2038a = Math.round(pointF.x);
            this.f2039b = Math.round(pointF.y);
            this.f2043f++;
            if (this.f2043f == this.f2044g) {
                m2353a();
            }
        }

        /* renamed from: b */
        void m2355b(PointF pointF) {
            this.f2040c = Math.round(pointF.x);
            this.f2041d = Math.round(pointF.y);
            this.f2044g++;
            if (this.f2043f == this.f2044g) {
                m2353a();
            }
        }

        /* renamed from: a */
        private void m2353a() {
            C0306ad.m2297a(this.f2042e, this.f2038a, this.f2039b, this.f2040c, this.f2041d);
            this.f2043f = 0;
            this.f2044g = 0;
        }
    }
}
