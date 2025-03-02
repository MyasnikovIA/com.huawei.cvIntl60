package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.AttrRes;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.coordinatorlayout.R;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ObjectsCompat;
import android.support.v4.util.Pools;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.NestedScrollingParent2;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.widget.DirectedAcyclicGraph;
import android.support.v4.widget.ViewGroupUtils;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2 {

    /* renamed from: a */
    static final String f1425a;

    /* renamed from: b */
    static final Class<?>[] f1426b;

    /* renamed from: c */
    static final ThreadLocal<Map<String, Constructor<AbstractC0243b>>> f1427c;

    /* renamed from: d */
    static final Comparator<View> f1428d;

    /* renamed from: f */
    private static final Pools.Pool<Rect> f1429f;

    /* renamed from: e */
    ViewGroup.OnHierarchyChangeListener f1430e;

    /* renamed from: g */
    private final List<View> f1431g;

    /* renamed from: h */
    private final DirectedAcyclicGraph<View> f1432h;

    /* renamed from: i */
    private final List<View> f1433i;

    /* renamed from: j */
    private final List<View> f1434j;

    /* renamed from: k */
    private final int[] f1435k;

    /* renamed from: l */
    private Paint f1436l;

    /* renamed from: m */
    private boolean f1437m;

    /* renamed from: n */
    private boolean f1438n;

    /* renamed from: o */
    private int[] f1439o;

    /* renamed from: p */
    private View f1440p;

    /* renamed from: q */
    private View f1441q;

    /* renamed from: r */
    private ViewTreeObserverOnPreDrawListenerC0247f f1442r;

    /* renamed from: s */
    private boolean f1443s;

    /* renamed from: t */
    private WindowInsetsCompat f1444t;

    /* renamed from: u */
    private boolean f1445u;

    /* renamed from: v */
    private Drawable f1446v;

    /* renamed from: w */
    private OnApplyWindowInsetsListener f1447w;

    /* renamed from: x */
    private final NestedScrollingParentHelper f1448x;

    /* renamed from: android.support.design.widget.CoordinatorLayout$a */
    public interface InterfaceC0242a {
        @NonNull
        AbstractC0243b getBehavior();
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* renamed from: android.support.design.widget.CoordinatorLayout$c */
    public @interface InterfaceC0244c {
        /* renamed from: a */
        Class<? extends AbstractC0243b> m1830a();
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f1425a = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f1428d = new C0248g();
        } else {
            f1428d = null;
        }
        f1426b = new Class[]{Context.class, AttributeSet.class};
        f1427c = new ThreadLocal<>();
        f1429f = new Pools.SynchronizedPool(12);
    }

    @NonNull
    /* renamed from: e */
    private static Rect m1789e() {
        Rect acquire = f1429f.acquire();
        if (acquire == null) {
            return new Rect();
        }
        return acquire;
    }

    /* renamed from: a */
    private static void m1773a(@NonNull Rect rect) {
        rect.setEmpty();
        f1429f.release(rect);
    }

    public CoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coordinatorLayoutStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes;
        this.f1431g = new ArrayList();
        this.f1432h = new DirectedAcyclicGraph<>();
        this.f1433i = new ArrayList();
        this.f1434j = new ArrayList();
        this.f1435k = new int[2];
        this.f1448x = new NestedScrollingParentHelper(this);
        if (i == 0) {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, 0, R.style.Widget_Support_CoordinatorLayout);
        } else {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, i, 0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f1439o = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.f1439o.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f1439o[i2] = (int) (this.f1439o[i2] * f);
            }
        }
        this.f1446v = obtainStyledAttributes.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        m1793g();
        super.setOnHierarchyChangeListener(new ViewGroupOnHierarchyChangeListenerC0245d());
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1430e = onHierarchyChangeListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m1779a(false);
        if (this.f1443s) {
            if (this.f1442r == null) {
                this.f1442r = new ViewTreeObserverOnPreDrawListenerC0247f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1442r);
        }
        if (this.f1444t == null && ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.requestApplyInsets(this);
        }
        this.f1438n = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m1779a(false);
        if (this.f1443s && this.f1442r != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1442r);
        }
        if (this.f1441q != null) {
            onStopNestedScroll(this.f1441q);
        }
        this.f1438n = false;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        if (this.f1446v != drawable) {
            if (this.f1446v != null) {
                this.f1446v.setCallback(null);
            }
            this.f1446v = drawable != null ? drawable.mutate() : null;
            if (this.f1446v != null) {
                if (this.f1446v.isStateful()) {
                    this.f1446v.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f1446v, ViewCompat.getLayoutDirection(this));
                this.f1446v.setVisible(getVisibility() == 0, false);
                this.f1446v.setCallback(this);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.f1446v;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        boolean z = false;
        Drawable drawable = this.f1446v;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1446v;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.f1446v != null && this.f1446v.isVisible() != z) {
            this.f1446v.setVisible(z, false);
        }
    }

    public void setStatusBarBackgroundResource(@DrawableRes int i) {
        setStatusBarBackground(i != 0 ? ContextCompat.getDrawable(getContext(), i) : null);
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    /* renamed from: a */
    final WindowInsetsCompat m1797a(WindowInsetsCompat windowInsetsCompat) {
        if (!ObjectsCompat.equals(this.f1444t, windowInsetsCompat)) {
            this.f1444t = windowInsetsCompat;
            this.f1445u = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
            setWillNotDraw(!this.f1445u && getBackground() == null);
            WindowInsetsCompat m1782b = m1782b(windowInsetsCompat);
            requestLayout();
            return m1782b;
        }
        return windowInsetsCompat;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final WindowInsetsCompat getLastWindowInsets() {
        return this.f1444t;
    }

    /* renamed from: a */
    private void m1779a(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            AbstractC0243b m1842b = ((C0246e) childAt.getLayoutParams()).m1842b();
            if (m1842b != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    m1842b.mo1739b(this, (CoordinatorLayout) childAt, obtain);
                } else {
                    m1842b.mo1646a(this, (CoordinatorLayout) childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C0246e) getChildAt(i2).getLayoutParams()).m1848f();
        }
        this.f1440p = null;
        this.f1437m = false;
    }

    /* renamed from: a */
    private void m1778a(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        if (f1428d != null) {
            Collections.sort(list, f1428d);
        }
    }

    /* renamed from: a */
    private boolean m1780a(MotionEvent motionEvent, int i) {
        boolean z;
        MotionEvent motionEvent2;
        boolean z2;
        boolean z3 = false;
        boolean z4 = false;
        MotionEvent motionEvent3 = null;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f1433i;
        m1778a(list);
        int size = list.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                View view = list.get(i2);
                C0246e c0246e = (C0246e) view.getLayoutParams();
                AbstractC0243b m1842b = c0246e.m1842b();
                if ((z3 || z4) && actionMasked != 0) {
                    if (m1842b != null) {
                        if (motionEvent3 == null) {
                            long uptimeMillis = SystemClock.uptimeMillis();
                            motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                        } else {
                            motionEvent2 = motionEvent3;
                        }
                        switch (i) {
                            case 0:
                                m1842b.mo1739b(this, (CoordinatorLayout) view, motionEvent2);
                                break;
                            case 1:
                                m1842b.mo1646a(this, (CoordinatorLayout) view, motionEvent2);
                                break;
                        }
                        z2 = z4;
                        z = z3;
                    } else {
                        motionEvent2 = motionEvent3;
                        z2 = z4;
                        z = z3;
                    }
                } else {
                    if (!z3 && m1842b != null) {
                        switch (i) {
                            case 0:
                                z3 = m1842b.mo1739b(this, (CoordinatorLayout) view, motionEvent);
                                break;
                            case 1:
                                z3 = m1842b.mo1646a(this, (CoordinatorLayout) view, motionEvent);
                                break;
                        }
                        if (z3) {
                            this.f1440p = view;
                        }
                    }
                    z = z3;
                    boolean m1847e = c0246e.m1847e();
                    boolean m1840a = c0246e.m1840a(this, view);
                    z2 = m1840a && !m1847e;
                    if (!m1840a || z2) {
                        motionEvent2 = motionEvent3;
                    }
                }
                i2++;
                motionEvent3 = motionEvent2;
                z4 = z2;
                z3 = z;
            } else {
                z = z3;
            }
        }
        list.clear();
        return z;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m1779a(true);
        }
        boolean m1780a = m1780a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m1779a(true);
        }
        return m1780a;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            r11 = this;
            r4 = 3
            r10 = 1
            r5 = 0
            r7 = 0
            r2 = 0
            int r9 = r12.getActionMasked()
            android.view.View r0 = r11.f1440p
            if (r0 != 0) goto L5d
            boolean r0 = r11.m1780a(r12, r10)
            if (r0 == 0) goto L5a
            r1 = r0
        L14:
            android.view.View r0 = r11.f1440p
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            android.support.design.widget.CoordinatorLayout$e r0 = (android.support.design.widget.CoordinatorLayout.C0246e) r0
            android.support.design.widget.CoordinatorLayout$b r0 = r0.m1842b()
            if (r0 == 0) goto L58
            android.view.View r3 = r11.f1440p
            boolean r0 = r0.mo1646a(r11, r3, r12)
            r8 = r0
        L29:
            android.view.View r0 = r11.f1440p
            if (r0 != 0) goto L43
            boolean r0 = super.onTouchEvent(r12)
            r8 = r8 | r0
        L32:
            if (r8 != 0) goto L36
            if (r9 != 0) goto L36
        L36:
            if (r2 == 0) goto L3b
            r2.recycle()
        L3b:
            if (r9 == r10) goto L3f
            if (r9 != r4) goto L42
        L3f:
            r11.m1779a(r7)
        L42:
            return r8
        L43:
            if (r1 == 0) goto L32
            if (r2 != 0) goto L56
            long r0 = android.os.SystemClock.uptimeMillis()
            r2 = r0
            r6 = r5
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r0, r2, r4, r5, r6, r7)
        L51:
            super.onTouchEvent(r0)
            r2 = r0
            goto L32
        L56:
            r0 = r2
            goto L51
        L58:
            r8 = r7
            goto L29
        L5a:
            r1 = r0
            r8 = r7
            goto L29
        L5d:
            r1 = r7
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.f1437m) {
            m1779a(false);
            this.f1437m = true;
        }
    }

    /* renamed from: b */
    private int m1781b(int i) {
        if (this.f1439o == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        }
        if (i < 0 || i >= this.f1439o.length) {
            Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
            return 0;
        }
        return this.f1439o[i];
    }

    /* renamed from: a */
    static AbstractC0243b m1772a(Context context, AttributeSet attributeSet, String str) {
        Map map;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(f1425a)) {
            str = f1425a + '.' + str;
        }
        try {
            Map<String, Constructor<AbstractC0243b>> map2 = f1427c.get();
            if (map2 == null) {
                HashMap hashMap = new HashMap();
                f1427c.set(hashMap);
                map = hashMap;
            } else {
                map = map2;
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = context.getClassLoader().loadClass(str).getConstructor(f1426b);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (AbstractC0243b) constructor.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    C0246e m1795a(View view) {
        C0246e c0246e = (C0246e) view.getLayoutParams();
        if (!c0246e.f1453b) {
            if (view instanceof InterfaceC0242a) {
                AbstractC0243b behavior = ((InterfaceC0242a) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                c0246e.m1838a(behavior);
                c0246e.f1453b = true;
            } else {
                InterfaceC0244c interfaceC0244c = null;
                for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    interfaceC0244c = (InterfaceC0244c) cls.getAnnotation(InterfaceC0244c.class);
                    if (interfaceC0244c != null) {
                        break;
                    }
                }
                InterfaceC0244c interfaceC0244c2 = interfaceC0244c;
                if (interfaceC0244c2 != null) {
                    try {
                        c0246e.m1838a(interfaceC0244c2.m1830a().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e("CoordinatorLayout", "Default behavior class " + interfaceC0244c2.m1830a().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
                c0246e.f1453b = true;
            }
        }
        return c0246e;
    }

    /* renamed from: f */
    private void m1792f() {
        this.f1431g.clear();
        this.f1432h.clear();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C0246e m1795a = m1795a(childAt);
            m1795a.m1843b(this, childAt);
            this.f1432h.addNode(childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (m1795a.m1841a(this, childAt, childAt2)) {
                        if (!this.f1432h.contains(childAt2)) {
                            this.f1432h.addNode(childAt2);
                        }
                        this.f1432h.addEdge(childAt2, childAt);
                    }
                }
            }
        }
        this.f1431g.addAll(this.f1432h.getSortedList());
        Collections.reverse(this.f1431g);
    }

    /* renamed from: a */
    void m1803a(View view, Rect rect) {
        ViewGroupUtils.getDescendantRect(this, view, rect);
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    /* renamed from: a */
    public void m1801a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int max;
        int combineMeasuredStates;
        int i5;
        m1792f();
        m1798a();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        boolean z = layoutDirection == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i6 = paddingLeft + paddingRight;
        int i7 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        int i8 = 0;
        boolean z2 = this.f1444t != null && ViewCompat.getFitsSystemWindows(this);
        int size3 = this.f1431g.size();
        int i9 = 0;
        while (i9 < size3) {
            View view = this.f1431g.get(i9);
            if (view.getVisibility() == 8) {
                combineMeasuredStates = i8;
                max = suggestedMinimumHeight;
                i5 = suggestedMinimumWidth;
            } else {
                C0246e c0246e = (C0246e) view.getLayoutParams();
                int i10 = 0;
                if (c0246e.f1456e >= 0 && mode != 0) {
                    int m1781b = m1781b(c0246e.f1456e);
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(m1786d(c0246e.f1454c), layoutDirection) & 7;
                    if ((absoluteGravity == 3 && !z) || (absoluteGravity == 5 && z)) {
                        i10 = Math.max(0, (size - paddingRight) - m1781b);
                    } else if ((absoluteGravity == 5 && !z) || (absoluteGravity == 3 && z)) {
                        i10 = Math.max(0, m1781b - paddingLeft);
                    }
                }
                if (!z2 || ViewCompat.getFitsSystemWindows(view)) {
                    i3 = i2;
                    i4 = i;
                } else {
                    int systemWindowInsetLeft = this.f1444t.getSystemWindowInsetLeft() + this.f1444t.getSystemWindowInsetRight();
                    int systemWindowInsetTop = this.f1444t.getSystemWindowInsetTop() + this.f1444t.getSystemWindowInsetBottom();
                    i4 = View.MeasureSpec.makeMeasureSpec(size - systemWindowInsetLeft, mode);
                    i3 = View.MeasureSpec.makeMeasureSpec(size2 - systemWindowInsetTop, mode2);
                }
                AbstractC0243b m1842b = c0246e.m1842b();
                if (m1842b == null || !m1842b.mo1693a(this, (CoordinatorLayout) view, i4, i10, i3, 0)) {
                    m1801a(view, i4, i10, i3, 0);
                }
                int max2 = Math.max(suggestedMinimumWidth, view.getMeasuredWidth() + i6 + c0246e.leftMargin + c0246e.rightMargin);
                max = Math.max(suggestedMinimumHeight, view.getMeasuredHeight() + i7 + c0246e.topMargin + c0246e.bottomMargin);
                combineMeasuredStates = View.combineMeasuredStates(i8, view.getMeasuredState());
                i5 = max2;
            }
            i9++;
            i8 = combineMeasuredStates;
            suggestedMinimumHeight = max;
            suggestedMinimumWidth = i5;
        }
        setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i, (-16777216) & i8), View.resolveSizeAndState(suggestedMinimumHeight, i2, i8 << 16));
    }

    /* renamed from: b */
    private WindowInsetsCompat m1782b(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2;
        AbstractC0243b m1842b;
        if (!windowInsetsCompat.isConsumed()) {
            int childCount = getChildCount();
            int i = 0;
            WindowInsetsCompat windowInsetsCompat3 = windowInsetsCompat;
            while (true) {
                if (i >= childCount) {
                    windowInsetsCompat2 = windowInsetsCompat3;
                    break;
                }
                View childAt = getChildAt(i);
                if (!ViewCompat.getFitsSystemWindows(childAt) || (m1842b = ((C0246e) childAt.getLayoutParams()).m1842b()) == null) {
                    windowInsetsCompat2 = windowInsetsCompat3;
                } else {
                    windowInsetsCompat2 = m1842b.m1818a(this, (CoordinatorLayout) childAt, windowInsetsCompat3);
                    if (windowInsetsCompat2.isConsumed()) {
                        break;
                    }
                }
                i++;
                windowInsetsCompat3 = windowInsetsCompat2;
            }
            return windowInsetsCompat2;
        }
        return windowInsetsCompat;
    }

    /* renamed from: a */
    public void m1800a(@NonNull View view, int i) {
        C0246e c0246e = (C0246e) view.getLayoutParams();
        if (c0246e.m1846d()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        if (c0246e.f1462k != null) {
            m1777a(view, c0246e.f1462k, i);
        } else if (c0246e.f1456e >= 0) {
            m1783b(view, c0246e.f1456e, i);
        } else {
            m1785c(view, i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AbstractC0243b m1842b;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.f1431g.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.f1431g.get(i5);
            if (view.getVisibility() != 8 && ((m1842b = ((C0246e) view.getLayoutParams()).m1842b()) == null || !m1842b.mo1418a(this, (CoordinatorLayout) view, layoutDirection))) {
                m1800a(view, layoutDirection);
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f1445u && this.f1446v != null) {
            int systemWindowInsetTop = this.f1444t != null ? this.f1444t.getSystemWindowInsetTop() : 0;
            if (systemWindowInsetTop > 0) {
                this.f1446v.setBounds(0, 0, getWidth(), systemWindowInsetTop);
                this.f1446v.draw(canvas);
            }
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m1793g();
    }

    /* renamed from: b */
    void m1809b(View view, Rect rect) {
        ((C0246e) view.getLayoutParams()).m1837a(rect);
    }

    /* renamed from: c */
    void m1812c(View view, Rect rect) {
        rect.set(((C0246e) view.getLayoutParams()).m1845c());
    }

    /* renamed from: a */
    void m1804a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m1803a(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* renamed from: a */
    private void m1775a(View view, int i, Rect rect, Rect rect2, C0246e c0246e, int i2, int i3) {
        int width;
        int height;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(m1788e(c0246e.f1454c), i);
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(m1784c(c0246e.f1455d), i);
        int i4 = absoluteGravity & 7;
        int i5 = absoluteGravity & 112;
        int i6 = absoluteGravity2 & 112;
        switch (absoluteGravity2 & 7) {
            case 1:
                width = (rect.width() / 2) + rect.left;
                break;
            case 5:
                width = rect.right;
                break;
            default:
                width = rect.left;
                break;
        }
        switch (i6) {
            case 16:
                height = rect.top + (rect.height() / 2);
                break;
            case 80:
                height = rect.bottom;
                break;
            default:
                height = rect.top;
                break;
        }
        switch (i4) {
            case 1:
                width -= i2 / 2;
                break;
            case 5:
                break;
            default:
                width -= i2;
                break;
        }
        switch (i5) {
            case 16:
                height -= i3 / 2;
                break;
            case 80:
                break;
            default:
                height -= i3;
                break;
        }
        rect2.set(width, height, width + i2, height + i3);
    }

    /* renamed from: a */
    private void m1774a(C0246e c0246e, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + c0246e.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - c0246e.rightMargin));
        int max2 = Math.max(getPaddingTop() + c0246e.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - c0246e.bottomMargin));
        rect.set(max, max2, max + i, max2 + i2);
    }

    /* renamed from: a */
    void m1802a(View view, int i, Rect rect, Rect rect2) {
        C0246e c0246e = (C0246e) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        m1775a(view, i, rect, rect2, c0246e, measuredWidth, measuredHeight);
        m1774a(c0246e, rect2, measuredWidth, measuredHeight);
    }

    /* renamed from: a */
    private void m1777a(View view, View view2, int i) {
        Rect m1789e = m1789e();
        Rect m1789e2 = m1789e();
        try {
            m1803a(view2, m1789e);
            m1802a(view, i, m1789e, m1789e2);
            view.layout(m1789e2.left, m1789e2.top, m1789e2.right, m1789e2.bottom);
        } finally {
            m1773a(m1789e);
            m1773a(m1789e2);
        }
    }

    /* renamed from: b */
    private void m1783b(View view, int i, int i2) {
        C0246e c0246e = (C0246e) view.getLayoutParams();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(m1786d(c0246e.f1454c), i2);
        int i3 = absoluteGravity & 7;
        int i4 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i2 == 1) {
            i = width - i;
        }
        int m1781b = m1781b(i) - measuredWidth;
        int i5 = 0;
        switch (i3) {
            case 1:
                m1781b += measuredWidth / 2;
                break;
            case 5:
                m1781b += measuredWidth;
                break;
        }
        switch (i4) {
            case 16:
                i5 = 0 + (measuredHeight / 2);
                break;
            case 80:
                i5 = 0 + measuredHeight;
                break;
        }
        int max = Math.max(getPaddingLeft() + c0246e.leftMargin, Math.min(m1781b, ((width - getPaddingRight()) - measuredWidth) - c0246e.rightMargin));
        int max2 = Math.max(getPaddingTop() + c0246e.topMargin, Math.min(i5, ((height - getPaddingBottom()) - measuredHeight) - c0246e.bottomMargin));
        view.layout(max, max2, max + measuredWidth, max2 + measuredHeight);
    }

    /* renamed from: c */
    private void m1785c(View view, int i) {
        C0246e c0246e = (C0246e) view.getLayoutParams();
        Rect m1789e = m1789e();
        m1789e.set(getPaddingLeft() + c0246e.leftMargin, getPaddingTop() + c0246e.topMargin, (getWidth() - getPaddingRight()) - c0246e.rightMargin, (getHeight() - getPaddingBottom()) - c0246e.bottomMargin);
        if (this.f1444t != null && ViewCompat.getFitsSystemWindows(this) && !ViewCompat.getFitsSystemWindows(view)) {
            m1789e.left += this.f1444t.getSystemWindowInsetLeft();
            m1789e.top += this.f1444t.getSystemWindowInsetTop();
            m1789e.right -= this.f1444t.getSystemWindowInsetRight();
            m1789e.bottom -= this.f1444t.getSystemWindowInsetBottom();
        }
        Rect m1789e2 = m1789e();
        GravityCompat.apply(m1784c(c0246e.f1454c), view.getMeasuredWidth(), view.getMeasuredHeight(), m1789e, m1789e2, i);
        view.layout(m1789e2.left, m1789e2.top, m1789e2.right, m1789e2.bottom);
        m1773a(m1789e);
        m1773a(m1789e2);
    }

    /* renamed from: c */
    private static int m1784c(int i) {
        int i2 = (i & 7) == 0 ? 8388611 | i : i;
        if ((i2 & 112) == 0) {
            return i2 | 48;
        }
        return i2;
    }

    /* renamed from: d */
    private static int m1786d(int i) {
        if (i == 0) {
            return 8388661;
        }
        return i;
    }

    /* renamed from: e */
    private static int m1788e(int i) {
        if (i == 0) {
            return 17;
        }
        return i;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        C0246e c0246e = (C0246e) view.getLayoutParams();
        if (c0246e.f1452a != null) {
            float m1827d = c0246e.f1452a.m1827d(this, view);
            if (m1827d > 0.0f) {
                if (this.f1436l == null) {
                    this.f1436l = new Paint();
                }
                this.f1436l.setColor(c0246e.f1452a.m1824c(this, view));
                this.f1436l.setAlpha(m1771a(Math.round(m1827d * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f1436l);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    /* renamed from: a */
    private static int m1771a(int i, int i2, int i3) {
        if (i < i2) {
            return i2;
        }
        return i > i3 ? i3 : i;
    }

    /* renamed from: a */
    final void m1799a(int i) {
        boolean z;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.f1431g.size();
        Rect m1789e = m1789e();
        Rect m1789e2 = m1789e();
        Rect m1789e3 = m1789e();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f1431g.get(i2);
            C0246e c0246e = (C0246e) view.getLayoutParams();
            if (i != 0 || view.getVisibility() != 8) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (c0246e.f1463l == this.f1431g.get(i3)) {
                        m1808b(view, layoutDirection);
                    }
                }
                m1804a(view, true, m1789e2);
                if (c0246e.f1458g != 0 && !m1789e2.isEmpty()) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(c0246e.f1458g, layoutDirection);
                    switch (absoluteGravity & 112) {
                        case 48:
                            m1789e.top = Math.max(m1789e.top, m1789e2.bottom);
                            break;
                        case 80:
                            m1789e.bottom = Math.max(m1789e.bottom, getHeight() - m1789e2.top);
                            break;
                    }
                    switch (absoluteGravity & 7) {
                        case 3:
                            m1789e.left = Math.max(m1789e.left, m1789e2.right);
                            break;
                        case 5:
                            m1789e.right = Math.max(m1789e.right, getWidth() - m1789e2.left);
                            break;
                    }
                }
                if (c0246e.f1459h != 0 && view.getVisibility() == 0) {
                    m1776a(view, m1789e, layoutDirection);
                }
                if (i != 2) {
                    m1812c(view, m1789e3);
                    if (!m1789e3.equals(m1789e2)) {
                        m1809b(view, m1789e2);
                    }
                }
                for (int i4 = i2 + 1; i4 < size; i4++) {
                    View view2 = this.f1431g.get(i4);
                    C0246e c0246e2 = (C0246e) view2.getLayoutParams();
                    AbstractC0243b m1842b = c0246e2.m1842b();
                    if (m1842b != null && m1842b.mo1620a(this, (CoordinatorLayout) view2, view)) {
                        if (i == 0 && c0246e2.m1849g()) {
                            c0246e2.m1850h();
                        } else {
                            switch (i) {
                                case 2:
                                    m1842b.m1826c(this, view2, view);
                                    z = true;
                                    break;
                                default:
                                    z = m1842b.mo1622b(this, (CoordinatorLayout) view2, view);
                                    break;
                            }
                            if (i == 1) {
                                c0246e2.m1839a(z);
                            }
                        }
                    }
                }
            }
        }
        m1773a(m1789e);
        m1773a(m1789e2);
        m1773a(m1789e3);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00ff  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m1776a(android.view.View r11, android.graphics.Rect r12, int r13) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.m1776a(android.view.View, android.graphics.Rect, int):void");
    }

    /* renamed from: d */
    private void m1787d(View view, int i) {
        C0246e c0246e = (C0246e) view.getLayoutParams();
        if (c0246e.f1460i != i) {
            ViewCompat.offsetLeftAndRight(view, i - c0246e.f1460i);
            c0246e.f1460i = i;
        }
    }

    /* renamed from: e */
    private void m1790e(View view, int i) {
        C0246e c0246e = (C0246e) view.getLayoutParams();
        if (c0246e.f1461j != i) {
            ViewCompat.offsetTopAndBottom(view, i - c0246e.f1461j);
            c0246e.f1461j = i;
        }
    }

    /* renamed from: b */
    public void m1807b(@NonNull View view) {
        List incomingEdges = this.f1432h.getIncomingEdges(view);
        if (incomingEdges != null && !incomingEdges.isEmpty()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < incomingEdges.size()) {
                    View view2 = (View) incomingEdges.get(i2);
                    AbstractC0243b m1842b = ((C0246e) view2.getLayoutParams()).m1842b();
                    if (m1842b != null) {
                        m1842b.mo1622b(this, (CoordinatorLayout) view2, view);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    @NonNull
    /* renamed from: c */
    public List<View> m1810c(@NonNull View view) {
        List<View> outgoingEdges = this.f1432h.getOutgoingEdges(view);
        this.f1434j.clear();
        if (outgoingEdges != null) {
            this.f1434j.addAll(outgoingEdges);
        }
        return this.f1434j;
    }

    @NonNull
    /* renamed from: d */
    public List<View> m1814d(@NonNull View view) {
        List incomingEdges = this.f1432h.getIncomingEdges(view);
        this.f1434j.clear();
        if (incomingEdges != null) {
            this.f1434j.addAll(incomingEdges);
        }
        return this.f1434j;
    }

    @VisibleForTesting
    final List<View> getDependencySortedChildren() {
        m1792f();
        return Collections.unmodifiableList(this.f1431g);
    }

    /* renamed from: a */
    void m1798a() {
        boolean z = false;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (!m1791e(getChildAt(i))) {
                i++;
            } else {
                z = true;
                break;
            }
        }
        if (z != this.f1443s) {
            if (z) {
                m1806b();
            } else {
                m1811c();
            }
        }
    }

    /* renamed from: e */
    private boolean m1791e(View view) {
        return this.f1432h.hasOutgoingEdges(view);
    }

    /* renamed from: b */
    void m1806b() {
        if (this.f1438n) {
            if (this.f1442r == null) {
                this.f1442r = new ViewTreeObserverOnPreDrawListenerC0247f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1442r);
        }
        this.f1443s = true;
    }

    /* renamed from: c */
    void m1811c() {
        if (this.f1438n && this.f1442r != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1442r);
        }
        this.f1443s = false;
    }

    /* renamed from: b */
    void m1808b(View view, int i) {
        AbstractC0243b m1842b;
        C0246e c0246e = (C0246e) view.getLayoutParams();
        if (c0246e.f1462k != null) {
            Rect m1789e = m1789e();
            Rect m1789e2 = m1789e();
            Rect m1789e3 = m1789e();
            m1803a(c0246e.f1462k, m1789e);
            m1804a(view, false, m1789e2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            m1775a(view, i, m1789e, m1789e3, c0246e, measuredWidth, measuredHeight);
            boolean z = (m1789e3.left == m1789e2.left && m1789e3.top == m1789e2.top) ? false : true;
            m1774a(c0246e, m1789e3, measuredWidth, measuredHeight);
            int i2 = m1789e3.left - m1789e2.left;
            int i3 = m1789e3.top - m1789e2.top;
            if (i2 != 0) {
                ViewCompat.offsetLeftAndRight(view, i2);
            }
            if (i3 != 0) {
                ViewCompat.offsetTopAndBottom(view, i3);
            }
            if (z && (m1842b = c0246e.m1842b()) != null) {
                m1842b.mo1622b(this, (CoordinatorLayout) view, c0246e.f1462k);
            }
            m1773a(m1789e);
            m1773a(m1789e2);
            m1773a(m1789e3);
        }
    }

    /* renamed from: a */
    public boolean m1805a(@NonNull View view, int i, int i2) {
        Rect m1789e = m1789e();
        m1803a(view, m1789e);
        try {
            return m1789e.contains(i, i2);
        } finally {
            m1773a(m1789e);
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: a */
    public C0246e generateLayoutParams(AttributeSet attributeSet) {
        return new C0246e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: a */
    public C0246e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C0246e) {
            return new C0246e((C0246e) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new C0246e((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new C0246e(layoutParams);
    }

    @Override // android.view.ViewGroup
    /* renamed from: d */
    public C0246e generateDefaultLayoutParams() {
        return new C0246e(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0246e) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return onStartNestedScroll(view, view2, i, 0);
    }

    @Override // android.support.v4.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        boolean z;
        boolean z2 = false;
        int childCount = getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 8) {
                z = z2;
            } else {
                C0246e c0246e = (C0246e) childAt.getLayoutParams();
                AbstractC0243b m1842b = c0246e.m1842b();
                if (m1842b != null) {
                    boolean mo1449a = m1842b.mo1449a(this, (CoordinatorLayout) childAt, view, view2, i, i2);
                    z = z2 | mo1449a;
                    c0246e.m1836a(i2, mo1449a);
                } else {
                    c0246e.m1836a(i2, false);
                    z = z2;
                }
            }
            i3++;
            z2 = z;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        onNestedScrollAccepted(view, view2, i, 0);
    }

    @Override // android.support.v4.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        AbstractC0243b m1842b;
        this.f1448x.onNestedScrollAccepted(view, view2, i, i2);
        this.f1441q = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C0246e c0246e = (C0246e) childAt.getLayoutParams();
            if (c0246e.m1844b(i2) && (m1842b = c0246e.m1842b()) != null) {
                m1842b.m1823b(this, childAt, view, view2, i, i2);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // android.support.v4.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i) {
        this.f1448x.onStopNestedScroll(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C0246e c0246e = (C0246e) childAt.getLayoutParams();
            if (c0246e.m1844b(i)) {
                AbstractC0243b m1842b = c0246e.m1842b();
                if (m1842b != null) {
                    m1842b.mo1686a(this, (CoordinatorLayout) childAt, view, i);
                }
                c0246e.m1835a(i);
                c0246e.m1850h();
            }
        }
        this.f1441q = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        onNestedScroll(view, i, i2, i3, i4, 0);
    }

    @Override // android.support.v4.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        boolean z;
        int childCount = getChildCount();
        boolean z2 = false;
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 8) {
                z = z2;
            } else {
                C0246e c0246e = (C0246e) childAt.getLayoutParams();
                if (c0246e.m1844b(i5)) {
                    AbstractC0243b m1842b = c0246e.m1842b();
                    if (m1842b != null) {
                        m1842b.mo1687a(this, childAt, view, i, i2, i3, i4, i5);
                        z = true;
                    } else {
                        z = z2;
                    }
                } else {
                    z = z2;
                }
            }
            i6++;
            z2 = z;
        }
        if (z2) {
            m1799a(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        onNestedPreScroll(view, i, i2, iArr, 0);
    }

    @Override // android.support.v4.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        int i4;
        int i5;
        int i6 = 0;
        int i7 = 0;
        boolean z = false;
        int childCount = getChildCount();
        int i8 = 0;
        while (i8 < childCount) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() == 8) {
                i4 = i7;
                i5 = i6;
            } else {
                C0246e c0246e = (C0246e) childAt.getLayoutParams();
                if (c0246e.m1844b(i3)) {
                    AbstractC0243b m1842b = c0246e.m1842b();
                    if (m1842b != null) {
                        int[] iArr2 = this.f1435k;
                        this.f1435k[1] = 0;
                        iArr2[0] = 0;
                        m1842b.mo1688a(this, (CoordinatorLayout) childAt, view, i, i2, this.f1435k, i3);
                        i5 = i > 0 ? Math.max(i6, this.f1435k[0]) : Math.min(i6, this.f1435k[0]);
                        i4 = i2 > 0 ? Math.max(i7, this.f1435k[1]) : Math.min(i7, this.f1435k[1]);
                        z = true;
                    } else {
                        i4 = i7;
                        i5 = i6;
                    }
                } else {
                    i4 = i7;
                    i5 = i6;
                }
            }
            i8++;
            i7 = i4;
            i6 = i5;
        }
        iArr[0] = i6;
        iArr[1] = i7;
        if (z) {
            m1799a(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean m1821a;
        int childCount = getChildCount();
        int i = 0;
        boolean z2 = false;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                m1821a = z2;
            } else {
                C0246e c0246e = (C0246e) childAt.getLayoutParams();
                if (c0246e.m1844b(0)) {
                    AbstractC0243b m1842b = c0246e.m1842b();
                    m1821a = m1842b != null ? m1842b.m1821a(this, (CoordinatorLayout) childAt, view, f, f2, z) | z2 : z2;
                } else {
                    m1821a = z2;
                }
            }
            i++;
            z2 = m1821a;
        }
        if (z2) {
            m1799a(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        boolean mo1760a;
        int childCount = getChildCount();
        int i = 0;
        boolean z = false;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                mo1760a = z;
            } else {
                C0246e c0246e = (C0246e) childAt.getLayoutParams();
                if (c0246e.m1844b(0)) {
                    AbstractC0243b m1842b = c0246e.m1842b();
                    mo1760a = m1842b != null ? m1842b.mo1760a(this, (CoordinatorLayout) childAt, view, f, f2) | z : z;
                } else {
                    mo1760a = z;
                }
            }
            i++;
            z = mo1760a;
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.support.v4.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f1448x.getNestedScrollAxes();
    }

    /* renamed from: android.support.design.widget.CoordinatorLayout$f */
    class ViewTreeObserverOnPreDrawListenerC0247f implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserverOnPreDrawListenerC0247f() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.m1799a(0);
            return true;
        }
    }

    /* renamed from: android.support.design.widget.CoordinatorLayout$g */
    static class C0248g implements Comparator<View> {
        C0248g() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(View view, View view2) {
            float z = ViewCompat.getZ(view);
            float z2 = ViewCompat.getZ(view2);
            if (z > z2) {
                return -1;
            }
            if (z < z2) {
                return 1;
            }
            return 0;
        }
    }

    /* renamed from: android.support.design.widget.CoordinatorLayout$b */
    public static abstract class AbstractC0243b<V extends View> {
        public AbstractC0243b() {
        }

        public AbstractC0243b(Context context, AttributeSet attributeSet) {
        }

        /* renamed from: a */
        public void mo1644a(@NonNull C0246e c0246e) {
        }

        /* renamed from: c */
        public void m1825c() {
        }

        /* renamed from: b */
        public boolean mo1739b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: a */
        public boolean mo1646a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
            return false;
        }

        @ColorInt
        /* renamed from: c */
        public int m1824c(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return ViewCompat.MEASURED_STATE_MASK;
        }

        @FloatRange(from = 0.0d, m1353to = 1.0d)
        /* renamed from: d */
        public float m1827d(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return 0.0f;
        }

        /* renamed from: e */
        public boolean m1829e(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return m1827d(coordinatorLayout, v) > 0.0f;
        }

        /* renamed from: a */
        public boolean mo1620a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
            return false;
        }

        /* renamed from: b */
        public boolean mo1622b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
            return false;
        }

        /* renamed from: c */
        public void m1826c(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
        }

        /* renamed from: a */
        public boolean mo1693a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i, int i2, int i3, int i4) {
            return false;
        }

        /* renamed from: a */
        public boolean mo1418a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
            return false;
        }

        @Deprecated
        /* renamed from: a */
        public boolean mo1419a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i) {
            return false;
        }

        /* renamed from: a */
        public boolean mo1449a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
            if (i2 == 0) {
                return mo1419a(coordinatorLayout, (CoordinatorLayout) v, view, view2, i);
            }
            return false;
        }

        @Deprecated
        /* renamed from: b */
        public void m1822b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i) {
        }

        /* renamed from: b */
        public void m1823b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
            if (i2 == 0) {
                m1822b(coordinatorLayout, v, view, view2, i);
            }
        }

        @Deprecated
        /* renamed from: d */
        public void m1828d(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
        }

        /* renamed from: a */
        public void mo1686a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i) {
            if (i == 0) {
                m1828d(coordinatorLayout, v, view);
            }
        }

        @Deprecated
        /* renamed from: a */
        public void mo1416a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4) {
        }

        /* renamed from: a */
        public void mo1687a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                mo1416a(coordinatorLayout, (CoordinatorLayout) v, view, i, i2, i3, i4);
            }
        }

        @Deprecated
        /* renamed from: a */
        public void m1819a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr) {
        }

        /* renamed from: a */
        public void mo1688a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
            if (i3 == 0) {
                m1819a(coordinatorLayout, (CoordinatorLayout) v, view, i, i2, iArr);
            }
        }

        /* renamed from: a */
        public boolean m1821a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2, boolean z) {
            return false;
        }

        /* renamed from: a */
        public boolean mo1760a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2) {
            return false;
        }

        @NonNull
        /* renamed from: a */
        public WindowInsetsCompat m1818a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        /* renamed from: a */
        public boolean mo1711a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect, boolean z) {
            return false;
        }

        /* renamed from: a */
        public void mo1685a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Parcelable parcelable) {
        }

        @Nullable
        /* renamed from: b */
        public Parcelable mo1697b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        /* renamed from: a */
        public boolean mo1820a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect) {
            return false;
        }
    }

    /* renamed from: android.support.design.widget.CoordinatorLayout$e */
    public static class C0246e extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        AbstractC0243b f1452a;

        /* renamed from: b */
        boolean f1453b;

        /* renamed from: c */
        public int f1454c;

        /* renamed from: d */
        public int f1455d;

        /* renamed from: e */
        public int f1456e;

        /* renamed from: f */
        int f1457f;

        /* renamed from: g */
        public int f1458g;

        /* renamed from: h */
        public int f1459h;

        /* renamed from: i */
        int f1460i;

        /* renamed from: j */
        int f1461j;

        /* renamed from: k */
        View f1462k;

        /* renamed from: l */
        View f1463l;

        /* renamed from: m */
        final Rect f1464m;

        /* renamed from: n */
        Object f1465n;

        /* renamed from: o */
        private boolean f1466o;

        /* renamed from: p */
        private boolean f1467p;

        /* renamed from: q */
        private boolean f1468q;

        /* renamed from: r */
        private boolean f1469r;

        public C0246e(int i, int i2) {
            super(i, i2);
            this.f1453b = false;
            this.f1454c = 0;
            this.f1455d = 0;
            this.f1456e = -1;
            this.f1457f = -1;
            this.f1458g = 0;
            this.f1459h = 0;
            this.f1464m = new Rect();
        }

        C0246e(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1453b = false;
            this.f1454c = 0;
            this.f1455d = 0;
            this.f1456e = -1;
            this.f1457f = -1;
            this.f1458g = 0;
            this.f1459h = 0;
            this.f1464m = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout_Layout);
            this.f1454c = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f1457f = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1455d = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f1456e = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f1458g = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f1459h = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.f1453b = obtainStyledAttributes.hasValue(R.styleable.CoordinatorLayout_Layout_layout_behavior);
            if (this.f1453b) {
                this.f1452a = CoordinatorLayout.m1772a(context, attributeSet, obtainStyledAttributes.getString(R.styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            if (this.f1452a != null) {
                this.f1452a.mo1644a(this);
            }
        }

        public C0246e(C0246e c0246e) {
            super((ViewGroup.MarginLayoutParams) c0246e);
            this.f1453b = false;
            this.f1454c = 0;
            this.f1455d = 0;
            this.f1456e = -1;
            this.f1457f = -1;
            this.f1458g = 0;
            this.f1459h = 0;
            this.f1464m = new Rect();
        }

        public C0246e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1453b = false;
            this.f1454c = 0;
            this.f1455d = 0;
            this.f1456e = -1;
            this.f1457f = -1;
            this.f1458g = 0;
            this.f1459h = 0;
            this.f1464m = new Rect();
        }

        public C0246e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1453b = false;
            this.f1454c = 0;
            this.f1455d = 0;
            this.f1456e = -1;
            this.f1457f = -1;
            this.f1458g = 0;
            this.f1459h = 0;
            this.f1464m = new Rect();
        }

        @IdRes
        /* renamed from: a */
        public int m1834a() {
            return this.f1457f;
        }

        @Nullable
        /* renamed from: b */
        public AbstractC0243b m1842b() {
            return this.f1452a;
        }

        /* renamed from: a */
        public void m1838a(@Nullable AbstractC0243b abstractC0243b) {
            if (this.f1452a != abstractC0243b) {
                if (this.f1452a != null) {
                    this.f1452a.m1825c();
                }
                this.f1452a = abstractC0243b;
                this.f1465n = null;
                this.f1453b = true;
                if (abstractC0243b != null) {
                    abstractC0243b.mo1644a(this);
                }
            }
        }

        /* renamed from: a */
        void m1837a(Rect rect) {
            this.f1464m.set(rect);
        }

        /* renamed from: c */
        Rect m1845c() {
            return this.f1464m;
        }

        /* renamed from: d */
        boolean m1846d() {
            return this.f1462k == null && this.f1457f != -1;
        }

        /* renamed from: e */
        boolean m1847e() {
            if (this.f1452a == null) {
                this.f1466o = false;
            }
            return this.f1466o;
        }

        /* renamed from: a */
        boolean m1840a(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f1466o) {
                return true;
            }
            boolean m1829e = (this.f1452a != null ? this.f1452a.m1829e(coordinatorLayout, view) : false) | this.f1466o;
            this.f1466o = m1829e;
            return m1829e;
        }

        /* renamed from: f */
        void m1848f() {
            this.f1466o = false;
        }

        /* renamed from: a */
        void m1835a(int i) {
            m1836a(i, false);
        }

        /* renamed from: a */
        void m1836a(int i, boolean z) {
            switch (i) {
                case 0:
                    this.f1467p = z;
                    break;
                case 1:
                    this.f1468q = z;
                    break;
            }
        }

        /* renamed from: b */
        boolean m1844b(int i) {
            switch (i) {
                case 0:
                    return this.f1467p;
                case 1:
                    return this.f1468q;
                default:
                    return false;
            }
        }

        /* renamed from: g */
        boolean m1849g() {
            return this.f1469r;
        }

        /* renamed from: a */
        void m1839a(boolean z) {
            this.f1469r = z;
        }

        /* renamed from: h */
        void m1850h() {
            this.f1469r = false;
        }

        /* renamed from: a */
        boolean m1841a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 == this.f1463l || m1832a(view2, ViewCompat.getLayoutDirection(coordinatorLayout)) || (this.f1452a != null && this.f1452a.mo1620a(coordinatorLayout, (CoordinatorLayout) view, view2));
        }

        /* renamed from: b */
        View m1843b(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f1457f == -1) {
                this.f1463l = null;
                this.f1462k = null;
                return null;
            }
            if (this.f1462k == null || !m1833b(view, coordinatorLayout)) {
                m1831a(view, coordinatorLayout);
            }
            return this.f1462k;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v7, types: [android.view.ViewParent] */
        /* renamed from: a */
        private void m1831a(View view, CoordinatorLayout coordinatorLayout) {
            this.f1462k = coordinatorLayout.findViewById(this.f1457f);
            if (this.f1462k != null) {
                if (this.f1462k == coordinatorLayout) {
                    if (coordinatorLayout.isInEditMode()) {
                        this.f1463l = null;
                        this.f1462k = null;
                        return;
                    }
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                CoordinatorLayout coordinatorLayout2 = this.f1462k;
                for (CoordinatorLayout coordinatorLayout3 = this.f1462k.getParent(); coordinatorLayout3 != coordinatorLayout && coordinatorLayout3 != null; coordinatorLayout3 = coordinatorLayout3.getParent()) {
                    if (coordinatorLayout3 == view) {
                        if (coordinatorLayout.isInEditMode()) {
                            this.f1463l = null;
                            this.f1462k = null;
                            return;
                        }
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    if (coordinatorLayout3 instanceof View) {
                        coordinatorLayout2 = coordinatorLayout3;
                    }
                }
                this.f1463l = coordinatorLayout2;
                return;
            }
            if (coordinatorLayout.isInEditMode()) {
                this.f1463l = null;
                this.f1462k = null;
                return;
            }
            throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1457f) + " to anchor view " + view);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v2, types: [android.view.ViewParent] */
        /* renamed from: b */
        private boolean m1833b(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f1462k.getId() != this.f1457f) {
                return false;
            }
            CoordinatorLayout coordinatorLayout2 = this.f1462k;
            for (CoordinatorLayout coordinatorLayout3 = this.f1462k.getParent(); coordinatorLayout3 != coordinatorLayout; coordinatorLayout3 = coordinatorLayout3.getParent()) {
                if (coordinatorLayout3 == null || coordinatorLayout3 == view) {
                    this.f1463l = null;
                    this.f1462k = null;
                    return false;
                }
                if (coordinatorLayout3 instanceof View) {
                    coordinatorLayout2 = coordinatorLayout3;
                }
            }
            this.f1463l = coordinatorLayout2;
            return true;
        }

        /* renamed from: a */
        private boolean m1832a(View view, int i) {
            int absoluteGravity = GravityCompat.getAbsoluteGravity(((C0246e) view.getLayoutParams()).f1458g, i);
            return absoluteGravity != 0 && (GravityCompat.getAbsoluteGravity(this.f1459h, i) & absoluteGravity) == absoluteGravity;
        }
    }

    /* renamed from: android.support.design.widget.CoordinatorLayout$d */
    private class ViewGroupOnHierarchyChangeListenerC0245d implements ViewGroup.OnHierarchyChangeListener {
        ViewGroupOnHierarchyChangeListenerC0245d() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.f1430e != null) {
                CoordinatorLayout.this.f1430e.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.m1799a(2);
            if (CoordinatorLayout.this.f1430e != null) {
                CoordinatorLayout.this.f1430e.onChildViewRemoved(view, view2);
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray<Parcelable> sparseArray = savedState.f1450a;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0243b m1842b = m1795a(childAt).m1842b();
            if (id != -1 && m1842b != null && (parcelable2 = sparseArray.get(id)) != null) {
                m1842b.mo1685a(this, (CoordinatorLayout) childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable mo1697b;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0243b m1842b = ((C0246e) childAt.getLayoutParams()).m1842b();
            if (id != -1 && m1842b != null && (mo1697b = m1842b.mo1697b(this, childAt)) != null) {
                sparseArray.append(id, mo1697b);
            }
        }
        savedState.f1450a = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        AbstractC0243b m1842b = ((C0246e) view.getLayoutParams()).m1842b();
        if (m1842b == null || !m1842b.mo1711a(this, (CoordinatorLayout) view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    /* renamed from: g */
    private void m1793g() {
        if (Build.VERSION.SDK_INT >= 21) {
            if (ViewCompat.getFitsSystemWindows(this)) {
                if (this.f1447w == null) {
                    this.f1447w = new OnApplyWindowInsetsListener() { // from class: android.support.design.widget.CoordinatorLayout.1
                        C02401() {
                        }

                        @Override // android.support.v4.view.OnApplyWindowInsetsListener
                        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                            return CoordinatorLayout.this.m1797a(windowInsetsCompat);
                        }
                    };
                }
                ViewCompat.setOnApplyWindowInsetsListener(this, this.f1447w);
                setSystemUiVisibility(1280);
                return;
            }
            ViewCompat.setOnApplyWindowInsetsListener(this, null);
        }
    }

    /* renamed from: android.support.design.widget.CoordinatorLayout$1 */
    class C02401 implements OnApplyWindowInsetsListener {
        C02401() {
        }

        @Override // android.support.v4.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return CoordinatorLayout.this.m1797a(windowInsetsCompat);
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.CoordinatorLayout.SavedState.1
            C02411() {
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
        SparseArray<Parcelable> f1450a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f1450a = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f1450a.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            int size = this.f1450a != null ? this.f1450a.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f1450a.keyAt(i2);
                parcelableArr[i2] = this.f1450a.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }

        /* renamed from: android.support.design.widget.CoordinatorLayout$SavedState$1 */
        static class C02411 implements Parcelable.ClassLoaderCreator<SavedState> {
            C02411() {
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
