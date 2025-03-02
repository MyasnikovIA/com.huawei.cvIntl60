package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;

/* renamed from: android.support.v7.widget.f */
/* loaded from: classes.dex */
class C0700f {

    /* renamed from: a */
    private final View f3851a;

    /* renamed from: d */
    private C0685bi f3854d;

    /* renamed from: e */
    private C0685bi f3855e;

    /* renamed from: f */
    private C0685bi f3856f;

    /* renamed from: c */
    private int f3853c = -1;

    /* renamed from: b */
    private final C0705k f3852b = C0705k.m4313a();

    C0700f(View view) {
        this.f3851a = view;
    }

    /* renamed from: a */
    void m4294a(AttributeSet attributeSet, int i) {
        C0687bk m4167a = C0687bk.m4167a(this.f3851a.getContext(), attributeSet, R.styleable.ViewBackgroundHelper, i, 0);
        try {
            if (m4167a.m4186g(R.styleable.ViewBackgroundHelper_android_background)) {
                this.f3853c = m4167a.m4185g(R.styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList m4334b = this.f3852b.m4334b(this.f3851a.getContext(), this.f3853c);
                if (m4334b != null) {
                    m4296b(m4334b);
                }
            }
            if (m4167a.m4186g(R.styleable.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.setBackgroundTintList(this.f3851a, m4167a.m4182e(R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (m4167a.m4186g(R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.setBackgroundTintMode(this.f3851a, C0659aj.m3929a(m4167a.m4169a(R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            m4167a.m4172a();
        }
    }

    /* renamed from: a */
    void m4290a(int i) {
        this.f3853c = i;
        m4296b(this.f3852b != null ? this.f3852b.m4334b(this.f3851a.getContext(), i) : null);
        m4297c();
    }

    /* renamed from: a */
    void m4293a(Drawable drawable) {
        this.f3853c = -1;
        m4296b((ColorStateList) null);
        m4297c();
    }

    /* renamed from: a */
    void m4291a(ColorStateList colorStateList) {
        if (this.f3855e == null) {
            this.f3855e = new C0685bi();
        }
        this.f3855e.f3748a = colorStateList;
        this.f3855e.f3751d = true;
        m4297c();
    }

    /* renamed from: a */
    ColorStateList m4289a() {
        if (this.f3855e != null) {
            return this.f3855e.f3748a;
        }
        return null;
    }

    /* renamed from: a */
    void m4292a(PorterDuff.Mode mode) {
        if (this.f3855e == null) {
            this.f3855e = new C0685bi();
        }
        this.f3855e.f3749b = mode;
        this.f3855e.f3750c = true;
        m4297c();
    }

    /* renamed from: b */
    PorterDuff.Mode m4295b() {
        if (this.f3855e != null) {
            return this.f3855e.f3749b;
        }
        return null;
    }

    /* renamed from: c */
    void m4297c() {
        Drawable background = this.f3851a.getBackground();
        if (background != null) {
            if (!m4288d() || !m4287b(background)) {
                if (this.f3855e != null) {
                    C0705k.m4316a(background, this.f3855e, this.f3851a.getDrawableState());
                } else if (this.f3854d != null) {
                    C0705k.m4316a(background, this.f3854d, this.f3851a.getDrawableState());
                }
            }
        }
    }

    /* renamed from: b */
    void m4296b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f3854d == null) {
                this.f3854d = new C0685bi();
            }
            this.f3854d.f3748a = colorStateList;
            this.f3854d.f3751d = true;
        } else {
            this.f3854d = null;
        }
        m4297c();
    }

    /* renamed from: d */
    private boolean m4288d() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f3854d != null : i == 21;
    }

    /* renamed from: b */
    private boolean m4287b(@NonNull Drawable drawable) {
        if (this.f3856f == null) {
            this.f3856f = new C0685bi();
        }
        C0685bi c0685bi = this.f3856f;
        c0685bi.m4164a();
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(this.f3851a);
        if (backgroundTintList != null) {
            c0685bi.f3751d = true;
            c0685bi.f3748a = backgroundTintList;
        }
        PorterDuff.Mode backgroundTintMode = ViewCompat.getBackgroundTintMode(this.f3851a);
        if (backgroundTintMode != null) {
            c0685bi.f3750c = true;
            c0685bi.f3749b = backgroundTintMode;
        }
        if (!c0685bi.f3751d && !c0685bi.f3750c) {
            return false;
        }
        C0705k.m4316a(drawable, c0685bi, this.f3851a.getDrawableState());
        return true;
    }
}
