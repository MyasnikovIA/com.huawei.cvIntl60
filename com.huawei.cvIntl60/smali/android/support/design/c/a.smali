.class public final Landroid/support/design/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/design/c/d;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Landroid/support/design/c/a$1;

    invoke-direct {v0, p0}, Landroid/support/design/c/a$1;-><init>(Landroid/support/design/c/d;)V

    return-object v0
.end method

.method public static a(Landroid/support/design/c/d;FFF)Landroid/animation/Animator;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    sget-object v0, Landroid/support/design/c/d$b;->a:Landroid/util/Property;

    sget-object v1, Landroid/support/design/c/d$a;->a:Landroid/animation/TypeEvaluator;

    new-array v2, v5, [Landroid/support/design/c/d$d;

    new-instance v3, Landroid/support/design/c/d$d;

    invoke-direct {v3, p1, p2, p3}, Landroid/support/design/c/d$d;-><init>(FFF)V

    aput-object v3, v2, v4

    .line 56
    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 64
    invoke-interface {p0}, Landroid/support/design/c/d;->getRevealInfo()Landroid/support/design/c/d$d;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget v0, v0, Landroid/support/design/c/d$d;->c:F

    .line 70
    check-cast p0, Landroid/view/View;

    float-to-int v2, p1

    float-to-int v3, p2

    .line 71
    invoke-static {p0, v2, v3, v0, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 73
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 74
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 77
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
