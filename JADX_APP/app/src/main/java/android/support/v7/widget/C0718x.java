package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.widget.AutoSizeableTextView;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.appcompat.R;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* renamed from: android.support.v7.widget.x */
/* loaded from: classes.dex */
class C0718x {

    /* renamed from: a */
    private final TextView f3931a;

    /* renamed from: b */
    private C0685bi f3932b;

    /* renamed from: c */
    private C0685bi f3933c;

    /* renamed from: d */
    private C0685bi f3934d;

    /* renamed from: e */
    private C0685bi f3935e;

    /* renamed from: f */
    private C0685bi f3936f;

    /* renamed from: g */
    private C0685bi f3937g;

    /* renamed from: h */
    @NonNull
    private final C0720z f3938h;

    /* renamed from: i */
    private int f3939i = 0;

    /* renamed from: j */
    private Typeface f3940j;

    /* renamed from: k */
    private boolean f3941k;

    C0718x(TextView textView) {
        this.f3931a = textView;
        this.f3938h = new C0720z(this.f3931a);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    void m4377a(AttributeSet attributeSet, int i) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        boolean z;
        boolean z2;
        Context context = this.f3931a.getContext();
        C0705k m4313a = C0705k.m4313a();
        C0687bk m4167a = C0687bk.m4167a(context, attributeSet, R.styleable.AppCompatTextHelper, i, 0);
        int m4185g = m4167a.m4185g(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (m4167a.m4186g(R.styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.f3932b = m4368a(context, m4313a, m4167a.m4185g(R.styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (m4167a.m4186g(R.styleable.AppCompatTextHelper_android_drawableTop)) {
            this.f3933c = m4368a(context, m4313a, m4167a.m4185g(R.styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (m4167a.m4186g(R.styleable.AppCompatTextHelper_android_drawableRight)) {
            this.f3934d = m4368a(context, m4313a, m4167a.m4185g(R.styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (m4167a.m4186g(R.styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.f3935e = m4368a(context, m4313a, m4167a.m4185g(R.styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (m4167a.m4186g(R.styleable.AppCompatTextHelper_android_drawableStart)) {
                this.f3936f = m4368a(context, m4313a, m4167a.m4185g(R.styleable.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (m4167a.m4186g(R.styleable.AppCompatTextHelper_android_drawableEnd)) {
                this.f3937g = m4368a(context, m4313a, m4167a.m4185g(R.styleable.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        m4167a.m4172a();
        boolean z3 = this.f3931a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (m4185g != -1) {
            C0687bk m4165a = C0687bk.m4165a(context, m4185g, R.styleable.TextAppearance);
            if (z3 || !m4165a.m4186g(R.styleable.TextAppearance_textAllCaps)) {
                z = false;
                z2 = false;
            } else {
                z2 = m4165a.m4173a(R.styleable.TextAppearance_textAllCaps, false);
                z = true;
            }
            m4369a(context, m4165a);
            if (Build.VERSION.SDK_INT < 23) {
                colorStateList3 = m4165a.m4186g(R.styleable.TextAppearance_android_textColor) ? m4165a.m4182e(R.styleable.TextAppearance_android_textColor) : null;
                colorStateList2 = m4165a.m4186g(R.styleable.TextAppearance_android_textColorHint) ? m4165a.m4182e(R.styleable.TextAppearance_android_textColorHint) : null;
                colorStateList = m4165a.m4186g(R.styleable.TextAppearance_android_textColorLink) ? m4165a.m4182e(R.styleable.TextAppearance_android_textColorLink) : null;
            } else {
                colorStateList = null;
                colorStateList2 = null;
                colorStateList3 = null;
            }
            m4165a.m4172a();
        } else {
            colorStateList = null;
            colorStateList2 = null;
            colorStateList3 = null;
            z = false;
            z2 = false;
        }
        C0687bk m4167a2 = C0687bk.m4167a(context, attributeSet, R.styleable.TextAppearance, i, 0);
        if (!z3 && m4167a2.m4186g(R.styleable.TextAppearance_textAllCaps)) {
            z2 = m4167a2.m4173a(R.styleable.TextAppearance_textAllCaps, false);
            z = true;
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (m4167a2.m4186g(R.styleable.TextAppearance_android_textColor)) {
                colorStateList3 = m4167a2.m4182e(R.styleable.TextAppearance_android_textColor);
            }
            if (m4167a2.m4186g(R.styleable.TextAppearance_android_textColorHint)) {
                colorStateList2 = m4167a2.m4182e(R.styleable.TextAppearance_android_textColorHint);
            }
            if (m4167a2.m4186g(R.styleable.TextAppearance_android_textColorLink)) {
                colorStateList = m4167a2.m4182e(R.styleable.TextAppearance_android_textColorLink);
            }
        }
        if (Build.VERSION.SDK_INT >= 28 && m4167a2.m4186g(R.styleable.TextAppearance_android_textSize) && m4167a2.m4181e(R.styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f3931a.setTextSize(0, 0.0f);
        }
        m4369a(context, m4167a2);
        m4167a2.m4172a();
        if (colorStateList3 != null) {
            this.f3931a.setTextColor(colorStateList3);
        }
        if (colorStateList2 != null) {
            this.f3931a.setHintTextColor(colorStateList2);
        }
        if (colorStateList != null) {
            this.f3931a.setLinkTextColor(colorStateList);
        }
        if (!z3 && z) {
            m4379a(z2);
        }
        if (this.f3940j != null) {
            this.f3931a.setTypeface(this.f3940j, this.f3939i);
        }
        this.f3938h.m4408a(attributeSet, i);
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE && this.f3938h.m4404a() != 0) {
            int[] m4413e = this.f3938h.m4413e();
            if (m4413e.length > 0) {
                if (this.f3931a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f3931a.setAutoSizeTextTypeUniformWithConfiguration(this.f3938h.m4411c(), this.f3938h.m4412d(), this.f3938h.m4410b(), 0);
                } else {
                    this.f3931a.setAutoSizeTextTypeUniformWithPresetSizes(m4413e, 0);
                }
            }
        }
        C0687bk m4166a = C0687bk.m4166a(context, attributeSet, R.styleable.AppCompatTextView);
        int m4181e = m4166a.m4181e(R.styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
        int m4181e2 = m4166a.m4181e(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int m4181e3 = m4166a.m4181e(R.styleable.AppCompatTextView_lineHeight, -1);
        m4166a.m4172a();
        if (m4181e != -1) {
            TextViewCompat.setFirstBaselineToTopHeight(this.f3931a, m4181e);
        }
        if (m4181e2 != -1) {
            TextViewCompat.setLastBaselineToBottomHeight(this.f3931a, m4181e2);
        }
        if (m4181e3 != -1) {
            TextViewCompat.setLineHeight(this.f3931a, m4181e3);
        }
    }

    /* renamed from: a */
    private void m4369a(Context context, C0687bk c0687bk) {
        String m4180d;
        this.f3939i = c0687bk.m4169a(R.styleable.TextAppearance_android_textStyle, this.f3939i);
        if (c0687bk.m4186g(R.styleable.TextAppearance_android_fontFamily) || c0687bk.m4186g(R.styleable.TextAppearance_fontFamily)) {
            this.f3940j = null;
            int i = c0687bk.m4186g(R.styleable.TextAppearance_fontFamily) ? R.styleable.TextAppearance_fontFamily : R.styleable.TextAppearance_android_fontFamily;
            if (!context.isRestricted()) {
                try {
                    this.f3940j = c0687bk.m4170a(i, this.f3939i, new ResourcesCompat.FontCallback() { // from class: android.support.v7.widget.x.1

                        /* renamed from: a */
                        final /* synthetic */ WeakReference f3942a;

                        AnonymousClass1(WeakReference weakReference) {
                            weakReference = weakReference;
                        }

                        @Override // android.support.v4.content.res.ResourcesCompat.FontCallback
                        public void onFontRetrieved(@NonNull Typeface typeface) {
                            C0718x.this.m4378a(weakReference, typeface);
                        }

                        @Override // android.support.v4.content.res.ResourcesCompat.FontCallback
                        public void onFontRetrievalFailed(int i2) {
                        }
                    });
                    this.f3941k = this.f3940j == null;
                } catch (Resources.NotFoundException e) {
                } catch (UnsupportedOperationException e2) {
                }
            }
            if (this.f3940j == null && (m4180d = c0687bk.m4180d(i)) != null) {
                this.f3940j = Typeface.create(m4180d, this.f3939i);
            }
            return;
        }
        if (c0687bk.m4186g(R.styleable.TextAppearance_android_typeface)) {
            this.f3941k = false;
            switch (c0687bk.m4169a(R.styleable.TextAppearance_android_typeface, 1)) {
                case 1:
                    this.f3940j = Typeface.SANS_SERIF;
                    break;
                case 2:
                    this.f3940j = Typeface.SERIF;
                    break;
                case 3:
                    this.f3940j = Typeface.MONOSPACE;
                    break;
            }
        }
    }

    /* renamed from: android.support.v7.widget.x$1 */
    class AnonymousClass1 extends ResourcesCompat.FontCallback {

        /* renamed from: a */
        final /* synthetic */ WeakReference f3942a;

        AnonymousClass1(WeakReference weakReference) {
            weakReference = weakReference;
        }

        @Override // android.support.v4.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            C0718x.this.m4378a(weakReference, typeface);
        }

        @Override // android.support.v4.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i2) {
        }
    }

    /* renamed from: a */
    void m4378a(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f3941k) {
            this.f3940j = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.f3939i);
            }
        }
    }

    /* renamed from: a */
    void m4376a(Context context, int i) {
        ColorStateList m4182e;
        C0687bk m4165a = C0687bk.m4165a(context, i, R.styleable.TextAppearance);
        if (m4165a.m4186g(R.styleable.TextAppearance_textAllCaps)) {
            m4379a(m4165a.m4173a(R.styleable.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && m4165a.m4186g(R.styleable.TextAppearance_android_textColor) && (m4182e = m4165a.m4182e(R.styleable.TextAppearance_android_textColor)) != null) {
            this.f3931a.setTextColor(m4182e);
        }
        if (m4165a.m4186g(R.styleable.TextAppearance_android_textSize) && m4165a.m4181e(R.styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f3931a.setTextSize(0, 0.0f);
        }
        m4369a(context, m4165a);
        m4165a.m4172a();
        if (this.f3940j != null) {
            this.f3931a.setTypeface(this.f3940j, this.f3939i);
        }
    }

    /* renamed from: a */
    void m4379a(boolean z) {
        this.f3931a.setAllCaps(z);
    }

    /* renamed from: a */
    void m4372a() {
        if (this.f3932b != null || this.f3933c != null || this.f3934d != null || this.f3935e != null) {
            Drawable[] compoundDrawables = this.f3931a.getCompoundDrawables();
            m4370a(compoundDrawables[0], this.f3932b);
            m4370a(compoundDrawables[1], this.f3933c);
            m4370a(compoundDrawables[2], this.f3934d);
            m4370a(compoundDrawables[3], this.f3935e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f3936f != null || this.f3937g != null) {
                Drawable[] compoundDrawablesRelative = this.f3931a.getCompoundDrawablesRelative();
                m4370a(compoundDrawablesRelative[0], this.f3936f);
                m4370a(compoundDrawablesRelative[2], this.f3937g);
            }
        }
    }

    /* renamed from: a */
    private void m4370a(Drawable drawable, C0685bi c0685bi) {
        if (drawable != null && c0685bi != null) {
            C0705k.m4316a(drawable, c0685bi, this.f3931a.getDrawableState());
        }
    }

    /* renamed from: a */
    private static C0685bi m4368a(Context context, C0705k c0705k, int i) {
        ColorStateList m4334b = c0705k.m4334b(context, i);
        if (m4334b == null) {
            return null;
        }
        C0685bi c0685bi = new C0685bi();
        c0685bi.f3751d = true;
        c0685bi.f3748a = m4334b;
        return c0685bi;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    void m4380a(boolean z, int i, int i2, int i3, int i4) {
        if (!AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            m4382b();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    void m4374a(int i, float f) {
        if (!AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE && !m4383c()) {
            m4371b(i, f);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: b */
    void m4382b() {
        this.f3938h.m4414f();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: c */
    boolean m4383c() {
        return this.f3938h.m4415g();
    }

    /* renamed from: b */
    private void m4371b(int i, float f) {
        this.f3938h.m4406a(i, f);
    }

    /* renamed from: a */
    void m4373a(int i) {
        this.f3938h.m4405a(i);
    }

    /* renamed from: a */
    void m4375a(int i, int i2, int i3, int i4) {
        this.f3938h.m4407a(i, i2, i3, i4);
    }

    /* renamed from: a */
    void m4381a(@NonNull int[] iArr, int i) {
        this.f3938h.m4409a(iArr, i);
    }

    /* renamed from: d */
    int m4384d() {
        return this.f3938h.m4404a();
    }

    /* renamed from: e */
    int m4385e() {
        return this.f3938h.m4410b();
    }

    /* renamed from: f */
    int m4386f() {
        return this.f3938h.m4411c();
    }

    /* renamed from: g */
    int m4387g() {
        return this.f3938h.m4412d();
    }

    /* renamed from: h */
    int[] m4388h() {
        return this.f3938h.m4413e();
    }
}
