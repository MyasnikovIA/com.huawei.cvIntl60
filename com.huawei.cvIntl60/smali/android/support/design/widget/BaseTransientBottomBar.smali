.class public abstract Landroid/support/design/widget/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BaseTransientBottomBar$b;,
        Landroid/support/design/widget/BaseTransientBottomBar$Behavior;,
        Landroid/support/design/widget/BaseTransientBottomBar$e;,
        Landroid/support/design/widget/BaseTransientBottomBar$c;,
        Landroid/support/design/widget/BaseTransientBottomBar$d;,
        Landroid/support/design/widget/BaseTransientBottomBar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/BaseTransientBottomBar",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;

.field private static final d:Z

.field private static final e:[I


# instance fields
.field protected final b:Landroid/support/design/widget/BaseTransientBottomBar$e;

.field final c:Landroid/support/design/widget/n$a;

.field private final f:Landroid/view/ViewGroup;

.field private final g:Landroid/support/design/h/a;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/BaseTransientBottomBar$a",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field private i:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

.field private final j:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Z

    .line 180
    new-array v0, v1, [I

    sget v1, Landroid/support/design/R$attr;->snackbarStyle:I

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->e:[I

    .line 183
    new-instance v0, Landroid/os/Handler;

    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$1;

    invoke-direct {v2}, Landroid/support/design/widget/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->a:Landroid/os/Handler;

    .line 201
    return-void

    :cond_0
    move v0, v2

    .line 176
    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/h/a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->g:Landroid/support/design/h/a;

    return-object v0
.end method

.method private d(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 612
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 613
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->h()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 614
    sget-object v1, Landroid/support/design/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 616
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$2;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 628
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$3;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 646
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 647
    return-void
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Z

    return v0
.end method

.method private h()I
    .locals 3

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getHeight()I

    move-result v1

    .line 651
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 652
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 653
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 655
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->c:Landroid/support/design/widget/n$a;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$a;I)V

    .line 395
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 446
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->c:Landroid/support/design/widget/n$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->e(Landroid/support/design/widget/n$a;)Z

    move-result v0

    return v0
.end method

.method protected b()Landroid/support/design/widget/SwipeDismissBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/design/widget/SwipeDismissBehavior",
            "<+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-direct {v0}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;-><init>()V

    return-object v0
.end method

.method final b(I)V
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 660
    invoke-direct {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->d(I)V

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->c(I)V

    goto :goto_0
.end method

.method final c()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 469
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 471
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_1

    .line 473
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 475
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->i:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    if-nez v1, :cond_3

    .line 476
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->b()Landroid/support/design/widget/SwipeDismissBehavior;

    move-result-object v2

    .line 478
    :goto_0
    instance-of v1, v2, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 479
    check-cast v1, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-static {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->a(Landroid/support/design/widget/BaseTransientBottomBar$Behavior;Landroid/support/design/widget/BaseTransientBottomBar;)V

    .line 481
    :cond_0
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$4;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$4;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v2, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior$a;)V

    .line 506
    invoke-virtual {v0, v2}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout$b;)V

    .line 508
    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->g:I

    .line 511
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 514
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$5;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$5;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$e;->setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$c;)V

    .line 537
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 538
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 540
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->d()V

    .line 563
    :goto_1
    return-void

    .line 476
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->i:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    goto :goto_0

    .line 543
    :cond_4
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->e()V

    goto :goto_1

    .line 547
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$6;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$6;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$e;->setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$d;)V

    goto :goto_1
.end method

.method c(I)V
    .locals 2

    .prologue
    .line 681
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->c:Landroid/support/design/widget/n$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$a;)V

    .line 682
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 686
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 687
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BaseTransientBottomBar$a;

    invoke-virtual {v0, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$a;->a(Ljava/lang/Object;I)V

    .line 686
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 692
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 693
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 695
    :cond_1
    return-void
.end method

.method d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 566
    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->h()I

    move-result v0

    .line 567
    sget-boolean v1, Landroid/support/design/widget/BaseTransientBottomBar;->d:Z

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 573
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 574
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 575
    sget-object v2, Landroid/support/design/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 577
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$7;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$7;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$8;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar$8;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 608
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 609
    return-void

    .line 570
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$e;->setTranslationY(F)V

    goto :goto_0
.end method

.method e()V
    .locals 2

    .prologue
    .line 668
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->c:Landroid/support/design/widget/n$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->b(Landroid/support/design/widget/n$a;)V

    .line 669
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 673
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 674
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BaseTransientBottomBar$a;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$a;->a(Ljava/lang/Object;)V

    .line 673
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 677
    :cond_0
    return-void
.end method

.method f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 699
    .line 700
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->j:Landroid/view/accessibility/AccessibilityManager;

    .line 701
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 702
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
