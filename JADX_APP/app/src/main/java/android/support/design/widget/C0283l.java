package android.support.design.widget;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.support.v7.p050b.p051a.C0524c;

/* renamed from: android.support.design.widget.l */
/* loaded from: classes.dex */
public class C0283l extends C0524c {

    /* renamed from: a */
    static final double f1822a = Math.cos(Math.toRadians(45.0d));

    /* renamed from: b */
    final Paint f1823b;

    /* renamed from: c */
    final Paint f1824c;

    /* renamed from: d */
    final RectF f1825d;

    /* renamed from: e */
    float f1826e;

    /* renamed from: f */
    Path f1827f;

    /* renamed from: g */
    float f1828g;

    /* renamed from: h */
    float f1829h;

    /* renamed from: i */
    float f1830i;

    /* renamed from: j */
    float f1831j;

    /* renamed from: k */
    private boolean f1832k;

    /* renamed from: l */
    private final int f1833l;

    /* renamed from: m */
    private final int f1834m;

    /* renamed from: n */
    private final int f1835n;

    /* renamed from: o */
    private boolean f1836o;

    /* renamed from: p */
    private float f1837p;

    /* renamed from: q */
    private boolean f1838q;

    /* renamed from: c */
    private static int m2175c(float f) {
        int round = Math.round(f);
        return round % 2 == 1 ? round - 1 : round;
    }

    @Override // android.support.v7.p050b.p051a.C0524c, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.f1823b.setAlpha(i);
        this.f1824c.setAlpha(i);
    }

    @Override // android.support.v7.p050b.p051a.C0524c, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f1832k = true;
    }

    /* renamed from: a */
    public void m2179a(float f, float f2) {
        if (f < 0.0f || f2 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float m2175c = m2175c(f);
        float m2175c2 = m2175c(f2);
        if (m2175c > m2175c2) {
            if (!this.f1838q) {
                this.f1838q = true;
            }
            m2175c = m2175c2;
        }
        if (this.f1831j != m2175c || this.f1829h != m2175c2) {
            this.f1831j = m2175c;
            this.f1829h = m2175c2;
            this.f1830i = Math.round(m2175c * 1.5f);
            this.f1828g = m2175c2;
            this.f1832k = true;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public void m2178a(float f) {
        m2179a(f, this.f1829h);
    }

    /* renamed from: a */
    public float m2177a() {
        return this.f1831j;
    }

    @Override // android.support.v7.p050b.p051a.C0524c, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m2171a(this.f1829h, this.f1826e, this.f1836o));
        int ceil2 = (int) Math.ceil(m2174b(this.f1829h, this.f1826e, this.f1836o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* renamed from: a */
    public static float m2171a(float f, float f2, boolean z) {
        return z ? (float) ((1.5f * f) + ((1.0d - f1822a) * f2)) : 1.5f * f;
    }

    /* renamed from: b */
    public static float m2174b(float f, float f2, boolean z) {
        if (z) {
            return (float) (f + ((1.0d - f1822a) * f2));
        }
        return f;
    }

    @Override // android.support.v7.p050b.p051a.C0524c, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.support.v7.p050b.p051a.C0524c, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1832k) {
            m2173a(getBounds());
            this.f1832k = false;
        }
        m2172a(canvas);
        super.draw(canvas);
    }

    /* renamed from: b */
    public final void m2180b(float f) {
        if (this.f1837p != f) {
            this.f1837p = f;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    private void m2172a(Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(this.f1837p, this.f1825d.centerX(), this.f1825d.centerY());
        float f = (-this.f1826e) - this.f1830i;
        float f2 = this.f1826e;
        boolean z = this.f1825d.width() - (2.0f * f2) > 0.0f;
        boolean z2 = this.f1825d.height() - (2.0f * f2) > 0.0f;
        float f3 = this.f1831j - (this.f1831j * 0.25f);
        float f4 = f2 / ((this.f1831j - (this.f1831j * 0.5f)) + f2);
        float f5 = f2 / (f3 + f2);
        float f6 = f2 / (f2 + (this.f1831j - (this.f1831j * 1.0f)));
        int save2 = canvas.save();
        canvas.translate(this.f1825d.left + f2, this.f1825d.top + f2);
        canvas.scale(f4, f5);
        canvas.drawPath(this.f1827f, this.f1823b);
        if (z) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(0.0f, f, this.f1825d.width() - (2.0f * f2), -this.f1826e, this.f1824c);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.f1825d.right - f2, this.f1825d.bottom - f2);
        canvas.scale(f4, f6);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f1827f, this.f1823b);
        if (z) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(0.0f, f, this.f1825d.width() - (2.0f * f2), this.f1830i + (-this.f1826e), this.f1824c);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.f1825d.left + f2, this.f1825d.bottom - f2);
        canvas.scale(f4, f6);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f1827f, this.f1823b);
        if (z2) {
            canvas.scale(1.0f / f6, 1.0f);
            canvas.drawRect(0.0f, f, this.f1825d.height() - (2.0f * f2), -this.f1826e, this.f1824c);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        canvas.translate(this.f1825d.right - f2, this.f1825d.top + f2);
        canvas.scale(f4, f5);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f1827f, this.f1823b);
        if (z2) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(0.0f, f, this.f1825d.height() - (2.0f * f2), -this.f1826e, this.f1824c);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(save);
    }

    /* renamed from: c */
    private void m2176c() {
        RectF rectF = new RectF(-this.f1826e, -this.f1826e, this.f1826e, this.f1826e);
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(-this.f1830i, -this.f1830i);
        if (this.f1827f == null) {
            this.f1827f = new Path();
        } else {
            this.f1827f.reset();
        }
        this.f1827f.setFillType(Path.FillType.EVEN_ODD);
        this.f1827f.moveTo(-this.f1826e, 0.0f);
        this.f1827f.rLineTo(-this.f1830i, 0.0f);
        this.f1827f.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f1827f.arcTo(rectF, 270.0f, -90.0f, false);
        this.f1827f.close();
        float f = -rectF2.top;
        if (f > 0.0f) {
            float f2 = this.f1826e / f;
            this.f1823b.setShader(new RadialGradient(0.0f, 0.0f, f, new int[]{0, this.f1833l, this.f1834m, this.f1835n}, new float[]{0.0f, f2, f2 + ((1.0f - f2) / 2.0f), 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f1824c.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.f1833l, this.f1834m, this.f1835n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f1824c.setAntiAlias(false);
    }

    /* renamed from: a */
    private void m2173a(Rect rect) {
        float f = this.f1829h * 1.5f;
        this.f1825d.set(rect.left + this.f1829h, rect.top + f, rect.right - this.f1829h, rect.bottom - f);
        m2726b().setBounds((int) this.f1825d.left, (int) this.f1825d.top, (int) this.f1825d.right, (int) this.f1825d.bottom);
        m2176c();
    }
}
