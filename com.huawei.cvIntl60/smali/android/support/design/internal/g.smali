.class public Landroid/support/design/internal/g;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p0}, Landroid/support/design/internal/g;->getWidth()I

    move-result v0

    .line 94
    invoke-virtual {p0}, Landroid/support/design/internal/g;->getHeight()I

    move-result v1

    .line 95
    iget-object v2, p0, Landroid/support/design/internal/g;->b:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 97
    invoke-virtual {p0}, Landroid/support/design/internal/g;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/design/internal/g;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    iget-object v3, p0, Landroid/support/design/internal/g;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/design/internal/g;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v7, v7, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    iget-object v3, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/design/internal/g;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 102
    iget-object v3, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 105
    iget-object v3, p0, Landroid/support/design/internal/g;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/design/internal/g;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v7, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 106
    iget-object v3, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/design/internal/g;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 107
    iget-object v3, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v3, p0, Landroid/support/design/internal/g;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/design/internal/g;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/design/internal/g;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/design/internal/g;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v1, v6

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    iget-object v3, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/design/internal/g;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 112
    iget-object v3, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    iget-object v3, p0, Landroid/support/design/internal/g;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/design/internal/g;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v4

    iget-object v5, p0, Landroid/support/design/internal/g;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/design/internal/g;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v6

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    iget-object v0, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/internal/g;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 117
    iget-object v0, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 121
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 126
    iget-object v0, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 129
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 134
    iget-object v0, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/support/design/internal/g;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 137
    :cond_0
    return-void
.end method
