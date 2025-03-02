package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.widget.TintableCompoundButton;
import android.support.v7.appcompat.R;
import android.support.v7.p048a.p049a.C0488a;
import android.util.AttributeSet;
import android.widget.RadioButton;

/* renamed from: android.support.v7.widget.s */
/* loaded from: classes.dex */
public class C0713s extends RadioButton implements TintableCompoundButton {

    /* renamed from: a */
    private final C0704j f3899a;

    /* renamed from: b */
    private final C0718x f3900b;

    public C0713s(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.radioButtonStyle);
    }

    public C0713s(Context context, AttributeSet attributeSet, int i) {
        super(C0684bh.m4162a(context), attributeSet, i);
        this.f3899a = new C0704j(this);
        this.f3899a.m4302a(attributeSet, i);
        this.f3900b = new C0718x(this);
        this.f3900b.m4377a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        if (this.f3899a != null) {
            this.f3899a.m4304c();
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i) {
        setButtonDrawable(C0488a.m2457b(getContext(), i));
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        return this.f3899a != null ? this.f3899a.m4298a(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // android.support.v4.widget.TintableCompoundButton
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportButtonTintList(@Nullable ColorStateList colorStateList) {
        if (this.f3899a != null) {
            this.f3899a.m4300a(colorStateList);
        }
    }

    @Override // android.support.v4.widget.TintableCompoundButton
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportButtonTintList() {
        if (this.f3899a != null) {
            return this.f3899a.m4299a();
        }
        return null;
    }

    @Override // android.support.v4.widget.TintableCompoundButton
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportButtonTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f3899a != null) {
            this.f3899a.m4301a(mode);
        }
    }

    @Override // android.support.v4.widget.TintableCompoundButton
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportButtonTintMode() {
        if (this.f3899a != null) {
            return this.f3899a.m4303b();
        }
        return null;
    }
}
