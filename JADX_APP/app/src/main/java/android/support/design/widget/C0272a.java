package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.Dimension;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.widget.a */
/* loaded from: classes.dex */
public class C0272a extends Drawable {

    /* renamed from: a */
    final Paint f1665a;

    /* renamed from: b */
    final Rect f1666b;

    /* renamed from: c */
    final RectF f1667c;

    /* renamed from: d */
    final a f1668d;

    /* renamed from: e */
    @Dimension
    float f1669e;

    /* renamed from: f */
    @ColorInt
    private int f1670f;

    /* renamed from: g */
    @ColorInt
    private int f1671g;

    /* renamed from: h */
    @ColorInt
    private int f1672h;

    /* renamed from: i */
    @ColorInt
    private int f1673i;

    /* renamed from: j */
    private ColorStateList f1674j;

    /* renamed from: k */
    @ColorInt
    private int f1675k;

    /* renamed from: l */
    private boolean f1676l;

    /* renamed from: m */
    @FloatRange(from = 0.0d, m1353to = 360.0d)
    private float f1677m;

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f1668d;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1676l) {
            this.f1665a.setShader(m2016a());
            this.f1676l = false;
        }
        float strokeWidth = this.f1665a.getStrokeWidth() / 2.0f;
        RectF rectF = this.f1667c;
        copyBounds(this.f1666b);
        rectF.set(this.f1666b);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.f1677m, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.f1665a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int round = Math.round(this.f1669e);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, m1354to = 255) int i) {
        this.f1665a.setAlpha(i);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m2018a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f1675k = colorStateList.getColorForState(getState(), this.f1675k);
        }
        this.f1674j = colorStateList;
        this.f1676l = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1665a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1669e > 0.0f ? -3 : -2;
    }

    /* renamed from: a */
    public final void m2017a(float f) {
        if (f != this.f1677m) {
            this.f1677m = f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f1676l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.f1674j != null && this.f1674j.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        if (this.f1674j != null && (colorForState = this.f1674j.getColorForState(iArr, this.f1675k)) != this.f1675k) {
            this.f1676l = true;
            this.f1675k = colorForState;
        }
        if (this.f1676l) {
            invalidateSelf();
        }
        return this.f1676l;
    }

    /* renamed from: a */
    private Shader m2016a() {
        copyBounds(this.f1666b);
        float height = this.f1669e / r3.height();
        return new LinearGradient(0.0f, r3.top, 0.0f, r3.bottom, new int[]{ColorUtils.compositeColors(this.f1670f, this.f1675k), ColorUtils.compositeColors(this.f1671g, this.f1675k), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f1671g, 0), this.f1675k), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f1673i, 0), this.f1675k), ColorUtils.compositeColors(this.f1673i, this.f1675k), ColorUtils.compositeColors(this.f1672h, this.f1675k)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    /* renamed from: android.support.design.widget.a$a */
    private class a extends Drawable.ConstantState {

        /* renamed from: a */
        final /* synthetic */ C0272a f1678a;

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return this.f1678a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }
    }
}
