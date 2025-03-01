.class public Landroid/support/v7/view/menu/u;
.super Landroid/support/v7/view/menu/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private d:Landroid/support/v7/view/menu/h;

.field private e:Landroid/support/v7/view/menu/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    .line 45
    iput-object p3, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/j;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v0

    .line 143
    :goto_0
    if-nez v0, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_1
    return-object v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/support/v7/view/menu/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroid/support/v7/view/menu/h$a;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    .line 80
    return-void
.end method

.method a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    .line 90
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->c()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v7/view/menu/j;)Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/h;->c(Landroid/support/v7/view/menu/j;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->d()Z

    move-result v0

    return v0
.end method

.method public d(Landroid/support/v7/view/menu/j;)Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/h;->d(Landroid/support/v7/view/menu/j;)Z

    move-result v0

    return v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/j;

    return-object v0
.end method

.method public q()Landroid/support/v7/view/menu/h;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->q()Landroid/support/v7/view/menu/h;

    move-result-object v0

    return-object v0
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/h;->setGroupDividerEnabled(Z)V

    .line 152
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/h;->e(I)Landroid/support/v7/view/menu/h;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/h;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/h;->d(I)Landroid/support/v7/view/menu/h;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/h;->a(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/h;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/h;->a(Landroid/view/View;)Landroid/support/v7/view/menu/h;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/j;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/j;->setIcon(I)Landroid/view/MenuItem;

    .line 102
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/j;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/j;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 96
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/h;->setQwertyMode(Z)V

    .line 51
    return-void
.end method

.method public t()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    return-object v0
.end method
