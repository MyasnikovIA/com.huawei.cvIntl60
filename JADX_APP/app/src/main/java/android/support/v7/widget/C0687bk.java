package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleableRes;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v7.p048a.p049a.C0488a;
import android.util.AttributeSet;
import android.util.TypedValue;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.bk */
/* loaded from: classes.dex */
public class C0687bk {

    /* renamed from: a */
    private final Context f3753a;

    /* renamed from: b */
    private final TypedArray f3754b;

    /* renamed from: c */
    private TypedValue f3755c;

    /* renamed from: a */
    public static C0687bk m4166a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0687bk(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: a */
    public static C0687bk m4167a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0687bk(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public static C0687bk m4165a(Context context, int i, int[] iArr) {
        return new C0687bk(context, context.obtainStyledAttributes(i, iArr));
    }

    private C0687bk(Context context, TypedArray typedArray) {
        this.f3753a = context;
        this.f3754b = typedArray;
    }

    /* renamed from: a */
    public Drawable m4171a(int i) {
        int resourceId;
        return (!this.f3754b.hasValue(i) || (resourceId = this.f3754b.getResourceId(i, 0)) == 0) ? this.f3754b.getDrawable(i) : C0488a.m2457b(this.f3753a, resourceId);
    }

    /* renamed from: b */
    public Drawable m4176b(int i) {
        int resourceId;
        if (!this.f3754b.hasValue(i) || (resourceId = this.f3754b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return C0705k.m4313a().m4332a(this.f3753a, resourceId, true);
    }

    @Nullable
    /* renamed from: a */
    public Typeface m4170a(@StyleableRes int i, int i2, @Nullable ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.f3754b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f3755c == null) {
            this.f3755c = new TypedValue();
        }
        return ResourcesCompat.getFont(this.f3753a, resourceId, this.f3755c, i2, fontCallback);
    }

    /* renamed from: c */
    public CharSequence m4178c(int i) {
        return this.f3754b.getText(i);
    }

    /* renamed from: d */
    public String m4180d(int i) {
        return this.f3754b.getString(i);
    }

    /* renamed from: a */
    public boolean m4173a(int i, boolean z) {
        return this.f3754b.getBoolean(i, z);
    }

    /* renamed from: a */
    public int m4169a(int i, int i2) {
        return this.f3754b.getInt(i, i2);
    }

    /* renamed from: a */
    public float m4168a(int i, float f) {
        return this.f3754b.getFloat(i, f);
    }

    /* renamed from: b */
    public int m4175b(int i, int i2) {
        return this.f3754b.getColor(i, i2);
    }

    /* renamed from: e */
    public ColorStateList m4182e(int i) {
        int resourceId;
        ColorStateList m2454a;
        return (!this.f3754b.hasValue(i) || (resourceId = this.f3754b.getResourceId(i, 0)) == 0 || (m2454a = C0488a.m2454a(this.f3753a, resourceId)) == null) ? this.f3754b.getColorStateList(i) : m2454a;
    }

    /* renamed from: c */
    public int m4177c(int i, int i2) {
        return this.f3754b.getInteger(i, i2);
    }

    /* renamed from: b */
    public float m4174b(int i, float f) {
        return this.f3754b.getDimension(i, f);
    }

    /* renamed from: d */
    public int m4179d(int i, int i2) {
        return this.f3754b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: e */
    public int m4181e(int i, int i2) {
        return this.f3754b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: f */
    public int m4183f(int i, int i2) {
        return this.f3754b.getLayoutDimension(i, i2);
    }

    /* renamed from: g */
    public int m4185g(int i, int i2) {
        return this.f3754b.getResourceId(i, i2);
    }

    /* renamed from: f */
    public CharSequence[] m4184f(int i) {
        return this.f3754b.getTextArray(i);
    }

    /* renamed from: g */
    public boolean m4186g(int i) {
        return this.f3754b.hasValue(i);
    }

    /* renamed from: a */
    public void m4172a() {
        this.f3754b.recycle();
    }
}
