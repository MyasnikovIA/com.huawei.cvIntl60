package android.support.design.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.v7.widget.C0666aq;
import android.util.AttributeSet;
import android.view.Gravity;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.internal.c */
/* loaded from: classes.dex */
public class C0196c extends C0666aq {

    /* renamed from: a */
    protected boolean f1261a;

    /* renamed from: b */
    boolean f1262b;

    /* renamed from: c */
    private Drawable f1263c;

    /* renamed from: d */
    private final Rect f1264d;

    /* renamed from: e */
    private final Rect f1265e;

    /* renamed from: f */
    private int f1266f;

    public C0196c(Context context) {
        this(context, null);
    }

    public C0196c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0196c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1264d = new Rect();
        this.f1265e = new Rect();
        this.f1266f = 119;
        this.f1261a = true;
        this.f1262b = false;
        TypedArray m1603a = C0201h.m1603a(context, attributeSet, R.styleable.ForegroundLinearLayout, i, 0, new int[0]);
        this.f1266f = m1603a.getInt(R.styleable.ForegroundLinearLayout_android_foregroundGravity, this.f1266f);
        Drawable drawable = m1603a.getDrawable(R.styleable.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f1261a = m1603a.getBoolean(R.styleable.ForegroundLinearLayout_foregroundInsidePadding, true);
        m1603a.recycle();
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f1266f;
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.f1266f != i) {
            int i2 = (8388615 & i) == 0 ? 8388611 | i : i;
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.f1266f = i2;
            if (this.f1266f == 119 && this.f1263c != null) {
                this.f1263c.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1263c;
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.f1263c != null) {
            this.f1263c.jumpToCurrentState();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f1263c != null && this.f1263c.isStateful()) {
            this.f1263c.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        if (this.f1263c != drawable) {
            if (this.f1263c != null) {
                this.f1263c.setCallback(null);
                unscheduleDrawable(this.f1263c);
            }
            this.f1263c = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f1266f == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f1263c;
    }

    @Override // android.support.v7.widget.C0666aq, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f1262b |= z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f1262b = true;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (this.f1263c != null) {
            Drawable drawable = this.f1263c;
            if (this.f1262b) {
                this.f1262b = false;
                Rect rect = this.f1264d;
                Rect rect2 = this.f1265e;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f1261a) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f1266f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    @TargetApi(21)
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        if (this.f1263c != null) {
            this.f1263c.setHotspot(f, f2);
        }
    }
}
