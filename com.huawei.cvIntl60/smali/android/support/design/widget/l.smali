.class public Landroid/support/design/widget/l;
.super Landroid/support/v7/b/a/c;
.source "SourceFile"


# static fields
.field static final a:D


# instance fields
.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/RectF;

.field e:F

.field f:Landroid/graphics/Path;

.field g:F

.field h:F

.field i:F

.field j:F

.field private k:Z

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:Z

.field private p:F

.field private q:Z


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

    sput-wide v0, Landroid/support/design/widget/l;->a:D

    return-void
.end method

.method public static a(FFZ)F
    .locals 6

    .prologue
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 168
    if-eqz p2, :cond_0

    .line 169
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/design/widget/l;->a:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 171
    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 219
    iget v0, p0, Landroid/support/design/widget/l;->p:F

    iget-object v1, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 221
    iget v0, p0, Landroid/support/design/widget/l;->e:F

    neg-float v0, v0

    iget v1, p0, Landroid/support/design/widget/l;->i:F

    sub-float v2, v0, v1

    .line 222
    iget v9, p0, Landroid/support/design/widget/l;->e:F

    .line 223
    iget-object v0, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v6, v0

    .line 224
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    const/4 v0, 0x1

    move v7, v0

    .line 226
    :goto_1
    iget v0, p0, Landroid/support/design/widget/l;->j:F

    iget v1, p0, Landroid/support/design/widget/l;->j:F

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 227
    iget v1, p0, Landroid/support/design/widget/l;->j:F

    iget v3, p0, Landroid/support/design/widget/l;->j:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 228
    iget v3, p0, Landroid/support/design/widget/l;->j:F

    iget v4, p0, Landroid/support/design/widget/l;->j:F

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 230
    add-float/2addr v1, v9

    div-float v10, v9, v1

    .line 231
    add-float/2addr v0, v9

    div-float v11, v9, v0

    .line 232
    add-float v0, v9, v3

    div-float v12, v9, v0

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 236
    iget-object v0, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v9

    iget-object v1, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 238
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/widget/l;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    if-eqz v6, :cond_0

    .line 241
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 242
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    .line 245
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v9

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/design/widget/l;->e:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/l;->c:Landroid/graphics/Paint;

    move-object v0, p1

    .line 242
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 249
    :cond_0
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 252
    iget-object v0, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v9

    iget-object v1, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 254
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 255
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/widget/l;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 256
    if-eqz v6, :cond_1

    .line 258
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 259
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    .line 262
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v9

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/design/widget/l;->e:F

    neg-float v0, v0

    iget v4, p0, Landroid/support/design/widget/l;->i:F

    add-float/2addr v4, v0

    iget-object v5, p0, Landroid/support/design/widget/l;->c:Landroid/graphics/Paint;

    move-object v0, p1

    .line 259
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 266
    :cond_1
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 269
    iget-object v0, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v9

    iget-object v1, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 271
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 272
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/widget/l;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    if-eqz v7, :cond_2

    .line 275
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v12

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 276
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    .line 279
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v9

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/design/widget/l;->e:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/l;->c:Landroid/graphics/Paint;

    move-object v0, p1

    .line 276
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 286
    iget-object v0, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v9

    iget-object v1, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 287
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 288
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 289
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/widget/l;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 290
    if-eqz v7, :cond_3

    .line 292
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v11

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 293
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    .line 296
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v9

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/design/widget/l;->e:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/l;->c:Landroid/graphics/Paint;

    move-object v0, p1

    .line 293
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 300
    :cond_3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 302
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 303
    return-void

    .line 223
    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_0

    .line 224
    :cond_5
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_1
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 357
    iget v0, p0, Landroid/support/design/widget/l;->h:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 358
    iget-object v1, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/l;->h:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/widget/l;->h:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v0, v5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 364
    invoke-virtual {p0}, Landroid/support/design/widget/l;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/design/widget/l;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    .line 365
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    invoke-direct {p0}, Landroid/support/design/widget/l;->c()V

    .line 372
    return-void
.end method

.method public static b(FFZ)F
    .locals 6

    .prologue
    .line 177
    if-eqz p2, :cond_0

    .line 178
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/design/widget/l;->a:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 180
    :cond_0
    return p0
.end method

.method private static c(F)I
    .locals 3

    .prologue
    .line 100
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 101
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private c()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 306
    new-instance v7, Landroid/graphics/RectF;

    iget v0, p0, Landroid/support/design/widget/l;->e:F

    neg-float v0, v0

    iget v2, p0, Landroid/support/design/widget/l;->e:F

    neg-float v2, v2

    iget v3, p0, Landroid/support/design/widget/l;->e:F

    iget v4, p0, Landroid/support/design/widget/l;->e:F

    invoke-direct {v7, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 307
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 308
    iget v0, p0, Landroid/support/design/widget/l;->i:F

    neg-float v0, v0

    iget v2, p0, Landroid/support/design/widget/l;->i:F

    neg-float v2, v2

    invoke-virtual {v8, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 310
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 311
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    .line 315
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 316
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    iget v2, p0, Landroid/support/design/widget/l;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 317
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    iget v2, p0, Landroid/support/design/widget/l;->i:F

    neg-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 319
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v8, v2, v3, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 321
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v7, v2, v3, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 322
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 324
    iget v0, v8, Landroid/graphics/RectF;->top:F

    neg-float v3, v0

    .line 325
    cmpl-float v0, v3, v1

    if-lez v0, :cond_0

    .line 326
    iget v0, p0, Landroid/support/design/widget/l;->e:F

    div-float v2, v0, v3

    .line 327
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float v6, v2, v0

    .line 328
    iget-object v9, p0, Landroid/support/design/widget/l;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v4, 0x4

    new-array v4, v4, [I

    aput v10, v4, v10

    iget v5, p0, Landroid/support/design/widget/l;->l:I

    aput v5, v4, v12

    iget v5, p0, Landroid/support/design/widget/l;->m:I

    aput v5, v4, v13

    iget v5, p0, Landroid/support/design/widget/l;->n:I

    aput v5, v4, v11

    const/4 v5, 0x4

    new-array v5, v5, [F

    aput v1, v5, v10

    aput v2, v5, v12

    aput v6, v5, v13

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v5, v11

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 341
    :cond_0
    iget-object v9, p0, Landroid/support/design/widget/l;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    new-array v5, v11, [I

    iget v3, p0, Landroid/support/design/widget/l;->l:I

    aput v3, v5, v10

    iget v3, p0, Landroid/support/design/widget/l;->m:I

    aput v3, v5, v12

    iget v3, p0, Landroid/support/design/widget/l;->n:I

    aput v3, v5, v13

    new-array v6, v11, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 350
    iget-object v0, p0, Landroid/support/design/widget/l;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 351
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/l;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    .line 341
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/support/design/widget/l;->j:F

    return v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/support/design/widget/l;->h:F

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/l;->a(FF)V

    .line 146
    return-void
.end method

.method public a(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 122
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    invoke-static {p1}, Landroid/support/design/widget/l;->c(F)I

    move-result v0

    int-to-float v0, v0

    .line 126
    invoke-static {p2}, Landroid/support/design/widget/l;->c(F)I

    move-result v1

    int-to-float v1, v1

    .line 127
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 129
    iget-boolean v0, p0, Landroid/support/design/widget/l;->q:Z

    if-nez v0, :cond_2

    .line 130
    iput-boolean v3, p0, Landroid/support/design/widget/l;->q:Z

    :cond_2
    move v0, v1

    .line 133
    :cond_3
    iget v2, p0, Landroid/support/design/widget/l;->j:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_4

    iget v2, p0, Landroid/support/design/widget/l;->h:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_4

    .line 142
    :goto_0
    return-void

    .line 136
    :cond_4
    iput v0, p0, Landroid/support/design/widget/l;->j:F

    .line 137
    iput v1, p0, Landroid/support/design/widget/l;->h:F

    .line 138
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/l;->i:F

    .line 139
    iput v1, p0, Landroid/support/design/widget/l;->g:F

    .line 140
    iput-boolean v3, p0, Landroid/support/design/widget/l;->k:Z

    .line 141
    invoke-virtual {p0}, Landroid/support/design/widget/l;->invalidateSelf()V

    goto :goto_0
.end method

.method public final b(F)V
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Landroid/support/design/widget/l;->p:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 212
    iput p1, p0, Landroid/support/design/widget/l;->p:F

    .line 213
    invoke-virtual {p0}, Landroid/support/design/widget/l;->invalidateSelf()V

    .line 215
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Landroid/support/design/widget/l;->k:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Landroid/support/design/widget/l;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/l;->a(Landroid/graphics/Rect;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/l;->k:Z

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/l;->a(Landroid/graphics/Canvas;)V

    .line 207
    invoke-super {p0, p1}, Landroid/support/v7/b/a/c;->draw(Landroid/graphics/Canvas;)V

    .line 208
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 154
    iget v0, p0, Landroid/support/design/widget/l;->h:F

    iget v1, p0, Landroid/support/design/widget/l;->e:F

    iget-boolean v2, p0, Landroid/support/design/widget/l;->o:Z

    .line 157
    invoke-static {v0, v1, v2}, Landroid/support/design/widget/l;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 158
    iget v1, p0, Landroid/support/design/widget/l;->h:F

    iget v2, p0, Landroid/support/design/widget/l;->e:F

    iget-boolean v3, p0, Landroid/support/design/widget/l;->o:Z

    .line 161
    invoke-static {v1, v2, v3}, Landroid/support/design/widget/l;->b(FFZ)F

    move-result v1

    float-to-double v2, v1

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 162
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/l;->k:Z

    .line 119
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v7/b/a/c;->setAlpha(I)V

    .line 112
    iget-object v0, p0, Landroid/support/design/widget/l;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v0, p0, Landroid/support/design/widget/l;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    return-void
.end method
