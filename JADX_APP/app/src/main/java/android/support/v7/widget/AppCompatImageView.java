package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.widget.TintableImageSourceView;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView implements TintableBackgroundView, TintableImageSourceView {

    /* renamed from: a */
    private final C0700f f2954a;

    /* renamed from: b */
    private final C0709o f2955b;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(C0684bh.m4162a(context), attributeSet, i);
        this.f2954a = new C0700f(this);
        this.f2954a.m4294a(attributeSet, i);
        this.f2955b = new C0709o(this);
        this.f2955b.m4345a(attributeSet, i);
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        if (this.f2955b != null) {
            this.f2955b.m4342a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        if (this.f2955b != null) {
            this.f2955b.m4349d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        if (this.f2955b != null) {
            this.f2955b.m4349d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        if (this.f2955b != null) {
            this.f2955b.m4349d();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        if (this.f2954a != null) {
            this.f2954a.m4290a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f2954a != null) {
            this.f2954a.m4293a(drawable);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f2954a != null) {
            this.f2954a.m4291a(colorStateList);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f2954a != null) {
            return this.f2954a.m4289a();
        }
        return null;
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f2954a != null) {
            this.f2954a.m4292a(mode);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f2954a != null) {
            return this.f2954a.m4295b();
        }
        return null;
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f2955b != null) {
            this.f2955b.m4343a(colorStateList);
        }
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportImageTintList() {
        if (this.f2955b != null) {
            return this.f2955b.m4347b();
        }
        return null;
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f2955b != null) {
            this.f2955b.m4344a(mode);
        }
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportImageTintMode() {
        if (this.f2955b != null) {
            return this.f2955b.m4348c();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f2954a != null) {
            this.f2954a.m4297c();
        }
        if (this.f2955b != null) {
            this.f2955b.m4349d();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f2955b.m4346a() && super.hasOverlappingRendering();
    }
}
