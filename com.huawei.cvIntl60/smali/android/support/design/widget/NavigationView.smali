.class public Landroid/support/design/widget/NavigationView;
.super Landroid/support/design/internal/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/NavigationView$SavedState;,
        Landroid/support/design/widget/NavigationView$a;
    }
.end annotation


# static fields
.field private static final d:[I

.field private static final e:[I


# instance fields
.field c:Landroid/support/design/widget/NavigationView$a;

.field private final f:Landroid/support/design/internal/d;

.field private final g:Landroid/support/design/internal/e;

.field private final h:I

.field private i:Landroid/view/MenuInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->d:[I

    .line 87
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->e:[I

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->i:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Landroid/support/v7/view/g;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->i:Landroid/view/MenuInflater;

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->i:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0}, Landroid/support/design/internal/e;->d()Landroid/support/v7/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0}, Landroid/support/design/internal/e;->e()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0}, Landroid/support/design/internal/e;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0}, Landroid/support/design/internal/e;->i()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0}, Landroid/support/design/internal/e;->j()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0}, Landroid/support/design/internal/e;->f()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0}, Landroid/support/design/internal/e;->g()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/d;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 231
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 245
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/support/design/internal/g;->onMeasure(II)V

    .line 246
    return-void

    .line 238
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/NavigationView;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 241
    :sswitch_2
    iget v0, p0, Landroid/support/design/widget/NavigationView;->h:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 210
    instance-of v0, p1, Landroid/support/design/widget/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 211
    invoke-super {p0, p1}, Landroid/support/design/internal/g;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    check-cast p1, Landroid/support/design/widget/NavigationView$SavedState;

    .line 215
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/design/internal/g;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/d;

    iget-object v1, p1, Landroid/support/design/widget/NavigationView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/d;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/design/internal/g;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 202
    new-instance v1, Landroid/support/design/widget/NavigationView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Landroid/support/design/widget/NavigationView$SavedState;->a:Landroid/os/Bundle;

    .line 204
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/d;

    iget-object v2, v1, Landroid/support/design/widget/NavigationView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/d;->a(Landroid/os/Bundle;)V

    .line 205
    return-object v1
.end method

.method public setCheckedItem(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/d;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/d;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_0

    .line 465
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/e;->a(Landroid/support/v7/view/menu/j;)V

    .line 467
    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->f:Landroid/support/design/internal/d;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/d;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/e;->a(Landroid/support/v7/view/menu/j;)V

    .line 482
    return-void

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 392
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 393
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 383
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/e;->b(I)V

    .line 414
    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/e;->b(I)V

    .line 424
    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/e;->c(I)V

    .line 445
    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/e;->c(I)V

    .line 455
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/e;->a(Landroid/content/res/ColorStateList;)V

    .line 341
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 498
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/e;->a(I)V

    .line 499
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 361
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/support/design/internal/e;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/e;->b(Landroid/content/res/ColorStateList;)V

    .line 362
    return-void
.end method

.method public setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$a;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/NavigationView$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 226
    iput-object p1, p0, Landroid/support/design/widget/NavigationView;->c:Landroid/support/design/widget/NavigationView$a;

    .line 227
    return-void
.end method
