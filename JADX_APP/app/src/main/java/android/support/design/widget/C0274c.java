package android.support.design.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.view.View;

/* renamed from: android.support.design.widget.c */
/* loaded from: classes.dex */
class C0274c extends GradientDrawable {

    /* renamed from: a */
    private final Paint f1726a = new Paint(1);

    /* renamed from: b */
    private final RectF f1727b;

    /* renamed from: c */
    private int f1728c;

    C0274c() {
        m2062c();
        this.f1727b = new RectF();
    }

    /* renamed from: c */
    private void m2062c() {
        this.f1726a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f1726a.setColor(-1);
        this.f1726a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* renamed from: a */
    boolean m2066a() {
        return !this.f1727b.isEmpty();
    }

    /* renamed from: a */
    void m2064a(float f, float f2, float f3, float f4) {
        if (f != this.f1727b.left || f2 != this.f1727b.top || f3 != this.f1727b.right || f4 != this.f1727b.bottom) {
            this.f1727b.set(f, f2, f3, f4);
            invalidateSelf();
        }
    }

    /* renamed from: a */
    void m2065a(RectF rectF) {
        m2064a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* renamed from: b */
    void m2067b() {
        m2064a(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        m2059a(canvas);
        super.draw(canvas);
        canvas.drawRect(this.f1727b, this.f1726a);
        m2063c(canvas);
    }

    /* renamed from: a */
    private void m2059a(@NonNull Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (m2060a(callback)) {
            ((View) callback).setLayerType(2, null);
        } else {
            m2061b(canvas);
        }
    }

    /* renamed from: b */
    private void m2061b(@NonNull Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1728c = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f1728c = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    /* renamed from: c */
    private void m2063c(@NonNull Canvas canvas) {
        if (!m2060a(getCallback())) {
            canvas.restoreToCount(this.f1728c);
        }
    }

    /* renamed from: a */
    private boolean m2060a(Drawable.Callback callback) {
        return callback instanceof View;
    }
}
