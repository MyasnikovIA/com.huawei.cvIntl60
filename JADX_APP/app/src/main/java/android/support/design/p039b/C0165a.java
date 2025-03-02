package android.support.design.p039b;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.internal.C0201h;
import android.support.design.internal.C0202i;
import android.support.design.p043e.C0183a;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.widget.C0701g;
import android.util.AttributeSet;
import android.util.Log;

/* renamed from: android.support.design.b.a */
/* loaded from: classes.dex */
public class C0165a extends C0701g {

    /* renamed from: a */
    @Nullable
    private final C0167c f1059a;

    /* renamed from: b */
    @Px
    private int f1060b;

    /* renamed from: c */
    private PorterDuff.Mode f1061c;

    /* renamed from: d */
    private ColorStateList f1062d;

    /* renamed from: e */
    private Drawable f1063e;

    /* renamed from: f */
    @Px
    private int f1064f;

    /* renamed from: g */
    @Px
    private int f1065g;

    /* renamed from: h */
    private int f1066h;

    public C0165a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonStyle);
    }

    public C0165a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray m1603a = C0201h.m1603a(context, attributeSet, R.styleable.MaterialButton, i, R.style.Widget_MaterialComponents_Button, new int[0]);
        this.f1060b = m1603a.getDimensionPixelSize(R.styleable.MaterialButton_iconPadding, 0);
        this.f1061c = C0202i.m1612a(m1603a.getInt(R.styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f1062d = C0183a.m1501a(getContext(), m1603a, R.styleable.MaterialButton_iconTint);
        this.f1063e = C0183a.m1502b(getContext(), m1603a, R.styleable.MaterialButton_icon);
        this.f1066h = m1603a.getInteger(R.styleable.MaterialButton_iconGravity, 1);
        this.f1064f = m1603a.getDimensionPixelSize(R.styleable.MaterialButton_iconSize, 0);
        this.f1059a = new C0167c(this);
        this.f1059a.m1400a(m1603a);
        m1603a.recycle();
        setCompoundDrawablePadding(this.f1060b);
        m1387b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (Build.VERSION.SDK_INT < 21 && m1388c()) {
            this.f1059a.m1401a(canvas);
        }
    }

    @Override // android.support.v7.widget.C0701g, android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (m1388c()) {
            this.f1059a.m1399a(colorStateList);
        } else if (this.f1059a != null) {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // android.support.v7.widget.C0701g, android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        return m1388c() ? this.f1059a.m1406c() : super.getSupportBackgroundTintList();
    }

    @Override // android.support.v7.widget.C0701g, android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (m1388c()) {
            this.f1059a.m1402a(mode);
        } else if (this.f1059a != null) {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.support.v7.widget.C0701g, android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m1388c() ? this.f1059a.m1409d() : super.getSupportBackgroundTintMode();
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        if (m1388c()) {
            this.f1059a.m1397a(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.support.v7.widget.C0701g, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        Drawable drawable = null;
        if (i != 0) {
            drawable = C0488a.m2457b(getContext(), i);
        }
        setBackgroundDrawable(drawable);
    }

    @Override // android.support.v7.widget.C0701g, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (m1388c()) {
            if (drawable != getBackground()) {
                Log.i("MaterialButton", "Setting a custom background is not supported.");
                this.f1059a.m1396a();
                super.setBackgroundDrawable(drawable);
                return;
            }
            getBackground().setState(drawable.getState());
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.support.v7.widget.C0701g, android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT == 21 && this.f1059a != null) {
            this.f1059a.m1398a(i4 - i2, i3 - i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1063e != null && this.f1066h == 2) {
            int measuredWidth = (((((getMeasuredWidth() - ((int) getPaint().measureText(getText().toString()))) - ViewCompat.getPaddingEnd(this)) - (this.f1064f == 0 ? this.f1063e.getIntrinsicWidth() : this.f1064f)) - this.f1060b) - ViewCompat.getPaddingStart(this)) / 2;
            if (m1386a()) {
                measuredWidth = -measuredWidth;
            }
            if (this.f1065g != measuredWidth) {
                this.f1065g = measuredWidth;
                m1387b();
            }
        }
    }

    /* renamed from: a */
    private boolean m1386a() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setIconPadding(@Px int i) {
        if (this.f1060b != i) {
            this.f1060b = i;
            setCompoundDrawablePadding(i);
        }
    }

    @Px
    public int getIconPadding() {
        return this.f1060b;
    }

    public void setIconSize(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f1064f != i) {
            this.f1064f = i;
            m1387b();
        }
    }

    @Px
    public int getIconSize() {
        return this.f1064f;
    }

    public void setIcon(Drawable drawable) {
        if (this.f1063e != drawable) {
            this.f1063e = drawable;
            m1387b();
        }
    }

    public void setIconResource(@DrawableRes int i) {
        Drawable drawable = null;
        if (i != 0) {
            drawable = C0488a.m2457b(getContext(), i);
        }
        setIcon(drawable);
    }

    public Drawable getIcon() {
        return this.f1063e;
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f1062d != colorStateList) {
            this.f1062d = colorStateList;
            m1387b();
        }
    }

    public void setIconTintResource(@ColorRes int i) {
        setIconTint(C0488a.m2454a(getContext(), i));
    }

    public ColorStateList getIconTint() {
        return this.f1062d;
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f1061c != mode) {
            this.f1061c = mode;
            m1387b();
        }
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f1061c;
    }

    /* renamed from: b */
    private void m1387b() {
        if (this.f1063e != null) {
            this.f1063e = this.f1063e.mutate();
            DrawableCompat.setTintList(this.f1063e, this.f1062d);
            if (this.f1061c != null) {
                DrawableCompat.setTintMode(this.f1063e, this.f1061c);
            }
            this.f1063e.setBounds(this.f1065g, 0, (this.f1064f != 0 ? this.f1064f : this.f1063e.getIntrinsicWidth()) + this.f1065g, this.f1064f != 0 ? this.f1064f : this.f1063e.getIntrinsicHeight());
        }
        TextViewCompat.setCompoundDrawablesRelative(this, this.f1063e, null, null, null);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (m1388c()) {
            this.f1059a.m1404b(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        if (m1388c()) {
            setRippleColor(C0488a.m2454a(getContext(), i));
        }
    }

    public ColorStateList getRippleColor() {
        if (m1388c()) {
            return this.f1059a.m1410e();
        }
        return null;
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (m1388c()) {
            this.f1059a.m1408c(colorStateList);
        }
    }

    public void setStrokeColorResource(@ColorRes int i) {
        if (m1388c()) {
            setStrokeColor(C0488a.m2454a(getContext(), i));
        }
    }

    public ColorStateList getStrokeColor() {
        if (m1388c()) {
            return this.f1059a.m1411f();
        }
        return null;
    }

    public void setStrokeWidth(@Px int i) {
        if (m1388c()) {
            this.f1059a.m1403b(i);
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        if (m1388c()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Px
    public int getStrokeWidth() {
        if (m1388c()) {
            return this.f1059a.m1412g();
        }
        return 0;
    }

    public void setCornerRadius(@Px int i) {
        if (m1388c()) {
            this.f1059a.m1407c(i);
        }
    }

    public void setCornerRadiusResource(@DimenRes int i) {
        if (m1388c()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Px
    public int getCornerRadius() {
        if (m1388c()) {
            return this.f1059a.m1413h();
        }
        return 0;
    }

    public int getIconGravity() {
        return this.f1066h;
    }

    public void setIconGravity(int i) {
        this.f1066h = i;
    }

    /* renamed from: c */
    private boolean m1388c() {
        return (this.f1059a == null || this.f1059a.m1405b()) ? false : true;
    }
}
