package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

@RequiresApi(21)
/* renamed from: android.support.v7.widget.ay */
/* loaded from: classes.dex */
class C0674ay extends Drawable {

    /* renamed from: a */
    private float f3655a;

    /* renamed from: c */
    private final RectF f3657c;

    /* renamed from: d */
    private final Rect f3658d;

    /* renamed from: e */
    private float f3659e;

    /* renamed from: h */
    private ColorStateList f3662h;

    /* renamed from: i */
    private PorterDuffColorFilter f3663i;

    /* renamed from: j */
    private ColorStateList f3664j;

    /* renamed from: f */
    private boolean f3660f = false;

    /* renamed from: g */
    private boolean f3661g = true;

    /* renamed from: k */
    private PorterDuff.Mode f3665k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private final Paint f3656b = new Paint(5);

    C0674ay(ColorStateList colorStateList, float f) {
        this.f3655a = f;
        m4075b(colorStateList);
        this.f3657c = new RectF();
        this.f3658d = new Rect();
    }

    /* renamed from: b */
    private void m4075b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f3662h = colorStateList;
        this.f3656b.setColor(this.f3662h.getColorForState(getState(), this.f3662h.getDefaultColor()));
    }

    /* renamed from: a */
    void m4078a(float f, boolean z, boolean z2) {
        if (f != this.f3659e || this.f3660f != z || this.f3661g != z2) {
            this.f3659e = f;
            this.f3660f = z;
            this.f3661g = z2;
            m4074a((Rect) null);
            invalidateSelf();
        }
    }

    /* renamed from: a */
    float m4076a() {
        return this.f3659e;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f3656b;
        if (this.f3663i != null && paint.getColorFilter() == null) {
            paint.setColorFilter(this.f3663i);
            z = true;
        } else {
            z = false;
        }
        canvas.drawRoundRect(this.f3657c, this.f3655a, this.f3655a, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    /* renamed from: a */
    private void m4074a(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f3657c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f3658d.set(rect);
        if (this.f3660f) {
            this.f3658d.inset((int) Math.ceil(C0675az.m4085b(this.f3659e, this.f3655a, this.f3661g)), (int) Math.ceil(C0675az.m4082a(this.f3659e, this.f3655a, this.f3661g)));
            this.f3657c.set(this.f3658d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m4074a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f3658d, this.f3655a);
    }

    /* renamed from: a */
    void m4077a(float f) {
        if (f != this.f3655a) {
            this.f3655a = f;
            m4074a((Rect) null);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3656b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3656b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: b */
    public float m4080b() {
        return this.f3655a;
    }

    /* renamed from: a */
    public void m4079a(@Nullable ColorStateList colorStateList) {
        m4075b(colorStateList);
        invalidateSelf();
    }

    /* renamed from: c */
    public ColorStateList m4081c() {
        return this.f3662h;
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f3664j = colorStateList;
        this.f3663i = m4073a(this.f3664j, this.f3665k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f3665k = mode;
        this.f3663i = m4073a(this.f3664j, this.f3665k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.f3662h.getColorForState(iArr, this.f3662h.getDefaultColor());
        boolean z = colorForState != this.f3656b.getColor();
        if (z) {
            this.f3656b.setColor(colorForState);
        }
        if (this.f3664j == null || this.f3665k == null) {
            return z;
        }
        this.f3663i = m4073a(this.f3664j, this.f3665k);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.f3664j != null && this.f3664j.isStateful()) || (this.f3662h != null && this.f3662h.isStateful()) || super.isStateful();
    }

    /* renamed from: a */
    private PorterDuffColorFilter m4073a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }
}
