.class public Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->b:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->b:I

    .line 58
    return-void
.end method

.method static synthetic a(Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->c:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method private a(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IJ",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p2

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior$1;

    invoke-direct {v1, p0}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior$1;-><init>(Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->c:Landroid/view/ViewPropertyAnimator;

    .line 126
    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-lez p5, :cond_1

    .line 86
    invoke-virtual {p0, p2}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->b(Landroid/view/View;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-gez p5, :cond_0

    .line 88
    invoke-virtual {p0, p2}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->c:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 97
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->b:I

    .line 98
    const/4 v3, 0x0

    const-wide/16 v4, 0xe1

    sget-object v6, Landroid/support/design/a/a;->d:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    .line 100
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a:I

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->c:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 107
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->b:I

    .line 108
    iget v3, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a:I

    const-wide/16 v4, 0xaf

    sget-object v6, Landroid/support/design/a/a;->c:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->a(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    .line 110
    return-void
.end method
