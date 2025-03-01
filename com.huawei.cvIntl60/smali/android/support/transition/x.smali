.class Landroid/support/transition/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/view/ViewGroup;)Landroid/support/transition/w;
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 34
    new-instance v0, Landroid/support/transition/v;

    invoke-direct {v0, p0}, Landroid/support/transition/v;-><init>(Landroid/view/ViewGroup;)V

    .line 36
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/support/transition/u;->a(Landroid/view/ViewGroup;)Landroid/support/transition/u;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/support/transition/z;->a(Landroid/view/ViewGroup;Z)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p0, p1}, Landroid/support/transition/y;->a(Landroid/view/ViewGroup;Z)V

    goto :goto_0
.end method
