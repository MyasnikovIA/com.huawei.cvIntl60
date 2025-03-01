.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/support/design/widget/u;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/d/a;
.implements Landroid/support/v4/view/TintableBackgroundView;
.implements Landroid/support/v4/widget/TintableImageSourceView;


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$c;
    a = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButton$b;,
        Landroid/support/design/widget/FloatingActionButton$BaseBehavior;,
        Landroid/support/design/widget/FloatingActionButton$Behavior;,
        Landroid/support/design/widget/FloatingActionButton$a;
    }
.end annotation


# instance fields
.field a:Z

.field final b:Landroid/graphics/Rect;

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/content/res/ColorStateList;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroid/graphics/Rect;

.field private final m:Landroid/support/v7/widget/o;

.field private final n:Landroid/support/design/d/c;

.field private o:Landroid/support/design/widget/f;


# direct methods
.method private a(I)I
    .locals 2

    .prologue
    .line 702
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    if-eqz v0, :cond_0

    .line 703
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    .line 719
    :goto_0
    return v0

    .line 706
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 707
    packed-switch p1, :pswitch_data_0

    .line 719
    :pswitch_0
    sget v1, Landroid/support/design/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 710
    :pswitch_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 711
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 712
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1d6

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    .line 713
    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->a(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 714
    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->a(I)I

    move-result v0

    goto :goto_0

    .line 716
    :pswitch_2
    sget v1, Landroid/support/design/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 814
    .line 815
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 816
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 817
    sparse-switch v1, :sswitch_data_0

    .line 834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 827
    :sswitch_0
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 836
    :goto_0
    :sswitch_1
    return p0

    :sswitch_2
    move p0, v0

    .line 832
    goto :goto_0

    .line 817
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->j:I

    return v0
.end method

.method private a(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/f$d;
    .locals 1
    .param p1    # Landroid/support/design/widget/FloatingActionButton$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 634
    if-nez p1, :cond_0

    .line 635
    const/4 v0, 0x0

    .line 638
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/design/widget/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/design/widget/u;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 440
    if-nez v1, :cond_0

    .line 458
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 445
    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 450
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    .line 451
    if-nez v0, :cond_2

    .line 452
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 456
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 457
    invoke-static {v2, v0}, Landroid/support/v7/widget/k;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private c(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 801
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 802
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 803
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 804
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 805
    return-void
.end method

.method private d()Landroid/support/design/widget/f;
    .locals 2

    .prologue
    .line 1255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1256
    new-instance v0, Landroid/support/design/widget/g;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/g;-><init>(Landroid/support/design/widget/u;Landroid/support/design/widget/m;)V

    .line 1258
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/design/widget/f;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/f;-><init>(Landroid/support/design/widget/u;Landroid/support/design/widget/m;)V

    goto :goto_0
.end method

.method private getImpl()Landroid/support/design/widget/f;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->o:Landroid/support/design/widget/f;

    if-nez v0, :cond_0

    .line 1249
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->d()Landroid/support/design/widget/f;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->o:Landroid/support/design/widget/f;

    .line 1251
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->o:Landroid/support/design/widget/f;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 512
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 513
    return-void
.end method

.method a(Landroid/support/design/widget/FloatingActionButton$a;Z)V
    .locals 2

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/f$d;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/f;->b(Landroid/support/design/widget/f$d;Z)V

    .line 509
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->n:Landroid/support/design/d/c;

    invoke-virtual {v0}, Landroid/support/design/d/c;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 782
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 784
    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->c(Landroid/graphics/Rect;)V

    .line 785
    const/4 v0, 0x1

    .line 787
    :cond_0
    return v0
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 516
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 517
    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 796
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 797
    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->c(Landroid/graphics/Rect;)V

    .line 798
    return-void
.end method

.method b(Landroid/support/design/widget/FloatingActionButton$a;Z)V
    .locals 2
    .param p1    # Landroid/support/design/widget/FloatingActionButton$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 540
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/f$d;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f$d;Z)V

    .line 541
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 656
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->o()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 544
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->c(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    return-void
.end method

.method public d(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->d(Landroid/animation/Animator$AnimatorListener;)V

    .line 549
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 737
    invoke-super {p0}, Landroid/support/design/widget/u;->drawableStateChanged()V

    .line 738
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/f;->a([I)V

    .line 739
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompatElevation()F
    .locals 1

    .prologue
    .line 1104
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->a()F

    move-result v0

    return v0
.end method

.method public getCompatHoveredFocusedTranslationZ()F
    .locals 1

    .prologue
    .line 1139
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->b()F

    move-result v0

    return v0
.end method

.method public getCompatPressedTranslationZ()F
    .locals 1

    .prologue
    .line 1174
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->c()F

    move-result v0

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 810
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCustomSize()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 684
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    return v0
.end method

.method public getExpandedComponentIdHint()I
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->n:Landroid/support/design/d/c;

    invoke-virtual {v0}, Landroid/support/design/d/c;->c()I

    move-result v0

    return v0
.end method

.method public getHideMotionSpec()Landroid/support/design/a/h;
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->f()Landroid/support/design/a/h;

    move-result-object v0

    return-object v0
.end method

.method public getRippleColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRippleColorStateList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShowMotionSpec()Landroid/support/design/a/h;
    .locals 1

    .prologue
    .line 1203
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->e()Landroid/support/design/a/h;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    return v0
.end method

.method getSizeDimension()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->a(I)I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 743
    invoke-super {p0}, Landroid/support/design/widget/u;->jumpDrawablesToCurrentState()V

    .line 744
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->g()V

    .line 745
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 725
    invoke-super {p0}, Landroid/support/design/widget/u;->onAttachedToWindow()V

    .line 726
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->k()V

    .line 727
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 731
    invoke-super {p0}, Landroid/support/design/widget/u;->onDetachedFromWindow()V

    .line 732
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->l()V

    .line 733
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 249
    iget v1, p0, Landroid/support/design/widget/FloatingActionButton;->k:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->j:I

    .line 250
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/f;->j()V

    .line 252
    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v1

    .line 253
    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v0

    .line 257
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 260
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 262
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 760
    instance-of v0, p1, Landroid/support/design/stateful/ExtendableSavedState;

    if-nez v0, :cond_0

    .line 761
    invoke-super {p0, p1}, Landroid/support/design/widget/u;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 770
    :goto_0
    return-void

    .line 765
    :cond_0
    check-cast p1, Landroid/support/design/stateful/ExtendableSavedState;

    .line 766
    invoke-virtual {p1}, Landroid/support/design/stateful/ExtendableSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/design/widget/u;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 768
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->n:Landroid/support/design/d/c;

    iget-object v0, p1, Landroid/support/design/stateful/ExtendableSavedState;->a:Landroid/support/v4/util/SimpleArrayMap;

    const-string v2, "expandableWidgetHelper"

    .line 769
    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 768
    invoke-virtual {v1, v0}, Landroid/support/design/d/c;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 749
    invoke-super {p0}, Landroid/support/design/widget/u;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 750
    new-instance v1, Landroid/support/design/stateful/ExtendableSavedState;

    invoke-direct {v1, v0}, Landroid/support/design/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 752
    iget-object v0, v1, Landroid/support/design/stateful/ExtendableSavedState;->a:Landroid/support/v4/util/SimpleArrayMap;

    const-string v2, "expandableWidgetHelper"

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->n:Landroid/support/design/d/c;

    .line 753
    invoke-virtual {v3}, Landroid/support/design/d/c;->b()Landroid/os/Bundle;

    move-result-object v3

    .line 752
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->l:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->l:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    const/4 v0, 0x0

    .line 847
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/u;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .prologue
    .line 472
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 462
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .prologue
    .line 467
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 340
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    .line 341
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->a(Landroid/content/res/ColorStateList;)V

    .line 343
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 367
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    .line 368
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 370
    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 1

    .prologue
    .line 1116
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->a(F)V

    .line 1117
    return-void
.end method

.method public setCompatElevationResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1128
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setCompatElevation(F)V

    .line 1129
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
    .locals 1

    .prologue
    .line 1151
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->b(F)V

    .line 1152
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1163
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    .line 1164
    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
    .locals 1

    .prologue
    .line 1186
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->c(F)V

    .line 1187
    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1198
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    .line 1199
    return-void
.end method

.method public setCustomSize(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 670
    if-gez p1, :cond_0

    .line 671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_0
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    .line 675
    return-void
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 563
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->n:Landroid/support/design/d/c;

    invoke-virtual {v0, p1}, Landroid/support/design/d/c;->a(I)V

    .line 564
    return-void
.end method

.method public setHideMotionSpec(Landroid/support/design/a/h;)V
    .locals 1

    .prologue
    .line 1235
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->b(Landroid/support/design/a/h;)V

    .line 1236
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .prologue
    .line 1244
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setHideMotionSpec(Landroid/support/design/a/h;)V

    .line 1245
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 483
    invoke-super {p0, p1}, Landroid/support/design/widget/u;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->d()V

    .line 485
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 478
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->m:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->a(I)V

    .line 479
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 299
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 300
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 313
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 314
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    .line 315
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/f;->b(Landroid/content/res/ColorStateList;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Landroid/support/design/a/h;)V
    .locals 1

    .prologue
    .line 1212
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/f;->a(Landroid/support/design/a/h;)V

    .line 1213
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .prologue
    .line 1221
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setShowMotionSpec(Landroid/support/design/a/h;)V

    .line 1222
    return-void
.end method

.method public setSize(I)V
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    .line 614
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    if-eq p1, v0, :cond_0

    .line 615
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    .line 616
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->requestLayout()V

    .line 618
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 379
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 398
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 413
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    .line 414
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()V

    .line 416
    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 427
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    .line 428
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()V

    .line 430
    :cond_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Z

    if-eq v0, p1, :cond_0

    .line 582
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButton;->a:Z

    .line 583
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/f;->i()V

    .line 585
    :cond_0
    return-void
.end method
