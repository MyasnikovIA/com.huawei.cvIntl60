.class Landroid/support/transition/u;
.super Landroid/support/transition/aa;
.source "SourceFile"

# interfaces
.implements Landroid/support/transition/w;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/aa;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 29
    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroid/support/transition/u;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Landroid/support/transition/aa;->d(Landroid/view/View;)Landroid/support/transition/aa;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/transition/u;->a:Landroid/support/transition/aa$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/aa$a;->a(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/transition/u;->a:Landroid/support/transition/aa$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/aa$a;->b(Landroid/view/View;)V

    .line 43
    return-void
.end method
