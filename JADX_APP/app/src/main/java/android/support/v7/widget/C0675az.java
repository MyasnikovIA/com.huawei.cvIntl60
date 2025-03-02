package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v7.cardview.R;

/* renamed from: android.support.v7.widget.az */
/* loaded from: classes.dex */
class C0675az extends Drawable {

    /* renamed from: a */
    static a f3666a;

    /* renamed from: b */
    private static final double f3667b = Math.cos(Math.toRadians(45.0d));

    /* renamed from: c */
    private final int f3668c;

    /* renamed from: e */
    private Paint f3670e;

    /* renamed from: f */
    private Paint f3671f;

    /* renamed from: g */
    private final RectF f3672g;

    /* renamed from: h */
    private float f3673h;

    /* renamed from: i */
    private Path f3674i;

    /* renamed from: j */
    private float f3675j;

    /* renamed from: k */
    private float f3676k;

    /* renamed from: l */
    private float f3677l;

    /* renamed from: m */
    private ColorStateList f3678m;

    /* renamed from: o */
    private final int f3680o;

    /* renamed from: p */
    private final int f3681p;

    /* renamed from: n */
    private boolean f3679n = true;

    /* renamed from: q */
    private boolean f3682q = true;

    /* renamed from: r */
    private boolean f3683r = false;

    /* renamed from: d */
    private Paint f3669d = new Paint(5);

    /* renamed from: android.support.v7.widget.az$a */
    interface a {
        /* renamed from: a */
        void mo3838a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    C0675az(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f3680o = resources.getColor(R.color.cardview_shadow_start_color);
        this.f3681p = resources.getColor(R.color.cardview_shadow_end_color);
        this.f3668c = resources.getDimensionPixelSize(R.dimen.cardview_compat_inset_shadow);
        m4086b(colorStateList);
        this.f3670e = new Paint(5);
        this.f3670e.setStyle(Paint.Style.FILL);
        this.f3673h = (int) (0.5f + f);
        this.f3672g = new RectF();
        this.f3671f = new Paint(this.f3670e);
        this.f3671f.setAntiAlias(false);
        m4083a(f2, f3);
    }

    /* renamed from: b */
    private void m4086b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f3678m = colorStateList;
        this.f3669d.setColor(this.f3678m.getColorForState(getState(), this.f3678m.getDefaultColor()));
    }

    /* renamed from: d */
    private int m4088d(float f) {
        int i = (int) (0.5f + f);
        if (i % 2 == 1) {
            return i - 1;
        }
        return i;
    }

    /* renamed from: a */
    void m4094a(boolean z) {
        this.f3682q = z;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3669d.setAlpha(i);
        this.f3670e.setAlpha(i);
        this.f3671f.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f3679n = true;
    }

    /* renamed from: a */
    private void m4083a(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        }
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
        float m4088d = m4088d(f);
        float m4088d2 = m4088d(f2);
        if (m4088d > m4088d2) {
            if (!this.f3683r) {
                this.f3683r = true;
            }
            m4088d = m4088d2;
        }
        if (this.f3677l != m4088d || this.f3675j != m4088d2) {
            this.f3677l = m4088d;
            this.f3675j = m4088d2;
            this.f3676k = (int) ((m4088d * 1.5f) + this.f3668c + 0.5f);
            this.f3679n = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m4082a(this.f3675j, this.f3673h, this.f3682q));
        int ceil2 = (int) Math.ceil(m4085b(this.f3675j, this.f3673h, this.f3682q));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* renamed from: a */
    static float m4082a(float f, float f2, boolean z) {
        return z ? (float) ((1.5f * f) + ((1.0d - f3667b) * f2)) : 1.5f * f;
    }

    /* renamed from: b */
    static float m4085b(float f, float f2, boolean z) {
        if (z) {
            return (float) (f + ((1.0d - f3667b) * f2));
        }
        return f;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.f3678m.getColorForState(iArr, this.f3678m.getDefaultColor());
        if (this.f3669d.getColor() == colorForState) {
            return false;
        }
        this.f3669d.setColor(colorForState);
        this.f3679n = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.f3678m != null && this.f3678m.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3669d.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: a */
    void m4091a(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (0.5f + f);
        if (this.f3673h != f2) {
            this.f3673h = f2;
            this.f3679n = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f3679n) {
            m4087b(getBounds());
            this.f3679n = false;
        }
        canvas.translate(0.0f, this.f3677l / 2.0f);
        m4084a(canvas);
        canvas.translate(0.0f, (-this.f3677l) / 2.0f);
        f3666a.mo3838a(canvas, this.f3672g, this.f3673h, this.f3669d);
    }

    /* renamed from: a */
    private void m4084a(Canvas canvas) {
        float f = (-this.f3673h) - this.f3676k;
        float f2 = this.f3673h + this.f3668c + (this.f3677l / 2.0f);
        boolean z = this.f3672g.width() - (2.0f * f2) > 0.0f;
        boolean z2 = this.f3672g.height() - (2.0f * f2) > 0.0f;
        int save = canvas.save();
        canvas.translate(this.f3672g.left + f2, this.f3672g.top + f2);
        canvas.drawPath(this.f3674i, this.f3670e);
        if (z) {
            canvas.drawRect(0.0f, f, this.f3672g.width() - (2.0f * f2), -this.f3673h, this.f3671f);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        canvas.translate(this.f3672g.right - f2, this.f3672g.bottom - f2);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f3674i, this.f3670e);
        if (z) {
            canvas.drawRect(0.0f, f, this.f3672g.width() - (2.0f * f2), this.f3676k + (-this.f3673h), this.f3671f);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.f3672g.left + f2, this.f3672g.bottom - f2);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f3674i, this.f3670e);
        if (z2) {
            canvas.drawRect(0.0f, f, this.f3672g.height() - (2.0f * f2), -this.f3673h, this.f3671f);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.f3672g.right - f2, this.f3672g.top + f2);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f3674i, this.f3670e);
        if (z2) {
            canvas.drawRect(0.0f, f, this.f3672g.height() - (2.0f * f2), -this.f3673h, this.f3671f);
        }
        canvas.restoreToCount(save4);
    }

    /* renamed from: g */
    private void m4089g() {
        RectF rectF = new RectF(-this.f3673h, -this.f3673h, this.f3673h, this.f3673h);
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(-this.f3676k, -this.f3676k);
        if (this.f3674i == null) {
            this.f3674i = new Path();
        } else {
            this.f3674i.reset();
        }
        this.f3674i.setFillType(Path.FillType.EVEN_ODD);
        this.f3674i.moveTo(-this.f3673h, 0.0f);
        this.f3674i.rLineTo(-this.f3676k, 0.0f);
        this.f3674i.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f3674i.arcTo(rectF, 270.0f, -90.0f, false);
        this.f3674i.close();
        this.f3670e.setShader(new RadialGradient(0.0f, 0.0f, this.f3673h + this.f3676k, new int[]{this.f3680o, this.f3680o, this.f3681p}, new float[]{0.0f, this.f3673h / (this.f3673h + this.f3676k), 1.0f}, Shader.TileMode.CLAMP));
        this.f3671f.setShader(new LinearGradient(0.0f, (-this.f3673h) + this.f3676k, 0.0f, (-this.f3673h) - this.f3676k, new int[]{this.f3680o, this.f3680o, this.f3681p}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f3671f.setAntiAlias(false);
    }

    /* renamed from: b */
    private void m4087b(Rect rect) {
        float f = this.f3675j * 1.5f;
        this.f3672g.set(rect.left + this.f3675j, rect.top + f, rect.right - this.f3675j, rect.bottom - f);
        m4089g();
    }

    /* renamed from: a */
    float m4090a() {
        return this.f3673h;
    }

    /* renamed from: a */
    void m4093a(Rect rect) {
        getPadding(rect);
    }

    /* renamed from: b */
    void m4096b(float f) {
        m4083a(f, this.f3675j);
    }

    /* renamed from: c */
    void m4098c(float f) {
        m4083a(this.f3677l, f);
    }

    /* renamed from: b */
    float m4095b() {
        return this.f3677l;
    }

    /* renamed from: c */
    float m4097c() {
        return this.f3675j;
    }

    /* renamed from: d */
    float m4099d() {
        return (Math.max(this.f3675j, this.f3673h + this.f3668c + (this.f3675j / 2.0f)) * 2.0f) + ((this.f3675j + this.f3668c) * 2.0f);
    }

    /* renamed from: e */
    float m4100e() {
        return (Math.max(this.f3675j, this.f3673h + this.f3668c + ((this.f3675j * 1.5f) / 2.0f)) * 2.0f) + (((this.f3675j * 1.5f) + this.f3668c) * 2.0f);
    }

    /* renamed from: a */
    void m4092a(@Nullable ColorStateList colorStateList) {
        m4086b(colorStateList);
        invalidateSelf();
    }

    /* renamed from: f */
    ColorStateList m4101f() {
        return this.f3678m;
    }
}
