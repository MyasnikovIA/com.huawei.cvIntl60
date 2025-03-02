package android.support.design.widget;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.support.annotation.AnimatorRes;
import android.support.annotation.ColorInt;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.design.R;
import android.support.design.p038a.C0162h;
import android.support.design.p042d.C0182c;
import android.support.design.p042d.InterfaceC0180a;
import android.support.design.stateful.ExtendableSavedState;
import android.support.design.widget.C0277f;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.TintableImageSourceView;
import android.support.v7.widget.C0705k;
import android.support.v7.widget.C0709o;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer.C1167C;
import java.util.List;

@CoordinatorLayout.InterfaceC0244c(m1830a = Behavior.class)
/* loaded from: classes.dex */
public class FloatingActionButton extends C0292u implements InterfaceC0180a, TintableBackgroundView, TintableImageSourceView {

    /* renamed from: a */
    boolean f1471a;

    /* renamed from: b */
    final Rect f1472b;

    /* renamed from: c */
    private ColorStateList f1473c;

    /* renamed from: d */
    private PorterDuff.Mode f1474d;

    /* renamed from: e */
    @Nullable
    private ColorStateList f1475e;

    /* renamed from: f */
    @Nullable
    private PorterDuff.Mode f1476f;

    /* renamed from: g */
    private ColorStateList f1477g;

    /* renamed from: h */
    private int f1478h;

    /* renamed from: i */
    private int f1479i;

    /* renamed from: j */
    private int f1480j;

    /* renamed from: k */
    private int f1481k;

    /* renamed from: l */
    private final Rect f1482l;

    /* renamed from: m */
    private final C0709o f1483m;

    /* renamed from: n */
    private final C0182c f1484n;

    /* renamed from: o */
    private C0277f f1485o;

    /* renamed from: android.support.design.widget.FloatingActionButton$a */
    public static abstract class AbstractC0250a {
        /* renamed from: a */
        public void m1879a(FloatingActionButton floatingActionButton) {
        }

        /* renamed from: b */
        public void m1880b(FloatingActionButton floatingActionButton) {
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.f1480j = (sizeDimension - this.f1481k) / 2;
        getImpl().m2109j();
        int min = Math.min(m1853a(sizeDimension, i), m1853a(sizeDimension, i2));
        setMeasuredDimension(this.f1472b.left + min + this.f1472b.right, min + this.f1472b.top + this.f1472b.bottom);
    }

    @ColorInt
    @Deprecated
    public int getRippleColor() {
        if (this.f1477g != null) {
            return this.f1477g.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f1477g;
    }

    public void setRippleColor(@ColorInt int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f1477g != colorStateList) {
            this.f1477g = colorStateList;
            getImpl().mo2094b(this.f1477g);
        }
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f1473c;
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f1473c != colorStateList) {
            this.f1473c = colorStateList;
            getImpl().m2085a(colorStateList);
        }
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f1474d;
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f1474d != mode) {
            this.f1474d = mode;
            getImpl().m2086a(mode);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // android.support.v4.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f1475e != colorStateList) {
            this.f1475e = colorStateList;
            m1857c();
        }
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.f1475e;
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f1476f != mode) {
            this.f1476f = mode;
            m1857c();
        }
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f1476f;
    }

    /* renamed from: c */
    private void m1857c() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            if (this.f1475e == null) {
                DrawableCompat.clearColorFilter(drawable);
                return;
            }
            int colorForState = this.f1475e.getColorForState(getDrawableState(), 0);
            PorterDuff.Mode mode = this.f1476f;
            if (mode == null) {
                mode = PorterDuff.Mode.SRC_IN;
            }
            drawable.mutate().setColorFilter(C0705k.m4309a(colorForState, mode));
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        this.f1483m.m4342a(i);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        getImpl().m2101d();
    }

    /* renamed from: a */
    void m1861a(AbstractC0250a abstractC0250a, boolean z) {
        getImpl().m2097b(m1855a(abstractC0250a), z);
    }

    /* renamed from: a */
    public void m1860a(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().m2084a(animatorListener);
    }

    /* renamed from: b */
    public void m1863b(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().m2093b(animatorListener);
    }

    /* renamed from: b */
    void m1865b(@Nullable AbstractC0250a abstractC0250a, boolean z) {
        getImpl().m2089a(m1855a(abstractC0250a), z);
    }

    /* renamed from: c */
    public void m1867c(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().m2100c(animatorListener);
    }

    /* renamed from: d */
    public void m1868d(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().m2103d(animatorListener);
    }

    @Override // android.support.design.p042d.InterfaceC0181b
    /* renamed from: a */
    public boolean mo1494a() {
        return this.f1484n.m1498a();
    }

    public void setExpandedComponentIdHint(@IdRes int i) {
        this.f1484n.m1496a(i);
    }

    public int getExpandedComponentIdHint() {
        return this.f1484n.m1500c();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f1471a != z) {
            this.f1471a = z;
            getImpl().mo2108i();
        }
    }

    public boolean getUseCompatPadding() {
        return this.f1471a;
    }

    public void setSize(int i) {
        this.f1479i = 0;
        if (i != this.f1478h) {
            this.f1478h = i;
            requestLayout();
        }
    }

    public int getSize() {
        return this.f1478h;
    }

    @Nullable
    /* renamed from: a */
    private C0277f.d m1855a(@Nullable AbstractC0250a abstractC0250a) {
        if (abstractC0250a == null) {
            return null;
        }
        return new C0277f.d() { // from class: android.support.design.widget.FloatingActionButton.1

            /* renamed from: a */
            final /* synthetic */ AbstractC0250a f1486a;

            C02491(AbstractC0250a abstractC0250a2) {
                abstractC0250a = abstractC0250a2;
            }

            @Override // android.support.design.widget.C0277f.d
            /* renamed from: a */
            public void mo1869a() {
                abstractC0250a.m1879a(FloatingActionButton.this);
            }

            @Override // android.support.design.widget.C0277f.d
            /* renamed from: b */
            public void mo1870b() {
                abstractC0250a.m1880b(FloatingActionButton.this);
            }
        };
    }

    /* renamed from: android.support.design.widget.FloatingActionButton$1 */
    class C02491 implements C0277f.d {

        /* renamed from: a */
        final /* synthetic */ AbstractC0250a f1486a;

        C02491(AbstractC0250a abstractC0250a2) {
            abstractC0250a = abstractC0250a2;
        }

        @Override // android.support.design.widget.C0277f.d
        /* renamed from: a */
        public void mo1869a() {
            abstractC0250a.m1879a(FloatingActionButton.this);
        }

        @Override // android.support.design.widget.C0277f.d
        /* renamed from: b */
        public void mo1870b() {
            abstractC0250a.m1880b(FloatingActionButton.this);
        }
    }

    /* renamed from: b */
    public boolean m1866b() {
        return getImpl().m2114o();
    }

    public void setCustomSize(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        this.f1479i = i;
    }

    @Px
    public int getCustomSize() {
        return this.f1479i;
    }

    int getSizeDimension() {
        return m1852a(this.f1478h);
    }

    /* renamed from: a */
    private int m1852a(int i) {
        if (this.f1479i != 0) {
            return this.f1479i;
        }
        Resources resources = getResources();
        switch (i) {
            case -1:
                if (Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470) {
                    return m1852a(1);
                }
                return m1852a(0);
            case 0:
            default:
                return resources.getDimensionPixelSize(R.dimen.design_fab_size_normal);
            case 1:
                return resources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().m2110k();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().m2111l();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().mo2090a(getDrawableState());
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().mo2106g();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(super.onSaveInstanceState());
        extendableSavedState.f1296a.put("expandableWidgetHelper", this.f1484n.m1499b());
        return extendableSavedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.f1484n.m1497a(extendableSavedState.f1296a.get("expandableWidgetHelper"));
    }

    @Deprecated
    /* renamed from: a */
    public boolean m1862a(@NonNull Rect rect) {
        if (!ViewCompat.isLaidOut(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        m1858c(rect);
        return true;
    }

    /* renamed from: b */
    public void m1864b(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        m1858c(rect);
    }

    /* renamed from: c */
    private void m1858c(@NonNull Rect rect) {
        rect.left += this.f1472b.left;
        rect.top += this.f1472b.top;
        rect.right -= this.f1472b.right;
        rect.bottom -= this.f1472b.bottom;
    }

    @NonNull
    public Drawable getContentBackground() {
        return getImpl().m2107h();
    }

    /* renamed from: a */
    private static int m1853a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        switch (mode) {
            case Integer.MIN_VALUE:
                return Math.min(i, size);
            case 0:
                return i;
            case C1167C.ENCODING_PCM_32BIT /* 1073741824 */:
                return size;
            default:
                throw new IllegalArgumentException();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && m1862a(this.f1482l) && !this.f1482l.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        @Override // android.support.design.widget.FloatingActionButton.BaseBehavior, android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo1644a(@NonNull CoordinatorLayout.C0246e c0246e) {
            super.mo1644a(c0246e);
        }

        @Override // android.support.design.widget.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo1418a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            return super.mo1418a(coordinatorLayout, floatingActionButton, i);
        }

        @Override // android.support.design.widget.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo1820a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            return super.mo1820a(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // android.support.design.widget.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo1622b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.mo1622b(coordinatorLayout, floatingActionButton, view);
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.AbstractC0243b<T> {

        /* renamed from: a */
        private Rect f1488a;

        /* renamed from: b */
        private AbstractC0250a f1489b;

        /* renamed from: c */
        private boolean f1490c;

        public BaseBehavior() {
            this.f1490c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
            this.f1490c = obtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public void mo1644a(@NonNull CoordinatorLayout.C0246e c0246e) {
            if (c0246e.f1459h == 0) {
                c0246e.f1459h = 80;
            }
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public boolean mo1622b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m1872a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (m1873a(view)) {
                m1875b(view, floatingActionButton);
                return false;
            }
            return false;
        }

        /* renamed from: a */
        private static boolean m1873a(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0246e) {
                return ((CoordinatorLayout.C0246e) layoutParams).m1842b() instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* renamed from: a */
        private boolean m1874a(View view, FloatingActionButton floatingActionButton) {
            return this.f1490c && ((CoordinatorLayout.C0246e) floatingActionButton.getLayoutParams()).m1834a() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        /* renamed from: a */
        private boolean m1872a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!m1874a(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f1488a == null) {
                this.f1488a = new Rect();
            }
            Rect rect = this.f1488a;
            C0275d.m2070b(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.m1865b(this.f1489b, false);
            } else {
                floatingActionButton.m1861a(this.f1489b, false);
            }
            return true;
        }

        /* renamed from: b */
        private boolean m1875b(View view, FloatingActionButton floatingActionButton) {
            if (!m1874a(view, floatingActionButton)) {
                return false;
            }
            CoordinatorLayout.C0246e c0246e = (CoordinatorLayout.C0246e) floatingActionButton.getLayoutParams();
            if (view.getTop() < c0246e.topMargin + (floatingActionButton.getHeight() / 2)) {
                floatingActionButton.m1865b(this.f1489b, false);
            } else {
                floatingActionButton.m1861a(this.f1489b, false);
            }
            return true;
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public boolean mo1418a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> m1810c = coordinatorLayout.m1810c(floatingActionButton);
            int size = m1810c.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = m1810c.get(i2);
                if (view instanceof AppBarLayout) {
                    if (m1872a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (m1873a(view) && m1875b(view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.m1800a(floatingActionButton, i);
            m1871a(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public boolean mo1820a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            Rect rect2 = floatingActionButton.f1472b;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        /* renamed from: a */
        private void m1871a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            int i;
            int i2 = 0;
            Rect rect = floatingActionButton.f1472b;
            if (rect != null && rect.centerX() > 0 && rect.centerY() > 0) {
                CoordinatorLayout.C0246e c0246e = (CoordinatorLayout.C0246e) floatingActionButton.getLayoutParams();
                if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - c0246e.rightMargin) {
                    i = rect.right;
                } else {
                    i = floatingActionButton.getLeft() <= c0246e.leftMargin ? -rect.left : 0;
                }
                if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - c0246e.bottomMargin) {
                    i2 = rect.bottom;
                } else if (floatingActionButton.getTop() <= c0246e.topMargin) {
                    i2 = -rect.top;
                }
                if (i2 != 0) {
                    ViewCompat.offsetTopAndBottom(floatingActionButton, i2);
                }
                if (i != 0) {
                    ViewCompat.offsetLeftAndRight(floatingActionButton, i);
                }
            }
        }
    }

    public float getCompatElevation() {
        return getImpl().mo2081a();
    }

    public void setCompatElevation(float f) {
        getImpl().m2082a(f);
    }

    public void setCompatElevationResource(@DimenRes int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().m2091b();
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        getImpl().m2092b(f);
    }

    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().m2098c();
    }

    public void setCompatPressedTranslationZ(float f) {
        getImpl().m2099c(f);
    }

    public void setCompatPressedTranslationZResource(@DimenRes int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public C0162h getShowMotionSpec() {
        return getImpl().m2104e();
    }

    public void setShowMotionSpec(C0162h c0162h) {
        getImpl().m2088a(c0162h);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(C0162h.m1371a(getContext(), i));
    }

    public C0162h getHideMotionSpec() {
        return getImpl().m2105f();
    }

    public void setHideMotionSpec(C0162h c0162h) {
        getImpl().m2096b(c0162h);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(C0162h.m1371a(getContext(), i));
    }

    private C0277f getImpl() {
        if (this.f1485o == null) {
            this.f1485o = m1859d();
        }
        return this.f1485o;
    }

    /* renamed from: d */
    private C0277f m1859d() {
        return Build.VERSION.SDK_INT >= 21 ? new C0278g(this, new C0251b()) : new C0277f(this, new C0251b());
    }

    /* renamed from: android.support.design.widget.FloatingActionButton$b */
    private class C0251b implements InterfaceC0284m {
        C0251b() {
        }

        @Override // android.support.design.widget.InterfaceC0284m
        /* renamed from: a */
        public float mo1881a() {
            return FloatingActionButton.this.getSizeDimension() / 2.0f;
        }

        @Override // android.support.design.widget.InterfaceC0284m
        /* renamed from: a */
        public void mo1882a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f1472b.set(i, i2, i3, i4);
            FloatingActionButton.this.setPadding(FloatingActionButton.this.f1480j + i, FloatingActionButton.this.f1480j + i2, FloatingActionButton.this.f1480j + i3, FloatingActionButton.this.f1480j + i4);
        }

        @Override // android.support.design.widget.InterfaceC0284m
        /* renamed from: a */
        public void mo1883a(Drawable drawable) {
            FloatingActionButton.super.setBackgroundDrawable(drawable);
        }

        @Override // android.support.design.widget.InterfaceC0284m
        /* renamed from: b */
        public boolean mo1884b() {
            return FloatingActionButton.this.f1471a;
        }
    }
}
