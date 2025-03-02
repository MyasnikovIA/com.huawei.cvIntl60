package android.support.design.p040c;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.design.p040c.InterfaceC0179d;
import android.support.design.widget.C0282k;
import android.view.View;

/* renamed from: android.support.design.c.c */
/* loaded from: classes.dex */
public class C0178c {

    /* renamed from: a */
    public static final int f1123a;

    /* renamed from: b */
    private final a f1124b;

    /* renamed from: c */
    private final View f1125c;

    /* renamed from: d */
    private final Path f1126d;

    /* renamed from: e */
    private final Paint f1127e;

    /* renamed from: f */
    private final Paint f1128f;

    /* renamed from: g */
    @Nullable
    private InterfaceC0179d.d f1129g;

    /* renamed from: h */
    @Nullable
    private Drawable f1130h;

    /* renamed from: i */
    private boolean f1131i;

    /* renamed from: j */
    private boolean f1132j;

    /* renamed from: android.support.design.c.c$a */
    interface a {
        /* renamed from: a */
        void mo1467a(Canvas canvas);

        /* renamed from: c */
        boolean mo1469c();
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f1123a = 2;
        } else if (Build.VERSION.SDK_INT >= 18) {
            f1123a = 1;
        } else {
            f1123a = 0;
        }
    }

    /* renamed from: a */
    public void m1476a() {
        if (f1123a == 0) {
            this.f1131i = true;
            this.f1132j = false;
            this.f1125c.buildDrawingCache();
            Bitmap drawingCache = this.f1125c.getDrawingCache();
            if (drawingCache == null && this.f1125c.getWidth() != 0 && this.f1125c.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f1125c.getWidth(), this.f1125c.getHeight(), Bitmap.Config.ARGB_8888);
                this.f1125c.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                this.f1127e.setShader(new BitmapShader(drawingCache, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
            }
            this.f1131i = false;
            this.f1132j = true;
        }
    }

    /* renamed from: b */
    public void m1481b() {
        if (f1123a == 0) {
            this.f1132j = false;
            this.f1125c.destroyDrawingCache();
            this.f1127e.setShader(null);
            this.f1125c.invalidate();
        }
    }

    /* renamed from: a */
    public void m1480a(@Nullable InterfaceC0179d.d dVar) {
        if (dVar == null) {
            this.f1129g = null;
        } else {
            if (this.f1129g == null) {
                this.f1129g = new InterfaceC0179d.d(dVar);
            } else {
                this.f1129g.m1492a(dVar);
            }
            if (C0282k.m2170b(dVar.f1139c, m1470b(dVar), 1.0E-4f)) {
                this.f1129g.f1139c = Float.MAX_VALUE;
            }
        }
        m1472g();
    }

    @Nullable
    /* renamed from: c */
    public InterfaceC0179d.d m1482c() {
        if (this.f1129g == null) {
            return null;
        }
        InterfaceC0179d.d dVar = new InterfaceC0179d.d(this.f1129g);
        if (dVar.m1493a()) {
            dVar.f1139c = m1470b(dVar);
            return dVar;
        }
        return dVar;
    }

    /* renamed from: a */
    public void m1477a(@ColorInt int i) {
        this.f1128f.setColor(i);
        this.f1125c.invalidate();
    }

    @ColorInt
    /* renamed from: d */
    public int m1483d() {
        return this.f1128f.getColor();
    }

    @Nullable
    /* renamed from: e */
    public Drawable m1484e() {
        return this.f1130h;
    }

    /* renamed from: a */
    public void m1479a(@Nullable Drawable drawable) {
        this.f1130h = drawable;
        this.f1125c.invalidate();
    }

    /* renamed from: g */
    private void m1472g() {
        if (f1123a == 1) {
            this.f1126d.rewind();
            if (this.f1129g != null) {
                this.f1126d.addCircle(this.f1129g.f1137a, this.f1129g.f1138b, this.f1129g.f1139c, Path.Direction.CW);
            }
        }
        this.f1125c.invalidate();
    }

    /* renamed from: b */
    private float m1470b(InterfaceC0179d.d dVar) {
        return C0282k.m2168a(dVar.f1137a, dVar.f1138b, 0.0f, 0.0f, this.f1125c.getWidth(), this.f1125c.getHeight());
    }

    /* renamed from: a */
    public void m1478a(Canvas canvas) {
        if (m1473h()) {
            switch (f1123a) {
                case 0:
                    canvas.drawCircle(this.f1129g.f1137a, this.f1129g.f1138b, this.f1129g.f1139c, this.f1127e);
                    if (m1474i()) {
                        canvas.drawCircle(this.f1129g.f1137a, this.f1129g.f1138b, this.f1129g.f1139c, this.f1128f);
                        break;
                    }
                    break;
                case 1:
                    int save = canvas.save();
                    canvas.clipPath(this.f1126d);
                    this.f1124b.mo1467a(canvas);
                    if (m1474i()) {
                        canvas.drawRect(0.0f, 0.0f, this.f1125c.getWidth(), this.f1125c.getHeight(), this.f1128f);
                    }
                    canvas.restoreToCount(save);
                    break;
                case 2:
                    this.f1124b.mo1467a(canvas);
                    if (m1474i()) {
                        canvas.drawRect(0.0f, 0.0f, this.f1125c.getWidth(), this.f1125c.getHeight(), this.f1128f);
                        break;
                    }
                    break;
                default:
                    throw new IllegalStateException("Unsupported strategy " + f1123a);
            }
        } else {
            this.f1124b.mo1467a(canvas);
            if (m1474i()) {
                canvas.drawRect(0.0f, 0.0f, this.f1125c.getWidth(), this.f1125c.getHeight(), this.f1128f);
            }
        }
        m1471b(canvas);
    }

    /* renamed from: b */
    private void m1471b(Canvas canvas) {
        if (m1475j()) {
            Rect bounds = this.f1130h.getBounds();
            float width = this.f1129g.f1137a - (bounds.width() / 2.0f);
            float height = this.f1129g.f1138b - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.f1130h.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    /* renamed from: f */
    public boolean m1485f() {
        return this.f1124b.mo1469c() && !m1473h();
    }

    /* renamed from: h */
    private boolean m1473h() {
        boolean z = this.f1129g == null || this.f1129g.m1493a();
        return f1123a == 0 ? !z && this.f1132j : !z;
    }

    /* renamed from: i */
    private boolean m1474i() {
        return (this.f1131i || Color.alpha(this.f1128f.getColor()) == 0) ? false : true;
    }

    /* renamed from: j */
    private boolean m1475j() {
        return (this.f1131i || this.f1130h == null || this.f1129g == null) ? false : true;
    }
}
