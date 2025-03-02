package android.support.design.p043e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleableRes;
import android.support.v7.p048a.p049a.C0488a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.e.a */
/* loaded from: classes.dex */
public class C0183a {
    @Nullable
    /* renamed from: a */
    public static ColorStateList m1501a(Context context, TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        ColorStateList m2454a;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m2454a = C0488a.m2454a(context, resourceId)) == null) ? typedArray.getColorStateList(i) : m2454a;
    }

    @Nullable
    /* renamed from: b */
    public static Drawable m1502b(Context context, TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        Drawable m2457b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m2457b = C0488a.m2457b(context, resourceId)) == null) ? typedArray.getDrawable(i) : m2457b;
    }
}
