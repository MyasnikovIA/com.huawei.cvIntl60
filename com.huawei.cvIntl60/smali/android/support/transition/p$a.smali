.class Landroid/support/transition/p$a;
.super Landroid/support/transition/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/transition/p;


# direct methods
.method constructor <init>(Landroid/support/transition/p;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Landroid/support/transition/m;-><init>()V

    .line 424
    iput-object p1, p0, Landroid/support/transition/p$a;->a:Landroid/support/transition/p;

    .line 425
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
    .line 437
    iget-object v0, p0, Landroid/support/transition/p$a;->a:Landroid/support/transition/p;

    iget v1, v0, Landroid/support/transition/p;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/support/transition/p;->h:I

    .line 438
    iget-object v0, p0, Landroid/support/transition/p$a;->a:Landroid/support/transition/p;

    iget v0, v0, Landroid/support/transition/p;->h:I

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Landroid/support/transition/p$a;->a:Landroid/support/transition/p;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/transition/p;->i:Z

    .line 441
    iget-object v0, p0, Landroid/support/transition/p$a;->a:Landroid/support/transition/p;

    invoke-virtual {v0}, Landroid/support/transition/p;->k()V

    .line 443
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/l;->b(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    .line 444
    return-void
.end method

.method public d(Landroid/support/transition/l;)V
    .locals 2
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/transition/p$a;->a:Landroid/support/transition/p;

    iget-boolean v0, v0, Landroid/support/transition/p;->i:Z

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Landroid/support/transition/p$a;->a:Landroid/support/transition/p;

    invoke-virtual {v0}, Landroid/support/transition/p;->j()V

    .line 431
    iget-object v0, p0, Landroid/support/transition/p$a;->a:Landroid/support/transition/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/transition/p;->i:Z

    .line 433
    :cond_0
    return-void
.end method
