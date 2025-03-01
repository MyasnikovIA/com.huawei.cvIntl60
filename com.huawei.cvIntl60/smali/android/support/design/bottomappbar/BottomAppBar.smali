.class public Landroid/support/design/bottomappbar/BottomAppBar;
.super Landroid/support/v7/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/CoordinatorLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/bottomappbar/BottomAppBar$SavedState;,
        Landroid/support/design/bottomappbar/BottomAppBar$Behavior;
    }
.end annotation


# instance fields
.field a:Landroid/animation/AnimatorListenerAdapter;

.field private final f:I

.field private final g:Landroid/support/design/g/c;

.field private final h:Landroid/support/design/bottomappbar/a;

.field private i:Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method private a(Z)F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 504
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->m()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    .line 505
    if-nez v2, :cond_0

    move v0, v1

    .line 524
    :goto_0
    return v0

    .line 510
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 511
    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    .line 513
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 514
    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 516
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 518
    :cond_1
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v1

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 519
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v4, v3

    int-to-float v3, v3

    .line 521
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 522
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v3, v1

    .line 524
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    :goto_1
    add-float/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic a(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/bottomappbar/a;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->l:I

    if-eq v0, p1, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 296
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->a(ILjava/util/List;)V

    .line 299
    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->b(ILjava/util/List;)V

    .line 301
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 302
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 303
    iput-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    .line 304
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$1;

    invoke-direct {v1, p0}, Landroid/support/design/bottomappbar/BottomAppBar$1;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private a(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->n:Z

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    .line 322
    invoke-virtual {v2}, Landroid/support/design/bottomappbar/a;->a()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->b(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 321
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 324
    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$2;

    invoke-direct {v1, p0}, Landroid/support/design/bottomappbar/BottomAppBar$2;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 332
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 333
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 375
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->n()Z

    move-result v2

    if-nez v2, :cond_2

    move p2, v0

    move p1, v0

    .line 383
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Landroid/support/design/bottomappbar/BottomAppBar;->a(IZLjava/util/List;)V

    .line 385
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 386
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 387
    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    .line 388
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$3;

    invoke-direct {v1, p0}, Landroid/support/design/bottomappbar/BottomAppBar$3;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private a(IZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 403
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getActionMenuView()Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    .line 406
    if-nez v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const-string v1, "alpha"

    new-array v2, v6, [F

    aput v3, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 412
    iget-boolean v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->n:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_4

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->n()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->l:I

    if-eq v2, v6, :cond_3

    if-ne p1, v6, :cond_4

    .line 415
    :cond_3
    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 417
    new-instance v3, Landroid/support/design/bottomappbar/BottomAppBar$4;

    invoke-direct {v3, p0, v0, p1, p2}, Landroid/support/design/bottomappbar/BottomAppBar$4;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 435
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 436
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 437
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 441
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Landroid/support/design/widget/FloatingActionButton;)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Landroid/support/v7/widget/ActionMenuView;IZ)V

    return-void
.end method

.method private a(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/FloatingActionButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 657
    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->b(Landroid/support/design/widget/FloatingActionButton;)V

    .line 658
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->a:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->c(Landroid/animation/Animator$AnimatorListener;)V

    .line 659
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->a:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 660
    return-void
.end method

.method private a(Landroid/support/v7/widget/ActionMenuView;IZ)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 566
    .line 567
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    move v4, v3

    move v5, v3

    .line 570
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 571
    invoke-virtual {p0, v4}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 573
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/Toolbar$b;

    if-eqz v0, :cond_2

    .line 574
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    const v7, 0x800007

    and-int/2addr v0, v7

    const v7, 0x800003

    if-ne v0, v7, :cond_2

    move v0, v2

    .line 577
    :goto_2
    if-eqz v0, :cond_0

    .line 578
    if-eqz v1, :cond_3

    .line 579
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_3
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 570
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v1, v3

    .line 567
    goto :goto_0

    :cond_2
    move v0, v3

    .line 574
    goto :goto_2

    .line 579
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_3

    .line 583
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->getRight()I

    move-result v0

    .line 584
    :goto_4
    sub-int v0, v5, v0

    .line 585
    if-ne p2, v2, :cond_6

    if-eqz p3, :cond_6

    int-to-float v0, v0

    :goto_5
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->setTranslationX(F)V

    .line 587
    return-void

    .line 583
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->getLeft()I

    move-result v0

    goto :goto_4

    .line 585
    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private b(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 532
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    .line 533
    :goto_0
    if-ne p1, v0, :cond_2

    .line 534
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->f:I

    sub-int/2addr v1, v3

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    :cond_0
    mul-int/2addr v0, v1

    .line 533
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 532
    goto :goto_0

    :cond_2
    move v0, v1

    .line 534
    goto :goto_1
.end method

.method static synthetic b(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic b(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/g/c;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->g:Landroid/support/design/g/c;

    return-object v0
.end method

.method private b(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .line 361
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->m()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const-string v1, "translationX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->b(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 362
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method private b(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/FloatingActionButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 663
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->a:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->d(Landroid/animation/Animator$AnimatorListener;)V

    .line 664
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->a:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 665
    return-void
.end method

.method static synthetic c(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->m()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Landroid/support/design/bottomappbar/BottomAppBar;)Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->q()V

    return-void
.end method

.method static synthetic f(Landroid/support/design/bottomappbar/BottomAppBar;)F
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v0

    return v0
.end method

.method private getActionMenuView()Landroid/support/v7/widget/ActionMenuView;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 544
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 545
    invoke-virtual {p0, v1}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 546
    instance-of v2, v0, Landroid/support/v7/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 547
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 551
    :goto_1
    return-object v0

    .line 544
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 551
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getFabTranslationX()F
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->l:I

    invoke-direct {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->b(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getFabTranslationY()F
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->n:Z

    invoke-direct {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Z)F

    move-result v0

    return v0
.end method

.method private m()Landroid/support/design/widget/FloatingActionButton;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 350
    :goto_0
    return-object v0

    .line 343
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/CoordinatorLayout;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 345
    instance-of v3, v0, Landroid/support/design/widget/FloatingActionButton;

    if-eqz v3, :cond_1

    .line 346
    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 350
    goto :goto_0
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->m()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->i:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 593
    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 596
    :cond_1
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 599
    :cond_2
    return-void
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->i:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    .line 603
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    .line 604
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 602
    :goto_0
    return v0

    .line 604
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 619
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/design/bottomappbar/a;->a(F)V

    .line 620
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->m()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    .line 621
    iget-object v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->g:Landroid/support/design/g/c;

    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->n:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/design/g/c;->a(F)V

    .line 622
    if-eqz v2, :cond_0

    .line 623
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    .line 624
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/design/widget/FloatingActionButton;->setTranslationX(F)V

    .line 626
    :cond_0
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getActionMenuView()Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_1

    .line 628
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setAlpha(F)V

    .line 629
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->n()Z

    move-result v1

    if-nez v1, :cond_3

    .line 630
    invoke-direct {p0, v0, v4, v4}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Landroid/support/v7/widget/ActionMenuView;IZ)V

    .line 635
    :cond_1
    :goto_1
    return-void

    .line 621
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 632
    :cond_3
    iget v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->l:I

    iget-boolean v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->n:Z

    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Landroid/support/v7/widget/ActionMenuView;IZ)V

    goto :goto_1
.end method


# virtual methods
.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->g:Landroid/support/design/g/c;

    invoke-virtual {v0}, Landroid/support/design/g/c;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBehavior()Landroid/support/design/widget/CoordinatorLayout$b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/design/widget/CoordinatorLayout$b",
            "<",
            "Landroid/support/design/bottomappbar/BottomAppBar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;-><init>()V

    return-object v0
.end method

.method public getCradleVerticalOffset()F
    .locals 1
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/a;->b()F

    move-result v0

    return v0
.end method

.method public getFabAlignmentMode()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->l:I

    return v0
.end method

.method public getFabCradleMargin()F
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/a;->d()F

    move-result v0

    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 1
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/a;->e()F

    move-result v0

    return v0
.end method

.method public getHideOnScroll()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->m:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 609
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/Toolbar;->onLayout(ZIIII)V

    .line 612
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->o()V

    .line 614
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->q()V

    .line 615
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 795
    instance-of v0, p1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    if-nez v0, :cond_0

    .line 796
    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 803
    :goto_0
    return-void

    .line 799
    :cond_0
    check-cast p1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    .line 800
    invoke-virtual {p1}, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 801
    iget v0, p1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->a:I

    iput v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->l:I

    .line 802
    iget-boolean v0, p1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->b:Z

    iput-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->n:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 786
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 787
    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 788
    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->l:I

    iput v0, v1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->a:I

    .line 789
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->n:Z

    iput-boolean v0, v1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->b:Z

    .line 790
    return-object v1
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->g:Landroid/support/design/g/c;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 189
    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    invoke-virtual {v0, p1}, Landroid/support/design/bottomappbar/a;->b(F)V

    .line 244
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->g:Landroid/support/design/g/c;

    invoke-virtual {v0}, Landroid/support/design/g/c;->invalidateSelf()V

    .line 246
    :cond_0
    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->a(I)V

    .line 183
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->n:Z

    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->a(IZ)V

    .line 184
    iput p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->l:I

    .line 185
    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    invoke-virtual {v0, p1}, Landroid/support/design/bottomappbar/a;->d(F)V

    .line 209
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->g:Landroid/support/design/g/c;

    invoke-virtual {v0}, Landroid/support/design/g/c;->invalidateSelf()V

    .line 211
    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    invoke-virtual {v0, p1}, Landroid/support/design/bottomappbar/a;->e(F)V

    .line 223
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->g:Landroid/support/design/g/c;

    invoke-virtual {v0}, Landroid/support/design/g/c;->invalidateSelf()V

    .line 225
    :cond_0
    return-void
.end method

.method setFabDiameter(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 281
    int-to-float v0, p1

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    invoke-virtual {v1}, Landroid/support/design/bottomappbar/a;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->h:Landroid/support/design/bottomappbar/a;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/bottomappbar/a;->c(F)V

    .line 283
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->g:Landroid/support/design/g/c;

    invoke-virtual {v0}, Landroid/support/design/g/c;->invalidateSelf()V

    .line 285
    :cond_0
    return-void
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->m:Z

    .line 264
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 670
    return-void
.end method
