package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.AttrRes;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.annotation.StyleableRes;
import android.support.design.R;
import android.support.v7.widget.C0687bk;
import android.util.AttributeSet;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.internal.h */
/* loaded from: classes.dex */
public final class C0201h {

    /* renamed from: a */
    private static final int[] f1294a = {R.attr.colorPrimary};

    /* renamed from: b */
    private static final int[] f1295b = {R.attr.colorSecondary};

    /* renamed from: a */
    public static TypedArray m1603a(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        m1605a(context, attributeSet, i, i2);
        m1610c(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    /* renamed from: b */
    public static C0687bk m1608b(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        m1605a(context, attributeSet, i, i2);
        m1610c(context, attributeSet, iArr, i, i2, iArr2);
        return C0687bk.m4167a(context, attributeSet, iArr, i, i2);
    }

    /* renamed from: a */
    private static void m1605a(Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z) {
            m1609b(context);
        }
        m1604a(context);
    }

    /* renamed from: c */
    private static void m1610c(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        boolean z = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i, i2);
        if (!obtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceTextAppearance, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 == null || iArr2.length == 0) {
            if (obtainStyledAttributes.getResourceId(R.styleable.ThemeEnforcement_android_textAppearance, -1) != -1) {
                z = true;
            }
        } else {
            z = m1611d(context, attributeSet, iArr, i, i2, iArr2);
        }
        obtainStyledAttributes.recycle();
        if (!z) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    /* renamed from: d */
    private static boolean m1611d(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        for (int i3 : iArr2) {
            if (obtainStyledAttributes.getResourceId(i3, -1) == -1) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    /* renamed from: a */
    public static void m1604a(Context context) {
        m1606a(context, f1294a, "Theme.AppCompat");
    }

    /* renamed from: b */
    public static void m1609b(Context context) {
        m1606a(context, f1295b, "Theme.MaterialComponents");
    }

    /* renamed from: a */
    private static boolean m1607a(Context context, int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        boolean hasValue = obtainStyledAttributes.hasValue(0);
        obtainStyledAttributes.recycle();
        return hasValue;
    }

    /* renamed from: a */
    private static void m1606a(Context context, int[] iArr, String str) {
        if (!m1607a(context, iArr)) {
            throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
        }
    }
}
