package android.support.design.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.design.p038a.C0155a;
import android.support.design.p038a.C0156b;
import android.support.design.p038a.C0157c;
import android.support.design.p038a.C0158d;
import android.support.design.p038a.C0159e;
import android.support.design.p038a.C0162h;
import android.support.design.p038a.C0163i;
import android.support.design.p038a.C0164j;
import android.support.design.p040c.C0175a;
import android.support.design.p040c.C0178c;
import android.support.design.p040c.InterfaceC0179d;
import android.support.design.widget.C0282k;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: a */
    private final Rect f1304a;

    /* renamed from: b */
    private final RectF f1305b;

    /* renamed from: c */
    private final RectF f1306c;

    /* renamed from: d */
    private final int[] f1307d;

    /* renamed from: a */
    protected abstract C0210a mo1643a(Context context, boolean z);

    public FabTransformationBehavior() {
        this.f1304a = new Rect();
        this.f1305b = new RectF();
        this.f1306c = new RectF();
        this.f1307d = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1304a = new Rect();
        this.f1305b = new RectF();
        this.f1306c = new RectF();
        this.f1307d = new int[2];
    }

    @Override // android.support.design.transformation.ExpandableBehavior, android.support.design.widget.CoordinatorLayout.AbstractC0243b
    @CallSuper
    /* renamed from: a */
    public boolean mo1620a(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    @CallSuper
    /* renamed from: a */
    public void mo1644a(@NonNull CoordinatorLayout.C0246e c0246e) {
        if (c0246e.f1459h == 0) {
            c0246e.f1459h = 80;
        }
    }

    @Override // android.support.design.transformation.ExpandableTransformationBehavior
    @NonNull
    /* renamed from: b */
    protected AnimatorSet mo1624b(View view, View view2, boolean z, boolean z2) {
        C0210a mo1643a = mo1643a(view2.getContext(), z);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            m1633a(view, view2, z, z2, mo1643a, arrayList, arrayList2);
        }
        RectF rectF = this.f1305b;
        m1634a(view, view2, z, z2, mo1643a, arrayList, arrayList2, rectF);
        float width = rectF.width();
        float height = rectF.height();
        m1637b(view, view2, z, z2, mo1643a, arrayList, arrayList2);
        m1632a(view, view2, z, z2, mo1643a, width, height, arrayList, arrayList2);
        m1640c(view, view2, z, z2, mo1643a, arrayList, arrayList2);
        m1642d(view, view2, z, z2, mo1643a, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        C0156b.m1361a(animatorSet, arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.transformation.FabTransformationBehavior.1

            /* renamed from: a */
            final /* synthetic */ boolean f1308a;

            /* renamed from: b */
            final /* synthetic */ View f1309b;

            /* renamed from: c */
            final /* synthetic */ View f1310c;

            C02061(boolean z3, View view22, View view3) {
                z = z3;
                view2 = view22;
                view = view3;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (z) {
                    view2.setVisibility(0);
                    view.setAlpha(0.0f);
                    view.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!z) {
                    view2.setVisibility(4);
                    view.setAlpha(1.0f);
                    view.setVisibility(0);
                }
            }
        });
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    /* renamed from: android.support.design.transformation.FabTransformationBehavior$1 */
    class C02061 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ boolean f1308a;

        /* renamed from: b */
        final /* synthetic */ View f1309b;

        /* renamed from: c */
        final /* synthetic */ View f1310c;

        C02061(boolean z3, View view22, View view3) {
            z = z3;
            view2 = view22;
            view = view3;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (z) {
                view2.setVisibility(0);
                view.setAlpha(0.0f);
                view.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!z) {
                view2.setVisibility(4);
                view.setAlpha(1.0f);
                view.setVisibility(0);
            }
        }
    }

    @TargetApi(21)
    /* renamed from: a */
    private void m1633a(View view, View view2, boolean z, boolean z2, C0210a c0210a, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofFloat;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-elevation);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        c0210a.f1319a.m1377b("elevation").m1381a((Animator) ofFloat);
        list.add(ofFloat);
    }

    /* renamed from: a */
    private void m1634a(View view, View view2, boolean z, boolean z2, C0210a c0210a, List<Animator> list, List<Animator.AnimatorListener> list2, RectF rectF) {
        C0163i m1377b;
        C0163i m1377b2;
        ObjectAnimator ofFloat;
        ObjectAnimator ofFloat2;
        float m1626a = m1626a(view, view2, c0210a.f1320b);
        float m1635b = m1635b(view, view2, c0210a.f1320b);
        if (m1626a == 0.0f || m1635b == 0.0f) {
            m1377b = c0210a.f1319a.m1377b("translationXLinear");
            m1377b2 = c0210a.f1319a.m1377b("translationYLinear");
        } else if ((z && m1635b < 0.0f) || (!z && m1635b > 0.0f)) {
            m1377b = c0210a.f1319a.m1377b("translationXCurveUpwards");
            m1377b2 = c0210a.f1319a.m1377b("translationYCurveUpwards");
        } else {
            m1377b = c0210a.f1319a.m1377b("translationXCurveDownwards");
            m1377b2 = c0210a.f1319a.m1377b("translationYCurveDownwards");
        }
        if (z) {
            if (!z2) {
                view2.setTranslationX(-m1626a);
                view2.setTranslationY(-m1635b);
            }
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            m1631a(view2, c0210a, m1377b, m1377b2, -m1626a, -m1635b, 0.0f, 0.0f, rectF);
            ofFloat2 = ofFloat4;
            ofFloat = ofFloat3;
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -m1626a);
            ofFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -m1635b);
        }
        m1377b.m1381a((Animator) ofFloat);
        m1377b2.m1381a((Animator) ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m1637b(View view, View view2, boolean z, boolean z2, C0210a c0210a, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if ((view2 instanceof InterfaceC0179d) && (view instanceof ImageView)) {
            InterfaceC0179d interfaceC0179d = (InterfaceC0179d) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable != null) {
                drawable.mutate();
                if (z) {
                    if (!z2) {
                        drawable.setAlpha(255);
                    }
                    ofInt = ObjectAnimator.ofInt(drawable, C0159e.f1044a, 0);
                } else {
                    ofInt = ObjectAnimator.ofInt(drawable, C0159e.f1044a, 255);
                }
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.transformation.FabTransformationBehavior.2

                    /* renamed from: a */
                    final /* synthetic */ View f1312a;

                    C02072(View view22) {
                        view2 = view22;
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        view2.invalidate();
                    }
                });
                c0210a.f1319a.m1377b("iconFade").m1381a((Animator) ofInt);
                list.add(ofInt);
                list2.add(new AnimatorListenerAdapter() { // from class: android.support.design.transformation.FabTransformationBehavior.3

                    /* renamed from: a */
                    final /* synthetic */ InterfaceC0179d f1314a;

                    /* renamed from: b */
                    final /* synthetic */ Drawable f1315b;

                    C02083(InterfaceC0179d interfaceC0179d2, Drawable drawable2) {
                        interfaceC0179d = interfaceC0179d2;
                        drawable = drawable2;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        interfaceC0179d.setCircularRevealOverlayDrawable(drawable);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        interfaceC0179d.setCircularRevealOverlayDrawable(null);
                    }
                });
            }
        }
    }

    /* renamed from: android.support.design.transformation.FabTransformationBehavior$2 */
    class C02072 implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ View f1312a;

        C02072(View view22) {
            view2 = view22;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            view2.invalidate();
        }
    }

    /* renamed from: android.support.design.transformation.FabTransformationBehavior$3 */
    class C02083 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ InterfaceC0179d f1314a;

        /* renamed from: b */
        final /* synthetic */ Drawable f1315b;

        C02083(InterfaceC0179d interfaceC0179d2, Drawable drawable2) {
            interfaceC0179d = interfaceC0179d2;
            drawable = drawable2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            interfaceC0179d.setCircularRevealOverlayDrawable(drawable);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            interfaceC0179d.setCircularRevealOverlayDrawable(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m1632a(View view, View view2, boolean z, boolean z2, C0210a c0210a, float f, float f2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        Animator animator;
        if (view2 instanceof InterfaceC0179d) {
            InterfaceC0179d interfaceC0179d = (InterfaceC0179d) view2;
            float m1638c = m1638c(view, view2, c0210a.f1320b);
            float m1641d = m1641d(view, view2, c0210a.f1320b);
            ((FloatingActionButton) view).m1862a(this.f1304a);
            float width = this.f1304a.width() / 2.0f;
            C0163i m1377b = c0210a.f1319a.m1377b("expansion");
            if (z) {
                if (!z2) {
                    interfaceC0179d.setRevealInfo(new InterfaceC0179d.d(m1638c, m1641d, width));
                }
                float f3 = z2 ? interfaceC0179d.getRevealInfo().f1139c : width;
                Animator m1465a = C0175a.m1465a(interfaceC0179d, m1638c, m1641d, C0282k.m2168a(m1638c, m1641d, 0.0f, 0.0f, f, f2));
                m1465a.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.transformation.FabTransformationBehavior.4

                    /* renamed from: a */
                    final /* synthetic */ InterfaceC0179d f1317a;

                    C02094(InterfaceC0179d interfaceC0179d2) {
                        interfaceC0179d = interfaceC0179d2;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        InterfaceC0179d.d revealInfo = interfaceC0179d.getRevealInfo();
                        revealInfo.f1139c = Float.MAX_VALUE;
                        interfaceC0179d.setRevealInfo(revealInfo);
                    }
                });
                m1628a(view2, m1377b.m1380a(), (int) m1638c, (int) m1641d, f3, list);
                animator = m1465a;
            } else {
                float f4 = interfaceC0179d2.getRevealInfo().f1139c;
                Animator m1465a2 = C0175a.m1465a(interfaceC0179d2, m1638c, m1641d, width);
                m1628a(view2, m1377b.m1380a(), (int) m1638c, (int) m1641d, f4, list);
                m1629a(view2, m1377b.m1380a(), m1377b.m1382b(), c0210a.f1319a.m1374a(), (int) m1638c, (int) m1641d, width, list);
                animator = m1465a2;
            }
            m1377b.m1381a(animator);
            list.add(animator);
            list2.add(C0175a.m1464a(interfaceC0179d2));
        }
    }

    /* renamed from: android.support.design.transformation.FabTransformationBehavior$4 */
    class C02094 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ InterfaceC0179d f1317a;

        C02094(InterfaceC0179d interfaceC0179d2) {
            interfaceC0179d = interfaceC0179d2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator2) {
            InterfaceC0179d.d revealInfo = interfaceC0179d.getRevealInfo();
            revealInfo.f1139c = Float.MAX_VALUE;
            interfaceC0179d.setRevealInfo(revealInfo);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private void m1640c(View view, View view2, boolean z, boolean z2, C0210a c0210a, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if (view2 instanceof InterfaceC0179d) {
            InterfaceC0179d interfaceC0179d = (InterfaceC0179d) view2;
            int m1639c = m1639c(view);
            int i = 16777215 & m1639c;
            if (z) {
                if (!z2) {
                    interfaceC0179d.setCircularRevealScrimColor(m1639c);
                }
                ofInt = ObjectAnimator.ofInt(interfaceC0179d, InterfaceC0179d.c.f1136a, i);
            } else {
                ofInt = ObjectAnimator.ofInt(interfaceC0179d, InterfaceC0179d.c.f1136a, m1639c);
            }
            ofInt.setEvaluator(C0157c.m1362a());
            c0210a.f1319a.m1377b(TtmlNode.ATTR_TTS_COLOR).m1381a((Animator) ofInt);
            list.add(ofInt);
        }
    }

    /* renamed from: d */
    private void m1642d(View view, View view2, boolean z, boolean z2, C0210a c0210a, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup m1627a;
        ObjectAnimator ofFloat;
        if (view2 instanceof ViewGroup) {
            if ((!(view2 instanceof InterfaceC0179d) || C0178c.f1123a != 0) && (m1627a = m1627a(view2)) != null) {
                if (z) {
                    if (!z2) {
                        C0158d.f1043a.set(m1627a, Float.valueOf(0.0f));
                    }
                    ofFloat = ObjectAnimator.ofFloat(m1627a, C0158d.f1043a, 1.0f);
                } else {
                    ofFloat = ObjectAnimator.ofFloat(m1627a, C0158d.f1043a, 0.0f);
                }
                c0210a.f1319a.m1377b("contentFade").m1381a((Animator) ofFloat);
                list.add(ofFloat);
            }
        }
    }

    /* renamed from: a */
    private float m1626a(View view, View view2, C0164j c0164j) {
        RectF rectF = this.f1305b;
        RectF rectF2 = this.f1306c;
        m1630a(view, rectF);
        m1630a(view2, rectF2);
        float f = 0.0f;
        switch (c0164j.f1056a & 7) {
            case 1:
                f = rectF2.centerX() - rectF.centerX();
                break;
            case 3:
                f = rectF2.left - rectF.left;
                break;
            case 5:
                f = rectF2.right - rectF.right;
                break;
        }
        return f + c0164j.f1057b;
    }

    /* renamed from: b */
    private float m1635b(View view, View view2, C0164j c0164j) {
        RectF rectF = this.f1305b;
        RectF rectF2 = this.f1306c;
        m1630a(view, rectF);
        m1630a(view2, rectF2);
        float f = 0.0f;
        switch (c0164j.f1056a & 112) {
            case 16:
                f = rectF2.centerY() - rectF.centerY();
                break;
            case 48:
                f = rectF2.top - rectF.top;
                break;
            case 80:
                f = rectF2.bottom - rectF.bottom;
                break;
        }
        return f + c0164j.f1058c;
    }

    /* renamed from: a */
    private void m1630a(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f1307d);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* renamed from: c */
    private float m1638c(View view, View view2, C0164j c0164j) {
        RectF rectF = this.f1305b;
        RectF rectF2 = this.f1306c;
        m1630a(view, rectF);
        m1630a(view2, rectF2);
        rectF2.offset(-m1626a(view, view2, c0164j), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    /* renamed from: d */
    private float m1641d(View view, View view2, C0164j c0164j) {
        RectF rectF = this.f1305b;
        RectF rectF2 = this.f1306c;
        m1630a(view, rectF);
        m1630a(view2, rectF2);
        rectF2.offset(0.0f, -m1635b(view, view2, c0164j));
        return rectF.centerY() - rectF2.top;
    }

    /* renamed from: a */
    private void m1631a(View view, C0210a c0210a, C0163i c0163i, C0163i c0163i2, float f, float f2, float f3, float f4, RectF rectF) {
        float m1625a = m1625a(c0210a, c0163i, f, f3);
        float m1625a2 = m1625a(c0210a, c0163i2, f2, f4);
        Rect rect = this.f1304a;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f1305b;
        rectF2.set(rect);
        RectF rectF3 = this.f1306c;
        m1630a(view, rectF3);
        rectF3.offset(m1625a, m1625a2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    /* renamed from: a */
    private float m1625a(C0210a c0210a, C0163i c0163i, float f, float f2) {
        long m1380a = c0163i.m1380a();
        long m1382b = c0163i.m1382b();
        C0163i m1377b = c0210a.f1319a.m1377b("expansion");
        return C0155a.m1359a(f, f2, c0163i.m1383c().getInterpolation((((m1377b.m1382b() + m1377b.m1380a()) + 17) - m1380a) / m1382b));
    }

    @Nullable
    /* renamed from: a */
    private ViewGroup m1627a(View view) {
        View findViewById = view.findViewById(R.id.mtrl_child_content_container);
        if (findViewById != null) {
            return m1636b(findViewById);
        }
        if ((view instanceof C0213b) || (view instanceof C0212a)) {
            return m1636b(((ViewGroup) view).getChildAt(0));
        }
        return m1636b(view);
    }

    @Nullable
    /* renamed from: b */
    private ViewGroup m1636b(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    /* renamed from: c */
    private int m1639c(View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    /* renamed from: a */
    private void m1628a(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21 && j > 0) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
            createCircularReveal.setStartDelay(0L);
            createCircularReveal.setDuration(j);
            list.add(createCircularReveal);
        }
    }

    /* renamed from: a */
    private void m1629a(View view, long j, long j2, long j3, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21 && j + j2 < j3) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
            createCircularReveal.setStartDelay(j + j2);
            createCircularReveal.setDuration(j3 - (j + j2));
            list.add(createCircularReveal);
        }
    }

    /* renamed from: android.support.design.transformation.FabTransformationBehavior$a */
    protected static class C0210a {

        /* renamed from: a */
        public C0162h f1319a;

        /* renamed from: b */
        public C0164j f1320b;

        protected C0210a() {
        }
    }
}
