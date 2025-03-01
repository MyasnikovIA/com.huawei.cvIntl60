.class public Landroid/support/design/bottomappbar/BottomAppBar$Behavior;
.super Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/behavior/HideBottomViewOnScrollBehavior",
        "<",
        "Landroid/support/design/bottomappbar/BottomAppBar;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 692
    invoke-direct {p0}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;-><init>()V

    .line 693
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->a:Landroid/graphics/Rect;

    .line 694
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 703
    invoke-direct {p0, p1, p2}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 704
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->a:Landroid/graphics/Rect;

    .line 705
    return-void
.end method

.method private a(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/bottomappbar/BottomAppBar;)Z
    .locals 2

    .prologue
    .line 709
    .line 710
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 711
    const/16 v1, 0x11

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    .line 714
    invoke-static {p2, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/design/widget/FloatingActionButton;)V

    .line 716
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected a(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 4

    .prologue
    .line 756
    invoke-super {p0, p1}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a(Landroid/view/View;)V

    .line 757
    invoke-static {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->c(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->clearAnimation()V

    .line 760
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 761
    invoke-static {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->f(Landroid/support/design/bottomappbar/BottomAppBar;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/a/a;->d:Landroid/animation/TimeInterpolator;

    .line 762
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xe1

    .line 763
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 765
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 687
    check-cast p1, Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-virtual {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->a(Landroid/support/design/bottomappbar/BottomAppBar;)V

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/bottomappbar/BottomAppBar;I)Z
    .locals 2

    .prologue
    .line 722
    invoke-static {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->c(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_0

    .line 724
    invoke-direct {p0, v0, p2}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->a(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/bottomappbar/BottomAppBar;)Z

    .line 725
    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->b(Landroid/graphics/Rect;)V

    .line 726
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->setFabDiameter(I)V

    .line 731
    :cond_0
    invoke-static {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->d(Landroid/support/design/bottomappbar/BottomAppBar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    invoke-static {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->e(Landroid/support/design/bottomappbar/BottomAppBar;)V

    .line 736
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 737
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/bottomappbar/BottomAppBar;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/design/bottomappbar/BottomAppBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 749
    invoke-virtual {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->getHideOnScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-super/range {p0 .. p6}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 749
    :goto_0
    return v0

    .line 750
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 687
    check-cast p2, Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/bottomappbar/BottomAppBar;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 687
    move-object v2, p2

    check-cast v2, Landroid/support/design/bottomappbar/BottomAppBar;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/bottomappbar/BottomAppBar;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method protected b(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 4

    .prologue
    .line 769
    invoke-super {p0, p1}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->b(Landroid/view/View;)V

    .line 770
    invoke-static {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->c(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_0

    .line 772
    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    .line 773
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 775
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->clearAnimation()V

    .line 776
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 777
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getPaddingBottom()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/a/a;->c:Landroid/animation/TimeInterpolator;

    .line 778
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xaf

    .line 779
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 781
    :cond_0
    return-void
.end method

.method protected bridge synthetic b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 687
    check-cast p1, Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-virtual {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->b(Landroid/support/design/bottomappbar/BottomAppBar;)V

    return-void
.end method
