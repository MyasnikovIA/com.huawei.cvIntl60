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
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* renamed from: android.support.v7.widget.n */
/* loaded from: classes.dex */
public class C0708n extends ImageButton implements TintableBackgroundView, TintableImageSourceView {

    /* renamed from: a */
    private final C0700f f3885a;

    /* renamed from: b */
    private final C0709o f3886b;

    public C0708n(Context context) {
        this(context, null);
    }

    public C0708n(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    public C0708n(Context context, AttributeSet attributeSet, int i) {
        super(C0684bh.m4162a(context), attributeSet, i);
        this.f3885a = new C0700f(this);
        this.f3885a.m4294a(attributeSet, i);
        this.f3886b = new C0709o(this);
        this.f3886b.m4345a(attributeSet, i);
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        this.f3886b.m4342a(i);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        if (this.f3886b != null) {
            this.f3886b.m4349d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        if (this.f3886b != null) {
            this.f3886b.m4349d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        if (this.f3886b != null) {
            this.f3886b.m4349d();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        if (this.f3885a != null) {
            this.f3885a.m4290a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f3885a != null) {
            this.f3885a.m4293a(drawable);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f3885a != null) {
            this.f3885a.m4291a(colorStateList);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f3885a != null) {
            return this.f3885a.m4289a();
        }
        return null;
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f3885a != null) {
            this.f3885a.m4292a(mode);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f3885a != null) {
            return this.f3885a.m4295b();
        }
        return null;
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f3886b != null) {
            this.f3886b.m4343a(colorStateList);
        }
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportImageTintList() {
        if (this.f3886b != null) {
            return this.f3886b.m4347b();
        }
        return null;
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f3886b != null) {
            this.f3886b.m4344a(mode);
        }
    }

    @Override // android.support.v4.widget.TintableImageSourceView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportImageTintMode() {
        if (this.f3886b != null) {
            return this.f3886b.m4348c();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f3885a != null) {
            this.f3885a.m4297c();
        }
        if (this.f3886b != null) {
            this.f3886b.m4349d();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f3886b.m4346a() && super.hasOverlappingRendering();
    }
}
