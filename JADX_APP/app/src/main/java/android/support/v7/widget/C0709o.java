package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.widget.ImageViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.p048a.p049a.C0488a;
import android.util.AttributeSet;
import android.widget.ImageView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.o */
/* loaded from: classes.dex */
public class C0709o {

    /* renamed from: a */
    private final ImageView f3887a;

    /* renamed from: b */
    private C0685bi f3888b;

    /* renamed from: c */
    private C0685bi f3889c;

    /* renamed from: d */
    private C0685bi f3890d;

    public C0709o(ImageView imageView) {
        this.f3887a = imageView;
    }

    /* renamed from: a */
    public void m4345a(AttributeSet attributeSet, int i) {
        int m4185g;
        C0687bk m4167a = C0687bk.m4167a(this.f3887a.getContext(), attributeSet, R.styleable.AppCompatImageView, i, 0);
        try {
            Drawable drawable = this.f3887a.getDrawable();
            if (drawable == null && (m4185g = m4167a.m4185g(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = C0488a.m2457b(this.f3887a.getContext(), m4185g)) != null) {
                this.f3887a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                C0659aj.m3930a(drawable);
            }
            if (m4167a.m4186g(R.styleable.AppCompatImageView_tint)) {
                ImageViewCompat.setImageTintList(this.f3887a, m4167a.m4182e(R.styleable.AppCompatImageView_tint));
            }
            if (m4167a.m4186g(R.styleable.AppCompatImageView_tintMode)) {
                ImageViewCompat.setImageTintMode(this.f3887a, C0659aj.m3929a(m4167a.m4169a(R.styleable.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            m4167a.m4172a();
        }
    }

    /* renamed from: a */
    public void m4342a(int i) {
        if (i != 0) {
            Drawable m2457b = C0488a.m2457b(this.f3887a.getContext(), i);
            if (m2457b != null) {
                C0659aj.m3930a(m2457b);
            }
            this.f3887a.setImageDrawable(m2457b);
        } else {
            this.f3887a.setImageDrawable(null);
        }
        m4349d();
    }

    /* renamed from: a */
    boolean m4346a() {
        return Build.VERSION.SDK_INT < 21 || !(this.f3887a.getBackground() instanceof RippleDrawable);
    }

    /* renamed from: a */
    void m4343a(ColorStateList colorStateList) {
        if (this.f3889c == null) {
            this.f3889c = new C0685bi();
        }
        this.f3889c.f3748a = colorStateList;
        this.f3889c.f3751d = true;
        m4349d();
    }

    /* renamed from: b */
    ColorStateList m4347b() {
        if (this.f3889c != null) {
            return this.f3889c.f3748a;
        }
        return null;
    }

    /* renamed from: a */
    void m4344a(PorterDuff.Mode mode) {
        if (this.f3889c == null) {
            this.f3889c = new C0685bi();
        }
        this.f3889c.f3749b = mode;
        this.f3889c.f3750c = true;
        m4349d();
    }

    /* renamed from: c */
    PorterDuff.Mode m4348c() {
        if (this.f3889c != null) {
            return this.f3889c.f3749b;
        }
        return null;
    }

    /* renamed from: d */
    void m4349d() {
        Drawable drawable = this.f3887a.getDrawable();
        if (drawable != null) {
            C0659aj.m3930a(drawable);
        }
        if (drawable != null) {
            if (!m4341e() || !m4340a(drawable)) {
                if (this.f3889c != null) {
                    C0705k.m4316a(drawable, this.f3889c, this.f3887a.getDrawableState());
                } else if (this.f3888b != null) {
                    C0705k.m4316a(drawable, this.f3888b, this.f3887a.getDrawableState());
                }
            }
        }
    }

    /* renamed from: e */
    private boolean m4341e() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f3888b != null : i == 21;
    }

    /* renamed from: a */
    private boolean m4340a(@NonNull Drawable drawable) {
        if (this.f3890d == null) {
            this.f3890d = new C0685bi();
        }
        C0685bi c0685bi = this.f3890d;
        c0685bi.m4164a();
        ColorStateList imageTintList = ImageViewCompat.getImageTintList(this.f3887a);
        if (imageTintList != null) {
            c0685bi.f3751d = true;
            c0685bi.f3748a = imageTintList;
        }
        PorterDuff.Mode imageTintMode = ImageViewCompat.getImageTintMode(this.f3887a);
        if (imageTintMode != null) {
            c0685bi.f3750c = true;
            c0685bi.f3749b = imageTintMode;
        }
        if (!c0685bi.f3751d && !c0685bi.f3750c) {
            return false;
        }
        C0705k.m4316a(drawable, c0685bi, this.f3887a.getDrawableState());
        return true;
    }
}
