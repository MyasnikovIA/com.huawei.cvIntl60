package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.InterfaceC0551o;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.OverScroller;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements NestedScrollingParent, InterfaceC0656ag {

    /* renamed from: e */
    static final int[] f2848e = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};

    /* renamed from: A */
    private final Runnable f2849A;

    /* renamed from: B */
    private final NestedScrollingParentHelper f2850B;

    /* renamed from: a */
    ActionBarContainer f2851a;

    /* renamed from: b */
    boolean f2852b;

    /* renamed from: c */
    ViewPropertyAnimator f2853c;

    /* renamed from: d */
    final AnimatorListenerAdapter f2854d;

    /* renamed from: f */
    private int f2855f;

    /* renamed from: g */
    private int f2856g;

    /* renamed from: h */
    private ContentFrameLayout f2857h;

    /* renamed from: i */
    private InterfaceC0657ah f2858i;

    /* renamed from: j */
    private Drawable f2859j;

    /* renamed from: k */
    private boolean f2860k;

    /* renamed from: l */
    private boolean f2861l;

    /* renamed from: m */
    private boolean f2862m;

    /* renamed from: n */
    private boolean f2863n;

    /* renamed from: o */
    private int f2864o;

    /* renamed from: p */
    private int f2865p;

    /* renamed from: q */
    private final Rect f2866q;

    /* renamed from: r */
    private final Rect f2867r;

    /* renamed from: s */
    private final Rect f2868s;

    /* renamed from: t */
    private final Rect f2869t;

    /* renamed from: u */
    private final Rect f2870u;

    /* renamed from: v */
    private final Rect f2871v;

    /* renamed from: w */
    private final Rect f2872w;

    /* renamed from: x */
    private InterfaceC0563a f2873x;

    /* renamed from: y */
    private OverScroller f2874y;

    /* renamed from: z */
    private final Runnable f2875z;

    /* renamed from: android.support.v7.widget.ActionBarOverlayLayout$a */
    public interface InterfaceC0563a {
        /* renamed from: a */
        void mo2636a(int i);

        /* renamed from: f */
        void mo2640f();

        /* renamed from: g */
        void mo2642g();

        /* renamed from: g */
        void mo2643g(boolean z);

        /* renamed from: h */
        void mo2644h();

        /* renamed from: i */
        void mo2646i();
    }

    /* renamed from: android.support.v7.widget.ActionBarOverlayLayout$1 */
    class C05601 extends AnimatorListenerAdapter {
        C05601() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout.this.f2853c = null;
            ActionBarOverlayLayout.this.f2852b = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout.this.f2853c = null;
            ActionBarOverlayLayout.this.f2852b = false;
        }
    }

    /* renamed from: android.support.v7.widget.ActionBarOverlayLayout$2 */
    class RunnableC05612 implements Runnable {
        RunnableC05612() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m2976d();
            ActionBarOverlayLayout.this.f2853c = ActionBarOverlayLayout.this.f2851a.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.f2854d);
        }
    }

    /* renamed from: android.support.v7.widget.ActionBarOverlayLayout$3 */
    class RunnableC05623 implements Runnable {
        RunnableC05623() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m2976d();
            ActionBarOverlayLayout.this.f2853c = ActionBarOverlayLayout.this.f2851a.animate().translationY(-ActionBarOverlayLayout.this.f2851a.getHeight()).setListener(ActionBarOverlayLayout.this.f2854d);
        }
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2856g = 0;
        this.f2866q = new Rect();
        this.f2867r = new Rect();
        this.f2868s = new Rect();
        this.f2869t = new Rect();
        this.f2870u = new Rect();
        this.f2871v = new Rect();
        this.f2872w = new Rect();
        this.f2854d = new AnimatorListenerAdapter() { // from class: android.support.v7.widget.ActionBarOverlayLayout.1
            C05601() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout.this.f2853c = null;
                ActionBarOverlayLayout.this.f2852b = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout.this.f2853c = null;
                ActionBarOverlayLayout.this.f2852b = false;
            }
        };
        this.f2875z = new Runnable() { // from class: android.support.v7.widget.ActionBarOverlayLayout.2
            RunnableC05612() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.m2976d();
                ActionBarOverlayLayout.this.f2853c = ActionBarOverlayLayout.this.f2851a.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.f2854d);
            }
        };
        this.f2849A = new Runnable() { // from class: android.support.v7.widget.ActionBarOverlayLayout.3
            RunnableC05623() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.m2976d();
                ActionBarOverlayLayout.this.f2853c = ActionBarOverlayLayout.this.f2851a.animate().translationY(-ActionBarOverlayLayout.this.f2851a.getHeight()).setListener(ActionBarOverlayLayout.this.f2854d);
            }
        };
        m2963a(context);
        this.f2850B = new NestedScrollingParentHelper(this);
    }

    /* renamed from: a */
    private void m2963a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f2848e);
        this.f2855f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f2859j = obtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.f2859j == null);
        obtainStyledAttributes.recycle();
        this.f2860k = context.getApplicationInfo().targetSdkVersion < 19;
        this.f2874y = new OverScroller(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m2976d();
    }

    public void setActionBarVisibilityCallback(InterfaceC0563a interfaceC0563a) {
        this.f2873x = interfaceC0563a;
        if (getWindowToken() != null) {
            this.f2873x.mo2636a(this.f2856g);
            if (this.f2865p != 0) {
                onWindowSystemUiVisibilityChanged(this.f2865p);
                ViewCompat.requestApplyInsets(this);
            }
        }
    }

    public void setOverlayMode(boolean z) {
        this.f2861l = z;
        this.f2860k = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    /* renamed from: a */
    public boolean m2973a() {
        return this.f2861l;
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f2862m = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m2963a(getContext());
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        m2975c();
        int i2 = this.f2865p ^ i;
        this.f2865p = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        if (this.f2873x != null) {
            this.f2873x.mo2643g(z2 ? false : true);
            if (z || !z2) {
                this.f2873x.mo2640f();
            } else {
                this.f2873x.mo2642g();
            }
        }
        if ((i2 & 256) != 0 && this.f2873x != null) {
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f2856g = i;
        if (this.f2873x != null) {
            this.f2873x.mo2636a(i);
        }
    }

    /* renamed from: a */
    private boolean m2965a(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5 = false;
        C0564b c0564b = (C0564b) view.getLayoutParams();
        if (z && c0564b.leftMargin != rect.left) {
            c0564b.leftMargin = rect.left;
            z5 = true;
        }
        if (z2 && c0564b.topMargin != rect.top) {
            c0564b.topMargin = rect.top;
            z5 = true;
        }
        if (z4 && c0564b.rightMargin != rect.right) {
            c0564b.rightMargin = rect.right;
            z5 = true;
        }
        if (!z3 || c0564b.bottomMargin == rect.bottom) {
            return z5;
        }
        c0564b.bottomMargin = rect.bottom;
        return true;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        m2975c();
        if ((ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0) {
        }
        boolean m2965a = m2965a(this.f2851a, rect, true, true, false, true);
        this.f2869t.set(rect);
        C0695bs.m4244a(this, this.f2869t, this.f2866q);
        if (!this.f2870u.equals(this.f2869t)) {
            this.f2870u.set(this.f2869t);
            m2965a = true;
        }
        if (!this.f2867r.equals(this.f2866q)) {
            this.f2867r.set(this.f2866q);
            m2965a = true;
        }
        if (m2965a) {
            requestLayout();
        }
        return true;
    }

    @Override // android.view.ViewGroup
    /* renamed from: b */
    public C0564b generateDefaultLayoutParams() {
        return new C0564b(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* renamed from: a */
    public C0564b generateLayoutParams(AttributeSet attributeSet) {
        return new C0564b(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0564b(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0564b;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        m2975c();
        measureChildWithMargins(this.f2851a, i, 0, i2, 0);
        C0564b c0564b = (C0564b) this.f2851a.getLayoutParams();
        int max = Math.max(0, this.f2851a.getMeasuredWidth() + c0564b.leftMargin + c0564b.rightMargin);
        int max2 = Math.max(0, c0564b.bottomMargin + this.f2851a.getMeasuredHeight() + c0564b.topMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f2851a.getMeasuredState());
        boolean z = (ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0;
        if (z) {
            measuredHeight = this.f2855f;
            if (this.f2862m && this.f2851a.getTabContainer() != null) {
                measuredHeight += this.f2855f;
            }
        } else {
            measuredHeight = this.f2851a.getVisibility() != 8 ? this.f2851a.getMeasuredHeight() : 0;
        }
        this.f2868s.set(this.f2866q);
        this.f2871v.set(this.f2869t);
        if (!this.f2861l && !z) {
            Rect rect = this.f2868s;
            rect.top = measuredHeight + rect.top;
            this.f2868s.bottom += 0;
        } else {
            Rect rect2 = this.f2871v;
            rect2.top = measuredHeight + rect2.top;
            this.f2871v.bottom += 0;
        }
        m2965a(this.f2857h, this.f2868s, true, true, true, true);
        if (!this.f2872w.equals(this.f2871v)) {
            this.f2872w.set(this.f2871v);
            this.f2857h.m3056a(this.f2871v);
        }
        measureChildWithMargins(this.f2857h, i, 0, i2, 0);
        C0564b c0564b2 = (C0564b) this.f2857h.getLayoutParams();
        int max3 = Math.max(max, this.f2857h.getMeasuredWidth() + c0564b2.leftMargin + c0564b2.rightMargin);
        int max4 = Math.max(max2, c0564b2.bottomMargin + this.f2857h.getMeasuredHeight() + c0564b2.topMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f2857h.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C0564b c0564b = (C0564b) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = c0564b.leftMargin + paddingLeft;
                int i7 = c0564b.topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f2859j != null && !this.f2860k) {
            int bottom = this.f2851a.getVisibility() == 0 ? (int) (this.f2851a.getBottom() + this.f2851a.getTranslationY() + 0.5f) : 0;
            this.f2859j.setBounds(0, bottom, getWidth(), this.f2859j.getIntrinsicHeight() + bottom);
            this.f2859j.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f2851a.getVisibility() != 0) {
            return false;
        }
        return this.f2863n;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f2850B.onNestedScrollAccepted(view, view2, i);
        this.f2864o = getActionBarHideOffset();
        m2976d();
        if (this.f2873x != null) {
            this.f2873x.mo2644h();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        this.f2864o += i2;
        setActionBarHideOffset(this.f2864o);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        if (this.f2863n && !this.f2852b) {
            if (this.f2864o <= this.f2851a.getHeight()) {
                m2966l();
            } else {
                m2967m();
            }
        }
        if (this.f2873x != null) {
            this.f2873x.mo2646i();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f2863n || !z) {
            return false;
        }
        if (m2964a(f, f2)) {
            m2969o();
        } else {
            m2968n();
        }
        this.f2852b = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.support.v4.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f2850B.getNestedScrollAxes();
    }

    /* renamed from: c */
    void m2975c() {
        if (this.f2857h == null) {
            this.f2857h = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f2851a = (ActionBarContainer) findViewById(R.id.action_bar_container);
            this.f2858i = m2962a(findViewById(R.id.action_bar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private InterfaceC0657ah m2962a(View view) {
        if (view instanceof InterfaceC0657ah) {
            return (InterfaceC0657ah) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f2863n) {
            this.f2863n = z;
            if (!z) {
                m2976d();
                setActionBarHideOffset(0);
            }
        }
    }

    public int getActionBarHideOffset() {
        if (this.f2851a != null) {
            return -((int) this.f2851a.getTranslationY());
        }
        return 0;
    }

    public void setActionBarHideOffset(int i) {
        m2976d();
        this.f2851a.setTranslationY(-Math.max(0, Math.min(i, this.f2851a.getHeight())));
    }

    /* renamed from: d */
    void m2976d() {
        removeCallbacks(this.f2875z);
        removeCallbacks(this.f2849A);
        if (this.f2853c != null) {
            this.f2853c.cancel();
        }
    }

    /* renamed from: l */
    private void m2966l() {
        m2976d();
        postDelayed(this.f2875z, 600L);
    }

    /* renamed from: m */
    private void m2967m() {
        m2976d();
        postDelayed(this.f2849A, 600L);
    }

    /* renamed from: n */
    private void m2968n() {
        m2976d();
        this.f2875z.run();
    }

    /* renamed from: o */
    private void m2969o() {
        m2976d();
        this.f2849A.run();
    }

    /* renamed from: a */
    private boolean m2964a(float f, float f2) {
        this.f2874y.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.f2874y.getFinalY() > this.f2851a.getHeight();
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    public void setWindowCallback(Window.Callback callback) {
        m2975c();
        this.f2858i.mo3892a(callback);
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    public void setWindowTitle(CharSequence charSequence) {
        m2975c();
        this.f2858i.mo3893a(charSequence);
    }

    public CharSequence getTitle() {
        m2975c();
        return this.f2858i.mo3902e();
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    /* renamed from: a */
    public void mo2971a(int i) {
        m2975c();
        switch (i) {
            case 2:
                this.f2858i.mo3903f();
                break;
            case 5:
                this.f2858i.mo3904g();
                break;
            case 109:
                setOverlayMode(true);
                break;
        }
    }

    public void setUiOptions(int i) {
    }

    public void setIcon(int i) {
        m2975c();
        this.f2858i.mo3887a(i);
    }

    public void setIcon(Drawable drawable) {
        m2975c();
        this.f2858i.mo3888a(drawable);
    }

    public void setLogo(int i) {
        m2975c();
        this.f2858i.mo3896b(i);
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    /* renamed from: e */
    public boolean mo2977e() {
        m2975c();
        return this.f2858i.mo3905h();
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    /* renamed from: f */
    public boolean mo2978f() {
        m2975c();
        return this.f2858i.mo3906i();
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    /* renamed from: g */
    public boolean mo2979g() {
        m2975c();
        return this.f2858i.mo3907j();
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    /* renamed from: h */
    public boolean mo2980h() {
        m2975c();
        return this.f2858i.mo3908k();
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    /* renamed from: i */
    public boolean mo2981i() {
        m2975c();
        return this.f2858i.mo3909l();
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    /* renamed from: j */
    public void mo2982j() {
        m2975c();
        this.f2858i.mo3910m();
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    /* renamed from: a */
    public void mo2972a(Menu menu, InterfaceC0551o.a aVar) {
        m2975c();
        this.f2858i.mo3891a(menu, aVar);
    }

    @Override // android.support.v7.widget.InterfaceC0656ag
    /* renamed from: k */
    public void mo2983k() {
        m2975c();
        this.f2858i.mo3911n();
    }

    /* renamed from: android.support.v7.widget.ActionBarOverlayLayout$b */
    public static class C0564b extends ViewGroup.MarginLayoutParams {
        public C0564b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0564b(int i, int i2) {
            super(i, i2);
        }

        public C0564b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }
}
