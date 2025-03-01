.class public Landroid/support/design/widget/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/a$a;
    }
.end annotation


# instance fields
.field final a:Landroid/graphics/Paint;

.field final b:Landroid/graphics/Rect;

.field final c:Landroid/graphics/RectF;

.field final d:Landroid/support/design/widget/a$a;

.field e:F
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation
.end field

.field private f:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private g:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private h:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private i:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private j:Landroid/content/res/ColorStateList;

.field private k:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private l:Z

.field private m:F
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 360.0
    .end annotation
.end field


# direct methods
.method private a()Landroid/graphics/Shader;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 200
    iget-object v3, p0, Landroid/support/design/widget/a;->b:Landroid/graphics/Rect;

    .line 201
    invoke-virtual {p0, v3}, Landroid/support/design/widget/a;->copyBounds(Landroid/graphics/Rect;)V

    .line 203
    iget v0, p0, Landroid/support/design/widget/a;->e:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 205
    const/4 v2, 0x6

    new-array v5, v2, [I

    .line 206
    iget v2, p0, Landroid/support/design/widget/a;->f:I

    iget v4, p0, Landroid/support/design/widget/a;->k:I

    invoke-static {v2, v4}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v7

    .line 207
    iget v2, p0, Landroid/support/design/widget/a;->g:I

    iget v4, p0, Landroid/support/design/widget/a;->k:I

    invoke-static {v2, v4}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v10

    .line 208
    const/4 v2, 0x2

    iget v4, p0, Landroid/support/design/widget/a;->g:I

    .line 210
    invoke-static {v4, v7}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iget v6, p0, Landroid/support/design/widget/a;->k:I

    .line 209
    invoke-static {v4, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v4

    aput v4, v5, v2

    .line 211
    const/4 v2, 0x3

    iget v4, p0, Landroid/support/design/widget/a;->i:I

    .line 213
    invoke-static {v4, v7}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iget v6, p0, Landroid/support/design/widget/a;->k:I

    .line 212
    invoke-static {v4, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v4

    aput v4, v5, v2

    .line 214
    const/4 v2, 0x4

    iget v4, p0, Landroid/support/design/widget/a;->i:I

    iget v6, p0, Landroid/support/design/widget/a;->k:I

    invoke-static {v4, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v4

    aput v4, v5, v2

    .line 215
    const/4 v2, 0x5

    iget v4, p0, Landroid/support/design/widget/a;->h:I

    iget v6, p0, Landroid/support/design/widget/a;->k:I

    invoke-static {v4, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v4

    aput v4, v5, v2

    .line 217
    const/4 v2, 0x6

    new-array v6, v2, [F

    .line 218
    aput v1, v6, v7

    .line 219
    aput v0, v6, v10

    .line 220
    const/4 v2, 0x2

    aput v8, v6, v2

    .line 221
    const/4 v2, 0x3

    aput v8, v6, v2

    .line 222
    const/4 v2, 0x4

    sub-float v0, v9, v0

    aput v0, v6, v2

    .line 223
    const/4 v0, 0x5

    aput v9, v6, v0

    .line 225
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v3

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/support/design/widget/a;->m:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 164
    iput p1, p0, Landroid/support/design/widget/a;->m:F

    .line 165
    invoke-virtual {p0}, Landroid/support/design/widget/a;->invalidateSelf()V

    .line 167
    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/support/design/widget/a;->getState()[I

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/a;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/a;->k:I

    .line 146
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/a;->j:Landroid/content/res/ColorStateList;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/a;->l:Z

    .line 148
    invoke-virtual {p0}, Landroid/support/design/widget/a;->invalidateSelf()V

    .line 149
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/support/design/widget/a;->l:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroid/support/design/widget/a;->a:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/support/design/widget/a;->a()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/a;->l:Z

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 111
    iget-object v1, p0, Landroid/support/design/widget/a;->c:Landroid/graphics/RectF;

    .line 115
    iget-object v2, p0, Landroid/support/design/widget/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/a;->copyBounds(Landroid/graphics/Rect;)V

    .line 116
    iget-object v2, p0, Landroid/support/design/widget/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 117
    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 118
    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 119
    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 120
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v2, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 123
    iget v0, p0, Landroid/support/design/widget/a;->m:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 125
    iget-object v0, p0, Landroid/support/design/widget/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 127
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/design/widget/a;->d:Landroid/support/design/widget/a$a;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Landroid/support/design/widget/a;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/support/design/widget/a;->e:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 132
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/design/widget/a;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/a;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/a;->l:Z

    .line 172
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/design/widget/a;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/support/design/widget/a;->j:Landroid/content/res/ColorStateList;

    iget v1, p0, Landroid/support/design/widget/a;->k:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 183
    iget v1, p0, Landroid/support/design/widget/a;->k:I

    if-eq v0, v1, :cond_0

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/a;->l:Z

    .line 185
    iput v0, p0, Landroid/support/design/widget/a;->k:I

    .line 188
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/a;->l:Z

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Landroid/support/design/widget/a;->invalidateSelf()V

    .line 191
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/a;->l:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/design/widget/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 139
    invoke-virtual {p0}, Landroid/support/design/widget/a;->invalidateSelf()V

    .line 140
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/design/widget/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 154
    invoke-virtual {p0}, Landroid/support/design/widget/a;->invalidateSelf()V

    .line 155
    return-void
.end method
