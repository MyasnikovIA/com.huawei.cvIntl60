.class Landroid/support/v7/widget/az;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/az$a;
    }
.end annotation


# static fields
.field static a:Landroid/support/v7/widget/az$a;

.field private static final b:D


# instance fields
.field private final c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/RectF;

.field private h:F

.field private i:Landroid/graphics/Path;

.field private j:F

.field private k:F

.field private l:F

.field private m:Landroid/content/res/ColorStateList;

.field private n:Z

.field private final o:I

.field private final p:I

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroid/support/v7/widget/az;->b:D

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 3

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 78
    iput-boolean v0, p0, Landroid/support/v7/widget/az;->n:Z

    .line 84
    iput-boolean v0, p0, Landroid/support/v7/widget/az;->q:Z

    .line 89
    iput-boolean v2, p0, Landroid/support/v7/widget/az;->r:Z

    .line 93
    sget v0, Landroid/support/v7/cardview/R$color;->cardview_shadow_start_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/az;->o:I

    .line 94
    sget v0, Landroid/support/v7/cardview/R$color;->cardview_shadow_end_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/az;->p:I

    .line 95
    sget v0, Landroid/support/v7/cardview/R$dimen;->cardview_compat_inset_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/az;->c:I

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/graphics/Paint;

    .line 97
    invoke-direct {p0, p2}, Landroid/support/v7/widget/az;->b(Landroid/content/res/ColorStateList;)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p3

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/az;->h:F

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/v7/widget/az;->f:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/az;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    invoke-direct {p0, p4, p5}, Landroid/support/v7/widget/az;->a(FF)V

    .line 105
    return-void
.end method

.method static a(FFZ)F
    .locals 6

    .prologue
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 180
    if-eqz p2, :cond_0

    .line 181
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/v7/widget/az;->b:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 183
    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method private a(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 142
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid shadow size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid max shadow size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/az;->d(F)I

    move-result v0

    int-to-float v0, v0

    .line 151
    invoke-direct {p0, p2}, Landroid/support/v7/widget/az;->d(F)I

    move-result v1

    int-to-float v1, v1

    .line 152
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 154
    iget-boolean v0, p0, Landroid/support/v7/widget/az;->r:Z

    if-nez v0, :cond_2

    .line 155
    iput-boolean v3, p0, Landroid/support/v7/widget/az;->r:Z

    :cond_2
    move v0, v1

    .line 158
    :cond_3
    iget v2, p0, Landroid/support/v7/widget/az;->l:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_4

    iget v2, p0, Landroid/support/v7/widget/az;->j:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_4

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_4
    iput v0, p0, Landroid/support/v7/widget/az;->l:F

    .line 162
    iput v1, p0, Landroid/support/v7/widget/az;->j:F

    .line 163
    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/az;->c:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/az;->k:F

    .line 164
    iput-boolean v3, p0, Landroid/support/v7/widget/az;->n:Z

    .line 165
    invoke-virtual {p0}, Landroid/support/v7/widget/az;->invalidateSelf()V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 249
    iget v2, p0, Landroid/support/v7/widget/az;->h:F

    neg-float v2, v2

    iget v4, p0, Landroid/support/v7/widget/az;->k:F

    sub-float/2addr v2, v4

    .line 250
    iget v4, p0, Landroid/support/v7/widget/az;->h:F

    iget v5, p0, Landroid/support/v7/widget/az;->c:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/az;->l:F

    div-float/2addr v5, v10

    add-float v8, v4, v5

    .line 251
    iget-object v4, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v10, v8

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_4

    move v6, v0

    .line 252
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v10, v8

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    move v7, v0

    .line 254
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    iget-object v0, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    if-eqz v6, :cond_0

    .line 258
    iget-object v0, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    .line 259
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/az;->h:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/az;->f:Landroid/graphics/Paint;

    move-object v0, p1

    .line 258
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 262
    :cond_0
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 265
    iget-object v0, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 268
    if-eqz v6, :cond_1

    .line 269
    iget-object v0, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    .line 270
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/az;->h:F

    neg-float v0, v0

    iget v4, p0, Landroid/support/v7/widget/az;->k:F

    add-float/2addr v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/az;->f:Landroid/graphics/Paint;

    move-object v0, p1

    .line 269
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    :cond_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 276
    iget-object v0, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 277
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 278
    iget-object v0, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 279
    if-eqz v7, :cond_2

    .line 280
    iget-object v0, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    .line 281
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/az;->h:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/az;->f:Landroid/graphics/Paint;

    move-object v0, p1

    .line 280
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 286
    iget-object v0, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 287
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 289
    if-eqz v7, :cond_3

    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    .line 291
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/az;->h:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/az;->f:Landroid/graphics/Paint;

    move-object v0, p1

    .line 290
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    :cond_3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 294
    return-void

    :cond_4
    move v6, v3

    .line 251
    goto/16 :goto_0

    :cond_5
    move v7, v3

    .line 252
    goto/16 :goto_1
.end method

.method static b(FFZ)F
    .locals 6

    .prologue
    .line 189
    if-eqz p2, :cond_0

    .line 190
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/v7/widget/az;->b:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 192
    :cond_0
    return p0
.end method

.method private b(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 108
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/az;->m:Landroid/content/res/ColorStateList;

    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/az;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/v7/widget/az;->getState()[I

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/az;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    return-void
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 334
    iget v0, p0, Landroid/support/v7/widget/az;->j:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 335
    iget-object v1, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/az;->j:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v7/widget/az;->j:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v0, v5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 337
    invoke-direct {p0}, Landroid/support/v7/widget/az;->g()V

    .line 338
    return-void
.end method

.method private d(F)I
    .locals 3

    .prologue
    .line 116
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    .line 117
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 118
    add-int/lit8 v0, v0, -0x1

    .line 120
    :cond_0
    return v0
.end method

.method private g()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 297
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/v7/widget/az;->h:F

    neg-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/az;->h:F

    neg-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/az;->h:F

    iget v5, p0, Landroid/support/v7/widget/az;->h:F

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 298
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 299
    iget v3, p0, Landroid/support/v7/widget/az;->k:F

    neg-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/az;->k:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 301
    iget-object v3, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    if-nez v3, :cond_0

    .line 302
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    .line 306
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 307
    iget-object v3, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v7/widget/az;->h:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 308
    iget-object v3, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v7/widget/az;->k:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 310
    iget-object v3, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v3, v2, v4, v5, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 312
    iget-object v2, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v0, v3, v4, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 313
    iget-object v0, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 314
    iget v0, p0, Landroid/support/v7/widget/az;->h:F

    iget v2, p0, Landroid/support/v7/widget/az;->h:F

    iget v3, p0, Landroid/support/v7/widget/az;->k:F

    add-float/2addr v2, v3

    div-float v2, v0, v2

    .line 315
    iget-object v7, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v3, p0, Landroid/support/v7/widget/az;->h:F

    iget v4, p0, Landroid/support/v7/widget/az;->k:F

    add-float/2addr v3, v4

    new-array v4, v10, [I

    iget v5, p0, Landroid/support/v7/widget/az;->o:I

    aput v5, v4, v9

    iget v5, p0, Landroid/support/v7/widget/az;->o:I

    aput v5, v4, v11

    iget v5, p0, Landroid/support/v7/widget/az;->p:I

    aput v5, v4, v12

    new-array v5, v10, [F

    aput v1, v5, v9

    aput v2, v5, v11

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v5, v12

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 323
    iget-object v8, p0, Landroid/support/v7/widget/az;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Landroid/support/v7/widget/az;->h:F

    neg-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/az;->k:F

    add-float/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/az;->h:F

    neg-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/az;->k:F

    sub-float v4, v3, v4

    new-array v5, v10, [I

    iget v3, p0, Landroid/support/v7/widget/az;->o:I

    aput v3, v5, v9

    iget v3, p0, Landroid/support/v7/widget/az;->o:I

    aput v3, v5, v11

    iget v3, p0, Landroid/support/v7/widget/az;->p:I

    aput v3, v5, v12

    new-array v6, v10, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 327
    iget-object v0, p0, Landroid/support/v7/widget/az;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 328
    return-void

    .line 304
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/az;->i:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    .line 323
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method a()F
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Landroid/support/v7/widget/az;->h:F

    return v0
.end method

.method a(F)V
    .locals 3

    .prologue
    .line 224
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 228
    iget v1, p0, Landroid/support/v7/widget/az;->h:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_1
    iput v0, p0, Landroid/support/v7/widget/az;->h:F

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/az;->n:Z

    .line 233
    invoke-virtual {p0}, Landroid/support/v7/widget/az;->invalidateSelf()V

    goto :goto_0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 377
    invoke-direct {p0, p1}, Landroid/support/v7/widget/az;->b(Landroid/content/res/ColorStateList;)V

    .line 378
    invoke-virtual {p0}, Landroid/support/v7/widget/az;->invalidateSelf()V

    .line 379
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/az;->getPadding(Landroid/graphics/Rect;)Z

    .line 346
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Landroid/support/v7/widget/az;->q:Z

    .line 125
    invoke-virtual {p0}, Landroid/support/v7/widget/az;->invalidateSelf()V

    .line 126
    return-void
.end method

.method b()F
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Landroid/support/v7/widget/az;->l:F

    return v0
.end method

.method b(F)V
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Landroid/support/v7/widget/az;->j:F

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/az;->a(FF)V

    .line 350
    return-void
.end method

.method c()F
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Landroid/support/v7/widget/az;->j:F

    return v0
.end method

.method c(F)V
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Landroid/support/v7/widget/az;->l:F

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/az;->a(FF)V

    .line 354
    return-void
.end method

.method d()F
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 365
    iget v0, p0, Landroid/support/v7/widget/az;->j:F

    iget v1, p0, Landroid/support/v7/widget/az;->h:F

    iget v2, p0, Landroid/support/v7/widget/az;->c:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/az;->j:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 367
    iget v1, p0, Landroid/support/v7/widget/az;->j:F

    iget v2, p0, Landroid/support/v7/widget/az;->c:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 238
    iget-boolean v0, p0, Landroid/support/v7/widget/az;->n:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/az;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/az;->b(Landroid/graphics/Rect;)V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/az;->n:Z

    .line 242
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/az;->l:F

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 243
    invoke-direct {p0, p1}, Landroid/support/v7/widget/az;->a(Landroid/graphics/Canvas;)V

    .line 244
    iget v0, p0, Landroid/support/v7/widget/az;->l:F

    neg-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    sget-object v0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/az$a;

    iget-object v1, p0, Landroid/support/v7/widget/az;->g:Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/v7/widget/az;->h:F

    iget-object v3, p0, Landroid/support/v7/widget/az;->d:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/support/v7/widget/az$a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 246
    return-void
.end method

.method e()F
    .locals 5

    .prologue
    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v3, 0x40000000    # 2.0f

    .line 371
    iget v0, p0, Landroid/support/v7/widget/az;->j:F

    iget v1, p0, Landroid/support/v7/widget/az;->h:F

    iget v2, p0, Landroid/support/v7/widget/az;->c:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/az;->j:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 373
    iget v1, p0, Landroid/support/v7/widget/az;->j:F

    mul-float/2addr v1, v4

    iget v2, p0, Landroid/support/v7/widget/az;->c:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method f()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v7/widget/az;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 170
    iget v0, p0, Landroid/support/v7/widget/az;->j:F

    iget v1, p0, Landroid/support/v7/widget/az;->h:F

    iget-boolean v2, p0, Landroid/support/v7/widget/az;->q:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/az;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 172
    iget v1, p0, Landroid/support/v7/widget/az;->j:F

    iget v2, p0, Landroid/support/v7/widget/az;->h:F

    iget-boolean v3, p0, Landroid/support/v7/widget/az;->q:Z

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/az;->b(FFZ)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 174
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/az;->m:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/az;->m:Landroid/content/res/ColorStateList;

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
    .line 137
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/az;->n:Z

    .line 139
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 198
    iget-object v1, p0, Landroid/support/v7/widget/az;->m:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/az;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 199
    iget-object v2, p0, Landroid/support/v7/widget/az;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    .line 202
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/az;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iput-boolean v0, p0, Landroid/support/v7/widget/az;->n:Z

    .line 204
    invoke-virtual {p0}, Landroid/support/v7/widget/az;->invalidateSelf()V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object v0, p0, Landroid/support/v7/widget/az;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 216
    return-void
.end method
