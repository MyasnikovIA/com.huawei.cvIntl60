package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.SeekBar;

/* renamed from: android.support.v7.widget.v */
/* loaded from: classes.dex */
class C0716v extends C0712r {

    /* renamed from: a */
    private final SeekBar f3903a;

    /* renamed from: b */
    private Drawable f3904b;

    /* renamed from: c */
    private ColorStateList f3905c;

    /* renamed from: d */
    private PorterDuff.Mode f3906d;

    /* renamed from: e */
    private boolean f3907e;

    /* renamed from: f */
    private boolean f3908f;

    C0716v(SeekBar seekBar) {
        super(seekBar);
        this.f3905c = null;
        this.f3906d = null;
        this.f3907e = false;
        this.f3908f = false;
        this.f3903a = seekBar;
    }

    @Override // android.support.v7.widget.C0712r
    /* renamed from: a */
    void mo4356a(AttributeSet attributeSet, int i) {
        super.mo4356a(attributeSet, i);
        C0687bk m4167a = C0687bk.m4167a(this.f3903a.getContext(), attributeSet, R.styleable.AppCompatSeekBar, i, 0);
        Drawable m4176b = m4167a.m4176b(R.styleable.AppCompatSeekBar_android_thumb);
        if (m4176b != null) {
            this.f3903a.setThumb(m4176b);
        }
        m4359a(m4167a.m4171a(R.styleable.AppCompatSeekBar_tickMark));
        if (m4167a.m4186g(R.styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.f3906d = C0659aj.m3929a(m4167a.m4169a(R.styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.f3906d);
            this.f3908f = true;
        }
        if (m4167a.m4186g(R.styleable.AppCompatSeekBar_tickMarkTint)) {
            this.f3905c = m4167a.m4182e(R.styleable.AppCompatSeekBar_tickMarkTint);
            this.f3907e = true;
        }
        m4167a.m4172a();
        m4357d();
    }

    /* renamed from: a */
    void m4359a(@Nullable Drawable drawable) {
        if (this.f3904b != null) {
            this.f3904b.setCallback(null);
        }
        this.f3904b = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f3903a);
            DrawableCompat.setLayoutDirection(drawable, ViewCompat.getLayoutDirection(this.f3903a));
            if (drawable.isStateful()) {
                drawable.setState(this.f3903a.getDrawableState());
            }
            m4357d();
        }
        this.f3903a.invalidate();
    }

    /* renamed from: d */
    private void m4357d() {
        if (this.f3904b != null) {
            if (this.f3907e || this.f3908f) {
                this.f3904b = DrawableCompat.wrap(this.f3904b.mutate());
                if (this.f3907e) {
                    DrawableCompat.setTintList(this.f3904b, this.f3905c);
                }
                if (this.f3908f) {
                    DrawableCompat.setTintMode(this.f3904b, this.f3906d);
                }
                if (this.f3904b.isStateful()) {
                    this.f3904b.setState(this.f3903a.getDrawableState());
                }
            }
        }
    }

    /* renamed from: b */
    void m4360b() {
        if (this.f3904b != null) {
            this.f3904b.jumpToCurrentState();
        }
    }

    /* renamed from: c */
    void m4361c() {
        Drawable drawable = this.f3904b;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f3903a.getDrawableState())) {
            this.f3903a.invalidateDrawable(drawable);
        }
    }

    /* renamed from: a */
    void m4358a(Canvas canvas) {
        int max;
        if (this.f3904b != null && (max = this.f3903a.getMax()) > 1) {
            int intrinsicWidth = this.f3904b.getIntrinsicWidth();
            int intrinsicHeight = this.f3904b.getIntrinsicHeight();
            int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
            int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
            this.f3904b.setBounds(-i, -i2, i, i2);
            float width = ((this.f3903a.getWidth() - this.f3903a.getPaddingLeft()) - this.f3903a.getPaddingRight()) / max;
            int save = canvas.save();
            canvas.translate(this.f3903a.getPaddingLeft(), this.f3903a.getHeight() / 2);
            for (int i3 = 0; i3 <= max; i3++) {
                this.f3904b.draw(canvas);
                canvas.translate(width, 0.0f);
            }
            canvas.restoreToCount(save);
        }
    }
}
