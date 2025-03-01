.class public Landroid/support/design/g/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:[Landroid/graphics/Matrix;

.field private final c:[Landroid/graphics/Matrix;

.field private final d:[Landroid/support/design/g/d;

.field private final e:Landroid/graphics/Matrix;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/PointF;

.field private final h:Landroid/support/design/g/d;

.field private final i:Landroid/graphics/Region;

.field private final j:Landroid/graphics/Region;

.field private final k:[F

.field private final l:[F

.field private m:Landroid/support/design/g/e;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:F

.field private v:F

.field private w:Landroid/graphics/Paint$Style;

.field private x:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private y:Landroid/graphics/PorterDuff$Mode;

.field private z:Landroid/content/res/ColorStateList;


# direct methods
.method private static a(II)I
    .locals 1

    .prologue
    .line 99
    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 100
    mul-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private a(I)Landroid/support/design/g/a;
    .locals 1

    .prologue
    .line 452
    packed-switch p1, :pswitch_data_0

    .line 461
    iget-object v0, p0, Landroid/support/design/g/c;->m:Landroid/support/design/g/e;

    invoke-virtual {v0}, Landroid/support/design/g/e;->a()Landroid/support/design/g/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 454
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/g/c;->m:Landroid/support/design/g/e;

    invoke-virtual {v0}, Landroid/support/design/g/e;->b()Landroid/support/design/g/a;

    move-result-object v0

    goto :goto_0

    .line 456
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/g/c;->m:Landroid/support/design/g/e;

    invoke-virtual {v0}, Landroid/support/design/g/e;->c()Landroid/support/design/g/a;

    move-result-object v0

    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v0, p0, Landroid/support/design/g/c;->m:Landroid/support/design/g/e;

    invoke-virtual {v0}, Landroid/support/design/g/e;->d()Landroid/support/design/g/a;

    move-result-object v0

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(III)V
    .locals 4

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    .line 404
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/g/c;->c(III)F

    move-result v0

    .line 405
    invoke-direct {p0, p1}, Landroid/support/design/g/c;->a(I)Landroid/support/design/g/a;

    move-result-object v1

    iget v2, p0, Landroid/support/design/g/c;->p:F

    iget-object v3, p0, Landroid/support/design/g/c;->d:[Landroid/support/design/g/d;

    aget-object v3, v3, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/design/g/a;->a(FFLandroid/support/design/g/d;)V

    .line 407
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0, p2, p3}, Landroid/support/design/g/c;->d(III)F

    move-result v0

    const v1, 0x3fc90fdb

    add-float/2addr v0, v1

    .line 408
    iget-object v1, p0, Landroid/support/design/g/c;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 409
    iget-object v1, p0, Landroid/support/design/g/c;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v2, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 410
    iget-object v1, p0, Landroid/support/design/g/c;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 411
    return-void
.end method

.method private a(IIILandroid/graphics/PointF;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    packed-switch p1, :pswitch_data_0

    .line 492
    invoke-virtual {p4, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 495
    :goto_0
    return-void

    .line 482
    :pswitch_0
    int-to-float v0, p2

    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 485
    :pswitch_1
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 488
    :pswitch_2
    int-to-float v0, p3

    invoke-virtual {p4, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILandroid/graphics/Path;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Landroid/support/design/g/c;->k:[F

    iget-object v1, p0, Landroid/support/design/g/c;->d:[Landroid/support/design/g/d;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/support/design/g/d;->a:F

    aput v1, v0, v2

    .line 425
    iget-object v0, p0, Landroid/support/design/g/c;->k:[F

    iget-object v1, p0, Landroid/support/design/g/c;->d:[Landroid/support/design/g/d;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/support/design/g/d;->b:F

    aput v1, v0, v3

    .line 426
    iget-object v0, p0, Landroid/support/design/g/c;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/support/design/g/c;->k:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 427
    if-nez p1, :cond_0

    .line 428
    iget-object v0, p0, Landroid/support/design/g/c;->k:[F

    aget v0, v0, v2

    iget-object v1, p0, Landroid/support/design/g/c;->k:[F

    aget v1, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 432
    :goto_0
    iget-object v0, p0, Landroid/support/design/g/c;->d:[Landroid/support/design/g/d;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/support/design/g/c;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/g/d;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 433
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Landroid/support/design/g/c;->k:[F

    aget v0, v0, v2

    iget-object v1, p0, Landroid/support/design/g/c;->k:[F

    aget v1, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private b(I)Landroid/support/design/g/b;
    .locals 1

    .prologue
    .line 466
    packed-switch p1, :pswitch_data_0

    .line 475
    iget-object v0, p0, Landroid/support/design/g/c;->m:Landroid/support/design/g/e;

    invoke-virtual {v0}, Landroid/support/design/g/e;->e()Landroid/support/design/g/b;

    move-result-object v0

    :goto_0
    return-object v0

    .line 468
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/g/c;->m:Landroid/support/design/g/e;

    invoke-virtual {v0}, Landroid/support/design/g/e;->f()Landroid/support/design/g/b;

    move-result-object v0

    goto :goto_0

    .line 470
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/g/c;->m:Landroid/support/design/g/e;

    invoke-virtual {v0}, Landroid/support/design/g/e;->g()Landroid/support/design/g/b;

    move-result-object v0

    goto :goto_0

    .line 472
    :pswitch_2
    iget-object v0, p0, Landroid/support/design/g/c;->m:Landroid/support/design/g/e;

    invoke-virtual {v0}, Landroid/support/design/g/e;->h()Landroid/support/design/g/b;

    move-result-object v0

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Landroid/support/design/g/c;->z:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/g/c;->y:Landroid/graphics/PorterDuff$Mode;

    if-nez v0, :cond_2

    .line 554
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/g/c;->x:Landroid/graphics/PorterDuffColorFilter;

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 557
    :cond_2
    iget-object v0, p0, Landroid/support/design/g/c;->z:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/g/c;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 558
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/support/design/g/c;->y:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Landroid/support/design/g/c;->x:Landroid/graphics/PorterDuffColorFilter;

    .line 559
    iget-boolean v1, p0, Landroid/support/design/g/c;->o:Z

    if-eqz v1, :cond_1

    .line 560
    iput v0, p0, Landroid/support/design/g/c;->q:I

    goto :goto_0
.end method

.method private b(III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Landroid/support/design/g/c;->k:[F

    iget-object v1, p0, Landroid/support/design/g/c;->d:[Landroid/support/design/g/d;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/support/design/g/d;->c:F

    aput v1, v0, v3

    .line 415
    iget-object v0, p0, Landroid/support/design/g/c;->k:[F

    iget-object v1, p0, Landroid/support/design/g/c;->d:[Landroid/support/design/g/d;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/support/design/g/d;->d:F

    aput v1, v0, v4

    .line 416
    iget-object v0, p0, Landroid/support/design/g/c;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/support/design/g/c;->k:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 417
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/g/c;->d(III)F

    move-result v0

    .line 418
    iget-object v1, p0, Landroid/support/design/g/c;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 419
    iget-object v1, p0, Landroid/support/design/g/c;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v2, p0, Landroid/support/design/g/c;->k:[F

    aget v2, v2, v3

    iget-object v3, p0, Landroid/support/design/g/c;->k:[F

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 420
    iget-object v1, p0, Landroid/support/design/g/c;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 421
    return-void
.end method

.method private b(IILandroid/graphics/Path;)V
    .locals 5

    .prologue
    .line 543
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/g/c;->a(IILandroid/graphics/Path;)V

    .line 544
    iget v0, p0, Landroid/support/design/g/c;->u:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Landroid/support/design/g/c;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 548
    iget-object v0, p0, Landroid/support/design/g/c;->e:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/design/g/c;->u:F

    iget v2, p0, Landroid/support/design/g/c;->u:F

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 549
    iget-object v0, p0, Landroid/support/design/g/c;->e:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private b(ILandroid/graphics/Path;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 436
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    .line 437
    iget-object v1, p0, Landroid/support/design/g/c;->k:[F

    iget-object v2, p0, Landroid/support/design/g/c;->d:[Landroid/support/design/g/d;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/support/design/g/d;->c:F

    aput v2, v1, v3

    .line 438
    iget-object v1, p0, Landroid/support/design/g/c;->k:[F

    iget-object v2, p0, Landroid/support/design/g/c;->d:[Landroid/support/design/g/d;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/support/design/g/d;->d:F

    aput v2, v1, v4

    .line 439
    iget-object v1, p0, Landroid/support/design/g/c;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v2, p0, Landroid/support/design/g/c;->k:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 441
    iget-object v1, p0, Landroid/support/design/g/c;->l:[F

    iget-object v2, p0, Landroid/support/design/g/c;->d:[Landroid/support/design/g/d;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/support/design/g/d;->a:F

    aput v2, v1, v3

    .line 442
    iget-object v1, p0, Landroid/support/design/g/c;->l:[F

    iget-object v2, p0, Landroid/support/design/g/c;->d:[Landroid/support/design/g/d;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/support/design/g/d;->b:F

    aput v2, v1, v4

    .line 443
    iget-object v1, p0, Landroid/support/design/g/c;->b:[Landroid/graphics/Matrix;

    aget-object v0, v1, v0

    iget-object v1, p0, Landroid/support/design/g/c;->l:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 445
    iget-object v0, p0, Landroid/support/design/g/c;->k:[F

    aget v0, v0, v3

    iget-object v1, p0, Landroid/support/design/g/c;->l:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Landroid/support/design/g/c;->k:[F

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/design/g/c;->l:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 446
    iget-object v1, p0, Landroid/support/design/g/c;->h:Landroid/support/design/g/d;

    invoke-virtual {v1, v5, v5}, Landroid/support/design/g/d;->a(FF)V

    .line 447
    invoke-direct {p0, p1}, Landroid/support/design/g/c;->b(I)Landroid/support/design/g/b;

    move-result-object v1

    iget v2, p0, Landroid/support/design/g/c;->p:F

    iget-object v3, p0, Landroid/support/design/g/c;->h:Landroid/support/design/g/d;

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/design/g/b;->a(FFLandroid/support/design/g/d;)V

    .line 448
    iget-object v0, p0, Landroid/support/design/g/c;->h:Landroid/support/design/g/d;

    iget-object v1, p0, Landroid/support/design/g/c;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/g/d;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 449
    return-void
.end method

.method private c(III)F
    .locals 6

    .prologue
    .line 498
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    .line 499
    iget-object v0, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 500
    iget-object v1, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 502
    add-int/lit8 v2, p1, 0x1

    rem-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    invoke-direct {p0, v2, p2, p3, v3}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    .line 503
    iget-object v2, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 504
    iget-object v3, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 506
    iget-object v4, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2, p3, v4}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    .line 507
    iget-object v4, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 508
    iget-object v5, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 510
    sub-float/2addr v0, v4

    .line 511
    sub-float/2addr v1, v5

    .line 513
    sub-float/2addr v2, v4

    .line 514
    sub-float/2addr v3, v5

    .line 516
    float-to-double v4, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 517
    float-to-double v4, v3

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 518
    sub-float/2addr v0, v1

    .line 519
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 520
    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 522
    :cond_0
    return v0
.end method

.method private d(III)F
    .locals 4

    .prologue
    .line 526
    .line 527
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    .line 529
    iget-object v1, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    .line 530
    iget-object v1, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 531
    iget-object v2, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 533
    iget-object v3, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2, p3, v3}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    .line 534
    iget-object v0, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 535
    iget-object v3, p0, Landroid/support/design/g/c;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 537
    sub-float/2addr v0, v1

    .line 538
    sub-float v1, v3, v2

    .line 539
    float-to-double v2, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public a()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/design/g/c;->z:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 230
    iput p1, p0, Landroid/support/design/g/c;->p:F

    .line 231
    invoke-virtual {p0}, Landroid/support/design/g/c;->invalidateSelf()V

    .line 232
    return-void
.end method

.method public a(IILandroid/graphics/Path;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    .line 381
    iget-object v1, p0, Landroid/support/design/g/c;->m:Landroid/support/design/g/e;

    if-nez v1, :cond_0

    .line 400
    :goto_0
    return-void

    :cond_0
    move v1, v0

    .line 387
    :goto_1
    if-ge v1, v2, :cond_1

    .line 388
    invoke-direct {p0, v1, p1, p2}, Landroid/support/design/g/c;->a(III)V

    .line 389
    invoke-direct {p0, v1, p1, p2}, Landroid/support/design/g/c;->b(III)V

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    :cond_1
    :goto_2
    if-ge v0, v2, :cond_2

    .line 395
    invoke-direct {p0, v0, p3}, Landroid/support/design/g/c;->a(ILandroid/graphics/Path;)V

    .line 396
    invoke-direct {p0, v0, p3}, Landroid/support/design/g/c;->b(ILandroid/graphics/Path;)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 399
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Landroid/support/design/g/c;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/g/c;->x:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 353
    iget-object v0, p0, Landroid/support/design/g/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    .line 354
    iget-object v0, p0, Landroid/support/design/g/c;->a:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/g/c;->t:I

    invoke-static {v6, v2}, Landroid/support/design/g/c;->a(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    iget-object v0, p0, Landroid/support/design/g/c;->a:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/g/c;->v:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 356
    iget-object v0, p0, Landroid/support/design/g/c;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/g/c;->w:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 357
    iget v0, p0, Landroid/support/design/g/c;->r:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/g/c;->n:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/support/design/g/c;->a:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/g/c;->s:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/g/c;->r:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/design/g/c;->q:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 360
    :cond_0
    iget-object v0, p0, Landroid/support/design/g/c;->m:Landroid/support/design/g/e;

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/g/c;->f:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/g/c;->b(IILandroid/graphics/Path;)V

    .line 362
    iget-object v0, p0, Landroid/support/design/g/c;->f:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/g/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 366
    :goto_0
    iget-object v0, p0, Landroid/support/design/g/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 367
    return-void

    .line 364
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/g/c;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, -0x3

    return v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/support/design/g/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 173
    iget-object v1, p0, Landroid/support/design/g/c;->i:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Landroid/support/design/g/c;->f:Landroid/graphics/Path;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/design/g/c;->b(IILandroid/graphics/Path;)V

    .line 175
    iget-object v0, p0, Landroid/support/design/g/c;->j:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/support/design/g/c;->f:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/design/g/c;->i:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 176
    iget-object v0, p0, Landroid/support/design/g/c;->i:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/support/design/g/c;->j:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 177
    iget-object v0, p0, Landroid/support/design/g/c;->i:Landroid/graphics/Region;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 160
    iput p1, p0, Landroid/support/design/g/c;->t:I

    .line 161
    invoke-virtual {p0}, Landroid/support/design/g/c;->invalidateSelf()V

    .line 162
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/design/g/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 167
    invoke-virtual {p0}, Landroid/support/design/g/c;->invalidateSelf()V

    .line 168
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/g/c;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 149
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/design/g/c;->z:Landroid/content/res/ColorStateList;

    .line 135
    invoke-direct {p0}, Landroid/support/design/g/c;->b()V

    .line 136
    invoke-virtual {p0}, Landroid/support/design/g/c;->invalidateSelf()V

    .line 137
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Landroid/support/design/g/c;->y:Landroid/graphics/PorterDuff$Mode;

    .line 142
    invoke-direct {p0}, Landroid/support/design/g/c;->b()V

    .line 143
    invoke-virtual {p0}, Landroid/support/design/g/c;->invalidateSelf()V

    .line 144
    return-void
.end method
