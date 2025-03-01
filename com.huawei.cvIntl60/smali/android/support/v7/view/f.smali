.class public Landroid/support/v7/view/f;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/f$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/support/v7/view/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/b;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/v7/view/f;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    .line 51
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    .line 81
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Landroid/support/v7/view/f;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->b()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenu;

    invoke-static {v1, v0}, Landroid/support/v7/view/menu/q;->a(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->a()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->j()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->k()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->d()V

    .line 76
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->h()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->a(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->b(I)V

    .line 106
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->a(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->a(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->a(I)V

    .line 96
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->b(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->a(Z)V

    .line 131
    return-void
.end method
