package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

/* renamed from: android.support.v7.widget.b */
/* loaded from: classes.dex */
class C0676b extends Drawable {

    /* renamed from: a */
    final ActionBarContainer f3684a;

    public C0676b(ActionBarContainer actionBarContainer) {
        this.f3684a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f3684a.f2828d) {
            if (this.f3684a.f2827c != null) {
                this.f3684a.f2827c.draw(canvas);
            }
        } else {
            if (this.f3684a.f2825a != null) {
                this.f3684a.f2825a.draw(canvas);
            }
            if (this.f3684a.f2826b != null && this.f3684a.f2829e) {
                this.f3684a.f2826b.draw(canvas);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f3684a.f2828d) {
            if (this.f3684a.f2827c != null) {
                this.f3684a.f2827c.getOutline(outline);
            }
        } else if (this.f3684a.f2825a != null) {
            this.f3684a.f2825a.getOutline(outline);
        }
    }
}
