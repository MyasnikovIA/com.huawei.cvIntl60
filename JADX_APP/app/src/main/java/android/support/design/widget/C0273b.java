package android.support.design.widget;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.design.p038a.C0155a;
import android.support.v4.math.MathUtils;
import android.support.v4.text.TextDirectionHeuristicsCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.C0687bk;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.widget.b */
/* loaded from: classes.dex */
public final class C0273b {

    /* renamed from: a */
    private static final boolean f1679a;

    /* renamed from: b */
    private static final Paint f1680b;

    /* renamed from: A */
    private boolean f1681A;

    /* renamed from: B */
    private Bitmap f1682B;

    /* renamed from: C */
    private Paint f1683C;

    /* renamed from: D */
    private float f1684D;

    /* renamed from: E */
    private float f1685E;

    /* renamed from: F */
    private float f1686F;

    /* renamed from: G */
    private float f1687G;

    /* renamed from: H */
    private int[] f1688H;

    /* renamed from: I */
    private boolean f1689I;

    /* renamed from: L */
    private TimeInterpolator f1692L;

    /* renamed from: M */
    private TimeInterpolator f1693M;

    /* renamed from: N */
    private float f1694N;

    /* renamed from: O */
    private float f1695O;

    /* renamed from: P */
    private float f1696P;

    /* renamed from: Q */
    private int f1697Q;

    /* renamed from: R */
    private float f1698R;

    /* renamed from: S */
    private float f1699S;

    /* renamed from: T */
    private float f1700T;

    /* renamed from: U */
    private int f1701U;

    /* renamed from: c */
    private final View f1702c;

    /* renamed from: d */
    private boolean f1703d;

    /* renamed from: e */
    private float f1704e;

    /* renamed from: m */
    private ColorStateList f1712m;

    /* renamed from: n */
    private ColorStateList f1713n;

    /* renamed from: o */
    private float f1714o;

    /* renamed from: p */
    private float f1715p;

    /* renamed from: q */
    private float f1716q;

    /* renamed from: r */
    private float f1717r;

    /* renamed from: s */
    private float f1718s;

    /* renamed from: t */
    private float f1719t;

    /* renamed from: u */
    private Typeface f1720u;

    /* renamed from: v */
    private Typeface f1721v;

    /* renamed from: w */
    private Typeface f1722w;

    /* renamed from: x */
    private CharSequence f1723x;

    /* renamed from: y */
    private CharSequence f1724y;

    /* renamed from: z */
    private boolean f1725z;

    /* renamed from: i */
    private int f1708i = 16;

    /* renamed from: j */
    private int f1709j = 16;

    /* renamed from: k */
    private float f1710k = 15.0f;

    /* renamed from: l */
    private float f1711l = 15.0f;

    /* renamed from: J */
    private final TextPaint f1690J = new TextPaint(129);

    /* renamed from: K */
    private final TextPaint f1691K = new TextPaint(this.f1690J);

    /* renamed from: g */
    private final Rect f1706g = new Rect();

    /* renamed from: f */
    private final Rect f1705f = new Rect();

    /* renamed from: h */
    private final RectF f1707h = new RectF();

    static {
        f1679a = Build.VERSION.SDK_INT < 18;
        f1680b = null;
        if (f1680b != null) {
            f1680b.setAntiAlias(true);
            f1680b.setColor(-65281);
        }
    }

    public C0273b(View view) {
        this.f1702c = view;
    }

    /* renamed from: a */
    public void m2039a(TimeInterpolator timeInterpolator) {
        this.f1693M = timeInterpolator;
        m2057g();
    }

    /* renamed from: b */
    public void m2050b(TimeInterpolator timeInterpolator) {
        this.f1692L = timeInterpolator;
        m2057g();
    }

    /* renamed from: a */
    public void m2036a(float f) {
        if (this.f1710k != f) {
            this.f1710k = f;
            m2057g();
        }
    }

    /* renamed from: a */
    public void m2040a(ColorStateList colorStateList) {
        if (this.f1713n != colorStateList) {
            this.f1713n = colorStateList;
            m2057g();
        }
    }

    /* renamed from: b */
    public void m2051b(ColorStateList colorStateList) {
        if (this.f1712m != colorStateList) {
            this.f1712m = colorStateList;
            m2057g();
        }
    }

    /* renamed from: a */
    public void m2038a(int i, int i2, int i3, int i4) {
        if (!m2023a(this.f1705f, i, i2, i3, i4)) {
            this.f1705f.set(i, i2, i3, i4);
            this.f1689I = true;
            m2052c();
        }
    }

    /* renamed from: b */
    public void m2049b(int i, int i2, int i3, int i4) {
        if (!m2023a(this.f1706g, i, i2, i3, i4)) {
            this.f1706g.set(i, i2, i3, i4);
            this.f1689I = true;
            m2052c();
        }
    }

    /* renamed from: a */
    public float m2035a() {
        if (this.f1723x == null) {
            return 0.0f;
        }
        m2021a(this.f1691K);
        return this.f1691K.measureText(this.f1723x, 0, this.f1723x.length());
    }

    /* renamed from: b */
    public float m2046b() {
        m2021a(this.f1691K);
        return -this.f1691K.ascent();
    }

    /* renamed from: a */
    public void m2042a(RectF rectF) {
        boolean m2024b = m2024b(this.f1723x);
        rectF.left = !m2024b ? this.f1706g.left : this.f1706g.right - m2035a();
        rectF.top = this.f1706g.top;
        rectF.right = !m2024b ? rectF.left + m2035a() : this.f1706g.right;
        rectF.bottom = this.f1706g.top + m2046b();
    }

    /* renamed from: a */
    private void m2021a(TextPaint textPaint) {
        textPaint.setTextSize(this.f1711l);
        textPaint.setTypeface(this.f1720u);
    }

    /* renamed from: c */
    void m2052c() {
        this.f1703d = this.f1706g.width() > 0 && this.f1706g.height() > 0 && this.f1705f.width() > 0 && this.f1705f.height() > 0;
    }

    /* renamed from: a */
    public void m2037a(int i) {
        if (this.f1708i != i) {
            this.f1708i = i;
            m2057g();
        }
    }

    /* renamed from: b */
    public void m2048b(int i) {
        if (this.f1709j != i) {
            this.f1709j = i;
            m2057g();
        }
    }

    /* renamed from: c */
    public void m2053c(int i) {
        C0687bk m4165a = C0687bk.m4165a(this.f1702c.getContext(), i, R.styleable.TextAppearance);
        if (m4165a.m4186g(R.styleable.TextAppearance_android_textColor)) {
            this.f1713n = m4165a.m4182e(R.styleable.TextAppearance_android_textColor);
        }
        if (m4165a.m4186g(R.styleable.TextAppearance_android_textSize)) {
            this.f1711l = m4165a.m4181e(R.styleable.TextAppearance_android_textSize, (int) this.f1711l);
        }
        this.f1697Q = m4165a.m4169a(R.styleable.TextAppearance_android_shadowColor, 0);
        this.f1695O = m4165a.m4168a(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f1696P = m4165a.m4168a(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f1694N = m4165a.m4168a(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        m4165a.m4172a();
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1720u = m2026d(i);
        }
        m2057g();
    }

    /* renamed from: d */
    private Typeface m2026d(int i) {
        TypedArray obtainStyledAttributes = this.f1702c.getContext().obtainStyledAttributes(i, new int[]{android.R.attr.fontFamily});
        try {
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            obtainStyledAttributes.recycle();
            return null;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public void m2043a(Typeface typeface) {
        this.f1721v = typeface;
        this.f1720u = typeface;
        m2057g();
    }

    /* renamed from: b */
    public void m2047b(float f) {
        float clamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (clamp != this.f1704e) {
            this.f1704e = clamp;
            m2030i();
        }
    }

    /* renamed from: a */
    public final boolean m2045a(int[] iArr) {
        this.f1688H = iArr;
        if (!m2054d()) {
            return false;
        }
        m2057g();
        return true;
    }

    /* renamed from: d */
    public final boolean m2054d() {
        return (this.f1713n != null && this.f1713n.isStateful()) || (this.f1712m != null && this.f1712m.isStateful());
    }

    /* renamed from: e */
    public float m2055e() {
        return this.f1704e;
    }

    /* renamed from: i */
    private void m2030i() {
        m2025c(this.f1704e);
    }

    /* renamed from: c */
    private void m2025c(float f) {
        m2027d(f);
        this.f1718s = m2019a(this.f1716q, this.f1717r, f, this.f1692L);
        this.f1719t = m2019a(this.f1714o, this.f1715p, f, this.f1692L);
        m2028e(m2019a(this.f1710k, this.f1711l, f, this.f1693M));
        if (this.f1713n != this.f1712m) {
            this.f1690J.setColor(m2020a(m2031j(), m2056f(), f));
        } else {
            this.f1690J.setColor(m2056f());
        }
        this.f1690J.setShadowLayer(m2019a(this.f1698R, this.f1694N, f, (TimeInterpolator) null), m2019a(this.f1699S, this.f1695O, f, (TimeInterpolator) null), m2019a(this.f1700T, this.f1696P, f, (TimeInterpolator) null), m2020a(this.f1701U, this.f1697Q, f));
        ViewCompat.postInvalidateOnAnimation(this.f1702c);
    }

    @ColorInt
    /* renamed from: j */
    private int m2031j() {
        return this.f1688H != null ? this.f1712m.getColorForState(this.f1688H, 0) : this.f1712m.getDefaultColor();
    }

    @VisibleForTesting
    @ColorInt
    /* renamed from: f */
    public int m2056f() {
        return this.f1688H != null ? this.f1713n.getColorForState(this.f1688H, 0) : this.f1713n.getDefaultColor();
    }

    /* renamed from: k */
    private void m2032k() {
        float f = this.f1687G;
        m2029f(this.f1711l);
        float measureText = this.f1724y != null ? this.f1690J.measureText(this.f1724y, 0, this.f1724y.length()) : 0.0f;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f1709j, this.f1725z ? 1 : 0);
        switch (absoluteGravity & 112) {
            case 48:
                this.f1715p = this.f1706g.top - this.f1690J.ascent();
                break;
            case 80:
                this.f1715p = this.f1706g.bottom;
                break;
            default:
                this.f1715p = (((this.f1690J.descent() - this.f1690J.ascent()) / 2.0f) - this.f1690J.descent()) + this.f1706g.centerY();
                break;
        }
        switch (absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) {
            case 1:
                this.f1717r = this.f1706g.centerX() - (measureText / 2.0f);
                break;
            case 5:
                this.f1717r = this.f1706g.right - measureText;
                break;
            default:
                this.f1717r = this.f1706g.left;
                break;
        }
        m2029f(this.f1710k);
        float measureText2 = this.f1724y != null ? this.f1690J.measureText(this.f1724y, 0, this.f1724y.length()) : 0.0f;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f1708i, this.f1725z ? 1 : 0);
        switch (absoluteGravity2 & 112) {
            case 48:
                this.f1714o = this.f1705f.top - this.f1690J.ascent();
                break;
            case 80:
                this.f1714o = this.f1705f.bottom;
                break;
            default:
                this.f1714o = (((this.f1690J.descent() - this.f1690J.ascent()) / 2.0f) - this.f1690J.descent()) + this.f1705f.centerY();
                break;
        }
        switch (absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) {
            case 1:
                this.f1716q = this.f1705f.centerX() - (measureText2 / 2.0f);
                break;
            case 5:
                this.f1716q = this.f1705f.right - measureText2;
                break;
            default:
                this.f1716q = this.f1705f.left;
                break;
        }
        m2034m();
        m2028e(f);
    }

    /* renamed from: d */
    private void m2027d(float f) {
        this.f1707h.left = m2019a(this.f1705f.left, this.f1706g.left, f, this.f1692L);
        this.f1707h.top = m2019a(this.f1714o, this.f1715p, f, this.f1692L);
        this.f1707h.right = m2019a(this.f1705f.right, this.f1706g.right, f, this.f1692L);
        this.f1707h.bottom = m2019a(this.f1705f.bottom, this.f1706g.bottom, f, this.f1692L);
    }

    /* renamed from: a */
    public void m2041a(Canvas canvas) {
        float ascent;
        int save = canvas.save();
        if (this.f1724y != null && this.f1703d) {
            float f = this.f1718s;
            float f2 = this.f1719t;
            boolean z = this.f1681A && this.f1682B != null;
            if (z) {
                ascent = this.f1684D * this.f1686F;
                float f3 = this.f1685E * this.f1686F;
            } else {
                ascent = this.f1690J.ascent() * this.f1686F;
                float descent = this.f1690J.descent() * this.f1686F;
            }
            if (z) {
                f2 += ascent;
            }
            if (this.f1686F != 1.0f) {
                canvas.scale(this.f1686F, this.f1686F, f, f2);
            }
            if (z) {
                canvas.drawBitmap(this.f1682B, f, f2, this.f1683C);
            } else {
                canvas.drawText(this.f1724y, 0, this.f1724y.length(), f, f2, this.f1690J);
            }
        }
        canvas.restoreToCount(save);
    }

    /* renamed from: b */
    private boolean m2024b(CharSequence charSequence) {
        return (ViewCompat.getLayoutDirection(this.f1702c) == 1 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    /* renamed from: e */
    private void m2028e(float f) {
        m2029f(f);
        this.f1681A = f1679a && this.f1686F != 1.0f;
        if (this.f1681A) {
            m2033l();
        }
        ViewCompat.postInvalidateOnAnimation(this.f1702c);
    }

    /* renamed from: f */
    private void m2029f(float f) {
        float f2;
        boolean z;
        if (this.f1723x != null) {
            float width = this.f1706g.width();
            float width2 = this.f1705f.width();
            if (m2022a(f, this.f1711l)) {
                f2 = this.f1711l;
                this.f1686F = 1.0f;
                if (this.f1722w != this.f1720u) {
                    this.f1722w = this.f1720u;
                    z = true;
                } else {
                    z = false;
                }
            } else {
                f2 = this.f1710k;
                if (this.f1722w != this.f1721v) {
                    this.f1722w = this.f1721v;
                    z = true;
                } else {
                    z = false;
                }
                if (m2022a(f, this.f1710k)) {
                    this.f1686F = 1.0f;
                } else {
                    this.f1686F = f / this.f1710k;
                }
                float f3 = this.f1711l / this.f1710k;
                width = width2 * f3 > width ? Math.min(width / f3, width2) : width2;
            }
            if (width > 0.0f) {
                z = this.f1687G != f2 || this.f1689I || z;
                this.f1687G = f2;
                this.f1689I = false;
            }
            if (this.f1724y == null || z) {
                this.f1690J.setTextSize(this.f1687G);
                this.f1690J.setTypeface(this.f1722w);
                this.f1690J.setLinearText(this.f1686F != 1.0f);
                CharSequence ellipsize = TextUtils.ellipsize(this.f1723x, this.f1690J, width, TextUtils.TruncateAt.END);
                if (!TextUtils.equals(ellipsize, this.f1724y)) {
                    this.f1724y = ellipsize;
                    this.f1725z = m2024b(this.f1724y);
                }
            }
        }
    }

    /* renamed from: l */
    private void m2033l() {
        if (this.f1682B == null && !this.f1705f.isEmpty() && !TextUtils.isEmpty(this.f1724y)) {
            m2025c(0.0f);
            this.f1684D = this.f1690J.ascent();
            this.f1685E = this.f1690J.descent();
            int round = Math.round(this.f1690J.measureText(this.f1724y, 0, this.f1724y.length()));
            int round2 = Math.round(this.f1685E - this.f1684D);
            if (round > 0 && round2 > 0) {
                this.f1682B = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
                new Canvas(this.f1682B).drawText(this.f1724y, 0, this.f1724y.length(), 0.0f, round2 - this.f1690J.descent(), this.f1690J);
                if (this.f1683C == null) {
                    this.f1683C = new Paint(3);
                }
            }
        }
    }

    /* renamed from: g */
    public void m2057g() {
        if (this.f1702c.getHeight() > 0 && this.f1702c.getWidth() > 0) {
            m2032k();
            m2030i();
        }
    }

    /* renamed from: a */
    public void m2044a(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.f1723x)) {
            this.f1723x = charSequence;
            this.f1724y = null;
            m2034m();
            m2057g();
        }
    }

    /* renamed from: m */
    private void m2034m() {
        if (this.f1682B != null) {
            this.f1682B.recycle();
            this.f1682B = null;
        }
    }

    /* renamed from: a */
    private static boolean m2022a(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* renamed from: h */
    public ColorStateList m2058h() {
        return this.f1713n;
    }

    /* renamed from: a */
    private static int m2020a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((f2 * Color.blue(i)) + (Color.blue(i2) * f)));
    }

    /* renamed from: a */
    private static float m2019a(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return C0155a.m1359a(f, f2, f3);
    }

    /* renamed from: a */
    private static boolean m2023a(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }
}
