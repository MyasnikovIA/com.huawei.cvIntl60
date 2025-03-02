package android.support.design.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.design.p038a.C0155a;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.math.MathUtils;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import java.lang.ref.WeakReference;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;

@CoordinatorLayout.InterfaceC0244c(m1830a = Behavior.class)
/* loaded from: classes.dex */
public class AppBarLayout extends LinearLayout {

    /* renamed from: a */
    private int f1327a;

    /* renamed from: b */
    private int f1328b;

    /* renamed from: c */
    private int f1329c;

    /* renamed from: d */
    private boolean f1330d;

    /* renamed from: e */
    private int f1331e;

    /* renamed from: f */
    private WindowInsetsCompat f1332f;

    /* renamed from: g */
    private List<InterfaceC0217a> f1333g;

    /* renamed from: h */
    private boolean f1334h;

    /* renamed from: i */
    private boolean f1335i;

    /* renamed from: j */
    private boolean f1336j;

    /* renamed from: k */
    private boolean f1337k;

    /* renamed from: l */
    private int[] f1338l;

    /* renamed from: android.support.design.widget.AppBarLayout$a */
    public interface InterfaceC0217a<T extends AppBarLayout> {
        /* renamed from: a */
        void m1714a(T t, int i);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m1651g();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m1651g();
        this.f1330d = false;
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount) {
                break;
            }
            if (((C0218b) getChildAt(i5).getLayoutParams()).m1716b() == null) {
                i5++;
            } else {
                this.f1330d = true;
                break;
            }
        }
        if (!this.f1334h) {
            m1649b(this.f1337k || m1650f());
        }
    }

    /* renamed from: f */
    private boolean m1650f() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((C0218b) getChildAt(i).getLayoutParams()).m1717c()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    private void m1651g() {
        this.f1327a = -1;
        this.f1328b = -1;
        this.f1329c = -1;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setExpanded(boolean z) {
        m1656a(z, ViewCompat.isLaidOut(this));
    }

    /* renamed from: a */
    public void m1656a(boolean z, boolean z2) {
        m1648a(z, z2, true);
    }

    /* renamed from: a */
    private void m1648a(boolean z, boolean z2, boolean z3) {
        this.f1331e = (z3 ? 8 : 0) | (z2 ? 4 : 0) | (z ? 1 : 2);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0218b;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a */
    public C0218b generateDefaultLayoutParams() {
        return new C0218b(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a */
    public C0218b generateLayoutParams(AttributeSet attributeSet) {
        return new C0218b(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a */
    public C0218b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 19 && (layoutParams instanceof LinearLayout.LayoutParams)) {
            return new C0218b((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new C0218b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new C0218b(layoutParams);
    }

    /* renamed from: b */
    boolean m1658b() {
        return this.f1330d;
    }

    public final int getTotalScrollRange() {
        int i;
        if (this.f1327a != -1) {
            return this.f1327a;
        }
        int childCount = getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C0218b c0218b = (C0218b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i4 = c0218b.f1353a;
            if ((i4 & 1) == 0) {
                break;
            }
            i2 += c0218b.bottomMargin + measuredHeight + c0218b.topMargin;
            if ((i4 & 2) != 0) {
                i = i2 - ViewCompat.getMinimumHeight(childAt);
                break;
            }
        }
        i = i2;
        int max = Math.max(0, i - getTopInset());
        this.f1327a = max;
        return max;
    }

    /* renamed from: c */
    boolean m1659c() {
        return getTotalScrollRange() != 0;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    int getDownNestedPreScrollRange() {
        int i;
        if (this.f1328b != -1) {
            return this.f1328b;
        }
        int childCount = getChildCount() - 1;
        int i2 = 0;
        while (childCount >= 0) {
            View childAt = getChildAt(childCount);
            C0218b c0218b = (C0218b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = c0218b.f1353a;
            if ((i3 & 5) == 5) {
                int i4 = c0218b.bottomMargin + c0218b.topMargin + i2;
                if ((i3 & 8) != 0) {
                    i = i4 + ViewCompat.getMinimumHeight(childAt);
                } else if ((i3 & 2) != 0) {
                    i = i4 + (measuredHeight - ViewCompat.getMinimumHeight(childAt));
                } else {
                    i = i4 + (measuredHeight - getTopInset());
                }
            } else {
                if (i2 > 0) {
                    break;
                }
                i = i2;
            }
            childCount--;
            i2 = i;
        }
        int max = Math.max(0, i2);
        this.f1328b = max;
        return max;
    }

    int getDownNestedScrollRange() {
        int i;
        if (this.f1329c != -1) {
            return this.f1329c;
        }
        int childCount = getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C0218b c0218b = (C0218b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + c0218b.topMargin + c0218b.bottomMargin;
            int i4 = c0218b.f1353a;
            if ((i4 & 1) == 0) {
                break;
            }
            i2 += measuredHeight;
            if ((i4 & 2) != 0) {
                i = i2 - (ViewCompat.getMinimumHeight(childAt) + getTopInset());
                break;
            }
        }
        i = i2;
        int max = Math.max(0, i);
        this.f1329c = max;
        return max;
    }

    /* renamed from: a */
    void m1655a(int i) {
        if (this.f1333g != null) {
            int size = this.f1333g.size();
            for (int i2 = 0; i2 < size; i2++) {
                InterfaceC0217a interfaceC0217a = this.f1333g.get(i2);
                if (interfaceC0217a != null) {
                    interfaceC0217a.m1714a(this, i);
                }
            }
        }
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight != 0) {
            return (minimumHeight * 2) + topInset;
        }
        int childCount = getChildCount();
        int minimumHeight2 = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
        if (minimumHeight2 != 0) {
            return (minimumHeight2 * 2) + topInset;
        }
        return getHeight() / 3;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.f1338l == null) {
            this.f1338l = new int[4];
        }
        int[] iArr = this.f1338l;
        int[] onCreateDrawableState = super.onCreateDrawableState(iArr.length + i);
        iArr[0] = this.f1335i ? R.attr.state_liftable : -R.attr.state_liftable;
        iArr[1] = (this.f1335i && this.f1336j) ? R.attr.state_lifted : -R.attr.state_lifted;
        iArr[2] = this.f1335i ? R.attr.state_collapsible : -R.attr.state_collapsible;
        iArr[3] = (this.f1335i && this.f1336j) ? R.attr.state_collapsed : -R.attr.state_collapsed;
        return mergeDrawableStates(onCreateDrawableState, iArr);
    }

    /* renamed from: b */
    private boolean m1649b(boolean z) {
        if (this.f1335i == z) {
            return false;
        }
        this.f1335i = z;
        refreshDrawableState();
        return true;
    }

    /* renamed from: a */
    boolean m1657a(boolean z) {
        if (this.f1336j == z) {
            return false;
        }
        this.f1336j = z;
        refreshDrawableState();
        return true;
    }

    public void setLiftOnScroll(boolean z) {
        this.f1337k = z;
    }

    /* renamed from: d */
    public boolean m1660d() {
        return this.f1337k;
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            C0291t.m2207a(this, f);
        }
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    int getPendingAction() {
        return this.f1331e;
    }

    /* renamed from: e */
    void m1661e() {
        this.f1331e = 0;
    }

    @VisibleForTesting
    final int getTopInset() {
        if (this.f1332f != null) {
            return this.f1332f.getSystemWindowInsetTop();
        }
        return 0;
    }

    /* renamed from: android.support.design.widget.AppBarLayout$b */
    public static class C0218b extends LinearLayout.LayoutParams {

        /* renamed from: a */
        int f1353a;

        /* renamed from: b */
        Interpolator f1354b;

        public C0218b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1353a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
            this.f1353a = obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f1354b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public C0218b(int i, int i2) {
            super(i, i2);
            this.f1353a = 1;
        }

        public C0218b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1353a = 1;
        }

        public C0218b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1353a = 1;
        }

        @RequiresApi(19)
        public C0218b(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1353a = 1;
        }

        /* renamed from: a */
        public int m1715a() {
            return this.f1353a;
        }

        /* renamed from: b */
        public Interpolator m1716b() {
            return this.f1354b;
        }

        /* renamed from: c */
        boolean m1717c() {
            return (this.f1353a & 1) == 1 && (this.f1353a & 10) != 0;
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo1685a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.mo1685a(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo1686a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.mo1686a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo1687a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5) {
            super.mo1687a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4, i5);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo1688a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.mo1688a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // android.support.design.widget.C0289r
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo1704a(int i) {
            return super.mo1704a(i);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo1418a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.mo1418a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo1693a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.mo1693a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo1449a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.mo1449a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i, i2);
        }

        @Override // android.support.design.widget.C0289r
        /* renamed from: b */
        public /* bridge */ /* synthetic */ int mo1705b() {
            return super.mo1705b();
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        /* renamed from: b */
        public /* bridge */ /* synthetic */ Parcelable mo1697b(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.mo1697b(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    protected static class BaseBehavior<T extends AppBarLayout> extends AbstractC0279h<T> {

        /* renamed from: b */
        private int f1339b;

        /* renamed from: c */
        private int f1340c;

        /* renamed from: d */
        private ValueAnimator f1341d;

        /* renamed from: e */
        private int f1342e;

        /* renamed from: f */
        private boolean f1343f;

        /* renamed from: g */
        private float f1344g;

        /* renamed from: h */
        private WeakReference<View> f1345h;

        /* renamed from: i */
        private AbstractC0216a f1346i;

        /* renamed from: android.support.design.widget.AppBarLayout$BaseBehavior$a */
        public static abstract class AbstractC0216a<T extends AppBarLayout> {
            /* renamed from: a */
            public abstract boolean m1703a(@NonNull T t);
        }

        public BaseBehavior() {
            this.f1342e = -1;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1342e = -1;
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public boolean mo1449a(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            boolean z = (i & 2) != 0 && (t.m1660d() || m1670a(coordinatorLayout, (CoordinatorLayout) t, view));
            if (z && this.f1341d != null) {
                this.f1341d.cancel();
            }
            this.f1345h = null;
            this.f1340c = i2;
            return z;
        }

        /* renamed from: a */
        private boolean m1670a(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.m1659c() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public void mo1688a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    i4 = -t.getTotalScrollRange();
                    i5 = i4 + t.getDownNestedPreScrollRange();
                } else {
                    i4 = -t.getUpNestedPreScrollRange();
                    i5 = 0;
                }
                if (i4 != i5) {
                    iArr[1] = m2121b(coordinatorLayout, (CoordinatorLayout) t, i2, i4, i5);
                    m1665a(i2, (int) t, view, i3);
                }
            }
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public void mo1687a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5) {
            if (i4 < 0) {
                m2121b(coordinatorLayout, (CoordinatorLayout) t, i4, -t.getDownNestedScrollRange(), 0);
                m1665a(i4, (int) t, view, i5);
            }
            if (t.m1660d()) {
                t.m1657a(view.getScrollY() > 0);
            }
        }

        /* renamed from: a */
        private void m1665a(int i, T t, View view, int i2) {
            if (i2 == 1) {
                int mo1675a = mo1675a();
                if ((i < 0 && mo1675a == 0) || (i > 0 && mo1675a == (-t.getDownNestedScrollRange()))) {
                    ViewCompat.stopNestedScroll(view, 1);
                }
            }
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public void mo1686a(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.f1340c == 0 || i == 1) {
                m1673c(coordinatorLayout, (CoordinatorLayout) t);
            }
            this.f1345h = new WeakReference<>(view);
        }

        /* renamed from: a */
        private void m1666a(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int height;
            int abs = Math.abs(mo1675a() - i);
            float abs2 = Math.abs(f);
            if (abs2 > 0.0f) {
                height = Math.round((abs / abs2) * 1000.0f) * 3;
            } else {
                height = (int) (((abs / t.getHeight()) + 1.0f) * 150.0f);
            }
            m1667a(coordinatorLayout, (CoordinatorLayout) t, i, height);
        }

        /* renamed from: a */
        private void m1667a(CoordinatorLayout coordinatorLayout, T t, int i, int i2) {
            int mo1675a = mo1675a();
            if (mo1675a == i) {
                if (this.f1341d != null && this.f1341d.isRunning()) {
                    this.f1341d.cancel();
                    return;
                }
                return;
            }
            if (this.f1341d == null) {
                this.f1341d = new ValueAnimator();
                this.f1341d.setInterpolator(C0155a.f1041e);
                this.f1341d.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.AppBarLayout.BaseBehavior.1

                    /* renamed from: a */
                    final /* synthetic */ CoordinatorLayout f1347a;

                    /* renamed from: b */
                    final /* synthetic */ AppBarLayout f1348b;

                    C02141(CoordinatorLayout coordinatorLayout2, AppBarLayout t2) {
                        coordinatorLayout = coordinatorLayout2;
                        t = t2;
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        BaseBehavior.this.m2120a_(coordinatorLayout, t, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
            } else {
                this.f1341d.cancel();
            }
            this.f1341d.setDuration(Math.min(i2, IjkMediaCodecInfo.RANK_LAST_CHANCE));
            this.f1341d.setIntValues(mo1675a, i);
            this.f1341d.start();
        }

        /* renamed from: android.support.design.widget.AppBarLayout$BaseBehavior$1 */
        class C02141 implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a */
            final /* synthetic */ CoordinatorLayout f1347a;

            /* renamed from: b */
            final /* synthetic */ AppBarLayout f1348b;

            C02141(CoordinatorLayout coordinatorLayout2, AppBarLayout t2) {
                coordinatorLayout = coordinatorLayout2;
                t = t2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseBehavior.this.m2120a_(coordinatorLayout, t, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        /* renamed from: a */
        private int m1663a(T t, int i) {
            int i2;
            int childCount = t.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = t.getChildAt(i3);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                C0218b c0218b = (C0218b) childAt.getLayoutParams();
                if (m1669a(c0218b.m1715a(), 32)) {
                    top -= c0218b.topMargin;
                    i2 = c0218b.bottomMargin + bottom;
                } else {
                    i2 = bottom;
                }
                if (top <= (-i) && i2 >= (-i)) {
                    return i3;
                }
            }
            return -1;
        }

        /* renamed from: c */
        private void m1673c(CoordinatorLayout coordinatorLayout, T t) {
            int mo1675a = mo1675a();
            int m1663a = m1663a((BaseBehavior<T>) t, mo1675a);
            if (m1663a >= 0) {
                View childAt = t.getChildAt(m1663a);
                C0218b c0218b = (C0218b) childAt.getLayoutParams();
                int m1715a = c0218b.m1715a();
                if ((m1715a & 17) == 17) {
                    int i = -childAt.getTop();
                    int i2 = -childAt.getBottom();
                    if (m1663a == t.getChildCount() - 1) {
                        i2 += t.getTopInset();
                    }
                    if (m1669a(m1715a, 2)) {
                        i2 += ViewCompat.getMinimumHeight(childAt);
                    } else if (m1669a(m1715a, 5)) {
                        int minimumHeight = ViewCompat.getMinimumHeight(childAt) + i2;
                        if (mo1675a < minimumHeight) {
                            i = minimumHeight;
                        } else {
                            i2 = minimumHeight;
                        }
                    }
                    if (m1669a(m1715a, 32)) {
                        i += c0218b.topMargin;
                        i2 -= c0218b.bottomMargin;
                    }
                    if (mo1675a >= (i2 + i) / 2) {
                        i2 = i;
                    }
                    m1666a(coordinatorLayout, (CoordinatorLayout) t, MathUtils.clamp(i2, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        /* renamed from: a */
        private static boolean m1669a(int i, int i2) {
            return (i & i2) == i2;
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public boolean mo1693a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((CoordinatorLayout.C0246e) t.getLayoutParams()).height != -2) {
                return super.mo1693a(coordinatorLayout, (CoordinatorLayout) t, i, i2, i3, i4);
            }
            coordinatorLayout.m1801a(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        @Override // android.support.design.widget.C0289r, android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public boolean mo1418a(CoordinatorLayout coordinatorLayout, T t, int i) {
            int round;
            boolean a2 = super.mo1418a(coordinatorLayout, (CoordinatorLayout) t, i);
            int pendingAction = t.getPendingAction();
            if (this.f1342e >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(this.f1342e);
                int i2 = -childAt.getBottom();
                if (this.f1343f) {
                    round = ViewCompat.getMinimumHeight(childAt) + t.getTopInset() + i2;
                } else {
                    round = Math.round(childAt.getHeight() * this.f1344g) + i2;
                }
                m2120a_(coordinatorLayout, t, round);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        m1666a(coordinatorLayout, (CoordinatorLayout) t, i3, 0.0f);
                    } else {
                        m2120a_(coordinatorLayout, t, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        m1666a(coordinatorLayout, (CoordinatorLayout) t, 0, 0.0f);
                    } else {
                        m2120a_(coordinatorLayout, t, 0);
                    }
                }
            }
            t.m1661e();
            this.f1342e = -1;
            mo1704a(MathUtils.clamp(mo1705b(), -t.getTotalScrollRange(), 0));
            m1668a(coordinatorLayout, (CoordinatorLayout) t, mo1705b(), 0, true);
            t.m1655a(mo1705b());
            return a2;
        }

        @Override // android.support.design.widget.AbstractC0279h
        /* renamed from: a */
        public boolean mo1699c(T t) {
            if (this.f1346i != null) {
                return this.f1346i.m1703a(t);
            }
            if (this.f1345h == null) {
                return true;
            }
            View view = this.f1345h.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        @Override // android.support.design.widget.AbstractC0279h
        /* renamed from: a */
        public void mo1684a(CoordinatorLayout coordinatorLayout, T t) {
            m1673c(coordinatorLayout, (CoordinatorLayout) t);
        }

        @Override // android.support.design.widget.AbstractC0279h
        /* renamed from: b */
        public int mo1695b(T t) {
            return -t.getDownNestedScrollRange();
        }

        @Override // android.support.design.widget.AbstractC0279h
        /* renamed from: c */
        public int mo1678a(T t) {
            return t.getTotalScrollRange();
        }

        @Override // android.support.design.widget.AbstractC0279h
        /* renamed from: a */
        public int mo1677a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3) {
            int mo1675a = mo1675a();
            if (i2 != 0 && mo1675a >= i2 && mo1675a <= i3) {
                int clamp = MathUtils.clamp(i, i2, i3);
                if (mo1675a == clamp) {
                    return 0;
                }
                int m1671b = t.m1658b() ? m1671b((BaseBehavior<T>) t, clamp) : clamp;
                boolean a2 = mo1704a(m1671b);
                int i4 = mo1675a - clamp;
                this.f1339b = clamp - m1671b;
                if (!a2 && t.m1658b()) {
                    coordinatorLayout.m1807b(t);
                }
                t.m1655a(mo1705b());
                m1668a(coordinatorLayout, (CoordinatorLayout) t, clamp, clamp < mo1675a ? -1 : 1, false);
                return i4;
            }
            this.f1339b = 0;
            return 0;
        }

        /* renamed from: b */
        private int m1671b(T t, int i) {
            int i2;
            int abs = Math.abs(i);
            int childCount = t.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = t.getChildAt(i3);
                C0218b c0218b = (C0218b) childAt.getLayoutParams();
                Interpolator m1716b = c0218b.m1716b();
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    if (m1716b != null) {
                        int m1715a = c0218b.m1715a();
                        if ((m1715a & 1) != 0) {
                            i2 = c0218b.bottomMargin + childAt.getHeight() + c0218b.topMargin + 0;
                            if ((m1715a & 2) != 0) {
                                i2 -= ViewCompat.getMinimumHeight(childAt);
                            }
                        } else {
                            i2 = 0;
                        }
                        if (ViewCompat.getFitsSystemWindows(childAt)) {
                            i2 -= t.getTopInset();
                        }
                        if (i2 > 0) {
                            return Integer.signum(i) * (Math.round(m1716b.getInterpolation((abs - childAt.getTop()) / i2) * i2) + childAt.getTop());
                        }
                        return i;
                    }
                    return i;
                }
            }
            return i;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void m1668a(android.support.design.widget.CoordinatorLayout r7, T r8, int r9, int r10, boolean r11) {
            /*
                r6 = this;
                r1 = 1
                r2 = 0
                android.view.View r3 = m1672c(r8, r9)
                if (r3 == 0) goto L58
                android.view.ViewGroup$LayoutParams r0 = r3.getLayoutParams()
                android.support.design.widget.AppBarLayout$b r0 = (android.support.design.widget.AppBarLayout.C0218b) r0
                int r0 = r0.m1715a()
                r4 = r0 & 1
                if (r4 == 0) goto L72
                int r4 = android.support.v4.view.ViewCompat.getMinimumHeight(r3)
                if (r10 <= 0) goto L5b
                r5 = r0 & 12
                if (r5 == 0) goto L5b
                int r0 = -r9
                int r3 = r3.getBottom()
                int r3 = r3 - r4
                int r4 = r8.getTopInset()
                int r3 = r3 - r4
                if (r0 < r3) goto L59
                r0 = r1
            L2e:
                boolean r3 = r8.m1660d()
                if (r3 == 0) goto L41
                android.view.View r3 = r6.m1664a(r7)
                if (r3 == 0) goto L41
                int r0 = r3.getScrollY()
                if (r0 <= 0) goto L70
            L40:
                r0 = r1
            L41:
                boolean r0 = r8.m1657a(r0)
                int r1 = android.os.Build.VERSION.SDK_INT
                r2 = 11
                if (r1 < r2) goto L58
                if (r11 != 0) goto L55
                if (r0 == 0) goto L58
                boolean r0 = r6.m1674d(r7, r8)
                if (r0 == 0) goto L58
            L55:
                r8.jumpDrawablesToCurrentState()
            L58:
                return
            L59:
                r0 = r2
                goto L2e
            L5b:
                r0 = r0 & 2
                if (r0 == 0) goto L72
                int r0 = -r9
                int r3 = r3.getBottom()
                int r3 = r3 - r4
                int r4 = r8.getTopInset()
                int r3 = r3 - r4
                if (r0 < r3) goto L6e
                r0 = r1
                goto L2e
            L6e:
                r0 = r2
                goto L2e
            L70:
                r1 = r2
                goto L40
            L72:
                r0 = r2
                goto L2e
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.AppBarLayout.BaseBehavior.m1668a(android.support.design.widget.CoordinatorLayout, android.support.design.widget.AppBarLayout, int, int, boolean):void");
        }

        /* renamed from: d */
        private boolean m1674d(CoordinatorLayout coordinatorLayout, T t) {
            List<View> m1814d = coordinatorLayout.m1814d(t);
            int size = m1814d.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.AbstractC0243b m1842b = ((CoordinatorLayout.C0246e) m1814d.get(i).getLayoutParams()).m1842b();
                if (m1842b instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) m1842b).m2127d() != 0;
                }
            }
            return false;
        }

        /* renamed from: c */
        private static View m1672c(AppBarLayout appBarLayout, int i) {
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        @Nullable
        /* renamed from: a */
        private View m1664a(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt instanceof NestedScrollingChild) {
                    return childAt;
                }
            }
            return null;
        }

        @Override // android.support.design.widget.AbstractC0279h
        /* renamed from: a */
        int mo1675a() {
            return mo1705b() + this.f1339b;
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: b */
        public Parcelable mo1697b(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable b = super.mo1697b(coordinatorLayout, (CoordinatorLayout) t);
            int b2 = mo1705b();
            int childCount = t.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + b2;
                if (childAt.getTop() + b2 <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(b);
                    savedState.f1350a = i;
                    savedState.f1352c = bottom == ViewCompat.getMinimumHeight(childAt) + t.getTopInset();
                    savedState.f1351b = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return b;
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public void mo1685a(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.mo1685a(coordinatorLayout, (CoordinatorLayout) t, savedState.getSuperState());
                this.f1342e = savedState.f1350a;
                this.f1344g = savedState.f1351b;
                this.f1343f = savedState.f1352c;
                return;
            }
            super.mo1685a(coordinatorLayout, (CoordinatorLayout) t, parcelable);
            this.f1342e = -1;
        }

        protected static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.AppBarLayout.BaseBehavior.SavedState.1
                C02151() {
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };

            /* renamed from: a */
            int f1350a;

            /* renamed from: b */
            float f1351b;

            /* renamed from: c */
            boolean f1352c;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f1350a = parcel.readInt();
                this.f1351b = parcel.readFloat();
                this.f1352c = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f1350a);
                parcel.writeFloat(this.f1351b);
                parcel.writeByte((byte) (this.f1352c ? 1 : 0));
            }

            /* renamed from: android.support.design.widget.AppBarLayout$BaseBehavior$SavedState$1 */
            static class C02151 implements Parcelable.ClassLoaderCreator<SavedState> {
                C02151() {
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            }
        }
    }

    public static class ScrollingViewBehavior extends AbstractC0280i {
        @Override // android.support.design.widget.C0289r
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo1704a(int i) {
            return super.mo1704a(i);
        }

        @Override // android.support.design.widget.C0289r, android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo1418a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.mo1418a(coordinatorLayout, (CoordinatorLayout) view, i);
        }

        @Override // android.support.design.widget.AbstractC0280i, android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo1693a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.mo1693a(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // android.support.design.widget.C0289r
        /* renamed from: b */
        public /* bridge */ /* synthetic */ int mo1705b() {
            return super.mo1705b();
        }

        @Override // android.support.design.widget.AbstractC0280i
        /* renamed from: b */
        /* synthetic */ View mo1713b(List list) {
            return m1710a((List<View>) list);
        }

        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            m2124b(obtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public boolean mo1620a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: b */
        public boolean mo1622b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            m1707a(view, view2);
            m1708b(view, view2);
            return false;
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public boolean mo1711a(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout m1710a = m1710a(coordinatorLayout.m1810c(view));
            if (m1710a != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f1794a;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    m1710a.m1656a(false, !z);
                    return true;
                }
            }
            return false;
        }

        /* renamed from: a */
        private void m1707a(View view, View view2) {
            CoordinatorLayout.AbstractC0243b m1842b = ((CoordinatorLayout.C0246e) view2.getLayoutParams()).m1842b();
            if (m1842b instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, ((((BaseBehavior) m1842b).f1339b + (view2.getBottom() - view.getTop())) + m2123a()) - m2126c(view2));
            }
        }

        @Override // android.support.design.widget.AbstractC0280i
        /* renamed from: a */
        float mo1709a(View view) {
            int i;
            if (!(view instanceof AppBarLayout)) {
                return 0.0f;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
            int m1706a = m1706a(appBarLayout);
            if ((downNestedPreScrollRange == 0 || totalScrollRange + m1706a > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                return 1.0f + (m1706a / i);
            }
            return 0.0f;
        }

        /* renamed from: a */
        private static int m1706a(AppBarLayout appBarLayout) {
            CoordinatorLayout.AbstractC0243b m1842b = ((CoordinatorLayout.C0246e) appBarLayout.getLayoutParams()).m1842b();
            if (m1842b instanceof BaseBehavior) {
                return ((BaseBehavior) m1842b).mo1675a();
            }
            return 0;
        }

        /* renamed from: a */
        AppBarLayout m1710a(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // android.support.design.widget.AbstractC0280i
        /* renamed from: b */
        int mo1712b(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.mo1712b(view);
        }

        /* renamed from: b */
        private void m1708b(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.m1660d()) {
                    appBarLayout.m1657a(view.getScrollY() > 0);
                }
            }
        }
    }
}
