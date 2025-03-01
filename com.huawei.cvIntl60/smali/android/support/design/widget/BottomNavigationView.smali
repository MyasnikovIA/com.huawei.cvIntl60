.class public Landroid/support/design/widget/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomNavigationView$SavedState;,
        Landroid/support/design/widget/BottomNavigationView$a;,
        Landroid/support/design/widget/BottomNavigationView$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/view/menu/h;

.field private final b:Landroid/support/design/internal/b;

.field private final c:Landroid/support/design/internal/BottomNavigationPresenter;

.field private d:Landroid/view/MenuInflater;

.field private e:Landroid/support/design/widget/BottomNavigationView$b;

.field private f:Landroid/support/design/widget/BottomNavigationView$a;


# direct methods
.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->d:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Landroid/support/v7/view/g;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->d:Landroid/view/MenuInflater;

    .line 547
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->d:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .locals 1
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public getMaxItemCount()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->a:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 561
    instance-of v0, p1, Landroid/support/design/widget/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 562
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 568
    :goto_0
    return-void

    .line 565
    :cond_0
    check-cast p1, Landroid/support/design/widget/BottomNavigationView$SavedState;

    .line 566
    invoke-virtual {p1}, Landroid/support/design/widget/BottomNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 567
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->a:Landroid/support/v7/view/menu/h;

    iget-object v1, p1, Landroid/support/design/widget/BottomNavigationView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 552
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 553
    new-instance v1, Landroid/support/design/widget/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 554
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Landroid/support/design/widget/BottomNavigationView$SavedState;->a:Landroid/os/Bundle;

    .line 555
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->a:Landroid/support/v7/view/menu/h;

    iget-object v2, v1, Landroid/support/design/widget/BottomNavigationView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/os/Bundle;)V

    .line 556
    return-object v1
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 384
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->setItemBackgroundRes(I)V

    .line 363
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->a()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 490
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->setItemHorizontalTranslationEnabled(Z)V

    .line 491
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->c:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->a(Z)V

    .line 493
    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->setItemIconSize(I)V

    .line 293
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomNavigationView;->setItemIconSize(I)V

    .line 305
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 281
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 468
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->setItemTextAppearanceActive(I)V

    .line 469
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 449
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->setItemTextAppearanceInactive(I)V

    .line 450
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 340
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 427
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->setLabelVisibilityMode(I)V

    .line 428
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->c:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->a(Z)V

    .line 430
    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Landroid/support/design/widget/BottomNavigationView$a;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/BottomNavigationView$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 234
    iput-object p1, p0, Landroid/support/design/widget/BottomNavigationView;->f:Landroid/support/design/widget/BottomNavigationView$a;

    .line 235
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$b;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/BottomNavigationView$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    iput-object p1, p0, Landroid/support/design/widget/BottomNavigationView;->e:Landroid/support/design/widget/BottomNavigationView$b;

    .line 223
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/h;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->a:Landroid/support/v7/view/menu/h;

    iget-object v2, p0, Landroid/support/design/widget/BottomNavigationView;->c:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/o;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 409
    :cond_0
    return-void
.end method
