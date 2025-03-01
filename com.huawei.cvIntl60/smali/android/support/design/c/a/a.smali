.class public Landroid/support/design/c/a/a;
.super Landroid/support/v7/widget/CardView;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/c/d;


# instance fields
.field private final e:Landroid/support/design/c/c;


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    invoke-virtual {v0}, Landroid/support/design/c/c;->a()V

    .line 47
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/widget/CardView;->draw(Landroid/graphics/Canvas;)V

    .line 98
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    invoke-virtual {v0}, Landroid/support/design/c/c;->b()V

    .line 52
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v7/widget/CardView;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    invoke-virtual {v0, p1}, Landroid/support/design/c/c;->a(Landroid/graphics/Canvas;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/CardView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    invoke-virtual {v0}, Landroid/support/design/c/c;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    invoke-virtual {v0}, Landroid/support/design/c/c;->d()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Landroid/support/design/c/d$d;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    invoke-virtual {v0}, Landroid/support/design/c/c;->c()Landroid/support/design/c/d$d;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    invoke-virtual {v0}, Landroid/support/design/c/c;->f()Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/CardView;->isOpaque()Z

    move-result v0

    goto :goto_0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    invoke-virtual {v0, p1}, Landroid/support/design/c/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    invoke-virtual {v0, p1}, Landroid/support/design/c/c;->a(I)V

    .line 68
    return-void
.end method

.method public setRevealInfo(Landroid/support/design/c/d$d;)V
    .locals 1
    .param p1    # Landroid/support/design/c/d$d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/design/c/a/a;->e:Landroid/support/design/c/c;

    invoke-virtual {v0, p1}, Landroid/support/design/c/c;->a(Landroid/support/design/c/d$d;)V

    .line 57
    return-void
.end method
