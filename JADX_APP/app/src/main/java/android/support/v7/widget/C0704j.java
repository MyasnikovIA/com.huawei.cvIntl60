package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.widget.CompoundButtonCompat;
import android.support.v7.appcompat.R;
import android.support.v7.p048a.p049a.C0488a;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* renamed from: android.support.v7.widget.j */
/* loaded from: classes.dex */
class C0704j {

    /* renamed from: a */
    private final CompoundButton f3862a;

    /* renamed from: b */
    private ColorStateList f3863b = null;

    /* renamed from: c */
    private PorterDuff.Mode f3864c = null;

    /* renamed from: d */
    private boolean f3865d = false;

    /* renamed from: e */
    private boolean f3866e = false;

    /* renamed from: f */
    private boolean f3867f;

    C0704j(CompoundButton compoundButton) {
        this.f3862a = compoundButton;
    }

    /* renamed from: a */
    void m4302a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f3862a.getContext().obtainStyledAttributes(attributeSet, R.styleable.CompoundButton, i, 0);
        try {
            if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_android_button) && (resourceId = obtainStyledAttributes.getResourceId(R.styleable.CompoundButton_android_button, 0)) != 0) {
                this.f3862a.setButtonDrawable(C0488a.m2457b(this.f3862a.getContext(), resourceId));
            }
            if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonTint)) {
                CompoundButtonCompat.setButtonTintList(this.f3862a, obtainStyledAttributes.getColorStateList(R.styleable.CompoundButton_buttonTint));
            }
            if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonTintMode)) {
                CompoundButtonCompat.setButtonTintMode(this.f3862a, C0659aj.m3929a(obtainStyledAttributes.getInt(R.styleable.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    void m4300a(ColorStateList colorStateList) {
        this.f3863b = colorStateList;
        this.f3865d = true;
        m4305d();
    }

    /* renamed from: a */
    ColorStateList m4299a() {
        return this.f3863b;
    }

    /* renamed from: a */
    void m4301a(@Nullable PorterDuff.Mode mode) {
        this.f3864c = mode;
        this.f3866e = true;
        m4305d();
    }

    /* renamed from: b */
    PorterDuff.Mode m4303b() {
        return this.f3864c;
    }

    /* renamed from: c */
    void m4304c() {
        if (this.f3867f) {
            this.f3867f = false;
        } else {
            this.f3867f = true;
            m4305d();
        }
    }

    /* renamed from: d */
    void m4305d() {
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.f3862a);
        if (buttonDrawable != null) {
            if (this.f3865d || this.f3866e) {
                Drawable mutate = DrawableCompat.wrap(buttonDrawable).mutate();
                if (this.f3865d) {
                    DrawableCompat.setTintList(mutate, this.f3863b);
                }
                if (this.f3866e) {
                    DrawableCompat.setTintMode(mutate, this.f3864c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.f3862a.getDrawableState());
                }
                this.f3862a.setButtonDrawable(mutate);
            }
        }
    }

    /* renamed from: a */
    int m4298a(int i) {
        Drawable buttonDrawable;
        if (Build.VERSION.SDK_INT < 17 && (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.f3862a)) != null) {
            return i + buttonDrawable.getIntrinsicWidth();
        }
        return i;
    }
}
