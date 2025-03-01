.class public Landroid/support/design/b/a;
.super Landroid/support/v7/widget/g;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/design/b/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private c:Landroid/graphics/PorterDuff$Mode;

.field private d:Landroid/content/res/ColorStateList;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private g:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 133
    sget v0, Landroid/support/design/R$attr;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/b/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    sget-object v2, Landroid/support/design/R$styleable;->MaterialButton:[I

    sget v4, Landroid/support/design/R$style;->Widget_MaterialComponents_Button:I

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 140
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_iconPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/b/a;->b:I

    .line 148
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_iconTintMode:I

    const/4 v2, -0x1

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 149
    invoke-static {v1, v2}, Landroid/support/design/internal/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/b/a;->c:Landroid/graphics/PorterDuff$Mode;

    .line 154
    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$styleable;->MaterialButton_iconTint:I

    .line 153
    invoke-static {v1, v0, v2}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/b/a;->d:Landroid/content/res/ColorStateList;

    .line 155
    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$styleable;->MaterialButton_icon:I

    invoke-static {v1, v0, v2}, Landroid/support/design/e/a;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    .line 156
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_iconGravity:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/b/a;->h:I

    .line 158
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_iconSize:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/b/a;->f:I

    .line 161
    new-instance v1, Landroid/support/design/b/c;

    invoke-direct {v1, p0}, Landroid/support/design/b/c;-><init>(Landroid/support/design/b/a;)V

    iput-object v1, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    .line 162
    iget-object v1, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v1, v0}, Landroid/support/design/b/c;->a(Landroid/content/res/TypedArray;)V

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    iget v0, p0, Landroid/support/design/b/a;->b:I

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setCompoundDrawablePadding(I)V

    .line 167
    invoke-direct {p0}, Landroid/support/design/b/a;->b()V

    .line 168
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 358
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 539
    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    .line 541
    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/b/a;->d:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 542
    iget-object v0, p0, Landroid/support/design/b/a;->c:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/b/a;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 546
    :cond_0
    iget v0, p0, Landroid/support/design/b/a;->f:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/design/b/a;->f:I

    .line 547
    :goto_0
    iget v1, p0, Landroid/support/design/b/a;->f:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/design/b/a;->f:I

    .line 548
    :goto_1
    iget-object v2, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/design/b/a;->g:I

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/design/b/a;->g:I

    add-int/2addr v0, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 551
    :cond_1
    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0, v6, v6, v6}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 552
    return-void

    .line 546
    :cond_2
    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 547
    :cond_3
    iget-object v1, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0}, Landroid/support/design/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/support/design/b/a;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/support/design/b/a;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 717
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0}, Landroid/support/design/b/c;->h()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Landroid/support/design/b/a;->h:I

    return v0
.end method

.method public getIconPadding()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 396
    iget v0, p0, Landroid/support/design/b/a;->b:I

    return v0
.end method

.method public getIconSize()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 426
    iget v0, p0, Landroid/support/design/b/a;->f:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Landroid/support/design/b/a;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Landroid/support/design/b/a;->c:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 591
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0}, Landroid/support/design/b/c;->e()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 633
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0}, Landroid/support/design/b/c;->f()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStrokeWidth()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 676
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0}, Landroid/support/design/b/c;->g()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 207
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0}, Landroid/support/design/b/c;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/g;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

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
    .line 245
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0}, Landroid/support/design/b/c;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/g;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/support/v7/widget/g;->onDraw(Landroid/graphics/Canvas;)V

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0, p1}, Landroid/support/design/b/c;->a(Landroid/graphics/Canvas;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 321
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/g;->onLayout(ZIIII)V

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    sub-int v1, p5, p3

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/b/c;->a(II)V

    .line 326
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 330
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/g;->onMeasure(II)V

    .line 331
    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/b/a;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/b/a;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Landroid/support/design/b/a;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v1, v0

    .line 337
    iget v0, p0, Landroid/support/design/b/a;->f:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 339
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/b/a;->getMeasuredWidth()I

    move-result v2

    sub-int v1, v2, v1

    .line 341
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    iget v1, p0, Landroid/support/design/b/a;->b:I

    sub-int/2addr v0, v1

    .line 344
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 347
    invoke-direct {p0}, Landroid/support/design/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    neg-int v0, v0

    .line 351
    :cond_2
    iget v1, p0, Landroid/support/design/b/a;->g:I

    if-eq v1, v0, :cond_0

    .line 352
    iput v0, p0, Landroid/support/design/b/a;->g:I

    .line 353
    invoke-direct {p0}, Landroid/support/design/b/a;->b()V

    goto :goto_0

    .line 337
    :cond_3
    iget v0, p0, Landroid/support/design/b/a;->f:I

    goto :goto_1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Landroid/support/design/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 278
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0, p1}, Landroid/support/design/b/c;->a(I)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/g;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 303
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 305
    const-string v0, "MaterialButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0}, Landroid/support/design/b/c;->a()V

    .line 307
    invoke-super {p0, p1}, Landroid/support/v7/widget/g;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 315
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/g;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Landroid/support/design/b/a;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 257
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Landroid/support/design/b/a;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 268
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 688
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0, p1}, Landroid/support/design/b/c;->c(I)V

    .line 691
    :cond_0
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 702
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p0}, Landroid/support/design/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setCornerRadius(I)V

    .line 705
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 440
    iput-object p1, p0, Landroid/support/design/b/a;->e:Landroid/graphics/drawable/Drawable;

    .line 441
    invoke-direct {p0}, Landroid/support/design/b/a;->b()V

    .line 443
    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 0

    .prologue
    .line 740
    iput p1, p0, Landroid/support/design/b/a;->h:I

    .line 741
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 381
    iget v0, p0, Landroid/support/design/b/a;->b:I

    if-eq v0, p1, :cond_0

    .line 382
    iput p1, p0, Landroid/support/design/b/a;->b:I

    .line 383
    invoke-virtual {p0, p1}, Landroid/support/design/b/a;->setCompoundDrawablePadding(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 455
    if-eqz p1, :cond_0

    .line 456
    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 458
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 459
    return-void
.end method

.method public setIconSize(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 407
    if-gez p1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iconSize cannot be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    iget v0, p0, Landroid/support/design/b/a;->f:I

    if-eq v0, p1, :cond_1

    .line 412
    iput p1, p0, Landroid/support/design/b/a;->f:I

    .line 413
    invoke-direct {p0}, Landroid/support/design/b/a;->b()V

    .line 415
    :cond_1
    return-void
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 482
    iget-object v0, p0, Landroid/support/design/b/a;->d:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 483
    iput-object p1, p0, Landroid/support/design/b/a;->d:Landroid/content/res/ColorStateList;

    .line 484
    invoke-direct {p0}, Landroid/support/design/b/a;->b()V

    .line 486
    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/design/b/a;->c:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 521
    iput-object p1, p0, Landroid/support/design/b/a;->c:Landroid/graphics/PorterDuff$Mode;

    .line 522
    invoke-direct {p0}, Landroid/support/design/b/a;->b()V

    .line 524
    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 498
    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/support/v7/widget/g;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 563
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0, p1}, Landroid/support/design/b/c;->b(Landroid/content/res/ColorStateList;)V

    .line 566
    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 577
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 580
    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 604
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0, p1}, Landroid/support/design/b/c;->c(Landroid/content/res/ColorStateList;)V

    .line 607
    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 619
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 622
    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 646
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0, p1}, Landroid/support/design/b/c;->b(I)V

    .line 649
    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 661
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0}, Landroid/support/design/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setStrokeWidth(I)V

    .line 664
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
    .line 188
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0, p1}, Landroid/support/design/b/c;->a(Landroid/content/res/ColorStateList;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    if-eqz v0, :cond_0

    .line 193
    invoke-super {p0, p1}, Landroid/support/v7/widget/g;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
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
    .line 226
    invoke-direct {p0}, Landroid/support/design/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    invoke-virtual {v0, p1}, Landroid/support/design/b/c;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Landroid/support/design/b/a;->a:Landroid/support/design/b/c;

    if-eqz v0, :cond_0

    .line 231
    invoke-super {p0, p1}, Landroid/support/v7/widget/g;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
