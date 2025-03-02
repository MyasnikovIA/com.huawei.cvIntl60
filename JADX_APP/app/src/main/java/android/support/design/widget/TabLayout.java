package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.annotation.BoolRes;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.Dimension;
import android.support.annotation.DrawableRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.design.R;
import android.support.design.internal.C0201h;
import android.support.design.internal.C0202i;
import android.support.design.p038a.C0155a;
import android.support.design.p043e.C0183a;
import android.support.design.p044f.C0184a;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.Pools;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.app.AbstractC0512a;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.widget.C0689bm;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer.C1167C;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.DecorView
/* loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {

    /* renamed from: w */
    private static final Pools.Pool<C0263f> f1521w = new Pools.SynchronizedPool(16);

    /* renamed from: A */
    private final C0262e f1522A;

    /* renamed from: B */
    private final int f1523B;

    /* renamed from: C */
    private final int f1524C;

    /* renamed from: D */
    private final int f1525D;

    /* renamed from: E */
    private int f1526E;

    /* renamed from: F */
    private InterfaceC0259b f1527F;

    /* renamed from: G */
    private final ArrayList<InterfaceC0259b> f1528G;

    /* renamed from: H */
    private InterfaceC0259b f1529H;

    /* renamed from: I */
    private ValueAnimator f1530I;

    /* renamed from: J */
    private PagerAdapter f1531J;

    /* renamed from: K */
    private DataSetObserver f1532K;

    /* renamed from: L */
    private C0264g f1533L;

    /* renamed from: M */
    private C0258a f1534M;

    /* renamed from: N */
    private boolean f1535N;

    /* renamed from: O */
    private final Pools.Pool<C0265h> f1536O;

    /* renamed from: a */
    int f1537a;

    /* renamed from: b */
    int f1538b;

    /* renamed from: c */
    int f1539c;

    /* renamed from: d */
    int f1540d;

    /* renamed from: e */
    int f1541e;

    /* renamed from: f */
    ColorStateList f1542f;

    /* renamed from: g */
    ColorStateList f1543g;

    /* renamed from: h */
    ColorStateList f1544h;

    /* renamed from: i */
    @Nullable
    Drawable f1545i;

    /* renamed from: j */
    PorterDuff.Mode f1546j;

    /* renamed from: k */
    float f1547k;

    /* renamed from: l */
    float f1548l;

    /* renamed from: m */
    final int f1549m;

    /* renamed from: n */
    int f1550n;

    /* renamed from: o */
    int f1551o;

    /* renamed from: p */
    int f1552p;

    /* renamed from: q */
    int f1553q;

    /* renamed from: r */
    int f1554r;

    /* renamed from: s */
    boolean f1555s;

    /* renamed from: t */
    boolean f1556t;

    /* renamed from: u */
    boolean f1557u;

    /* renamed from: v */
    ViewPager f1558v;

    /* renamed from: x */
    private final ArrayList<C0263f> f1559x;

    /* renamed from: y */
    private C0263f f1560y;

    /* renamed from: z */
    private final RectF f1561z;

    /* renamed from: android.support.design.widget.TabLayout$b */
    public interface InterfaceC0259b<T extends C0263f> {
        /* renamed from: a */
        void mo1938a(T t);

        /* renamed from: b */
        void mo1939b(T t);

        /* renamed from: c */
        void mo1940c(T t);
    }

    /* renamed from: android.support.design.widget.TabLayout$c */
    public interface InterfaceC0260c extends InterfaceC0259b {
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabStyle);
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1559x = new ArrayList<>();
        this.f1561z = new RectF();
        this.f1550n = Integer.MAX_VALUE;
        this.f1528G = new ArrayList<>();
        this.f1536O = new Pools.SimplePool(12);
        setHorizontalScrollBarEnabled(false);
        this.f1522A = new C0262e(context);
        super.addView(this.f1522A, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray m1603a = C0201h.m1603a(context, attributeSet, R.styleable.TabLayout, i, R.style.Widget_Design_TabLayout, R.styleable.TabLayout_tabTextAppearance);
        this.f1522A.m1947b(m1603a.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, -1));
        this.f1522A.m1943a(m1603a.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
        setSelectedTabIndicator(C0183a.m1502b(context, m1603a, R.styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorGravity(m1603a.getInt(R.styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(m1603a.getBoolean(R.styleable.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = m1603a.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.f1540d = dimensionPixelSize;
        this.f1539c = dimensionPixelSize;
        this.f1538b = dimensionPixelSize;
        this.f1537a = dimensionPixelSize;
        this.f1537a = m1603a.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, this.f1537a);
        this.f1538b = m1603a.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.f1538b);
        this.f1539c = m1603a.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.f1539c);
        this.f1540d = m1603a.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.f1540d);
        this.f1541e = m1603a.getResourceId(R.styleable.TabLayout_tabTextAppearance, R.style.TextAppearance_Design_Tab);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(this.f1541e, android.support.v7.appcompat.R.styleable.TextAppearance);
        try {
            this.f1547k = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.TextAppearance_android_textSize, 0);
            this.f1542f = C0183a.m1501a(context, obtainStyledAttributes, android.support.v7.appcompat.R.styleable.TextAppearance_android_textColor);
            obtainStyledAttributes.recycle();
            if (m1603a.hasValue(R.styleable.TabLayout_tabTextColor)) {
                this.f1542f = C0183a.m1501a(context, m1603a, R.styleable.TabLayout_tabTextColor);
            }
            if (m1603a.hasValue(R.styleable.TabLayout_tabSelectedTextColor)) {
                this.f1542f = m1900a(this.f1542f.getDefaultColor(), m1603a.getColor(R.styleable.TabLayout_tabSelectedTextColor, 0));
            }
            this.f1543g = C0183a.m1501a(context, m1603a, R.styleable.TabLayout_tabIconTint);
            this.f1546j = C0202i.m1612a(m1603a.getInt(R.styleable.TabLayout_tabIconTintMode, -1), null);
            this.f1544h = C0183a.m1501a(context, m1603a, R.styleable.TabLayout_tabRippleColor);
            this.f1552p = m1603a.getInt(R.styleable.TabLayout_tabIndicatorAnimationDuration, 300);
            this.f1523B = m1603a.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
            this.f1524C = m1603a.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
            this.f1549m = m1603a.getResourceId(R.styleable.TabLayout_tabBackground, 0);
            this.f1526E = m1603a.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
            this.f1554r = m1603a.getInt(R.styleable.TabLayout_tabMode, 1);
            this.f1551o = m1603a.getInt(R.styleable.TabLayout_tabGravity, 0);
            this.f1555s = m1603a.getBoolean(R.styleable.TabLayout_tabInlineLabel, false);
            this.f1557u = m1603a.getBoolean(R.styleable.TabLayout_tabUnboundedRipple, false);
            m1603a.recycle();
            Resources resources = getResources();
            this.f1548l = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.f1525D = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            m1916h();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.f1522A.m1943a(i);
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.f1522A.m1947b(i);
    }

    /* renamed from: a */
    public void m1920a(int i, float f, boolean z) {
        m1921a(i, f, z, true);
    }

    /* renamed from: a */
    void m1921a(int i, float f, boolean z, boolean z2) {
        int round = Math.round(i + f);
        if (round >= 0 && round < this.f1522A.getChildCount()) {
            if (z2) {
                this.f1522A.m1944a(i, f);
            }
            if (this.f1530I != null && this.f1530I.isRunning()) {
                this.f1530I.cancel();
            }
            scrollTo(m1899a(i, f), 0);
            if (z) {
                setSelectedTabView(round);
            }
        }
    }

    /* renamed from: a */
    public void m1923a(@NonNull C0263f c0263f) {
        m1925a(c0263f, this.f1559x.isEmpty());
    }

    /* renamed from: a */
    public void m1925a(@NonNull C0263f c0263f, boolean z) {
        m1924a(c0263f, this.f1559x.size(), z);
    }

    /* renamed from: a */
    public void m1924a(@NonNull C0263f c0263f, int i, boolean z) {
        if (c0263f.f1583a != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        m1902a(c0263f, i);
        m1911e(c0263f);
        if (z) {
            c0263f.m1963e();
        }
    }

    /* renamed from: a */
    private void m1903a(@NonNull C0287p c0287p) {
        C0263f m1918a = m1918a();
        if (c0287p.f1855a != null) {
            m1918a.m1954a(c0287p.f1855a);
        }
        if (c0287p.f1856b != null) {
            m1918a.m1952a(c0287p.f1856b);
        }
        if (c0287p.f1857c != 0) {
            m1918a.m1951a(c0287p.f1857c);
        }
        if (!TextUtils.isEmpty(c0287p.getContentDescription())) {
            m1918a.m1957b(c0287p.getContentDescription());
        }
        m1923a(m1918a);
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable InterfaceC0259b interfaceC0259b) {
        if (this.f1527F != null) {
            m1931b(this.f1527F);
        }
        this.f1527F = interfaceC0259b;
        if (interfaceC0259b != null) {
            m1922a(interfaceC0259b);
        }
    }

    /* renamed from: a */
    public void m1922a(@NonNull InterfaceC0259b interfaceC0259b) {
        if (!this.f1528G.contains(interfaceC0259b)) {
            this.f1528G.add(interfaceC0259b);
        }
    }

    /* renamed from: b */
    public void m1931b(@NonNull InterfaceC0259b interfaceC0259b) {
        this.f1528G.remove(interfaceC0259b);
    }

    @NonNull
    /* renamed from: a */
    public C0263f m1918a() {
        C0263f m1930b = m1930b();
        m1930b.f1583a = this;
        m1930b.f1584b = m1908d(m1930b);
        return m1930b;
    }

    /* renamed from: b */
    protected C0263f m1930b() {
        C0263f acquire = f1521w.acquire();
        if (acquire == null) {
            return new C0263f();
        }
        return acquire;
    }

    /* renamed from: b */
    protected boolean m1933b(C0263f c0263f) {
        return f1521w.release(c0263f);
    }

    public int getTabCount() {
        return this.f1559x.size();
    }

    @Nullable
    /* renamed from: a */
    public C0263f m1919a(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return this.f1559x.get(i);
    }

    public int getSelectedTabPosition() {
        if (this.f1560y != null) {
            return this.f1560y.m1959c();
        }
        return -1;
    }

    /* renamed from: c */
    public void m1934c() {
        for (int childCount = this.f1522A.getChildCount() - 1; childCount >= 0; childCount--) {
            m1907c(childCount);
        }
        Iterator<C0263f> it = this.f1559x.iterator();
        while (it.hasNext()) {
            C0263f next = it.next();
            it.remove();
            next.m1966h();
            m1933b(next);
        }
        this.f1560y = null;
    }

    public void setTabMode(int i) {
        if (i != this.f1554r) {
            this.f1554r = i;
            m1916h();
        }
    }

    public int getTabMode() {
        return this.f1554r;
    }

    public void setTabGravity(int i) {
        if (this.f1551o != i) {
            this.f1551o = i;
            m1916h();
        }
    }

    public int getTabGravity() {
        return this.f1551o;
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.f1553q != i) {
            this.f1553q = i;
            ViewCompat.postInvalidateOnAnimation(this.f1522A);
        }
    }

    public int getTabIndicatorGravity() {
        return this.f1553q;
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.f1556t = z;
        ViewCompat.postInvalidateOnAnimation(this.f1522A);
    }

    public void setInlineLabel(boolean z) {
        if (this.f1555s != z) {
            this.f1555s = z;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f1522A.getChildCount()) {
                    View childAt = this.f1522A.getChildAt(i2);
                    if (childAt instanceof C0265h) {
                        ((C0265h) childAt).m1979c();
                    }
                    i = i2 + 1;
                } else {
                    m1916h();
                    return;
                }
            }
        }
    }

    public void setInlineLabelResource(@BoolRes int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    public void setUnboundedRipple(boolean z) {
        if (this.f1557u != z) {
            this.f1557u = z;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f1522A.getChildCount()) {
                    View childAt = this.f1522A.getChildAt(i2);
                    if (childAt instanceof C0265h) {
                        ((C0265h) childAt).m1970a(getContext());
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.f1542f != colorStateList) {
            this.f1542f = colorStateList;
            m1910e();
        }
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.f1542f;
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f1543g != colorStateList) {
            this.f1543g = colorStateList;
            m1910e();
        }
    }

    public void setTabIconTintResource(@ColorRes int i) {
        setTabIconTint(C0488a.m2454a(getContext(), i));
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.f1543g;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.f1544h;
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f1544h != colorStateList) {
            this.f1544h = colorStateList;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f1522A.getChildCount()) {
                    View childAt = this.f1522A.getChildAt(i2);
                    if (childAt instanceof C0265h) {
                        ((C0265h) childAt).m1970a(getContext());
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i) {
        setTabRippleColor(C0488a.m2454a(getContext(), i));
    }

    @Nullable
    public Drawable getTabSelectedIndicator() {
        return this.f1545i;
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (this.f1545i != drawable) {
            this.f1545i = drawable;
            ViewCompat.postInvalidateOnAnimation(this.f1522A);
        }
    }

    public void setSelectedTabIndicator(@DrawableRes int i) {
        if (i != 0) {
            setSelectedTabIndicator(C0488a.m2457b(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        m1927a(viewPager, true);
    }

    /* renamed from: a */
    public void m1927a(@Nullable ViewPager viewPager, boolean z) {
        m1904a(viewPager, z, false);
    }

    /* renamed from: a */
    private void m1904a(@Nullable ViewPager viewPager, boolean z, boolean z2) {
        if (this.f1558v != null) {
            if (this.f1533L != null) {
                this.f1558v.removeOnPageChangeListener(this.f1533L);
            }
            if (this.f1534M != null) {
                this.f1558v.removeOnAdapterChangeListener(this.f1534M);
            }
        }
        if (this.f1529H != null) {
            m1931b(this.f1529H);
            this.f1529H = null;
        }
        if (viewPager != null) {
            this.f1558v = viewPager;
            if (this.f1533L == null) {
                this.f1533L = new C0264g(this);
            }
            this.f1533L.m1967a();
            viewPager.addOnPageChangeListener(this.f1533L);
            this.f1529H = new C0266i(viewPager);
            m1922a(this.f1529H);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                m1926a(adapter, z);
            }
            if (this.f1534M == null) {
                this.f1534M = new C0258a();
            }
            this.f1534M.m1937a(z);
            viewPager.addOnAdapterChangeListener(this.f1534M);
            m1920a(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.f1558v = null;
            m1926a((PagerAdapter) null, false);
        }
        this.f1535N = z2;
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        m1926a(pagerAdapter, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1558v == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                m1904a((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1535N) {
            setupWithViewPager(null);
            this.f1535N = false;
        }
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f1522A.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    /* renamed from: a */
    void m1926a(@Nullable PagerAdapter pagerAdapter, boolean z) {
        if (this.f1531J != null && this.f1532K != null) {
            this.f1531J.unregisterDataSetObserver(this.f1532K);
        }
        this.f1531J = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.f1532K == null) {
                this.f1532K = new C0261d();
            }
            pagerAdapter.registerDataSetObserver(this.f1532K);
        }
        m1936d();
    }

    /* renamed from: d */
    void m1936d() {
        int currentItem;
        m1934c();
        if (this.f1531J != null) {
            int count = this.f1531J.getCount();
            for (int i = 0; i < count; i++) {
                m1925a(m1918a().m1954a(this.f1531J.getPageTitle(i)), false);
            }
            if (this.f1558v != null && count > 0 && (currentItem = this.f1558v.getCurrentItem()) != getSelectedTabPosition() && currentItem < getTabCount()) {
                m1935c(m1919a(currentItem));
            }
        }
    }

    /* renamed from: e */
    private void m1910e() {
        int size = this.f1559x.size();
        for (int i = 0; i < size; i++) {
            this.f1559x.get(i).m1965g();
        }
    }

    /* renamed from: d */
    private C0265h m1908d(@NonNull C0263f c0263f) {
        C0265h acquire = this.f1536O != null ? this.f1536O.acquire() : null;
        if (acquire == null) {
            acquire = new C0265h(getContext());
        }
        acquire.m1977a(c0263f);
        acquire.setFocusable(true);
        acquire.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(c0263f.f1588f)) {
            acquire.setContentDescription(c0263f.f1587e);
        } else {
            acquire.setContentDescription(c0263f.f1588f);
        }
        return acquire;
    }

    /* renamed from: a */
    private void m1902a(C0263f c0263f, int i) {
        c0263f.m1958b(i);
        this.f1559x.add(i, c0263f);
        int size = this.f1559x.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            this.f1559x.get(i2).m1958b(i2);
        }
    }

    /* renamed from: e */
    private void m1911e(C0263f c0263f) {
        this.f1522A.addView(c0263f.f1584b, c0263f.m1959c(), m1912f());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        m1905a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        m1905a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m1905a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m1905a(view);
    }

    /* renamed from: a */
    private void m1905a(View view) {
        if (view instanceof C0287p) {
            m1903a((C0287p) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    /* renamed from: f */
    private LinearLayout.LayoutParams m1912f() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        m1906a(layoutParams);
        return layoutParams;
    }

    /* renamed from: a */
    private void m1906a(LinearLayout.LayoutParams layoutParams) {
        if (this.f1554r == 1 && this.f1551o == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    @Dimension(unit = 1)
    /* renamed from: b */
    int m1929b(@Dimension(unit = 0) int i) {
        return Math.round(getResources().getDisplayMetrics().density * i);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f1522A.getChildCount()) {
                View childAt = this.f1522A.getChildAt(i2);
                if (childAt instanceof C0265h) {
                    ((C0265h) childAt).m1971a(canvas);
                }
                i = i2 + 1;
            } else {
                super.onDraw(canvas);
                return;
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z;
        int m1929b = m1929b(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
        switch (View.MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                i2 = View.MeasureSpec.makeMeasureSpec(Math.min(m1929b, View.MeasureSpec.getSize(i2)), C1167C.ENCODING_PCM_32BIT);
                break;
            case 0:
                i2 = View.MeasureSpec.makeMeasureSpec(m1929b, C1167C.ENCODING_PCM_32BIT);
                break;
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            this.f1550n = this.f1524C > 0 ? this.f1524C : size - m1929b(56);
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            switch (this.f1554r) {
                case 0:
                    if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 1:
                    z = childAt.getMeasuredWidth() != getMeasuredWidth();
                    break;
                default:
                    z = false;
                    break;
            }
            if (z) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), C1167C.ENCODING_PCM_32BIT), getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    /* renamed from: c */
    private void m1907c(int i) {
        C0265h c0265h = (C0265h) this.f1522A.getChildAt(i);
        this.f1522A.removeViewAt(i);
        if (c0265h != null) {
            c0265h.m1976a();
            this.f1536O.release(c0265h);
        }
        requestLayout();
    }

    /* renamed from: d */
    private void m1909d(int i) {
        if (i != -1) {
            if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.f1522A.m1946a()) {
                m1920a(i, 0.0f, true);
                return;
            }
            int scrollX = getScrollX();
            int m1899a = m1899a(i, 0.0f);
            if (scrollX != m1899a) {
                m1914g();
                this.f1530I.setIntValues(scrollX, m1899a);
                this.f1530I.start();
            }
            this.f1522A.m1948b(i, this.f1552p);
        }
    }

    /* renamed from: g */
    private void m1914g() {
        if (this.f1530I == null) {
            this.f1530I = new ValueAnimator();
            this.f1530I.setInterpolator(C0155a.f1038b);
            this.f1530I.setDuration(this.f1552p);
            this.f1530I.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.TabLayout.1
                C02571() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    /* renamed from: android.support.design.widget.TabLayout$1 */
    class C02571 implements ValueAnimator.AnimatorUpdateListener {
        C02571() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        m1914g();
        this.f1530I.addListener(animatorListener);
    }

    private void setSelectedTabView(int i) {
        int childCount = this.f1522A.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f1522A.getChildAt(i2);
                childAt.setSelected(i2 == i);
                childAt.setActivated(i2 == i);
                i2++;
            }
        }
    }

    /* renamed from: c */
    void m1935c(C0263f c0263f) {
        m1932b(c0263f, true);
    }

    /* renamed from: b */
    void m1932b(C0263f c0263f, boolean z) {
        C0263f c0263f2 = this.f1560y;
        if (c0263f2 == c0263f) {
            if (c0263f2 != null) {
                m1917h(c0263f);
                m1909d(c0263f.m1959c());
                return;
            }
            return;
        }
        int m1959c = c0263f != null ? c0263f.m1959c() : -1;
        if (z) {
            if ((c0263f2 == null || c0263f2.m1959c() == -1) && m1959c != -1) {
                m1920a(m1959c, 0.0f, true);
            } else {
                m1909d(m1959c);
            }
            if (m1959c != -1) {
                setSelectedTabView(m1959c);
            }
        }
        this.f1560y = c0263f;
        if (c0263f2 != null) {
            m1915g(c0263f2);
        }
        if (c0263f != null) {
            m1913f(c0263f);
        }
    }

    /* renamed from: f */
    private void m1913f(@NonNull C0263f c0263f) {
        for (int size = this.f1528G.size() - 1; size >= 0; size--) {
            this.f1528G.get(size).mo1938a(c0263f);
        }
    }

    /* renamed from: g */
    private void m1915g(@NonNull C0263f c0263f) {
        for (int size = this.f1528G.size() - 1; size >= 0; size--) {
            this.f1528G.get(size).mo1939b(c0263f);
        }
    }

    /* renamed from: h */
    private void m1917h(@NonNull C0263f c0263f) {
        for (int size = this.f1528G.size() - 1; size >= 0; size--) {
            this.f1528G.get(size).mo1940c(c0263f);
        }
    }

    /* renamed from: a */
    private int m1899a(int i, float f) {
        if (this.f1554r != 0) {
            return 0;
        }
        View childAt = this.f1522A.getChildAt(i);
        View childAt2 = i + 1 < this.f1522A.getChildCount() ? this.f1522A.getChildAt(i + 1) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i2 = (int) ((width2 + width) * 0.5f * f);
        return ViewCompat.getLayoutDirection(this) == 0 ? i2 + left : left - i2;
    }

    /* renamed from: h */
    private void m1916h() {
        ViewCompat.setPaddingRelative(this.f1522A, this.f1554r == 0 ? Math.max(0, this.f1526E - this.f1537a) : 0, 0, 0, 0);
        switch (this.f1554r) {
            case 0:
                this.f1522A.setGravity(GravityCompat.START);
                break;
            case 1:
                this.f1522A.setGravity(1);
                break;
        }
        m1928a(true);
    }

    /* renamed from: a */
    void m1928a(boolean z) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f1522A.getChildCount()) {
                View childAt = this.f1522A.getChildAt(i2);
                childAt.setMinimumWidth(getTabMinWidth());
                m1906a((LinearLayout.LayoutParams) childAt.getLayoutParams());
                if (z) {
                    childAt.requestLayout();
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: android.support.design.widget.TabLayout$f */
    public static class C0263f {

        /* renamed from: a */
        public TabLayout f1583a;

        /* renamed from: b */
        public C0265h f1584b;

        /* renamed from: c */
        private Object f1585c;

        /* renamed from: d */
        private Drawable f1586d;

        /* renamed from: e */
        private CharSequence f1587e;

        /* renamed from: f */
        private CharSequence f1588f;

        /* renamed from: g */
        private int f1589g = -1;

        /* renamed from: h */
        private View f1590h;

        @Nullable
        /* renamed from: a */
        public View m1955a() {
            return this.f1590h;
        }

        @NonNull
        /* renamed from: a */
        public C0263f m1953a(@Nullable View view) {
            this.f1590h = view;
            m1965g();
            return this;
        }

        @NonNull
        /* renamed from: a */
        public C0263f m1951a(@LayoutRes int i) {
            return m1953a(LayoutInflater.from(this.f1584b.getContext()).inflate(i, (ViewGroup) this.f1584b, false));
        }

        @Nullable
        /* renamed from: b */
        public Drawable m1956b() {
            return this.f1586d;
        }

        /* renamed from: c */
        public int m1959c() {
            return this.f1589g;
        }

        /* renamed from: b */
        void m1958b(int i) {
            this.f1589g = i;
        }

        @Nullable
        /* renamed from: d */
        public CharSequence m1962d() {
            return this.f1587e;
        }

        @NonNull
        /* renamed from: a */
        public C0263f m1952a(@Nullable Drawable drawable) {
            this.f1586d = drawable;
            m1965g();
            return this;
        }

        @NonNull
        /* renamed from: c */
        public C0263f m1960c(@DrawableRes int i) {
            if (this.f1583a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return m1952a(C0488a.m2457b(this.f1583a.getContext(), i));
        }

        @NonNull
        /* renamed from: a */
        public C0263f m1954a(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f1588f) && !TextUtils.isEmpty(charSequence)) {
                this.f1584b.setContentDescription(charSequence);
            }
            this.f1587e = charSequence;
            m1965g();
            return this;
        }

        @NonNull
        /* renamed from: d */
        public C0263f m1961d(@StringRes int i) {
            if (this.f1583a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return m1954a(this.f1583a.getResources().getText(i));
        }

        /* renamed from: e */
        public void m1963e() {
            if (this.f1583a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            this.f1583a.m1935c(this);
        }

        /* renamed from: f */
        public boolean m1964f() {
            if (this.f1583a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return this.f1583a.getSelectedTabPosition() == this.f1589g;
        }

        @NonNull
        /* renamed from: b */
        public C0263f m1957b(@Nullable CharSequence charSequence) {
            this.f1588f = charSequence;
            m1965g();
            return this;
        }

        /* renamed from: g */
        void m1965g() {
            if (this.f1584b != null) {
                this.f1584b.m1978b();
            }
        }

        /* renamed from: h */
        void m1966h() {
            this.f1583a = null;
            this.f1584b = null;
            this.f1585c = null;
            this.f1586d = null;
            this.f1587e = null;
            this.f1588f = null;
            this.f1589g = -1;
            this.f1590h = null;
        }
    }

    /* renamed from: android.support.design.widget.TabLayout$h */
    class C0265h extends LinearLayout {

        /* renamed from: b */
        private C0263f f1595b;

        /* renamed from: c */
        private TextView f1596c;

        /* renamed from: d */
        private ImageView f1597d;

        /* renamed from: e */
        private View f1598e;

        /* renamed from: f */
        private TextView f1599f;

        /* renamed from: g */
        private ImageView f1600g;

        /* renamed from: h */
        @Nullable
        private Drawable f1601h;

        /* renamed from: i */
        private int f1602i;

        public C0265h(Context context) {
            super(context);
            this.f1602i = 2;
            m1970a(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.f1537a, TabLayout.this.f1538b, TabLayout.this.f1539c, TabLayout.this.f1540d);
            setGravity(17);
            setOrientation(TabLayout.this.f1555s ? 0 : 1);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), PointerIconCompat.TYPE_HAND));
        }

        /* renamed from: a */
        public void m1970a(Context context) {
            Drawable drawable;
            if (TabLayout.this.f1549m != 0) {
                this.f1601h = C0488a.m2457b(context, TabLayout.this.f1549m);
                if (this.f1601h != null && this.f1601h.isStateful()) {
                    this.f1601h.setState(getDrawableState());
                }
            } else {
                this.f1601h = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            if (TabLayout.this.f1544h != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList m1505a = C0184a.m1505a(TabLayout.this.f1544h);
                if (Build.VERSION.SDK_INT >= 21) {
                    if (TabLayout.this.f1557u) {
                        gradientDrawable = null;
                    }
                    drawable = new RippleDrawable(m1505a, gradientDrawable, TabLayout.this.f1557u ? null : gradientDrawable2);
                } else {
                    Drawable wrap = DrawableCompat.wrap(gradientDrawable2);
                    DrawableCompat.setTintList(wrap, m1505a);
                    drawable = new LayerDrawable(new Drawable[]{gradientDrawable, wrap});
                }
            } else {
                drawable = gradientDrawable;
            }
            ViewCompat.setBackground(this, drawable);
            TabLayout.this.invalidate();
        }

        /* renamed from: a */
        public void m1971a(Canvas canvas) {
            if (this.f1601h != null) {
                this.f1601h.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f1601h.draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            boolean z = false;
            int[] drawableState = getDrawableState();
            if (this.f1601h != null && this.f1601h.isStateful()) {
                z = false | this.f1601h.setState(drawableState);
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f1595b != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.f1595b.m1963e();
                return true;
            }
            return performClick;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            if (this.f1596c != null) {
                this.f1596c.setSelected(z);
            }
            if (this.f1597d != null) {
                this.f1597d.setSelected(z);
            }
            if (this.f1598e != null) {
                this.f1598e.setSelected(z);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(AbstractC0512a.c.class.getName());
        }

        @Override // android.view.View
        @TargetApi(14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(AbstractC0512a.c.class.getName());
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            Layout layout;
            boolean z = true;
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(TabLayout.this.f1550n, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.f1596c != null) {
                float f = TabLayout.this.f1547k;
                int i3 = this.f1602i;
                if (this.f1597d != null && this.f1597d.getVisibility() == 0) {
                    i3 = 1;
                } else if (this.f1596c != null && this.f1596c.getLineCount() > 1) {
                    f = TabLayout.this.f1548l;
                }
                float textSize = this.f1596c.getTextSize();
                int lineCount = this.f1596c.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.f1596c);
                if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                    if (TabLayout.this.f1554r == 1 && f > textSize && lineCount == 1 && ((layout = this.f1596c.getLayout()) == null || m1968a(layout, 0, f) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z = false;
                    }
                    if (z) {
                        this.f1596c.setTextSize(0, f);
                        this.f1596c.setMaxLines(i3);
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        /* renamed from: a */
        void m1977a(@Nullable C0263f c0263f) {
            if (c0263f != this.f1595b) {
                this.f1595b = c0263f;
                m1978b();
            }
        }

        /* renamed from: a */
        void m1976a() {
            m1977a((C0263f) null);
            setSelected(false);
        }

        /* renamed from: b */
        final void m1978b() {
            C0263f c0263f = this.f1595b;
            View m1955a = c0263f != null ? c0263f.m1955a() : null;
            if (m1955a != null) {
                ViewParent parent = m1955a.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m1955a);
                    }
                    addView(m1955a);
                }
                this.f1598e = m1955a;
                if (this.f1596c != null) {
                    this.f1596c.setVisibility(8);
                }
                if (this.f1597d != null) {
                    this.f1597d.setVisibility(8);
                    this.f1597d.setImageDrawable(null);
                }
                this.f1599f = (TextView) m1955a.findViewById(android.R.id.text1);
                if (this.f1599f != null) {
                    this.f1602i = TextViewCompat.getMaxLines(this.f1599f);
                }
                this.f1600g = (ImageView) m1955a.findViewById(android.R.id.icon);
            } else {
                if (this.f1598e != null) {
                    removeView(this.f1598e);
                    this.f1598e = null;
                }
                this.f1599f = null;
                this.f1600g = null;
            }
            if (this.f1598e == null) {
                if (this.f1597d == null) {
                    ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                    addView(imageView, 0);
                    this.f1597d = imageView;
                }
                Drawable mutate = (c0263f == null || c0263f.m1956b() == null) ? null : DrawableCompat.wrap(c0263f.m1956b()).mutate();
                if (mutate != null) {
                    DrawableCompat.setTintList(mutate, TabLayout.this.f1543g);
                    if (TabLayout.this.f1546j != null) {
                        DrawableCompat.setTintMode(mutate, TabLayout.this.f1546j);
                    }
                }
                if (this.f1596c == null) {
                    TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup) this, false);
                    addView(textView);
                    this.f1596c = textView;
                    this.f1602i = TextViewCompat.getMaxLines(this.f1596c);
                }
                TextViewCompat.setTextAppearance(this.f1596c, TabLayout.this.f1541e);
                if (TabLayout.this.f1542f != null) {
                    this.f1596c.setTextColor(TabLayout.this.f1542f);
                }
                m1974a(this.f1596c, this.f1597d);
            } else if (this.f1599f != null || this.f1600g != null) {
                m1974a(this.f1599f, this.f1600g);
            }
            if (c0263f != null && !TextUtils.isEmpty(c0263f.f1588f)) {
                setContentDescription(c0263f.f1588f);
            }
            setSelected(c0263f != null && c0263f.m1964f());
        }

        /* renamed from: c */
        final void m1979c() {
            setOrientation(TabLayout.this.f1555s ? 0 : 1);
            if (this.f1599f != null || this.f1600g != null) {
                m1974a(this.f1599f, this.f1600g);
            } else {
                m1974a(this.f1596c, this.f1597d);
            }
        }

        /* renamed from: a */
        private void m1974a(@Nullable TextView textView, @Nullable ImageView imageView) {
            Drawable mutate = (this.f1595b == null || this.f1595b.m1956b() == null) ? null : DrawableCompat.wrap(this.f1595b.m1956b()).mutate();
            CharSequence m1962d = this.f1595b != null ? this.f1595b.m1962d() : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(m1962d);
            if (textView != null) {
                if (z) {
                    textView.setText(m1962d);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int m1929b = (z && imageView.getVisibility() == 0) ? TabLayout.this.m1929b(8) : 0;
                if (TabLayout.this.f1555s) {
                    if (m1929b != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, m1929b);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (m1929b != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = m1929b;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            C0689bm.m4200a(this, z ? null : this.f1595b != null ? this.f1595b.f1588f : null);
        }

        /* renamed from: d */
        public int m1975d() {
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (View view : new View[]{this.f1596c, this.f1597d, this.f1598e}) {
                if (view != null && view.getVisibility() == 0) {
                    i2 = z ? Math.min(i2, view.getLeft()) : view.getLeft();
                    i = z ? Math.max(i, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return i - i2;
        }

        /* renamed from: a */
        private float m1968a(Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }
    }

    /* renamed from: android.support.design.widget.TabLayout$e */
    private class C0262e extends LinearLayout {

        /* renamed from: a */
        int f1566a;

        /* renamed from: b */
        float f1567b;

        /* renamed from: d */
        private int f1569d;

        /* renamed from: e */
        private final Paint f1570e;

        /* renamed from: f */
        private final GradientDrawable f1571f;

        /* renamed from: g */
        private int f1572g;

        /* renamed from: h */
        private int f1573h;

        /* renamed from: i */
        private int f1574i;

        /* renamed from: j */
        private ValueAnimator f1575j;

        C0262e(Context context) {
            super(context);
            this.f1566a = -1;
            this.f1572g = -1;
            this.f1573h = -1;
            this.f1574i = -1;
            setWillNotDraw(false);
            this.f1570e = new Paint();
            this.f1571f = new GradientDrawable();
        }

        /* renamed from: a */
        void m1943a(int i) {
            if (this.f1570e.getColor() != i) {
                this.f1570e.setColor(i);
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* renamed from: b */
        void m1947b(int i) {
            if (this.f1569d != i) {
                this.f1569d = i;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* renamed from: a */
        boolean m1946a() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: a */
        void m1944a(int i, float f) {
            if (this.f1575j != null && this.f1575j.isRunning()) {
                this.f1575j.cancel();
            }
            this.f1566a = i;
            this.f1567b = f;
            m1942b();
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT < 23 && this.f1572g != i) {
                requestLayout();
                this.f1572g = i;
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            boolean z;
            boolean z2;
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) == 1073741824 && TabLayout.this.f1554r == 1 && TabLayout.this.f1551o == 1) {
                int childCount = getChildCount();
                int i3 = 0;
                int i4 = 0;
                while (i3 < childCount) {
                    View childAt = getChildAt(i3);
                    i3++;
                    i4 = childAt.getVisibility() == 0 ? Math.max(i4, childAt.getMeasuredWidth()) : i4;
                }
                if (i4 > 0) {
                    if (i4 * childCount <= getMeasuredWidth() - (TabLayout.this.m1929b(16) * 2)) {
                        int i5 = 0;
                        z = false;
                        while (i5 < childCount) {
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                            if (layoutParams.width == i4 && layoutParams.weight == 0.0f) {
                                z2 = z;
                            } else {
                                layoutParams.width = i4;
                                layoutParams.weight = 0.0f;
                                z2 = true;
                            }
                            i5++;
                            z = z2;
                        }
                    } else {
                        TabLayout.this.f1551o = 0;
                        TabLayout.this.m1928a(false);
                        z = true;
                    }
                    if (z) {
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.f1575j != null && this.f1575j.isRunning()) {
                this.f1575j.cancel();
                m1948b(this.f1566a, Math.round(this.f1575j.getDuration() * (1.0f - this.f1575j.getAnimatedFraction())));
                return;
            }
            m1942b();
        }

        /* renamed from: b */
        private void m1942b() {
            int i;
            int i2;
            int i3;
            View childAt = getChildAt(this.f1566a);
            if (childAt != null && childAt.getWidth() > 0) {
                i2 = childAt.getLeft();
                i = childAt.getRight();
                if (!TabLayout.this.f1556t && (childAt instanceof C0265h)) {
                    m1941a((C0265h) childAt, TabLayout.this.f1561z);
                    i2 = (int) TabLayout.this.f1561z.left;
                    i = (int) TabLayout.this.f1561z.right;
                }
                if (this.f1567b > 0.0f && this.f1566a < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.f1566a + 1);
                    int left = childAt2.getLeft();
                    int right = childAt2.getRight();
                    if (TabLayout.this.f1556t || !(childAt2 instanceof C0265h)) {
                        i3 = right;
                    } else {
                        m1941a((C0265h) childAt2, TabLayout.this.f1561z);
                        int i4 = (int) TabLayout.this.f1561z.left;
                        i3 = (int) TabLayout.this.f1561z.right;
                        left = i4;
                    }
                    i2 = (int) ((i2 * (1.0f - this.f1567b)) + (this.f1567b * left));
                    i = (int) ((i3 * this.f1567b) + (i * (1.0f - this.f1567b)));
                }
            } else {
                i = -1;
                i2 = -1;
            }
            m1945a(i2, i);
        }

        /* renamed from: a */
        void m1945a(int i, int i2) {
            if (i != this.f1573h || i2 != this.f1574i) {
                this.f1573h = i;
                this.f1574i = i2;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* renamed from: b */
        void m1948b(int i, int i2) {
            if (this.f1575j != null && this.f1575j.isRunning()) {
                this.f1575j.cancel();
            }
            View childAt = getChildAt(i);
            if (childAt == null) {
                m1942b();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            if (!TabLayout.this.f1556t && (childAt instanceof C0265h)) {
                m1941a((C0265h) childAt, TabLayout.this.f1561z);
                left = (int) TabLayout.this.f1561z.left;
                right = (int) TabLayout.this.f1561z.right;
            }
            int i3 = this.f1573h;
            int i4 = this.f1574i;
            if (i3 != left || i4 != right) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.f1575j = valueAnimator;
                valueAnimator.setInterpolator(C0155a.f1038b);
                valueAnimator.setDuration(i2);
                valueAnimator.setFloatValues(0.0f, 1.0f);
                valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.TabLayout.e.1

                    /* renamed from: a */
                    final /* synthetic */ int f1576a;

                    /* renamed from: b */
                    final /* synthetic */ int f1577b;

                    /* renamed from: c */
                    final /* synthetic */ int f1578c;

                    /* renamed from: d */
                    final /* synthetic */ int f1579d;

                    AnonymousClass1(int i32, int left2, int i42, int right2) {
                        i3 = i32;
                        left = left2;
                        i4 = i42;
                        right = right2;
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        float animatedFraction = valueAnimator2.getAnimatedFraction();
                        C0262e.this.m1945a(C0155a.m1360a(i3, left, animatedFraction), C0155a.m1360a(i4, right, animatedFraction));
                    }
                });
                valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.TabLayout.e.2

                    /* renamed from: a */
                    final /* synthetic */ int f1581a;

                    AnonymousClass2(int i5) {
                        i = i5;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        C0262e.this.f1566a = i;
                        C0262e.this.f1567b = 0.0f;
                    }
                });
                valueAnimator.start();
            }
        }

        /* renamed from: android.support.design.widget.TabLayout$e$1 */
        class AnonymousClass1 implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a */
            final /* synthetic */ int f1576a;

            /* renamed from: b */
            final /* synthetic */ int f1577b;

            /* renamed from: c */
            final /* synthetic */ int f1578c;

            /* renamed from: d */
            final /* synthetic */ int f1579d;

            AnonymousClass1(int i32, int left2, int i42, int right2) {
                i3 = i32;
                left = left2;
                i4 = i42;
                right = right2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                float animatedFraction = valueAnimator2.getAnimatedFraction();
                C0262e.this.m1945a(C0155a.m1360a(i3, left, animatedFraction), C0155a.m1360a(i4, right, animatedFraction));
            }
        }

        /* renamed from: android.support.design.widget.TabLayout$e$2 */
        class AnonymousClass2 extends AnimatorListenerAdapter {

            /* renamed from: a */
            final /* synthetic */ int f1581a;

            AnonymousClass2(int i5) {
                i = i5;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C0262e.this.f1566a = i;
                C0262e.this.f1567b = 0.0f;
            }
        }

        /* renamed from: a */
        private void m1941a(C0265h c0265h, RectF rectF) {
            int m1975d = c0265h.m1975d();
            if (m1975d < TabLayout.this.m1929b(24)) {
                m1975d = TabLayout.this.m1929b(24);
            }
            int left = (c0265h.getLeft() + c0265h.getRight()) / 2;
            rectF.set(left - (m1975d / 2), 0.0f, (m1975d / 2) + left, 0.0f);
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            int i;
            int intrinsicHeight = TabLayout.this.f1545i != null ? TabLayout.this.f1545i.getIntrinsicHeight() : 0;
            if (this.f1569d >= 0) {
                intrinsicHeight = this.f1569d;
            }
            switch (TabLayout.this.f1553q) {
                case 0:
                    int height = getHeight() - intrinsicHeight;
                    intrinsicHeight = getHeight();
                    i = height;
                    break;
                case 1:
                    int height2 = (getHeight() - intrinsicHeight) / 2;
                    intrinsicHeight = (intrinsicHeight + getHeight()) / 2;
                    i = height2;
                    break;
                case 2:
                    i = 0;
                    break;
                case 3:
                    intrinsicHeight = getHeight();
                    i = 0;
                    break;
                default:
                    intrinsicHeight = 0;
                    i = 0;
                    break;
            }
            if (this.f1573h >= 0 && this.f1574i > this.f1573h) {
                Drawable wrap = DrawableCompat.wrap(TabLayout.this.f1545i != null ? TabLayout.this.f1545i : this.f1571f);
                wrap.setBounds(this.f1573h, i, this.f1574i, intrinsicHeight);
                if (this.f1570e != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        wrap.setColorFilter(this.f1570e.getColor(), PorterDuff.Mode.SRC_IN);
                    } else {
                        DrawableCompat.setTint(wrap, this.f1570e.getColor());
                    }
                }
                wrap.draw(canvas);
            }
            super.draw(canvas);
        }
    }

    /* renamed from: a */
    private static ColorStateList m1900a(int i, int i2) {
        return new ColorStateList(new int[][]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i2, i});
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        boolean z;
        int size = this.f1559x.size();
        int i = 0;
        while (true) {
            if (i < size) {
                C0263f c0263f = this.f1559x.get(i);
                if (c0263f == null || c0263f.m1956b() == null || TextUtils.isEmpty(c0263f.m1962d())) {
                    i++;
                } else {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        return (!z || this.f1555s) ? 48 : 72;
    }

    private int getTabMinWidth() {
        if (this.f1523B != -1) {
            return this.f1523B;
        }
        if (this.f1554r == 0) {
            return this.f1525D;
        }
        return 0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    int getTabMaxWidth() {
        return this.f1550n;
    }

    /* renamed from: android.support.design.widget.TabLayout$g */
    public static class C0264g implements ViewPager.OnPageChangeListener {

        /* renamed from: a */
        private final WeakReference<TabLayout> f1591a;

        /* renamed from: b */
        private int f1592b;

        /* renamed from: c */
        private int f1593c;

        public C0264g(TabLayout tabLayout) {
            this.f1591a = new WeakReference<>(tabLayout);
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.f1592b = this.f1593c;
            this.f1593c = i;
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = this.f1591a.get();
            if (tabLayout != null) {
                tabLayout.m1921a(i, f, this.f1593c != 2 || this.f1592b == 1, (this.f1593c == 2 && this.f1592b == 0) ? false : true);
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            TabLayout tabLayout = this.f1591a.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                tabLayout.m1932b(tabLayout.m1919a(i), this.f1593c == 0 || (this.f1593c == 2 && this.f1592b == 0));
            }
        }

        /* renamed from: a */
        void m1967a() {
            this.f1593c = 0;
            this.f1592b = 0;
        }
    }

    /* renamed from: android.support.design.widget.TabLayout$i */
    public static class C0266i implements InterfaceC0260c {

        /* renamed from: a */
        private final ViewPager f1603a;

        public C0266i(ViewPager viewPager) {
            this.f1603a = viewPager;
        }

        @Override // android.support.design.widget.TabLayout.InterfaceC0259b
        /* renamed from: a */
        public void mo1938a(C0263f c0263f) {
            this.f1603a.setCurrentItem(c0263f.m1959c());
        }

        @Override // android.support.design.widget.TabLayout.InterfaceC0259b
        /* renamed from: b */
        public void mo1939b(C0263f c0263f) {
        }

        @Override // android.support.design.widget.TabLayout.InterfaceC0259b
        /* renamed from: c */
        public void mo1940c(C0263f c0263f) {
        }
    }

    /* renamed from: android.support.design.widget.TabLayout$d */
    private class C0261d extends DataSetObserver {
        C0261d() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.m1936d();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.m1936d();
        }
    }

    /* renamed from: android.support.design.widget.TabLayout$a */
    private class C0258a implements ViewPager.OnAdapterChangeListener {

        /* renamed from: b */
        private boolean f1564b;

        C0258a() {
        }

        @Override // android.support.v4.view.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            if (TabLayout.this.f1558v == viewPager) {
                TabLayout.this.m1926a(pagerAdapter2, this.f1564b);
            }
        }

        /* renamed from: a */
        void m1937a(boolean z) {
            this.f1564b = z;
        }
    }
}
