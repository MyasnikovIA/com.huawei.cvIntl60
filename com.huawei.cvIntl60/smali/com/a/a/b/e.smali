.class public Lcom/a/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/b/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final c:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private d:Ljava/nio/ByteBuffer;

.field private e:[B

.field private f:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:[S

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private n:I

.field private o:Lcom/a/a/b/c;

.field private p:Lcom/a/a/b/a$a;

.field private q:Landroid/graphics/Bitmap;

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/a/a/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/b/a$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/a/a/b/e;->c:[I

    .line 100
    iput v1, p0, Lcom/a/a/b/e;->g:I

    .line 101
    iput v1, p0, Lcom/a/a/b/e;->h:I

    .line 139
    iput-object p1, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    .line 140
    new-instance v0, Lcom/a/a/b/c;

    invoke-direct {v0}, Lcom/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/a/a/b/a$a;Lcom/a/a/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/a/a/b/e;-><init>(Lcom/a/a/b/a$a;)V

    .line 134
    invoke-virtual {p0, p2, p3, p4}, Lcom/a/a/b/e;->a(Lcom/a/a/b/c;Ljava/nio/ByteBuffer;I)V

    .line 135
    return-void
.end method

.method private a(III)I
    .locals 9
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 541
    move v0, p1

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    .line 550
    :goto_0
    iget v7, p0, Lcom/a/a/b/e;->t:I

    add-int/2addr v7, p1

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcom/a/a/b/e;->l:[B

    array-length v7, v7

    if-ge v0, v7, :cond_1

    if-ge v0, p2, :cond_1

    .line 551
    iget-object v7, p0, Lcom/a/a/b/e;->l:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    .line 552
    iget-object v8, p0, Lcom/a/a/b/e;->b:[I

    aget v7, v8, v7

    .line 553
    if-eqz v7, :cond_0

    .line 554
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 555
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    .line 556
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 557
    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    .line 558
    add-int/lit8 v1, v1, 0x1

    .line 550
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    add-int v0, p1, p3

    .line 564
    :goto_1
    add-int v7, p1, p3

    iget v8, p0, Lcom/a/a/b/e;->t:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/a/a/b/e;->l:[B

    array-length v7, v7

    if-ge v0, v7, :cond_3

    if-ge v0, p2, :cond_3

    .line 565
    iget-object v7, p0, Lcom/a/a/b/e;->l:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    .line 566
    iget-object v8, p0, Lcom/a/a/b/e;->b:[I

    aget v7, v8, v7

    .line 567
    if-eqz v7, :cond_2

    .line 568
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 569
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    .line 570
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 571
    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    .line 572
    add-int/lit8 v1, v1, 0x1

    .line 564
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    :cond_3
    if-nez v1, :cond_4

    .line 578
    :goto_2
    return v2

    :cond_4
    div-int v0, v6, v1

    shl-int/lit8 v0, v0, 0x18

    div-int v2, v5, v1

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    div-int v2, v4, v1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    div-int v1, v3, v1

    or-int v2, v0, v1

    goto :goto_2
.end method

.method private a(Lcom/a/a/b/b;Lcom/a/a/b/b;)Landroid/graphics/Bitmap;
    .locals 17

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:[I

    .line 408
    if-nez p2, :cond_0

    .line 409
    const/4 v1, 0x0

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 413
    :cond_0
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget v1, v0, Lcom/a/a/b/b;->g:I

    if-lez v1, :cond_5

    .line 416
    move-object/from16 v0, p2

    iget v1, v0, Lcom/a/a/b/b;->g:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 418
    const/4 v1, 0x0

    .line 419
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/a/a/b/b;->f:Z

    if-nez v3, :cond_2

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget v1, v1, Lcom/a/a/b/c;->l:I

    .line 421
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/a/a/b/b;->k:[I

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget v3, v3, Lcom/a/a/b/c;->j:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/a/a/b/b;->h:I

    if-ne v3, v4, :cond_1

    .line 422
    const/4 v1, 0x0

    .line 431
    :cond_1
    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/a/a/b/b;->d:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->t:I

    div-int/2addr v3, v4

    .line 432
    move-object/from16 v0, p2

    iget v4, v0, Lcom/a/a/b/b;->b:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/b/e;->t:I

    div-int/2addr v4, v5

    .line 433
    move-object/from16 v0, p2

    iget v5, v0, Lcom/a/a/b/b;->c:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->t:I

    div-int/2addr v5, v6

    .line 434
    move-object/from16 v0, p2

    iget v6, v0, Lcom/a/a/b/b;->a:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/b/e;->t:I

    div-int/2addr v6, v7

    .line 435
    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/b/e;->v:I

    mul-int/2addr v4, v7

    add-int/2addr v4, v6

    .line 436
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->v:I

    mul-int/2addr v3, v6

    add-int v6, v4, v3

    .line 437
    :goto_1
    if-ge v4, v6, :cond_5

    .line 438
    add-int v7, v4, v5

    move v3, v4

    .line 439
    :goto_2
    if-ge v3, v7, :cond_3

    .line 440
    aput v1, v2, v3

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 424
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->n:I

    if-nez v3, :cond_1

    .line 428
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/a/a/b/e;->w:Z

    goto :goto_0

    .line 437
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->v:I

    add-int/2addr v4, v3

    goto :goto_1

    .line 443
    :cond_4
    move-object/from16 v0, p2

    iget v1, v0, Lcom/a/a/b/b;->g:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/b/e;->q:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/b/e;->q:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->v:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/b/e;->v:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/b/e;->u:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 451
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/a/a/b/e;->a(Lcom/a/a/b/b;)V

    .line 453
    move-object/from16 v0, p1

    iget v1, v0, Lcom/a/a/b/b;->d:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->t:I

    div-int v11, v1, v3

    .line 454
    move-object/from16 v0, p1

    iget v1, v0, Lcom/a/a/b/b;->b:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->t:I

    div-int v12, v1, v3

    .line 455
    move-object/from16 v0, p1

    iget v1, v0, Lcom/a/a/b/b;->c:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->t:I

    div-int v13, v1, v3

    .line 456
    move-object/from16 v0, p1

    iget v1, v0, Lcom/a/a/b/b;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->t:I

    div-int v14, v1, v3

    .line 458
    const/4 v5, 0x1

    .line 459
    const/16 v4, 0x8

    .line 460
    const/4 v3, 0x0

    .line 461
    move-object/from16 v0, p0

    iget v1, v0, Lcom/a/a/b/e;->n:I

    if-nez v1, :cond_9

    const/4 v1, 0x1

    .line 462
    :goto_3
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v11, :cond_d

    .line 464
    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/a/a/b/b;->e:Z

    if-eqz v6, :cond_11

    .line 465
    if-lt v3, v11, :cond_6

    .line 466
    add-int/lit8 v5, v5, 0x1

    .line 467
    packed-switch v5, :pswitch_data_0

    .line 484
    :cond_6
    :goto_5
    add-int v8, v3, v4

    move v6, v3

    .line 486
    :goto_6
    add-int v3, v6, v12

    .line 487
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->u:I

    if-ge v3, v6, :cond_c

    .line 488
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->v:I

    mul-int/2addr v6, v3

    .line 490
    add-int v10, v6, v14

    .line 492
    add-int v3, v10, v13

    .line 493
    move-object/from16 v0, p0

    iget v9, v0, Lcom/a/a/b/e;->v:I

    add-int/2addr v9, v6

    if-ge v9, v3, :cond_7

    .line 495
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->v:I

    add-int/2addr v3, v6

    .line 498
    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->t:I

    mul-int/2addr v6, v7

    move-object/from16 v0, p1

    iget v9, v0, Lcom/a/a/b/b;->c:I

    mul-int/2addr v6, v9

    .line 499
    sub-int v9, v3, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/a/a/b/e;->t:I

    mul-int/2addr v9, v15

    add-int v15, v6, v9

    move v9, v6

    .line 500
    :goto_7
    if-ge v10, v3, :cond_c

    .line 503
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->t:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v6, v0, :cond_a

    .line 504
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/a/b/e;->l:[B

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/b/e;->b:[I

    move-object/from16 v16, v0

    aget v6, v16, v6

    .line 511
    :goto_8
    if-eqz v6, :cond_b

    .line 512
    aput v6, v2, v10

    .line 516
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->t:I

    add-int/2addr v6, v9

    .line 517
    add-int/lit8 v10, v10, 0x1

    move v9, v6

    .line 518
    goto :goto_7

    .line 461
    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    .line 469
    :pswitch_0
    const/4 v3, 0x4

    .line 470
    goto :goto_5

    .line 472
    :pswitch_1
    const/4 v3, 0x2

    .line 473
    const/4 v4, 0x4

    .line 474
    goto :goto_5

    .line 476
    :pswitch_2
    const/4 v3, 0x1

    .line 477
    const/4 v4, 0x2

    .line 478
    goto :goto_5

    .line 509
    :cond_a
    move-object/from16 v0, p1

    iget v6, v0, Lcom/a/a/b/b;->c:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15, v6}, Lcom/a/a/b/e;->a(III)I

    move-result v6

    goto :goto_8

    .line 513
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/a/a/b/e;->w:Z

    if-nez v6, :cond_8

    if-eqz v1, :cond_8

    .line 514
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/a/a/b/e;->w:Z

    goto :goto_9

    .line 462
    :cond_c
    add-int/lit8 v7, v7, 0x1

    move v3, v8

    goto/16 :goto_4

    .line 523
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/a/a/b/e;->r:Z

    if-eqz v1, :cond_10

    move-object/from16 v0, p1

    iget v1, v0, Lcom/a/a/b/b;->g:I

    if-eqz v1, :cond_e

    move-object/from16 v0, p1

    iget v1, v0, Lcom/a/a/b/b;->g:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    .line 525
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/b/e;->q:Landroid/graphics/Bitmap;

    if-nez v1, :cond_f

    .line 526
    invoke-direct/range {p0 .. p0}, Lcom/a/a/b/e;->m()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/a/a/b/e;->q:Landroid/graphics/Bitmap;

    .line 528
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/b/e;->q:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->v:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/b/e;->v:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/b/e;->u:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 533
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/a/a/b/e;->m()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 534
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->v:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/b/e;->v:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/b/e;->u:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 535
    return-object v1

    :cond_11
    move v6, v7

    move v8, v3

    goto/16 :goto_6

    .line 467
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/a/a/b/b;)V
    .locals 21

    .prologue
    .line 589
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/a/a/b/e;->g:I

    .line 590
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/a/a/b/e;->h:I

    .line 591
    if-eqz p1, :cond_0

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/b/e;->d:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/a/a/b/b;->j:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 596
    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget v1, v1, Lcom/a/a/b/c;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget v2, v2, Lcom/a/a/b/c;->g:I

    mul-int/2addr v1, v2

    .line 600
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->l:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->l:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2

    .line 602
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    invoke-interface {v2, v1}, Lcom/a/a/b/a$a;->a(I)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/a/a/b/e;->l:[B

    .line 604
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->i:[S

    if-nez v2, :cond_3

    .line 605
    const/16 v2, 0x1000

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/a/a/b/e;->i:[S

    .line 607
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->j:[B

    if-nez v2, :cond_4

    .line 608
    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/a/a/b/e;->j:[B

    .line 610
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->k:[B

    if-nez v2, :cond_5

    .line 611
    const/16 v2, 0x1001

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/a/a/b/e;->k:[B

    .line 615
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/a/a/b/e;->k()I

    move-result v17

    .line 616
    const/4 v2, 0x1

    shl-int v18, v2, v17

    .line 617
    add-int/lit8 v19, v18, 0x1

    .line 618
    add-int/lit8 v6, v18, 0x2

    .line 619
    const/4 v11, -0x1

    .line 620
    add-int/lit8 v4, v17, 0x1

    .line 621
    const/4 v2, 0x1

    shl-int/2addr v2, v4

    add-int/lit8 v5, v2, -0x1

    .line 622
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v2, v0, :cond_7

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/e;->i:[S

    const/4 v7, 0x0

    aput-short v7, v3, v2

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/e;->j:[B

    int-to-byte v7, v2

    aput-byte v7, v3, v2

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 596
    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Lcom/a/a/b/b;->c:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/a/a/b/b;->d:I

    mul-int/2addr v1, v2

    goto :goto_0

    .line 629
    :cond_7
    const/4 v10, 0x0

    .line 630
    const/4 v9, 0x0

    move v7, v10

    move v2, v10

    move v8, v10

    move v12, v10

    move v13, v10

    move v3, v10

    move v14, v10

    :goto_2
    if-ge v9, v1, :cond_8

    .line 632
    if-nez v3, :cond_a

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/a/a/b/e;->l()I

    move-result v3

    .line 635
    if-gtz v3, :cond_9

    .line 636
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/b/e;->s:I

    :cond_8
    move v2, v7

    .line 711
    :goto_3
    if-ge v2, v1, :cond_10

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/e;->l:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    .line 711
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 639
    :cond_9
    const/4 v2, 0x0

    .line 642
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/b/e;->e:[B

    aget-byte v10, v10, v2

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v14

    add-int/2addr v13, v10

    .line 643
    add-int/lit8 v14, v14, 0x8

    .line 644
    add-int/lit8 v15, v2, 0x1

    .line 645
    add-int/lit8 v16, v3, -0x1

    move v10, v12

    .line 647
    :goto_4
    if-lt v14, v4, :cond_14

    .line 649
    and-int v12, v13, v5

    .line 650
    shr-int/2addr v13, v4

    .line 651
    sub-int/2addr v14, v4

    .line 654
    move/from16 v0, v18

    if-ne v12, v0, :cond_b

    .line 656
    add-int/lit8 v4, v17, 0x1

    .line 657
    const/4 v2, 0x1

    shl-int/2addr v2, v4

    add-int/lit8 v5, v2, -0x1

    .line 658
    add-int/lit8 v6, v18, 0x2

    .line 659
    const/4 v12, -0x1

    move v11, v12

    .line 660
    goto :goto_4

    .line 663
    :cond_b
    if-le v12, v6, :cond_c

    .line 664
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/b/e;->s:I

    move v2, v15

    move v12, v10

    move/from16 v3, v16

    .line 665
    goto :goto_2

    .line 668
    :cond_c
    move/from16 v0, v19

    if-ne v12, v0, :cond_d

    move v2, v15

    move v12, v10

    move/from16 v3, v16

    .line 669
    goto :goto_2

    .line 672
    :cond_d
    const/4 v2, -0x1

    if-ne v11, v2, :cond_e

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/e;->k:[B

    add-int/lit8 v2, v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/b/e;->j:[B

    aget-byte v10, v10, v12

    aput-byte v10, v3, v8

    move v8, v2

    move v10, v12

    move v11, v12

    .line 676
    goto :goto_4

    .line 679
    :cond_e
    if-lt v12, v6, :cond_13

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/e;->k:[B

    add-int/lit8 v2, v8, 0x1

    int-to-byte v10, v10

    aput-byte v10, v3, v8

    move v10, v11

    .line 683
    :goto_5
    move/from16 v0, v18

    if-lt v10, v0, :cond_f

    .line 684
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/b/e;->k:[B

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/b/e;->j:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v10

    aput-byte v20, v8, v2

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->i:[S

    aget-short v8, v2, v10

    move v2, v3

    move v10, v8

    goto :goto_5

    .line 687
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/e;->j:[B

    aget-byte v3, v3, v10

    and-int/lit16 v10, v3, 0xff

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/e;->k:[B

    add-int/lit8 v8, v2, 0x1

    int-to-byte v0, v10

    move/from16 v20, v0

    aput-byte v20, v3, v2

    .line 691
    const/16 v2, 0x1000

    if-ge v6, v2, :cond_12

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->i:[S

    int-to-short v3, v11

    aput-short v3, v2, v6

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->j:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v6

    .line 694
    add-int/lit8 v6, v6, 0x1

    .line 695
    and-int v2, v6, v5

    if-nez v2, :cond_12

    const/16 v2, 0x1000

    if-ge v6, v2, :cond_12

    .line 696
    add-int/lit8 v2, v4, 0x1

    .line 697
    add-int v3, v5, v6

    .line 702
    :goto_6
    if-lez v8, :cond_11

    .line 704
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/b/e;->l:[B

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/b/e;->k:[B

    move-object/from16 v20, v0

    add-int/lit8 v5, v8, -0x1

    aget-byte v8, v20, v5

    aput-byte v8, v11, v7

    .line 705
    add-int/lit8 v9, v9, 0x1

    move v7, v4

    move v8, v5

    goto :goto_6

    .line 714
    :cond_10
    return-void

    :cond_11
    move v11, v12

    move v4, v2

    move v5, v3

    goto/16 :goto_4

    :cond_12
    move v2, v4

    move v3, v5

    goto :goto_6

    :cond_13
    move v2, v8

    move v10, v12

    goto :goto_5

    :cond_14
    move v2, v15

    move v12, v10

    move/from16 v3, v16

    goto/16 :goto_2
.end method

.method private j()V
    .locals 4

    .prologue
    const/16 v2, 0x4000

    const/4 v3, 0x0

    .line 720
    iget v0, p0, Lcom/a/a/b/e;->g:I

    iget v1, p0, Lcom/a/a/b/e;->h:I

    if-le v0, v1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/e;->f:[B

    if-nez v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    invoke-interface {v0, v2}, Lcom/a/a/b/a$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/e;->f:[B

    .line 726
    :cond_1
    iput v3, p0, Lcom/a/a/b/e;->h:I

    .line 727
    iget-object v0, p0, Lcom/a/a/b/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/a/a/b/e;->g:I

    .line 728
    iget-object v0, p0, Lcom/a/a/b/e;->d:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/a/a/b/e;->f:[B

    iget v2, p0, Lcom/a/a/b/e;->g:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private k()I
    .locals 3

    .prologue
    .line 736
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/b/e;->j()V

    .line 737
    iget-object v0, p0, Lcom/a/a/b/e;->f:[B

    iget v1, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/b/e;->h:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    .line 740
    :goto_0
    return v0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->s:I

    .line 740
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 750
    invoke-direct {p0}, Lcom/a/a/b/e;->k()I

    move-result v1

    .line 751
    if-lez v1, :cond_1

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/e;->e:[B

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    const/16 v2, 0xff

    invoke-interface {v0, v2}, Lcom/a/a/b/a$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/e;->e:[B

    .line 756
    :cond_0
    iget v0, p0, Lcom/a/a/b/e;->g:I

    iget v2, p0, Lcom/a/a/b/e;->h:I

    sub-int/2addr v0, v2

    .line 757
    if-lt v0, v1, :cond_2

    .line 759
    iget-object v0, p0, Lcom/a/a/b/e;->f:[B

    iget v2, p0, Lcom/a/a/b/e;->h:I

    iget-object v3, p0, Lcom/a/a/b/e;->e:[B

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    .line 777
    :cond_1
    :goto_0
    return v1

    .line 761
    :cond_2
    iget-object v2, p0, Lcom/a/a/b/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 763
    iget-object v2, p0, Lcom/a/a/b/e;->f:[B

    iget v3, p0, Lcom/a/a/b/e;->h:I

    iget-object v4, p0, Lcom/a/a/b/e;->e:[B

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    iget v2, p0, Lcom/a/a/b/e;->g:I

    iput v2, p0, Lcom/a/a/b/e;->h:I

    .line 765
    invoke-direct {p0}, Lcom/a/a/b/e;->j()V

    .line 766
    sub-int v2, v1, v0

    .line 767
    iget-object v3, p0, Lcom/a/a/b/e;->f:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/a/a/b/e;->e:[B

    invoke-static {v3, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/b/e;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    sget-object v2, Lcom/a/a/b/e;->a:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    iput v6, p0, Lcom/a/a/b/e;->s:I

    goto :goto_0

    .line 770
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/a/a/b/e;->s:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private m()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/a/a/b/e;->w:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 783
    :goto_0
    iget-object v1, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    iget v2, p0, Lcom/a/a/b/e;->v:I

    iget v3, p0, Lcom/a/a/b/e;->u:I

    invoke-interface {v1, v2, v3, v0}, Lcom/a/a/b/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 784
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 785
    return-object v0

    .line 781
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 170
    const/4 v0, -0x1

    .line 171
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget v1, v1, Lcom/a/a/b/c;->c:I

    if-ge p1, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget-object v0, v0, Lcom/a/a/b/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/b;

    iget v0, v0, Lcom/a/a/b/b;->i:I

    .line 174
    :cond_0
    return v0
.end method

.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/a/a/b/e;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/a/a/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    .line 349
    monitor-enter p0

    if-gtz p3, :cond_0

    .line 350
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sample size must be >=0, not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 353
    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b/e;->s:I

    .line 355
    iput-object p1, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/b/e;->w:Z

    .line 357
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/b/e;->n:I

    .line 359
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/e;->d:Ljava/nio/ByteBuffer;

    .line 360
    iget-object v0, p0, Lcom/a/a/b/e;->d:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 361
    iget-object v0, p0, Lcom/a/a/b/e;->d:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/b/e;->r:Z

    .line 365
    iget-object v0, p1, Lcom/a/a/b/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/b;

    .line 366
    iget v0, v0, Lcom/a/a/b/b;->g:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/b/e;->r:Z

    .line 372
    :cond_2
    iput v1, p0, Lcom/a/a/b/e;->t:I

    .line 373
    iget v0, p1, Lcom/a/a/b/c;->f:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->v:I

    .line 374
    iget v0, p1, Lcom/a/a/b/c;->g:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->u:I

    .line 377
    iget-object v0, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    iget v1, p1, Lcom/a/a/b/c;->f:I

    iget v2, p1, Lcom/a/a/b/c;->g:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/a/a/b/a$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/e;->l:[B

    .line 378
    iget-object v0, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    iget v1, p0, Lcom/a/a/b/e;->v:I

    iget v2, p0, Lcom/a/a/b/e;->u:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/a/a/b/a$a;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/e;->m:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    monitor-exit p0

    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/a/a/b/e;->n:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget v1, v1, Lcom/a/a/b/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->n:I

    .line 166
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget v0, v0, Lcom/a/a/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/a/a/b/e;->n:I

    if-gez v0, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/a/a/b/e;->n:I

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget v0, v0, Lcom/a/a/b/c;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/a/a/b/e;->n:I

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/b/e;->n:I

    .line 199
    return-void
.end method

.method public g()I
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/a/a/b/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/b/e;->l:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/b/e;->m:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized h()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget v0, v0, Lcom/a/a/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/a/a/b/e;->n:I

    if-gez v0, :cond_2

    .line 234
    :cond_0
    sget-object v0, Lcom/a/a/b/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Lcom/a/a/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, frameCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget v3, v3, Lcom/a/a/b/c;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", framePointer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/a/a/b/e;->n:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->s:I

    .line 242
    :cond_2
    iget v0, p0, Lcom/a/a/b/e;->s:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/a/a/b/e;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 243
    :cond_3
    sget-object v0, Lcom/a/a/b/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    sget-object v0, Lcom/a/a/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/a/a/b/e;->s:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v2

    .line 279
    :goto_0
    monitor-exit p0

    return-object v0

    .line 248
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/a/a/b/e;->s:I

    .line 250
    iget-object v0, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget-object v0, v0, Lcom/a/a/b/c;->e:Ljava/util/List;

    iget v1, p0, Lcom/a/a/b/e;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/b;

    .line 252
    iget v1, p0, Lcom/a/a/b/e;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 253
    if-ltz v1, :cond_a

    .line 254
    iget-object v3, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget-object v3, v3, Lcom/a/a/b/c;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/b/b;

    move-object v3, v1

    .line 258
    :goto_1
    iget-object v1, v0, Lcom/a/a/b/b;->k:[I

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/a/a/b/b;->k:[I

    :goto_2
    iput-object v1, p0, Lcom/a/a/b/e;->b:[I

    .line 259
    iget-object v1, p0, Lcom/a/a/b/e;->b:[I

    if-nez v1, :cond_8

    .line 260
    sget-object v0, Lcom/a/a/b/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    sget-object v0, Lcom/a/a/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid color table found for frame #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/a/a/b/e;->n:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->s:I

    move-object v0, v2

    .line 265
    goto :goto_0

    .line 258
    :cond_7
    iget-object v1, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    iget-object v1, v1, Lcom/a/a/b/c;->a:[I

    goto :goto_2

    .line 269
    :cond_8
    iget-boolean v1, v0, Lcom/a/a/b/b;->f:Z

    if-eqz v1, :cond_9

    .line 271
    iget-object v1, p0, Lcom/a/a/b/e;->b:[I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/a/a/b/e;->c:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/a/a/b/e;->b:[I

    array-length v6, v6

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iget-object v1, p0, Lcom/a/a/b/e;->c:[I

    iput-object v1, p0, Lcom/a/a/b/e;->b:[I

    .line 275
    iget-object v1, p0, Lcom/a/a/b/e;->b:[I

    iget v2, v0, Lcom/a/a/b/b;->h:I

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 279
    :cond_9
    invoke-direct {p0, v0, v3}, Lcom/a/a/b/e;->a(Lcom/a/a/b/b;Lcom/a/a/b/b;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    move-object v3, v2

    goto :goto_1
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    iput-object v2, p0, Lcom/a/a/b/e;->o:Lcom/a/a/b/c;

    .line 317
    iget-object v0, p0, Lcom/a/a/b/e;->l:[B

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    iget-object v1, p0, Lcom/a/a/b/e;->l:[B

    invoke-interface {v0, v1}, Lcom/a/a/b/a$a;->a([B)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/e;->m:[I

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    iget-object v1, p0, Lcom/a/a/b/e;->m:[I

    invoke-interface {v0, v1}, Lcom/a/a/b/a$a;->a([I)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/a/a/b/e;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    iget-object v1, p0, Lcom/a/a/b/e;->q:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/a/a/b/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 326
    :cond_2
    iput-object v2, p0, Lcom/a/a/b/e;->q:Landroid/graphics/Bitmap;

    .line 327
    iput-object v2, p0, Lcom/a/a/b/e;->d:Ljava/nio/ByteBuffer;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/b/e;->w:Z

    .line 329
    iget-object v0, p0, Lcom/a/a/b/e;->e:[B

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    iget-object v1, p0, Lcom/a/a/b/e;->e:[B

    invoke-interface {v0, v1}, Lcom/a/a/b/a$a;->a([B)V

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/a/a/b/e;->f:[B

    if-eqz v0, :cond_4

    .line 333
    iget-object v0, p0, Lcom/a/a/b/e;->p:Lcom/a/a/b/a$a;

    iget-object v1, p0, Lcom/a/a/b/e;->f:[B

    invoke-interface {v0, v1}, Lcom/a/a/b/a$a;->a([B)V

    .line 335
    :cond_4
    return-void
.end method
