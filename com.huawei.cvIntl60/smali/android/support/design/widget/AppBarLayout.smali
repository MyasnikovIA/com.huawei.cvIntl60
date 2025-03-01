.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$c;
    a = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$BaseBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$b;,
        Landroid/support/design/widget/AppBarLayout$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Landroid/support/v4/view/WindowInsetsCompat;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/AppBarLayout$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:[I


# direct methods
.method private a(ZZZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz p2, :cond_2

    const/4 v1, 0x4

    :goto_1
    or-int/2addr v1, v2

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->e:I

    .line 351
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    .line 352
    return-void

    .line 347
    :cond_1
    const/4 v1, 0x2

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private b(Z)Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-eq v0, p1, :cond_0

    .line 570
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->i:Z

    .line 571
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 572
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 293
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 297
    :goto_1
    return v0

    .line 292
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 297
    goto :goto_1
.end method

.method private g()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 302
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->a:I

    .line 303
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 304
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 305
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/design/widget/AppBarLayout$b;
    .locals 3

    .prologue
    .line 361
    new-instance v0, Landroid/support/design/widget/AppBarLayout$b;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/AppBarLayout$b;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$b;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Landroid/support/design/widget/AppBarLayout$b;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$b;
    .locals 2

    .prologue
    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Landroid/support/design/widget/AppBarLayout$b;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$b;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 376
    :goto_0
    return-object v0

    .line 373
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 374
    new-instance v0, Landroid/support/design/widget/AppBarLayout$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 376
    :cond_1
    new-instance v0, Landroid/support/design/widget/AppBarLayout$b;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 506
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 507
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    .line 508
    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v0, p0, p1}, Landroid/support/design/widget/AppBarLayout$a;->a(Landroid/support/design/widget/AppBarLayout;I)V

    .line 506
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 513
    :cond_1
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    .line 344
    return-void
.end method

.method a(Z)Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->j:Z

    if-eq v0, p1, :cond_0

    .line 589
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->j:Z

    .line 590
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 591
    const/4 v0, 0x1

    .line 593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->d:Z

    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 356
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout$b;

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->k:Z

    return v0
.end method

.method e()V
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->e:I

    .line 642
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->a()Landroid/support/design/widget/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->a()Landroid/support/design/widget/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 431
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 433
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 463
    :goto_0
    return v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v1, v3

    :goto_1
    if-ltz v2, :cond_4

    .line 438
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 439
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$b;

    .line 440
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 441
    iget v6, v0, Landroid/support/design/widget/AppBarLayout$b;->a:I

    .line 443
    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 445
    iget v7, v0, Landroid/support/design/widget/AppBarLayout$b;->topMargin:I

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$b;->bottomMargin:I

    add-int/2addr v0, v7

    add-int/2addr v0, v1

    .line 447
    and-int/lit8 v1, v6, 0x8

    if-eqz v1, :cond_1

    .line 449
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_1

    .line 450
    :cond_1
    and-int/lit8 v1, v6, 0x2

    if-eqz v1, :cond_2

    .line 452
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int v1, v5, v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 455
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int v1, v5, v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 457
    :cond_3
    if-lez v1, :cond_5

    .line 463
    :cond_4
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method getDownNestedScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 468
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 470
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 499
    :goto_0
    return v0

    .line 474
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 475
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 476
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$b;

    .line 477
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 478
    iget v7, v0, Landroid/support/design/widget/AppBarLayout$b;->topMargin:I

    iget v8, v0, Landroid/support/design/widget/AppBarLayout$b;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 480
    iget v0, v0, Landroid/support/design/widget/AppBarLayout$b;->a:I

    .line 482
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_2

    .line 484
    add-int/2addr v1, v6

    .line 486
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 490
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 499
    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    goto :goto_0

    .line 474
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    .line 517
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    .line 518
    if-eqz v0, :cond_0

    .line 520
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 533
    :goto_0
    return v0

    .line 524
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    .line 525
    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 526
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    .line 527
    :goto_1
    if-eqz v0, :cond_2

    .line 528
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 526
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 533
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method getPendingAction()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->e:I

    return v0
.end method

.method public getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->f:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->f:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 389
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 390
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->a:I

    .line 417
    :goto_0
    return v0

    .line 394
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 395
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 396
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$b;

    .line 397
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 398
    iget v7, v0, Landroid/support/design/widget/AppBarLayout$b;->a:I

    .line 400
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    .line 402
    iget v8, v0, Landroid/support/design/widget/AppBarLayout$b;->topMargin:I

    add-int/2addr v6, v8

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$b;->bottomMargin:I

    add-int/2addr v0, v6

    add-int/2addr v1, v0

    .line 404
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_1

    .line 408
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    .line 417
    :goto_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->a:I

    goto :goto_0

    .line 394
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method getUpNestedPreScrollRange()I
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->l:[I

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->l:[I

    .line 543
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->l:[I

    .line 544
    array-length v0, v1

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 546
    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/support/design/R$attr;->state_liftable:I

    :goto_0
    aput v0, v1, v3

    .line 547
    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->j:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/support/design/R$attr;->state_lifted:I

    :goto_1
    aput v0, v1, v3

    .line 551
    const/4 v3, 0x2

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/support/design/R$attr;->state_collapsible:I

    :goto_2
    aput v0, v1, v3

    .line 552
    const/4 v3, 0x3

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->j:Z

    if-eqz v0, :cond_4

    sget v0, Landroid/support/design/R$attr;->state_collapsed:I

    :goto_3
    aput v0, v1, v3

    .line 554
    invoke-static {v2, v1}, Landroid/support/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v0

    return-object v0

    .line 546
    :cond_1
    sget v0, Landroid/support/design/R$attr;->state_liftable:I

    neg-int v0, v0

    goto :goto_0

    .line 547
    :cond_2
    sget v0, Landroid/support/design/R$attr;->state_lifted:I

    neg-int v0, v0

    goto :goto_1

    .line 551
    :cond_3
    sget v0, Landroid/support/design/R$attr;->state_collapsible:I

    neg-int v0, v0

    goto :goto_2

    .line 552
    :cond_4
    sget v0, Landroid/support/design/R$attr;->state_collapsed:I

    neg-int v0, v0

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 270
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 271
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->g()V

    .line 273
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout;->d:Z

    .line 274
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    .line 275
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$b;

    .line 277
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$b;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_3

    .line 280
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->d:Z

    .line 286
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->h:Z

    if-nez v0, :cond_2

    .line 287
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->k:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/design/widget/AppBarLayout;->b(Z)Z

    .line 289
    :cond_2
    return-void

    .line 274
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 287
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 265
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->g()V

    .line 266
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .prologue
    .line 328
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->a(ZZ)V

    .line 329
    return-void
.end method

.method public setLiftOnScroll(Z)V
    .locals 0

    .prologue
    .line 605
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->k:Z

    .line 606
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 309
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 314
    return-void
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 622
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 623
    invoke-static {p0, p1}, Landroid/support/design/widget/t;->a(Landroid/view/View;F)V

    .line 625
    :cond_0
    return-void
.end method
