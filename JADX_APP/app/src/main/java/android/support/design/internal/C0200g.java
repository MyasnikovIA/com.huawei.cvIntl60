package android.support.design.internal;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.widget.FrameLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.internal.g */
/* loaded from: classes.dex */
public class C0200g extends FrameLayout {

    /* renamed from: a */
    Drawable f1291a;

    /* renamed from: b */
    Rect f1292b;

    /* renamed from: c */
    private Rect f1293c;

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f1292b != null && this.f1291a != null) {
            int save = canvas.save();
            canvas.translate(getScrollX(), getScrollY());
            this.f1293c.set(0, 0, width, this.f1292b.top);
            this.f1291a.setBounds(this.f1293c);
            this.f1291a.draw(canvas);
            this.f1293c.set(0, height - this.f1292b.bottom, width, height);
            this.f1291a.setBounds(this.f1293c);
            this.f1291a.draw(canvas);
            this.f1293c.set(0, this.f1292b.top, this.f1292b.left, height - this.f1292b.bottom);
            this.f1291a.setBounds(this.f1293c);
            this.f1291a.draw(canvas);
            this.f1293c.set(width - this.f1292b.right, this.f1292b.top, width, height - this.f1292b.bottom);
            this.f1291a.setBounds(this.f1293c);
            this.f1291a.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1291a != null) {
            this.f1291a.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1291a != null) {
            this.f1291a.setCallback(null);
        }
    }
}
