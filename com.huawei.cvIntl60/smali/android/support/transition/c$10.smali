.class Landroid/support/transition/c$10;
.super Landroid/support/transition/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/c;->a(Landroid/view/ViewGroup;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/support/transition/c;


# direct methods
.method constructor <init>(Landroid/support/transition/c;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 391
    iput-object p1, p0, Landroid/support/transition/c$10;->c:Landroid/support/transition/c;

    iput-object p2, p0, Landroid/support/transition/c$10;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/support/transition/m;-><init>()V

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/c$10;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/l;)V
    .locals 2
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/support/transition/c$10;->a:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/support/transition/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/x;->a(Landroid/view/ViewGroup;Z)V

    .line 405
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/l;->b(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    .line 406
    return-void
.end method

.method public b(Landroid/support/transition/l;)V
    .locals 2
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/transition/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/x;->a(Landroid/view/ViewGroup;Z)V

    .line 411
    return-void
.end method

.method public c(Landroid/support/transition/l;)V
    .locals 2
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/transition/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/transition/x;->a(Landroid/view/ViewGroup;Z)V

    .line 416
    return-void
.end method
