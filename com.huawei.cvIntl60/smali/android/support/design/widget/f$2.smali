.class Landroid/support/design/widget/f$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/f;->b(Landroid/support/design/widget/f$d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/f$d;

.field final synthetic c:Landroid/support/design/widget/f;


# direct methods
.method constructor <init>(Landroid/support/design/widget/f;ZLandroid/support/design/widget/f$d;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Landroid/support/design/widget/f$2;->c:Landroid/support/design/widget/f;

    iput-boolean p2, p0, Landroid/support/design/widget/f$2;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/f$2;->b:Landroid/support/design/widget/f$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Landroid/support/design/widget/f$2;->c:Landroid/support/design/widget/f;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/f;->b:I

    .line 471
    iget-object v0, p0, Landroid/support/design/widget/f$2;->c:Landroid/support/design/widget/f;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/f;->c:Landroid/animation/Animator;

    .line 473
    iget-object v0, p0, Landroid/support/design/widget/f$2;->b:Landroid/support/design/widget/f$d;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/support/design/widget/f$2;->b:Landroid/support/design/widget/f$d;

    invoke-interface {v0}, Landroid/support/design/widget/f$d;->a()V

    .line 476
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Landroid/support/design/widget/f$2;->c:Landroid/support/design/widget/f;

    iget-object v0, v0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/f$2;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/u;->a(IZ)V

    .line 464
    iget-object v0, p0, Landroid/support/design/widget/f$2;->c:Landroid/support/design/widget/f;

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/design/widget/f;->b:I

    .line 465
    iget-object v0, p0, Landroid/support/design/widget/f$2;->c:Landroid/support/design/widget/f;

    iput-object p1, v0, Landroid/support/design/widget/f;->c:Landroid/animation/Animator;

    .line 466
    return-void
.end method
