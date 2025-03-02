package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.C0546j;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.view.menu.InterfaceC0552p;
import android.support.v7.widget.C0666aq;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.exoplayer.C1167C;

/* loaded from: classes.dex */
public class ActionMenuView extends C0666aq implements C0544h.b, InterfaceC0552p {

    /* renamed from: a */
    C0544h.a f2911a;

    /* renamed from: b */
    InterfaceC0576e f2912b;

    /* renamed from: c */
    private C0544h f2913c;

    /* renamed from: d */
    private Context f2914d;

    /* renamed from: e */
    private int f2915e;

    /* renamed from: f */
    private boolean f2916f;

    /* renamed from: g */
    private ActionMenuPresenter f2917g;

    /* renamed from: h */
    private InterfaceC0551o.a f2918h;

    /* renamed from: i */
    private boolean f2919i;

    /* renamed from: j */
    private int f2920j;

    /* renamed from: k */
    private int f2921k;

    /* renamed from: l */
    private int f2922l;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.v7.widget.ActionMenuView$a */
    public interface InterfaceC0572a {
        /* renamed from: c */
        boolean mo2775c();

        /* renamed from: d */
        boolean mo2776d();
    }

    /* renamed from: android.support.v7.widget.ActionMenuView$e */
    public interface InterfaceC0576e {
        /* renamed from: a */
        boolean mo3024a(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f2921k = (int) (56.0f * f);
        this.f2922l = (int) (f * 4.0f);
        this.f2914d = context;
        this.f2915e = 0;
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.f2915e != i) {
            this.f2915e = i;
            if (i == 0) {
                this.f2914d = getContext();
            } else {
                this.f2914d = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public int getPopupTheme() {
        return this.f2915e;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f2917g = actionMenuPresenter;
        this.f2917g.m2993a(this);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f2917g != null) {
            this.f2917g.mo1543a(false);
            if (this.f2917g.m3001j()) {
                this.f2917g.m2998g();
                this.f2917g.m2997f();
            }
        }
    }

    public void setOnMenuItemClickListener(InterfaceC0576e interfaceC0576e) {
        this.f2912b = interfaceC0576e;
    }

    @Override // android.support.v7.widget.C0666aq, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z = this.f2919i;
        this.f2919i = View.MeasureSpec.getMode(i) == 1073741824;
        if (z != this.f2919i) {
            this.f2920j = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.f2919i && this.f2913c != null && size != this.f2920j) {
            this.f2920j = size;
            this.f2913c.mo1602a(true);
        }
        int childCount = getChildCount();
        if (this.f2919i && childCount > 0) {
            m3007c(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            C0574c c0574c = (C0574c) getChildAt(i3).getLayoutParams();
            c0574c.rightMargin = 0;
            c0574c.leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0262  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m3007c(int r33, int r34) {
        /*
            Method dump skipped, instructions count: 776
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ActionMenuView.m3007c(int, int):void");
    }

    /* renamed from: a */
    static int m3006a(View view, int i, int i2, int i3, int i4) {
        int i5;
        boolean z = false;
        C0574c c0574c = (C0574c) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.m2774b();
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i * i2, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            i5 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i5++;
            }
            if (z2 && i5 < 2) {
                i5 = 2;
            }
        }
        if (!c0574c.f2923a && z2) {
            z = true;
        }
        c0574c.f2926d = z;
        c0574c.f2924b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i5 * i, C1167C.ENCODING_PCM_32BIT), makeMeasureSpec);
        return i5;
    }

    @Override // android.support.v7.widget.C0666aq, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int width;
        int i8;
        if (!this.f2919i) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i9 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i10 = 0;
        int i11 = 0;
        int paddingRight = ((i3 - i) - getPaddingRight()) - getPaddingLeft();
        boolean z2 = false;
        boolean m4245a = C0695bs.m4245a(this);
        int i12 = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() == 8) {
                i7 = paddingRight;
            } else {
                C0574c c0574c = (C0574c) childAt.getLayoutParams();
                if (c0574c.f2923a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (m3012a(i12)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m4245a) {
                        i8 = c0574c.leftMargin + getPaddingLeft();
                        width = i8 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - c0574c.rightMargin;
                        i8 = width - measuredWidth;
                    }
                    int i13 = i9 - (measuredHeight / 2);
                    childAt.layout(i8, i13, width, measuredHeight + i13);
                    i7 = paddingRight - measuredWidth;
                    z2 = true;
                } else {
                    int measuredWidth2 = childAt.getMeasuredWidth() + c0574c.leftMargin + c0574c.rightMargin;
                    int i14 = i10 + measuredWidth2;
                    i7 = paddingRight - measuredWidth2;
                    if (m3012a(i12)) {
                        i14 += dividerWidth;
                    }
                    i11++;
                    i10 = i14;
                }
            }
            i12++;
            paddingRight = i7;
        }
        if (childCount == 1 && !z2) {
            View childAt2 = getChildAt(0);
            int measuredWidth3 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i15 = ((i3 - i) / 2) - (measuredWidth3 / 2);
            int i16 = i9 - (measuredHeight2 / 2);
            childAt2.layout(i15, i16, measuredWidth3 + i15, measuredHeight2 + i16);
            return;
        }
        int i17 = i11 - (z2 ? 0 : 1);
        int max = Math.max(0, i17 > 0 ? paddingRight / i17 : 0);
        if (m4245a) {
            int width2 = getWidth() - getPaddingRight();
            int i18 = 0;
            while (i18 < childCount) {
                View childAt3 = getChildAt(i18);
                C0574c c0574c2 = (C0574c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() == 8) {
                    i6 = width2;
                } else if (c0574c2.f2923a) {
                    i6 = width2;
                } else {
                    int i19 = width2 - c0574c2.rightMargin;
                    int measuredWidth4 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i20 = i9 - (measuredHeight3 / 2);
                    childAt3.layout(i19 - measuredWidth4, i20, i19, measuredHeight3 + i20);
                    i6 = i19 - ((c0574c2.leftMargin + measuredWidth4) + max);
                }
                i18++;
                width2 = i6;
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        int i21 = 0;
        while (i21 < childCount) {
            View childAt4 = getChildAt(i21);
            C0574c c0574c3 = (C0574c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() == 8) {
                i5 = paddingLeft;
            } else if (c0574c3.f2923a) {
                i5 = paddingLeft;
            } else {
                int i22 = paddingLeft + c0574c3.leftMargin;
                int measuredWidth5 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i23 = i9 - (measuredHeight4 / 2);
                childAt4.layout(i22, i23, i22 + measuredWidth5, measuredHeight4 + i23);
                i5 = c0574c3.rightMargin + measuredWidth5 + max + i22;
            }
            i21++;
            paddingLeft = i5;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m3022i();
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.f2917g.m2992a(drawable);
    }

    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.f2917g.m2996e();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public boolean m3011a() {
        return this.f2916f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setOverflowReserved(boolean z) {
        this.f2916f = z;
    }

    @Override // android.support.v7.widget.C0666aq
    /* renamed from: b */
    public C0574c generateDefaultLayoutParams() {
        C0574c c0574c = new C0574c(-2, -2);
        c0574c.f3597h = 16;
        return c0574c;
    }

    @Override // android.support.v7.widget.C0666aq, android.view.ViewGroup
    /* renamed from: a */
    public C0574c generateLayoutParams(AttributeSet attributeSet) {
        return new C0574c(getContext(), attributeSet);
    }

    @Override // android.support.v7.widget.C0666aq, android.view.ViewGroup
    /* renamed from: a */
    public C0574c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null) {
            C0574c c0574c = layoutParams instanceof C0574c ? new C0574c((C0574c) layoutParams) : new C0574c(layoutParams);
            if (c0574c.f3597h <= 0) {
                c0574c.f3597h = 16;
                return c0574c;
            }
            return c0574c;
        }
        return generateDefaultLayoutParams();
    }

    @Override // android.support.v7.widget.C0666aq, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof C0574c);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: c */
    public C0574c m3016c() {
        C0574c generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.f2923a = true;
        return generateDefaultLayoutParams;
    }

    @Override // android.support.v7.view.menu.C0544h.b
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public boolean mo2780a(C0546j c0546j) {
        return this.f2913c.m2864a(c0546j, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public void mo1559a(C0544h c0544h) {
        this.f2913c = c0544h;
    }

    public Menu getMenu() {
        if (this.f2913c == null) {
            Context context = getContext();
            this.f2913c = new C0544h(context);
            this.f2913c.mo2857a(new C0575d());
            this.f2917g = new ActionMenuPresenter(context);
            this.f2917g.m2994b(true);
            this.f2917g.mo1542a(this.f2918h != null ? this.f2918h : new C0573b());
            this.f2913c.m2860a(this.f2917g, this.f2914d);
            this.f2917g.m2993a(this);
        }
        return this.f2913c;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public void m3010a(InterfaceC0551o.a aVar, C0544h.a aVar2) {
        this.f2918h = aVar;
        this.f2911a = aVar2;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: d */
    public C0544h m3017d() {
        return this.f2913c;
    }

    /* renamed from: e */
    public boolean m3018e() {
        return this.f2917g != null && this.f2917g.m2997f();
    }

    /* renamed from: f */
    public boolean m3019f() {
        return this.f2917g != null && this.f2917g.m2998g();
    }

    /* renamed from: g */
    public boolean m3020g() {
        return this.f2917g != null && this.f2917g.m3001j();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: h */
    public boolean m3021h() {
        return this.f2917g != null && this.f2917g.m3002k();
    }

    /* renamed from: i */
    public void m3022i() {
        if (this.f2917g != null) {
            this.f2917g.m2999h();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    protected boolean m3012a(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof InterfaceC0572a)) {
            z = false | ((InterfaceC0572a) childAt).mo2776d();
        }
        return (i <= 0 || !(childAt2 instanceof InterfaceC0572a)) ? z : ((InterfaceC0572a) childAt2).mo2775c() | z;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setExpandedActionViewsExclusive(boolean z) {
        this.f2917g.m2995c(z);
    }

    /* renamed from: android.support.v7.widget.ActionMenuView$d */
    private class C0575d implements C0544h.a {
        C0575d() {
        }

        @Override // android.support.v7.view.menu.C0544h.a
        /* renamed from: a */
        public boolean mo2526a(C0544h c0544h, MenuItem menuItem) {
            return ActionMenuView.this.f2912b != null && ActionMenuView.this.f2912b.mo3024a(menuItem);
        }

        @Override // android.support.v7.view.menu.C0544h.a
        /* renamed from: a */
        public void mo2520a(C0544h c0544h) {
            if (ActionMenuView.this.f2911a != null) {
                ActionMenuView.this.f2911a.mo2520a(c0544h);
            }
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuView$b */
    private static class C0573b implements InterfaceC0551o.a {
        C0573b() {
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o.a
        /* renamed from: a */
        public void mo2566a(C0544h c0544h, boolean z) {
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o.a
        /* renamed from: a */
        public boolean mo2567a(C0544h c0544h) {
            return false;
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuView$c */
    public static class C0574c extends C0666aq.a {

        /* renamed from: a */
        @ViewDebug.ExportedProperty
        public boolean f2923a;

        /* renamed from: b */
        @ViewDebug.ExportedProperty
        public int f2924b;

        /* renamed from: c */
        @ViewDebug.ExportedProperty
        public int f2925c;

        /* renamed from: d */
        @ViewDebug.ExportedProperty
        public boolean f2926d;

        /* renamed from: e */
        @ViewDebug.ExportedProperty
        public boolean f2927e;

        /* renamed from: f */
        boolean f2928f;

        public C0574c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0574c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0574c(C0574c c0574c) {
            super(c0574c);
            this.f2923a = c0574c.f2923a;
        }

        public C0574c(int i, int i2) {
            super(i, i2);
            this.f2923a = false;
        }
    }
}
