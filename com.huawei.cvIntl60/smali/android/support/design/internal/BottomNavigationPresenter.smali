.class public Landroid/support/design/internal/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/o;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/view/menu/h;

.field private b:Landroid/support/design/internal/b;

.field private c:Z

.field private d:I


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 2

    .prologue
    .line 47
    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationPresenter;->a:Landroid/support/v7/view/menu/h;

    .line 48
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Landroid/support/design/internal/b;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/b;->a(Landroid/support/v7/view/menu/h;)V

    .line 49
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 112
    instance-of v0, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Landroid/support/design/internal/b;

    check-cast p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    iget v1, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->a:I

    invoke-virtual {v0, v1}, Landroid/support/design/internal/b;->a(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->c:Z

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->b()V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->c()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/u;)Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->d:I

    return v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->c:Z

    .line 119
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;-><init>()V

    .line 106
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Landroid/support/design/internal/b;

    invoke-virtual {v1}, Landroid/support/design/internal/b;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->a:I

    .line 107
    return-object v0
.end method
