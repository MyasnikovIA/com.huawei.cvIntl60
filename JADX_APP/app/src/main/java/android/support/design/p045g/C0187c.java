package android.support.design.p045g;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.IntRange;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.TintAwareDrawable;

/* renamed from: android.support.design.g.c */
/* loaded from: classes.dex */
public class C0187c extends Drawable implements TintAwareDrawable {

    /* renamed from: a */
    private final Paint f1153a;

    /* renamed from: b */
    private final Matrix[] f1154b;

    /* renamed from: c */
    private final Matrix[] f1155c;

    /* renamed from: d */
    private final C0188d[] f1156d;

    /* renamed from: e */
    private final Matrix f1157e;

    /* renamed from: f */
    private final Path f1158f;

    /* renamed from: g */
    private final PointF f1159g;

    /* renamed from: h */
    private final C0188d f1160h;

    /* renamed from: i */
    private final Region f1161i;

    /* renamed from: j */
    private final Region f1162j;

    /* renamed from: k */
    private final float[] f1163k;

    /* renamed from: l */
    private final float[] f1164l;

    /* renamed from: m */
    @Nullable
    private C0189e f1165m;

    /* renamed from: n */
    private boolean f1166n;

    /* renamed from: o */
    private boolean f1167o;

    /* renamed from: p */
    private float f1168p;

    /* renamed from: q */
    private int f1169q;

    /* renamed from: r */
    private int f1170r;

    /* renamed from: s */
    private int f1171s;

    /* renamed from: t */
    private int f1172t;

    /* renamed from: u */
    private float f1173u;

    /* renamed from: v */
    private float f1174v;

    /* renamed from: w */
    private Paint.Style f1175w;

    /* renamed from: x */
    @Nullable
    private PorterDuffColorFilter f1176x;

    /* renamed from: y */
    private PorterDuff.Mode f1177y;

    /* renamed from: z */
    private ColorStateList f1178z;

    /* renamed from: a */
    private static int m1507a(int i, int i2) {
        return (((i2 >>> 7) + i2) * i) >>> 8;
    }

    /* renamed from: a */
    public ColorStateList m1519a() {
        return this.f1178z;
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.f1178z = colorStateList;
        m1513b();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1177y = mode;
        m1513b();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, m1354to = 255) int i) {
        this.f1172t = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f1153a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Rect bounds = getBounds();
        this.f1161i.set(bounds);
        m1515b(bounds.width(), bounds.height(), this.f1158f);
        this.f1162j.setPath(this.f1158f, this.f1161i);
        this.f1161i.op(this.f1162j, Region.Op.DIFFERENCE);
        return this.f1161i;
    }

    /* renamed from: a */
    public void m1520a(float f) {
        this.f1168p = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f1153a.setColorFilter(this.f1176x);
        int alpha = this.f1153a.getAlpha();
        this.f1153a.setAlpha(m1507a(alpha, this.f1172t));
        this.f1153a.setStrokeWidth(this.f1174v);
        this.f1153a.setStyle(this.f1175w);
        if (this.f1170r > 0 && this.f1166n) {
            this.f1153a.setShadowLayer(this.f1171s, 0.0f, this.f1170r, this.f1169q);
        }
        if (this.f1165m != null) {
            m1515b(canvas.getWidth(), canvas.getHeight(), this.f1158f);
            canvas.drawPath(this.f1158f, this.f1153a);
        } else {
            canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.f1153a);
        }
        this.f1153a.setAlpha(alpha);
    }

    /* renamed from: a */
    public void m1521a(int i, int i2, Path path) {
        path.rewind();
        if (this.f1165m != null) {
            for (int i3 = 0; i3 < 4; i3++) {
                m1509a(i3, i, i2);
                m1514b(i3, i, i2);
            }
            for (int i4 = 0; i4 < 4; i4++) {
                m1511a(i4, path);
                m1516b(i4, path);
            }
            path.close();
        }
    }

    /* renamed from: a */
    private void m1509a(int i, int i2, int i3) {
        m1510a(i, i2, i3, this.f1159g);
        m1508a(i).m1506a(m1517c(i, i2, i3), this.f1168p, this.f1156d[i]);
        float m1518d = m1518d(((i - 1) + 4) % 4, i2, i3) + 1.5707964f;
        this.f1154b[i].reset();
        this.f1154b[i].setTranslate(this.f1159g.x, this.f1159g.y);
        this.f1154b[i].preRotate((float) Math.toDegrees(m1518d));
    }

    /* renamed from: b */
    private void m1514b(int i, int i2, int i3) {
        this.f1163k[0] = this.f1156d[i].f1181c;
        this.f1163k[1] = this.f1156d[i].f1182d;
        this.f1154b[i].mapPoints(this.f1163k);
        float m1518d = m1518d(i, i2, i3);
        this.f1155c[i].reset();
        this.f1155c[i].setTranslate(this.f1163k[0], this.f1163k[1]);
        this.f1155c[i].preRotate((float) Math.toDegrees(m1518d));
    }

    /* renamed from: a */
    private void m1511a(int i, Path path) {
        this.f1163k[0] = this.f1156d[i].f1179a;
        this.f1163k[1] = this.f1156d[i].f1180b;
        this.f1154b[i].mapPoints(this.f1163k);
        if (i == 0) {
            path.moveTo(this.f1163k[0], this.f1163k[1]);
        } else {
            path.lineTo(this.f1163k[0], this.f1163k[1]);
        }
        this.f1156d[i].m1524a(this.f1154b[i], path);
    }

    /* renamed from: b */
    private void m1516b(int i, Path path) {
        int i2 = (i + 1) % 4;
        this.f1163k[0] = this.f1156d[i].f1181c;
        this.f1163k[1] = this.f1156d[i].f1182d;
        this.f1154b[i].mapPoints(this.f1163k);
        this.f1164l[0] = this.f1156d[i2].f1179a;
        this.f1164l[1] = this.f1156d[i2].f1180b;
        this.f1154b[i2].mapPoints(this.f1164l);
        float hypot = (float) Math.hypot(this.f1163k[0] - this.f1164l[0], this.f1163k[1] - this.f1164l[1]);
        this.f1160h.m1522a(0.0f, 0.0f);
        m1512b(i).mo1455a(hypot, this.f1168p, this.f1160h);
        this.f1160h.m1524a(this.f1155c[i], path);
    }

    /* renamed from: a */
    private C0185a m1508a(int i) {
        switch (i) {
            case 1:
                return this.f1165m.m1530b();
            case 2:
                return this.f1165m.m1531c();
            case 3:
                return this.f1165m.m1532d();
            default:
                return this.f1165m.m1529a();
        }
    }

    /* renamed from: b */
    private C0186b m1512b(int i) {
        switch (i) {
            case 1:
                return this.f1165m.m1534f();
            case 2:
                return this.f1165m.m1535g();
            case 3:
                return this.f1165m.m1536h();
            default:
                return this.f1165m.m1533e();
        }
    }

    /* renamed from: a */
    private void m1510a(int i, int i2, int i3, PointF pointF) {
        switch (i) {
            case 1:
                pointF.set(i2, 0.0f);
                break;
            case 2:
                pointF.set(i2, i3);
                break;
            case 3:
                pointF.set(0.0f, i3);
                break;
            default:
                pointF.set(0.0f, 0.0f);
                break;
        }
    }

    /* renamed from: c */
    private float m1517c(int i, int i2, int i3) {
        m1510a(((i - 1) + 4) % 4, i2, i3, this.f1159g);
        float f = this.f1159g.x;
        float f2 = this.f1159g.y;
        m1510a((i + 1) % 4, i2, i3, this.f1159g);
        float f3 = this.f1159g.x;
        float f4 = this.f1159g.y;
        m1510a(i, i2, i3, this.f1159g);
        float f5 = this.f1159g.x;
        float f6 = this.f1159g.y;
        float atan2 = ((float) Math.atan2(f2 - f6, f - f5)) - ((float) Math.atan2(f4 - f6, f3 - f5));
        if (atan2 < 0.0f) {
            return (float) (atan2 + 6.283185307179586d);
        }
        return atan2;
    }

    /* renamed from: d */
    private float m1518d(int i, int i2, int i3) {
        m1510a(i, i2, i3, this.f1159g);
        float f = this.f1159g.x;
        float f2 = this.f1159g.y;
        m1510a((i + 1) % 4, i2, i3, this.f1159g);
        return (float) Math.atan2(this.f1159g.y - f2, this.f1159g.x - f);
    }

    /* renamed from: b */
    private void m1515b(int i, int i2, Path path) {
        m1521a(i, i2, path);
        if (this.f1173u != 1.0f) {
            this.f1157e.reset();
            this.f1157e.setScale(this.f1173u, this.f1173u, i / 2, i2 / 2);
            path.transform(this.f1157e);
        }
    }

    /* renamed from: b */
    private void m1513b() {
        if (this.f1178z == null || this.f1177y == null) {
            this.f1176x = null;
            return;
        }
        int colorForState = this.f1178z.getColorForState(getState(), 0);
        this.f1176x = new PorterDuffColorFilter(colorForState, this.f1177y);
        if (this.f1167o) {
            this.f1169q = colorForState;
        }
    }
}
