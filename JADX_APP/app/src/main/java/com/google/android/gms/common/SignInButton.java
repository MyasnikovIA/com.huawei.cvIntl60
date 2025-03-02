package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.C1228R;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzae;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.dynamic.zzg;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {
    public static final int COLOR_AUTO = 2;
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private int mColor;
    private int mSize;

    /* renamed from: xi */
    private View f6130xi;

    /* renamed from: xj */
    private View.OnClickListener f6131xj;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ButtonSize {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ColorScheme {
    }

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6131xj = null;
        zzb(context, attributeSet);
        setStyle(this.mSize, this.mColor);
    }

    private static Button zza(Context context, int i, int i2) {
        zzaf zzafVar = new zzaf(context);
        zzafVar.zza(context.getResources(), i, i2);
        return zzafVar;
    }

    private void zzb(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1228R.styleable.SignInButton, 0, 0);
        try {
            this.mSize = obtainStyledAttributes.getInt(C1228R.styleable.SignInButton_buttonSize, 0);
            this.mColor = obtainStyledAttributes.getInt(C1228R.styleable.SignInButton_colorScheme, 2);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void zzbw(Context context) {
        if (this.f6130xi != null) {
            removeView(this.f6130xi);
        }
        try {
            this.f6130xi = zzae.zzb(context, this.mSize, this.mColor);
        } catch (zzg.zza e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            this.f6130xi = zza(context, this.mSize, this.mColor);
        }
        addView(this.f6130xi);
        this.f6130xi.setEnabled(isEnabled());
        this.f6130xi.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f6131xj == null || view != this.f6130xi) {
            return;
        }
        this.f6131xj.onClick(this);
    }

    public void setColorScheme(int i) {
        setStyle(this.mSize, i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f6130xi.setEnabled(z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f6131xj = onClickListener;
        if (this.f6130xi != null) {
            this.f6130xi.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(Scope[] scopeArr) {
        setStyle(this.mSize, this.mColor);
    }

    public void setSize(int i) {
        setStyle(i, this.mColor);
    }

    public void setStyle(int i, int i2) {
        this.mSize = i;
        this.mColor = i2;
        zzbw(getContext());
    }

    @Deprecated
    public void setStyle(int i, int i2, Scope[] scopeArr) {
        setStyle(i, i2);
    }
}
