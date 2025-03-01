.class public Landroid/support/v7/widget/n;
.super Landroid/widget/ImageButton;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;
.implements Landroid/support/v4/widget/TintableImageSourceView;


# instance fields
.field private final a:Landroid/support/v7/widget/f;

.field private final b:Landroid/support/v7/widget/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 69
    sget v0, Landroid/support/v7/appcompat/R$attr;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, Landroid/support/v7/widget/bh;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Landroid/support/v7/widget/f;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/f;->a(Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Landroid/support/v7/widget/o;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/o;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/o;->a(Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->c()V

    .line 245
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->d()V

    .line 248
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    .line 153
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    .line 181
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    .line 208
    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    .line 236
    invoke-virtual {v0}, Landroid/support/v7/widget/o;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageButton;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->d()V

    .line 102
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->d()V

    .line 94
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->a(I)V

    .line 86
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->d()V

    .line 110
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/content/res/ColorStateList;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 168
    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->a(Landroid/content/res/ColorStateList;)V

    .line 195
    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 223
    :cond_0
    return-void
.end method
