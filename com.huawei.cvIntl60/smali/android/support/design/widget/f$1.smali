.class Landroid/support/design/widget/f$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f$d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/f$d;

.field final synthetic c:Landroid/support/design/widget/f;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/f;ZLandroid/support/design/widget/f$d;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    iput-boolean p2, p0, Landroid/support/design/widget/f$1;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/f$1;->b:Landroid/support/design/widget/f$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/f$1;->d:Z

    .line 403
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/f;->b:I

    .line 408
    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/f;->c:Landroid/animation/Animator;

    .line 410
    iget-boolean v0, p0, Landroid/support/design/widget/f$1;->d:Z

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    iget-object v1, v0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    iget-boolean v0, p0, Landroid/support/design/widget/f$1;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Landroid/support/design/widget/f$1;->a:Z

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/u;->a(IZ)V

    .line 412
    iget-object v0, p0, Landroid/support/design/widget/f$1;->b:Landroid/support/design/widget/f$d;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Landroid/support/design/widget/f$1;->b:Landroid/support/design/widget/f$d;

    invoke-interface {v0}, Landroid/support/design/widget/f$d;->b()V

    .line 416
    :cond_0
    return-void

    .line 411
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    iget-object v0, v0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    iget-boolean v1, p0, Landroid/support/design/widget/f$1;->a:Z

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/u;->a(IZ)V

    .line 395
    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/design/widget/f;->b:I

    .line 396
    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    iput-object p1, v0, Landroid/support/design/widget/f;->c:Landroid/animation/Animator;

    .line 397
    iput-boolean v2, p0, Landroid/support/design/widget/f$1;->d:Z

    .line 398
    return-void
.end method
