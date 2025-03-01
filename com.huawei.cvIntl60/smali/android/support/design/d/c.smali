.class public final Landroid/support/design/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z

.field private c:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method private d()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/design/d/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 90
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iget-object v1, p0, Landroid/support/design/d/c;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 79
    iput p1, p0, Landroid/support/design/d/c;->c:I

    .line 80
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const-string v0, "expanded"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/d/c;->b:Z

    .line 70
    const-string v0, "expandedComponentIdHint"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/design/d/c;->c:I

    .line 72
    iget-boolean v0, p0, Landroid/support/design/d/c;->b:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Landroid/support/design/d/c;->d()V

    .line 75
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/support/design/d/c;->b:Z

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v1, "expanded"

    iget-boolean v2, p0, Landroid/support/design/d/c;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    const-string v1, "expandedComponentIdHint"

    iget v2, p0, Landroid/support/design/d/c;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    return-object v0
.end method

.method public c()I
    .locals 1
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Landroid/support/design/d/c;->c:I

    return v0
.end method
