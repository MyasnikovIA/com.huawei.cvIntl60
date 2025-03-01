.class public Lcom/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Integer;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/io/OutputStream;

.field private i:Landroid/graphics/Bitmap;

.field private j:[B

.field private k:[B

.field private l:I

.field private m:[B

.field private n:[Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:[I

.field private w:[Lcom/a/a/c/d;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/a/a/c/a;->c:Ljava/lang/Integer;

    .line 52
    iput v3, p0, Lcom/a/a/c/a;->e:I

    .line 54
    iput v1, p0, Lcom/a/a/c/a;->f:I

    .line 56
    iput-boolean v1, p0, Lcom/a/a/c/a;->g:Z

    .line 70
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/a/a/c/a;->n:[Z

    .line 72
    const/4 v0, 0x7

    iput v0, p0, Lcom/a/a/c/a;->o:I

    .line 74
    iput v3, p0, Lcom/a/a/c/a;->p:I

    .line 76
    iput-boolean v1, p0, Lcom/a/a/c/a;->q:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/c/a;->r:Z

    .line 80
    iput-boolean v1, p0, Lcom/a/a/c/a;->s:Z

    .line 82
    const/16 v0, 0xa

    iput v0, p0, Lcom/a/a/c/a;->t:I

    .line 86
    iput-object v2, p0, Lcom/a/a/c/a;->v:[I

    .line 88
    iput-object v2, p0, Lcom/a/a/c/a;->w:[Lcom/a/a/c/d;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 549
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_0
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 333
    iget-object v0, p0, Lcom/a/a/c/a;->j:[B

    array-length v2, v0

    .line 334
    div-int/lit8 v9, v2, 0x3

    .line 335
    new-array v0, v9, [B

    iput-object v0, p0, Lcom/a/a/c/a;->k:[B

    .line 336
    new-instance v0, Lcom/a/a/c/c;

    iget-object v1, p0, Lcom/a/a/c/a;->j:[B

    iget v3, p0, Lcom/a/a/c/a;->t:I

    iget v4, p0, Lcom/a/a/c/a;->a:I

    iget v5, p0, Lcom/a/a/c/a;->b:I

    iget-object v6, p0, Lcom/a/a/c/a;->v:[I

    iget-object v7, p0, Lcom/a/a/c/a;->w:[Lcom/a/a/c/d;

    invoke-direct/range {v0 .. v7}, Lcom/a/a/c/c;-><init>([BIIII[I[Lcom/a/a/c/d;)V

    .line 338
    invoke-virtual {v0}, Lcom/a/a/c/c;->d()[B

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/c/a;->m:[B

    move v1, v8

    .line 340
    :goto_0
    iget-object v2, p0, Lcom/a/a/c/a;->m:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/a/a/c/a;->m:[B

    aget-byte v2, v2, v1

    .line 342
    iget-object v3, p0, Lcom/a/a/c/a;->m:[B

    iget-object v4, p0, Lcom/a/a/c/a;->m:[B

    add-int/lit8 v5, v1, 0x2

    aget-byte v4, v4, v5

    aput-byte v4, v3, v1

    .line 343
    iget-object v3, p0, Lcom/a/a/c/a;->m:[B

    add-int/lit8 v4, v1, 0x2

    aput-byte v2, v3, v4

    .line 344
    iget-object v2, p0, Lcom/a/a/c/a;->n:[Z

    div-int/lit8 v3, v1, 0x3

    aput-boolean v8, v2, v3

    .line 340
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v8

    move v2, v8

    .line 348
    :goto_1
    if-ge v1, v9, :cond_1

    .line 349
    iget-object v3, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v3, v2, 0xff

    iget-object v2, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v4, v2, 0xff

    iget-object v6, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v2, v5, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v0, v3, v4, v5}, Lcom/a/a/c/c;->a(III)I

    move-result v3

    .line 350
    iget-object v4, p0, Lcom/a/a/c/a;->n:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 351
    iget-object v4, p0, Lcom/a/a/c/a;->k:[B

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/a;->j:[B

    .line 354
    const/16 v0, 0x8

    iput v0, p0, Lcom/a/a/c/a;->l:I

    .line 355
    const/4 v0, 0x7

    iput v0, p0, Lcom/a/a/c/a;->o:I

    .line 357
    iget-object v0, p0, Lcom/a/a/c/a;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/a/a/c/a;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/a/a/c/a;->d:I

    .line 362
    :cond_2
    :goto_2
    return-void

    .line 359
    :cond_3
    iget-boolean v0, p0, Lcom/a/a/c/a;->u:Z

    if-eqz v0, :cond_2

    .line 360
    invoke-direct {p0, v8}, Lcom/a/a/c/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/a/a/c/a;->d:I

    goto :goto_2
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 397
    iget-object v0, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 399
    iget v0, p0, Lcom/a/a/c/a;->a:I

    if-ne v3, v0, :cond_0

    iget v0, p0, Lcom/a/a/c/a;->b:I

    if-eq v7, v0, :cond_1

    .line 401
    :cond_0
    iget v0, p0, Lcom/a/a/c/a;->a:I

    iget v1, p0, Lcom/a/a/c/a;->b:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 403
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 404
    iput-object v0, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    .line 406
    :cond_1
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 407
    iget-object v0, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 410
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/a/c/a;->j:[B

    .line 413
    iput-boolean v2, p0, Lcom/a/a/c/a;->u:Z

    .line 415
    array-length v5, v1

    move v3, v2

    move v0, v2

    move v4, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget v6, v1, v3

    .line 416
    if-nez v6, :cond_2

    .line 417
    add-int/lit8 v0, v0, 0x1

    .line 419
    :cond_2
    iget-object v7, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    .line 420
    iget-object v4, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 421
    iget-object v8, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v4, v7, 0x1

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v8, v7

    .line 415
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    :cond_3
    mul-int/lit8 v0, v0, 0x64

    int-to-double v4, v0

    array-length v0, v1

    int-to-double v0, v0

    div-double v0, v4, v0

    .line 427
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/a/a/c/a;->u:Z

    .line 428
    const-string v2, "AnimatedGifEncoderEx"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 429
    const-string v2, "AnimatedGifEncoderEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got pixels for frame with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% transparent pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_5
    return-void
.end method

.method private d(I)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 369
    iget-object v1, p0, Lcom/a/a/c/a;->m:[B

    if-nez v1, :cond_1

    .line 370
    const/4 v3, -0x1

    .line 389
    :cond_0
    return v3

    .line 371
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 372
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 373
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 375
    const/high16 v1, 0x1000000

    .line 376
    iget-object v2, p0, Lcom/a/a/c/a;->m:[B

    array-length v8, v2

    move v4, v0

    move v3, v0

    .line 377
    :goto_0
    if-ge v4, v8, :cond_0

    .line 378
    iget-object v0, p0, Lcom/a/a/c/a;->m:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    sub-int v0, v5, v0

    .line 379
    iget-object v4, p0, Lcom/a/a/c/a;->m:[B

    add-int/lit8 v9, v2, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    sub-int v2, v6, v2

    .line 380
    iget-object v4, p0, Lcom/a/a/c/a;->m:[B

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    sub-int v4, v7, v4

    .line 381
    mul-int/2addr v0, v0

    mul-int/2addr v2, v2

    add-int/2addr v0, v2

    mul-int v2, v4, v4

    add-int/2addr v0, v2

    .line 382
    div-int/lit8 v2, v9, 0x3

    .line 383
    iget-object v4, p0, Lcom/a/a/c/a;->n:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_2

    if-ge v0, v1, :cond_2

    .line 387
    :goto_1
    add-int/lit8 v4, v9, 0x1

    move v1, v0

    move v3, v2

    .line 388
    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v3

    goto :goto_1
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 438
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v2, 0xf9

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 439
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 441
    iget-object v0, p0, Lcom/a/a/c/a;->c:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/a/a/c/a;->u:Z

    if-nez v0, :cond_1

    move v0, v1

    move v2, v1

    .line 448
    :goto_0
    iget v3, p0, Lcom/a/a/c/a;->p:I

    if-ltz v3, :cond_0

    .line 449
    iget v0, p0, Lcom/a/a/c/a;->p:I

    and-int/lit8 v0, v0, 0x7

    .line 451
    :cond_0
    shl-int/lit8 v0, v0, 0x2

    .line 454
    iget-object v3, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    .line 459
    iget v0, p0, Lcom/a/a/c/a;->f:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->e(I)V

    .line 460
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    iget v2, p0, Lcom/a/a/c/a;->d:I

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 461
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 462
    return-void

    .line 445
    :cond_1
    const/4 v2, 0x1

    .line 446
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 469
    invoke-direct {p0, v2}, Lcom/a/a/c/a;->e(I)V

    .line 470
    invoke-direct {p0, v2}, Lcom/a/a/c/a;->e(I)V

    .line 471
    iget v0, p0, Lcom/a/a/c/a;->a:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->e(I)V

    .line 472
    iget v0, p0, Lcom/a/a/c/a;->b:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->e(I)V

    .line 474
    iget-boolean v0, p0, Lcom/a/a/c/a;->r:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 485
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lcom/a/a/c/a;->o:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 542
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 543
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    iget v0, p0, Lcom/a/a/c/a;->a:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->e(I)V

    .line 493
    iget v0, p0, Lcom/a/a/c/a;->b:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->e(I)V

    .line 495
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lcom/a/a/c/a;->o:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 500
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 501
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 502
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 509
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 510
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 511
    const-string v0, "NETSCAPE2.0"

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->a(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 513
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 514
    iget v0, p0, Lcom/a/a/c/a;->e:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->e(I)V

    .line 515
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 516
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 522
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/a/a/c/a;->m:[B

    iget-object v3, p0, Lcom/a/a/c/a;->m:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 523
    iget-object v0, p0, Lcom/a/a/c/a;->m:[B

    array-length v0, v0

    rsub-int v2, v0, 0x300

    move v0, v1

    .line 524
    :goto_0
    if-ge v0, v2, :cond_0

    .line 525
    iget-object v3, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 533
    new-instance v0, Lcom/a/a/c/b;

    iget v1, p0, Lcom/a/a/c/a;->a:I

    iget v2, p0, Lcom/a/a/c/a;->b:I

    iget-object v3, p0, Lcom/a/a/c/a;->k:[B

    iget v4, p0, Lcom/a/a/c/a;->l:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/c/b;-><init>(II[BI)V

    .line 534
    iget-object v1, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/a/a/c/b;->b(Ljava/io/OutputStream;)V

    .line 535
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 116
    int-to-float v0, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/a/a/c/a;->f:I

    .line 117
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-boolean v0, p0, Lcom/a/a/c/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/c/a;->r:Z

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 279
    :cond_0
    iput p1, p0, Lcom/a/a/c/a;->a:I

    .line 280
    iput p2, p0, Lcom/a/a/c/a;->b:I

    .line 281
    iget v0, p0, Lcom/a/a/c/a;->a:I

    if-ge v0, v1, :cond_1

    .line 282
    const/16 v0, 0x140

    iput v0, p0, Lcom/a/a/c/a;->a:I

    .line 283
    :cond_1
    iget v0, p0, Lcom/a/a/c/a;->b:I

    if-ge v0, v1, :cond_2

    .line 284
    const/16 v0, 0xf0

    iput v0, p0, Lcom/a/a/c/a;->b:I

    .line 285
    :cond_2
    iput-boolean v1, p0, Lcom/a/a/c/a;->s:Z

    goto :goto_0
.end method

.method public a([I)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/a/a/c/a;->v:[I

    .line 97
    return-void
.end method

.method public a([Lcom/a/a/c/d;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/a/a/c/a;->w:[Lcom/a/a/c/d;

    .line 105
    return-void
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 212
    iget-boolean v0, p0, Lcom/a/a/c/a;->g:Z

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return v2

    .line 215
    :cond_0
    iput-boolean v2, p0, Lcom/a/a/c/a;->g:Z

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 218
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 219
    iget-boolean v0, p0, Lcom/a/a/c/a;->q:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    .line 227
    :goto_1
    iput v2, p0, Lcom/a/a/c/a;->d:I

    .line 228
    iput-object v4, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    .line 229
    iput-object v4, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    .line 230
    iput-object v4, p0, Lcom/a/a/c/a;->j:[B

    .line 231
    iput-object v4, p0, Lcom/a/a/c/a;->k:[B

    .line 232
    iput-object v4, p0, Lcom/a/a/c/a;->m:[B

    .line 233
    iput-boolean v2, p0, Lcom/a/a/c/a;->q:Z

    .line 234
    iput-boolean v1, p0, Lcom/a/a/c/a;->r:Z

    move v2, v0

    .line 236
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    move v0, v2

    .line 223
    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 173
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/a/a/c/a;->g:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 204
    :goto_0
    return v0

    .line 176
    :cond_1
    const/4 v0, 0x1

    .line 178
    :try_start_0
    iget-boolean v2, p0, Lcom/a/a/c/a;->s:Z

    if-nez v2, :cond_2

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/a/a/c/a;->a(II)V

    .line 182
    :cond_2
    iput-object p1, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    .line 183
    invoke-direct {p0}, Lcom/a/a/c/a;->c()V

    .line 184
    invoke-direct {p0}, Lcom/a/a/c/a;->b()V

    .line 185
    iget-boolean v2, p0, Lcom/a/a/c/a;->r:Z

    if-eqz v2, :cond_3

    .line 186
    invoke-direct {p0}, Lcom/a/a/c/a;->f()V

    .line 187
    invoke-direct {p0}, Lcom/a/a/c/a;->h()V

    .line 188
    iget v2, p0, Lcom/a/a/c/a;->e:I

    if-ltz v2, :cond_3

    .line 190
    invoke-direct {p0}, Lcom/a/a/c/a;->g()V

    .line 193
    :cond_3
    invoke-direct {p0}, Lcom/a/a/c/a;->d()V

    .line 194
    invoke-direct {p0}, Lcom/a/a/c/a;->e()V

    .line 195
    iget-boolean v2, p0, Lcom/a/a/c/a;->r:Z

    if-nez v2, :cond_4

    .line 196
    invoke-direct {p0}, Lcom/a/a/c/a;->h()V

    .line 198
    :cond_4
    invoke-direct {p0}, Lcom/a/a/c/a;->i()V

    .line 199
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/a/a/c/a;->r:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    move v0, v1

    .line 201
    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 297
    if-nez p1, :cond_0

    .line 307
    :goto_0
    return v1

    .line 299
    :cond_0
    const/4 v0, 0x1

    .line 300
    iput-boolean v1, p0, Lcom/a/a/c/a;->q:Z

    .line 301
    iput-object p1, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    .line 303
    :try_start_0
    const-string v2, "GIF89a"

    invoke-direct {p0, v2}, Lcom/a/a/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    iput-boolean v0, p0, Lcom/a/a/c/a;->g:Z

    move v1, v0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    move v0, v1

    .line 305
    goto :goto_1
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 142
    if-ltz p1, :cond_0

    .line 143
    iput p1, p0, Lcom/a/a/c/a;->e:I

    .line 145
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 262
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 264
    :cond_0
    iput p1, p0, Lcom/a/a/c/a;->t:I

    .line 265
    return-void
.end method
