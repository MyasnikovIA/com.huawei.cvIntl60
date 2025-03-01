.class Lcom/a/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:I

.field protected static final b:I

.field protected static final c:I


# instance fields
.field protected d:I

.field protected e:[B

.field protected f:I

.field protected g:I

.field protected h:[[I

.field protected i:[I

.field protected j:[I

.field protected k:[I

.field protected l:[I

.field private m:I

.field private n:[Lcom/a/a/c/d;

.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x6

    sput v0, Lcom/a/a/c/c;->a:I

    .line 86
    const/4 v0, 0x1

    sget v1, Lcom/a/a/c/c;->a:I

    shl-int/2addr v0, v1

    sput v0, Lcom/a/a/c/c;->b:I

    .line 88
    sget v0, Lcom/a/a/c/c;->b:I

    mul-int/lit8 v0, v0, 0x20

    sput v0, Lcom/a/a/c/c;->c:I

    return-void
.end method

.method public constructor <init>([BIIII[I[Lcom/a/a/c/d;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x100

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/a/a/c/c;->i:[I

    .line 129
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/a/a/c/c;->j:[I

    .line 132
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/a/a/c/c;->k:[I

    .line 134
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/a/a/c/c;->l:[I

    .line 138
    iput v1, p0, Lcom/a/a/c/c;->m:I

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    .line 140
    iput v1, p0, Lcom/a/a/c/c;->o:I

    .line 141
    iput v1, p0, Lcom/a/a/c/c;->p:I

    .line 152
    iput-object p1, p0, Lcom/a/a/c/c;->e:[B

    .line 153
    iput p2, p0, Lcom/a/a/c/c;->f:I

    .line 154
    iput p3, p0, Lcom/a/a/c/c;->g:I

    .line 156
    iput-object p7, p0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    .line 157
    iput p4, p0, Lcom/a/a/c/c;->o:I

    .line 158
    iput p5, p0, Lcom/a/a/c/c;->p:I

    .line 160
    new-array v0, v4, [[I

    iput-object v0, p0, Lcom/a/a/c/c;->h:[[I

    move v0, v1

    .line 161
    :goto_0
    if-ge v0, v4, :cond_0

    .line 162
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    .line 163
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v2, v2, v0

    .line 164
    shl-int/lit8 v3, v0, 0xc

    div-int/lit16 v3, v3, 0x100

    aput v3, v2, v6

    aput v3, v2, v5

    aput v3, v2, v1

    .line 165
    iget-object v2, p0, Lcom/a/a/c/c;->k:[I

    aput v4, v2, v0

    .line 166
    iget-object v2, p0, Lcom/a/a/c/c;->j:[I

    aput v1, v2, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    if-eqz p6, :cond_1

    .line 172
    array-length v0, p6

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/a/a/c/c;->m:I

    move v0, v1

    .line 173
    :goto_1
    iget v2, p0, Lcom/a/a/c/c;->m:I

    if-ge v0, v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    rsub-int v3, v0, 0xff

    aget-object v2, v2, v3

    mul-int/lit8 v3, v0, 0x3

    aget v3, p6, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x4

    aput v3, v2, v1

    .line 177
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    rsub-int v3, v0, 0xff

    aget-object v2, v2, v3

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v3, p6, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x4

    aput v3, v2, v5

    .line 178
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    rsub-int v3, v0, 0xff

    aget-object v2, v2, v3

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    aget v3, p6, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x4

    aput v3, v2, v6

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_1
    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 8

    .prologue
    .line 411
    const/16 v3, 0x3e8

    .line 412
    const/4 v2, -0x1

    .line 413
    iget-object v0, p0, Lcom/a/a/c/c;->i:[I

    aget v5, v0, p2

    .line 414
    add-int/lit8 v0, v5, -0x1

    move v1, v2

    move v6, v0

    move v4, v5

    .line 416
    :goto_0
    const/16 v0, 0x100

    if-lt v4, v0, :cond_0

    if-ltz v6, :cond_9

    .line 417
    :cond_0
    const/16 v0, 0x100

    if-ge v4, v0, :cond_c

    .line 418
    iget-object v0, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v7, v0, v4

    .line 419
    const/4 v0, 0x1

    aget v0, v7, v0

    sub-int/2addr v0, p2

    .line 420
    if-lt v0, v3, :cond_1

    .line 421
    const/16 v0, 0x100

    move v2, v1

    move v5, v0

    .line 442
    :goto_1
    if-ltz v6, :cond_a

    .line 443
    iget-object v0, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v4, v0, v6

    .line 444
    const/4 v0, 0x1

    aget v0, v4, v0

    sub-int v0, p2, v0

    .line 445
    if-lt v0, v3, :cond_5

    .line 446
    const/4 v0, -0x1

    move v1, v2

    move v6, v0

    move v4, v5

    goto :goto_0

    .line 423
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 424
    if-gez v0, :cond_2

    .line 425
    neg-int v0, v0

    .line 426
    :cond_2
    const/4 v2, 0x0

    aget v2, v7, v2

    sub-int/2addr v2, p1

    .line 427
    if-gez v2, :cond_3

    .line 428
    neg-int v2, v2

    .line 429
    :cond_3
    add-int/2addr v2, v0

    .line 430
    if-ge v2, v3, :cond_b

    .line 431
    const/4 v0, 0x2

    aget v0, v7, v0

    sub-int/2addr v0, p3

    .line 432
    if-gez v0, :cond_4

    .line 433
    neg-int v0, v0

    .line 434
    :cond_4
    add-int v4, v2, v0

    .line 435
    if-ge v4, v3, :cond_b

    .line 437
    const/4 v0, 0x3

    aget v0, v7, v0

    move v2, v0

    move v3, v4

    goto :goto_1

    .line 448
    :cond_5
    add-int/lit8 v6, v6, -0x1

    .line 449
    if-gez v0, :cond_6

    .line 450
    neg-int v0, v0

    .line 451
    :cond_6
    const/4 v1, 0x0

    aget v1, v4, v1

    sub-int/2addr v1, p1

    .line 452
    if-gez v1, :cond_7

    .line 453
    neg-int v1, v1

    .line 454
    :cond_7
    add-int/2addr v1, v0

    .line 455
    if-ge v1, v3, :cond_a

    .line 456
    const/4 v0, 0x2

    aget v0, v4, v0

    sub-int/2addr v0, p3

    .line 457
    if-gez v0, :cond_8

    .line 458
    neg-int v0, v0

    .line 459
    :cond_8
    add-int/2addr v0, v1

    .line 460
    if-ge v0, v3, :cond_a

    .line 462
    const/4 v1, 0x3

    aget v2, v4, v1

    move v1, v2

    move v3, v0

    move v4, v5

    goto :goto_0

    .line 468
    :cond_9
    return v1

    :cond_a
    move v1, v2

    move v4, v5

    goto :goto_0

    :cond_b
    move v2, v1

    goto :goto_1

    :cond_c
    move v2, v1

    move v5, v4

    goto :goto_1
.end method

.method protected a(IIIII)V
    .locals 11

    .prologue
    .line 505
    sub-int v0, p2, p1

    .line 506
    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    .line 507
    const/4 v0, -0x1

    .line 508
    :cond_0
    add-int v1, p2, p1

    .line 509
    iget v2, p0, Lcom/a/a/c/c;->m:I

    rsub-int v2, v2, 0x100

    if-le v1, v2, :cond_1

    .line 510
    iget v1, p0, Lcom/a/a/c/c;->m:I

    rsub-int v1, v1, 0x100

    .line 512
    :cond_1
    add-int/lit8 v2, p2, 0x1

    .line 513
    add-int/lit8 v5, p2, -0x1

    .line 514
    const/4 v3, 0x1

    move v4, v3

    move v6, v5

    .line 515
    :goto_0
    if-lt v2, v1, :cond_2

    if-le v6, v0, :cond_3

    .line 516
    :cond_2
    iget-object v3, p0, Lcom/a/a/c/c;->l:[I

    add-int/lit8 v5, v4, 0x1

    aget v4, v3, v4

    .line 517
    if-ge v2, v1, :cond_5

    .line 518
    iget-object v7, p0, Lcom/a/a/c/c;->h:[[I

    add-int/lit8 v3, v2, 0x1

    aget-object v2, v7, v2

    .line 520
    const/4 v7, 0x0

    :try_start_0
    aget v8, v2, v7

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v4

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7

    .line 521
    const/4 v7, 0x1

    aget v8, v2, v7

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v4

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7

    .line 522
    const/4 v7, 0x2

    aget v8, v2, v7

    const/4 v9, 0x2

    aget v9, v2, v9

    sub-int v9, v9, p5

    mul-int/2addr v9, v4

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_1
    if-le v6, v0, :cond_4

    .line 528
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    add-int/lit8 v7, v6, -0x1

    aget-object v2, v2, v6

    .line 530
    const/4 v6, 0x0

    :try_start_1
    aget v8, v2, v6

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v4

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v6

    .line 531
    const/4 v6, 0x1

    aget v8, v2, v6

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v4

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v6

    .line 532
    const/4 v6, 0x2

    aget v8, v2, v6

    const/4 v9, 0x2

    aget v9, v2, v9

    sub-int v9, v9, p5

    mul-int/2addr v4, v9

    const/high16 v9, 0x40000

    div-int/2addr v4, v9

    sub-int v4, v8, v4

    aput v4, v2, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    move v6, v7

    move v2, v3

    .line 535
    goto :goto_0

    .line 523
    :catch_0
    move-exception v2

    .line 524
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 533
    :catch_1
    move-exception v2

    .line 534
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    move v6, v7

    move v2, v3

    .line 535
    goto/16 :goto_0

    .line 538
    :cond_3
    return-void

    :cond_4
    move v4, v5

    move v2, v3

    goto/16 :goto_0

    :cond_5
    move v3, v2

    goto :goto_1
.end method

.method public a()[B
    .locals 10

    .prologue
    const/16 v9, 0x100

    const/4 v1, 0x0

    .line 190
    const/16 v0, 0x300

    new-array v3, v0, [B

    .line 191
    new-array v4, v9, [I

    move v0, v1

    .line 192
    :goto_0
    if-ge v0, v9, :cond_0

    .line 193
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v2, v2, v0

    const/4 v5, 0x3

    aget v2, v2, v5

    aput v0, v4, v2

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    .line 195
    :goto_1
    if-ge v0, v9, :cond_1

    .line 196
    aget v5, v4, v0

    .line 197
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v7, v7, v5

    aget v7, v7, v1

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 198
    add-int/lit8 v7, v6, 0x1

    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v2, v2, v5

    const/4 v8, 0x1

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    .line 199
    add-int/lit8 v2, v7, 0x1

    iget-object v6, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v5, v6, v5

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_1
    return-object v3
.end method

.method protected b(III)I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 567
    const v1, 0x7fffffff

    .line 569
    const/4 v4, -0x1

    move v0, v1

    move v2, v1

    move v3, v4

    move v5, v4

    move v6, v7

    .line 572
    :goto_0
    iget v1, p0, Lcom/a/a/c/c;->m:I

    rsub-int v1, v1, 0x100

    if-ge v6, v1, :cond_4

    .line 573
    iget-object v1, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v8, v1, v6

    .line 574
    aget v1, v8, v7

    sub-int/2addr v1, p1

    .line 575
    if-gez v1, :cond_0

    .line 576
    neg-int v1, v1

    .line 577
    :cond_0
    const/4 v4, 0x1

    aget v4, v8, v4

    sub-int/2addr v4, p2

    .line 578
    if-gez v4, :cond_1

    .line 579
    neg-int v4, v4

    .line 580
    :cond_1
    add-int/2addr v4, v1

    .line 581
    const/4 v1, 0x2

    aget v1, v8, v1

    sub-int/2addr v1, p3

    .line 582
    if-gez v1, :cond_2

    .line 583
    neg-int v1, v1

    .line 584
    :cond_2
    add-int v8, v4, v1

    .line 585
    if-ge v8, v2, :cond_5

    move v1, v8

    move v4, v6

    .line 589
    :goto_1
    iget-object v2, p0, Lcom/a/a/c/c;->j:[I

    aget v2, v2, v6

    shr-int/lit8 v2, v2, 0xc

    sub-int v2, v8, v2

    .line 590
    if-ge v2, v0, :cond_3

    move v0, v2

    move v3, v6

    .line 594
    :cond_3
    iget-object v2, p0, Lcom/a/a/c/c;->k:[I

    aget v2, v2, v6

    shr-int/lit8 v2, v2, 0xa

    .line 595
    iget-object v5, p0, Lcom/a/a/c/c;->k:[I

    aget v8, v5, v6

    sub-int/2addr v8, v2

    aput v8, v5, v6

    .line 596
    iget-object v5, p0, Lcom/a/a/c/c;->j:[I

    aget v8, v5, v6

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v8

    aput v2, v5, v6

    .line 572
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    move v5, v4

    goto :goto_0

    .line 598
    :cond_4
    iget-object v0, p0, Lcom/a/a/c/c;->k:[I

    aget v1, v0, v5

    add-int/lit8 v1, v1, 0x40

    aput v1, v0, v5

    .line 599
    iget-object v0, p0, Lcom/a/a/c/c;->j:[I

    aget v1, v0, v5

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 600
    return v3

    :cond_5
    move v1, v2

    move v4, v5

    goto :goto_1
.end method

.method public b()V
    .locals 14

    .prologue
    const/16 v13, 0x100

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 216
    move v4, v6

    move v5, v6

    move v3, v6

    .line 218
    :goto_0
    if-ge v3, v13, :cond_4

    .line 219
    iget-object v0, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v7, v0, v3

    .line 221
    aget v0, v7, v10

    .line 223
    add-int/lit8 v2, v3, 0x1

    move v1, v3

    :goto_1
    if-ge v2, v13, :cond_1

    .line 224
    iget-object v8, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v8, v8, v2

    .line 225
    aget v9, v8, v10

    if-ge v9, v0, :cond_0

    .line 227
    aget v0, v8, v10

    move v1, v2

    .line 223
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v2, v2, v1

    .line 232
    if-eq v3, v1, :cond_2

    .line 233
    aget v1, v2, v6

    .line 234
    aget v8, v7, v6

    aput v8, v2, v6

    .line 235
    aput v1, v7, v6

    .line 236
    aget v1, v2, v10

    .line 237
    aget v8, v7, v10

    aput v8, v2, v10

    .line 238
    aput v1, v7, v10

    .line 239
    aget v1, v2, v11

    .line 240
    aget v8, v7, v11

    aput v8, v2, v11

    .line 241
    aput v1, v7, v11

    .line 242
    aget v1, v2, v12

    .line 243
    aget v8, v7, v12

    aput v8, v2, v12

    .line 244
    aput v1, v7, v12

    .line 247
    :cond_2
    if-eq v0, v5, :cond_6

    .line 248
    iget-object v1, p0, Lcom/a/a/c/c;->i:[I

    add-int v2, v4, v3

    shr-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    .line 249
    add-int/lit8 v1, v5, 0x1

    :goto_2
    if-ge v1, v0, :cond_3

    .line 250
    iget-object v2, p0, Lcom/a/a/c/c;->i:[I

    aput v3, v2, v1

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v3

    .line 218
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    move v5, v0

    goto :goto_0

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/a/a/c/c;->i:[I

    add-int/lit16 v1, v4, 0xff

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    .line 256
    add-int/lit8 v0, v5, 0x1

    :goto_4
    if-ge v0, v13, :cond_5

    .line 257
    iget-object v1, p0, Lcom/a/a/c/c;->i:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 258
    :cond_5
    return-void

    :cond_6
    move v1, v4

    move v0, v5

    goto :goto_3
.end method

.method protected b(IIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 547
    iget-object v0, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v0, v0, p2

    .line 548
    aget v1, v0, v3

    aget v2, v0, v3

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 549
    aget v1, v0, v4

    aget v2, v0, v4

    sub-int/2addr v2, p4

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 550
    aget v1, v0, v5

    aget v2, v0, v5

    sub-int/2addr v2, p5

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 551
    return-void
.end method

.method public c()V
    .locals 24

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget v1, v0, Lcom/a/a/c/c;->f:I

    const/16 v2, 0x5e5

    if-ge v1, v2, :cond_0

    .line 271
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/a/a/c/c;->g:I

    .line 272
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/a/a/c/c;->g:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1e

    move-object/from16 v0, p0

    iput v1, v0, Lcom/a/a/c/c;->d:I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/c/c;->e:[B

    move-object/from16 v21, v0

    .line 274
    const/4 v3, 0x0

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/c/c;->f:I

    move/from16 v19, v0

    .line 276
    move-object/from16 v0, p0

    iget v1, v0, Lcom/a/a/c/c;->f:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/c/c;->g:I

    mul-int/lit8 v2, v2, 0x3

    div-int v9, v1, v2

    .line 277
    div-int/lit8 v4, v9, 0x64

    .line 278
    const/16 v5, 0x400

    .line 279
    sget v6, Lcom/a/a/c/c;->c:I

    .line 281
    sget v1, Lcom/a/a/c/c;->a:I

    shr-int v1, v6, v1

    .line 282
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 283
    const/4 v1, 0x0

    .line 284
    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 285
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/a/a/c/c;->l:[I

    mul-int v8, v1, v1

    mul-int v10, v2, v2

    sub-int/2addr v8, v10

    mul-int/lit16 v8, v8, 0x100

    mul-int v10, v1, v1

    div-int/2addr v8, v10

    mul-int/2addr v8, v5

    aput v8, v7, v2

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/c/c;->f:I

    const/16 v7, 0x5e5

    if-ge v2, v7, :cond_3

    .line 290
    const/4 v2, 0x3

    move v13, v2

    .line 307
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    if-eqz v2, :cond_b

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 311
    const/high16 v7, 0x3f800000    # 1.0f

    .line 312
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    array-length v8, v8

    aput v9, v2, v8

    .line 313
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    :goto_2
    if-ltz v8, :cond_7

    .line 314
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    aget-object v10, v10, v8

    iget v10, v10, Lcom/a/a/c/d;->d:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    aget-object v11, v11, v8

    iget v11, v11, Lcom/a/a/c/d;->e:I

    mul-int/2addr v10, v11

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/a/a/c/c;->o:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/a/a/c/c;->p:I

    mul-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 315
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    aget-object v11, v11, v8

    iget v11, v11, Lcom/a/a/c/d;->a:F

    mul-float/2addr v10, v11

    .line 316
    sub-float/2addr v7, v10

    .line 317
    int-to-float v10, v9

    mul-float/2addr v10, v7

    float-to-int v10, v10

    aput v10, v2, v8

    .line 313
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 291
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/c/c;->f:I

    rem-int/lit16 v2, v2, 0x1f3

    if-eqz v2, :cond_4

    .line 292
    const/16 v2, 0x5d9

    move v13, v2

    goto :goto_1

    .line 294
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/c/c;->f:I

    rem-int/lit16 v2, v2, 0x1eb

    if-eqz v2, :cond_5

    .line 295
    const/16 v2, 0x5c1

    move v13, v2

    goto :goto_1

    .line 297
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/c/c;->f:I

    rem-int/lit16 v2, v2, 0x1e7

    if-eqz v2, :cond_6

    .line 298
    const/16 v2, 0x5b5

    move v13, v2

    goto :goto_1

    .line 300
    :cond_6
    const/16 v2, 0x5e5

    move v13, v2

    goto :goto_1

    :cond_7
    move-object v14, v2

    .line 325
    :goto_3
    const/4 v7, 0x0

    move v15, v3

    move/from16 v16, v4

    move v2, v5

    move v8, v1

    move/from16 v17, v6

    move/from16 v18, v7

    .line 326
    :goto_4
    const/4 v1, 0x0

    aget v1, v14, v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_c

    .line 327
    add-int/lit8 v1, v15, 0x0

    aget-byte v1, v21, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    .line 328
    add-int/lit8 v1, v15, 0x1

    aget-byte v1, v21, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v5, v1, 0x4

    .line 329
    add-int/lit8 v1, v15, 0x2

    aget-byte v1, v21, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v6, v1, 0x4

    .line 330
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/a/a/c/c;->b(III)I

    move-result v3

    move-object/from16 v1, p0

    .line 332
    invoke-virtual/range {v1 .. v6}, Lcom/a/a/c/c;->b(IIIII)V

    .line 333
    if-eqz v8, :cond_8

    move-object/from16 v7, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 334
    invoke-virtual/range {v7 .. v12}, Lcom/a/a/c/c;->a(IIIII)V

    .line 336
    :cond_8
    add-int v1, v15, v13

    .line 337
    move/from16 v0, v19

    if-lt v1, v0, :cond_9

    .line 338
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/c/c;->f:I

    sub-int/2addr v1, v3

    .line 340
    :cond_9
    add-int/lit8 v5, v18, 0x1

    .line 341
    if-nez v16, :cond_16

    .line 342
    const/4 v3, 0x1

    .line 343
    :goto_5
    rem-int v4, v5, v3

    if-nez v4, :cond_15

    .line 344
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/c/c;->d:I

    div-int v4, v2, v4

    sub-int/2addr v2, v4

    .line 345
    div-int/lit8 v4, v17, 0x1e

    sub-int v4, v17, v4

    .line 346
    sget v6, Lcom/a/a/c/c;->a:I

    shr-int v8, v4, v6

    .line 347
    const/4 v6, 0x1

    if-gt v8, v6, :cond_a

    .line 348
    const/4 v8, 0x0

    .line 349
    :cond_a
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v8, :cond_14

    .line 350
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/a/a/c/c;->l:[I

    mul-int v9, v8, v8

    mul-int v10, v6, v6

    sub-int/2addr v9, v10

    mul-int/lit16 v9, v9, 0x100

    mul-int v10, v8, v8

    div-int/2addr v9, v10

    mul-int/2addr v9, v2

    aput v9, v7, v6

    .line 349
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 322
    :cond_b
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v7, 0x0

    aput v9, v2, v7

    move-object v14, v2

    goto/16 :goto_3

    .line 355
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    if-eqz v1, :cond_12

    .line 357
    const/4 v1, 0x1

    move v15, v1

    :goto_7
    array-length v1, v14

    if-ge v15, v1, :cond_12

    .line 358
    move-object/from16 v0, p0

    iget v1, v0, Lcom/a/a/c/c;->o:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    add-int/lit8 v4, v15, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/a/a/c/d;->c:I

    mul-int/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    add-int/lit8 v4, v15, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/a/a/c/d;->b:I

    add-int/2addr v1, v3

    mul-int/lit8 v20, v1, 0x3

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    add-int/lit8 v3, v15, -0x1

    aget-object v1, v1, v3

    iget v0, v1, Lcom/a/a/c/d;->d:I

    move/from16 v22, v0

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/c/c;->n:[Lcom/a/a/c/d;

    add-int/lit8 v3, v15, -0x1

    aget-object v1, v1, v3

    iget v1, v1, Lcom/a/a/c/d;->e:I

    .line 362
    mul-int v23, v22, v1

    .line 363
    const/4 v1, 0x0

    move/from16 v19, v1

    move/from16 v3, v20

    .line 364
    :goto_8
    aget v1, v14, v15

    move/from16 v0, v18

    if-ge v0, v1, :cond_11

    .line 365
    add-int/lit8 v1, v3, 0x0

    aget-byte v1, v21, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    .line 366
    add-int/lit8 v1, v3, 0x1

    aget-byte v1, v21, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v5, v1, 0x4

    .line 367
    add-int/lit8 v1, v3, 0x2

    aget-byte v1, v21, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v6, v1, 0x4

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/a/a/c/c;->b(III)I

    move-result v3

    move-object/from16 v1, p0

    .line 370
    invoke-virtual/range {v1 .. v6}, Lcom/a/a/c/c;->b(IIIII)V

    .line 371
    if-eqz v8, :cond_d

    move-object/from16 v7, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 372
    invoke-virtual/range {v7 .. v12}, Lcom/a/a/c/c;->a(IIIII)V

    .line 374
    :cond_d
    div-int/lit8 v1, v13, 0x3

    add-int v1, v1, v19

    .line 375
    :goto_9
    move/from16 v0, v23

    if-lt v1, v0, :cond_e

    .line 376
    sub-int v1, v1, v23

    goto :goto_9

    .line 379
    :cond_e
    div-int v3, v1, v22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/c/c;->o:I

    mul-int/2addr v3, v4

    rem-int v4, v1, v22

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    add-int v3, v3, v20

    .line 381
    add-int/lit8 v18, v18, 0x1

    .line 382
    if-nez v16, :cond_f

    .line 383
    const/16 v16, 0x1

    .line 384
    :cond_f
    rem-int v4, v18, v16

    if-nez v4, :cond_13

    .line 385
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/c/c;->d:I

    div-int v4, v2, v4

    sub-int/2addr v2, v4

    .line 386
    div-int/lit8 v4, v17, 0x1e

    sub-int v17, v17, v4

    .line 387
    sget v4, Lcom/a/a/c/c;->a:I

    shr-int v8, v17, v4

    .line 388
    const/4 v4, 0x1

    if-gt v8, v4, :cond_10

    .line 389
    const/4 v8, 0x0

    .line 390
    :cond_10
    const/4 v4, 0x0

    :goto_a
    if-ge v4, v8, :cond_13

    .line 391
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/c/c;->l:[I

    mul-int v6, v8, v8

    mul-int v7, v4, v4

    sub-int/2addr v6, v7

    mul-int/lit16 v6, v6, 0x100

    mul-int v7, v8, v8

    div-int/2addr v6, v7

    mul-int/2addr v6, v2

    aput v6, v5, v4

    .line 390
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 357
    :cond_11
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto/16 :goto_7

    .line 398
    :cond_12
    return-void

    :cond_13
    move/from16 v19, v1

    goto/16 :goto_8

    :cond_14
    move v15, v1

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_4

    :cond_15
    move v15, v1

    move/from16 v16, v3

    move/from16 v18, v5

    goto/16 :goto_4

    :cond_16
    move/from16 v3, v16

    goto/16 :goto_5
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/a/a/c/c;->c()V

    .line 473
    invoke-virtual {p0}, Lcom/a/a/c/c;->e()V

    .line 474
    invoke-virtual {p0}, Lcom/a/a/c/c;->b()V

    .line 475
    invoke-virtual {p0}, Lcom/a/a/c/c;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 487
    move v0, v1

    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v2, v2, v0

    aget v3, v2, v1

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v1

    .line 489
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 490
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 491
    iget-object v2, p0, Lcom/a/a/c/c;->h:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_0
    return-void
.end method
