.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 38
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 39
    return-void
.end method

.method constructor <init>([II)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 44
    iput p2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 45
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    if-le p1, v0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 61
    :cond_0
    return-void
.end method

.method private static makeArray(I)[I
    .locals 1

    .prologue
    .line 323
    add-int/lit8 v0, p0, 0x1f

    div-int/lit8 v0, v0, 0x20

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .locals 5

    .prologue
    .line 217
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v1, v1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 221
    :cond_0
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 222
    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .locals 3

    .prologue
    .line 243
    iget v1, p1, Lcom/google/zxing/common/BitArray;->size:I

    .line 244
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 245
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 246
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 233
    if-ltz p2, :cond_0

    const/16 v0, 0x20

    if-le p2, v0, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Num bits must be between 0 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 237
    :goto_0
    if-lez p2, :cond_3

    .line 238
    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 237
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 238
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 240
    :cond_3
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v0

    move v0, v1

    .line 177
    :goto_0
    if-ge v0, v2, :cond_0

    .line 178
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aput v1, v3, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitArray;
    .locals 3

    .prologue
    .line 354
    new-instance v1, Lcom/google/zxing/common/BitArray;

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->clone()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 328
    instance-of v1, p1, Lcom/google/zxing/common/BitArray;

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 331
    :cond_1
    check-cast p1, Lcom/google/zxing/common/BitArray;

    .line 332
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, p1, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public flip(I)V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 87
    return-void
.end method

.method public get(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 68
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v2, p1, 0x20

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitArray()[I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .locals 4

    .prologue
    .line 96
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v0, :cond_1

    .line 97
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    div-int/lit8 v1, p1, 0x20

    .line 100
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v0, v0, v1

    .line 102
    const/4 v2, 0x1

    and-int/lit8 v3, p1, 0x1f

    shl-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 103
    :goto_1
    if-nez v0, :cond_3

    .line 104
    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    if-ne v1, v0, :cond_2

    .line 105
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v0, v0, v1

    goto :goto_1

    .line 109
    :cond_3
    shl-int/lit8 v1, v1, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 110
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_0
.end method

.method public getNextUnset(I)I
    .locals 4

    .prologue
    .line 119
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v0, :cond_1

    .line 120
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    div-int/lit8 v1, p1, 0x20

    .line 123
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v0, v0, v1

    xor-int/lit8 v0, v0, -0x1

    .line 125
    const/4 v2, 0x1

    and-int/lit8 v3, p1, 0x1f

    shl-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 126
    :goto_1
    if-nez v0, :cond_3

    .line 127
    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    if-ne v1, v0, :cond_2

    .line 128
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v0, v0, v1

    xor-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 132
    :cond_3
    shl-int/lit8 v1, v1, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 133
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    if-lt p2, p1, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le p2, v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 195
    :cond_1
    if-ne p2, p1, :cond_2

    move v0, v1

    .line 213
    :goto_0
    return v0

    .line 198
    :cond_2
    add-int/lit8 v6, p2, -0x1

    .line 199
    div-int/lit8 v5, p1, 0x20

    .line 200
    div-int/lit8 v7, v6, 0x20

    move v4, v5

    .line 201
    :goto_1
    if-gt v4, v7, :cond_7

    .line 202
    if-le v4, v5, :cond_3

    move v3, v2

    .line 203
    :goto_2
    if-ge v4, v7, :cond_4

    const/16 v0, 0x1f

    .line 205
    :goto_3
    const/4 v8, 0x2

    shl-int v0, v8, v0

    shl-int v3, v1, v3

    sub-int/2addr v0, v3

    .line 209
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v4

    and-int/2addr v3, v0

    if-eqz p3, :cond_5

    :goto_4
    if-eq v3, v0, :cond_6

    move v0, v2

    .line 210
    goto :goto_0

    .line 202
    :cond_3
    and-int/lit8 v0, p1, 0x1f

    move v3, v0

    goto :goto_2

    .line 203
    :cond_4
    and-int/lit8 v0, v6, 0x1f

    goto :goto_3

    :cond_5
    move v0, v2

    .line 209
    goto :goto_4

    .line 201
    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_7
    move v0, v1

    .line 213
    goto :goto_0
.end method

.method public reverse()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 294
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    new-array v3, v1, [I

    .line 296
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v4, v1, 0x20

    .line 297
    add-int/lit8 v5, v4, 0x1

    move v1, v2

    .line 298
    :goto_0
    if-ge v1, v5, :cond_0

    .line 299
    iget-object v6, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v6, v6, v1

    int-to-long v6, v6

    .line 300
    shr-long v8, v6, v0

    const-wide/32 v10, 0x55555555

    and-long/2addr v8, v10

    const-wide/32 v10, 0x55555555

    and-long/2addr v6, v10

    shl-long/2addr v6, v0

    or-long/2addr v6, v8

    .line 301
    shr-long v8, v6, v12

    const-wide/32 v10, 0x33333333

    and-long/2addr v8, v10

    const-wide/32 v10, 0x33333333

    and-long/2addr v6, v10

    shl-long/2addr v6, v12

    or-long/2addr v6, v8

    .line 302
    shr-long v8, v6, v13

    const-wide/32 v10, 0xf0f0f0f

    and-long/2addr v8, v10

    const-wide/32 v10, 0xf0f0f0f

    and-long/2addr v6, v10

    shl-long/2addr v6, v13

    or-long/2addr v6, v8

    .line 303
    shr-long v8, v6, v14

    const-wide/32 v10, 0xff00ff

    and-long/2addr v8, v10

    const-wide/32 v10, 0xff00ff

    and-long/2addr v6, v10

    shl-long/2addr v6, v14

    or-long/2addr v6, v8

    .line 304
    const/16 v8, 0x10

    shr-long v8, v6, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const-wide/32 v10, 0xffff

    and-long/2addr v6, v10

    const/16 v10, 0x10

    shl-long/2addr v6, v10

    or-long/2addr v6, v8

    .line 305
    sub-int v8, v4, v1

    long-to-int v6, v6

    aput v6, v3, v8

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_0
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    shl-int/lit8 v4, v5, 0x5

    if-eq v1, v4, :cond_2

    .line 309
    shl-int/lit8 v1, v5, 0x5

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    sub-int v4, v1, v4

    .line 310
    aget v1, v3, v2

    ushr-int/2addr v1, v4

    .line 311
    :goto_1
    if-ge v0, v5, :cond_1

    .line 312
    aget v2, v3, v0

    .line 313
    rsub-int/lit8 v6, v4, 0x20

    shl-int v6, v2, v6

    or-int/2addr v1, v6

    .line 314
    add-int/lit8 v6, v0, -0x1

    aput v1, v3, v6

    .line 315
    ushr-int v1, v2, v4

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    :cond_1
    add-int/lit8 v0, v5, -0x1

    aput v1, v3, v0

    .line 319
    :cond_2
    iput-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 320
    return-void
.end method

.method public set(I)V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 78
    return-void
.end method

.method public setBulk(II)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aput p2, v0, v1

    .line 145
    return-void
.end method

.method public setRange(II)V
    .locals 7

    .prologue
    .line 154
    if-lt p2, p1, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le p2, v0, :cond_1

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 157
    :cond_1
    if-ne p2, p1, :cond_3

    .line 170
    :cond_2
    return-void

    .line 160
    :cond_3
    add-int/lit8 v4, p2, -0x1

    .line 161
    div-int/lit8 v3, p1, 0x20

    .line 162
    div-int/lit8 v5, v4, 0x20

    move v2, v3

    .line 163
    :goto_0
    if-gt v2, v5, :cond_2

    .line 164
    if-le v2, v3, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 165
    :goto_1
    if-ge v2, v5, :cond_5

    const/16 v0, 0x1f

    .line 167
    :goto_2
    const/4 v6, 0x2

    shl-int v0, v6, v0

    const/4 v6, 0x1

    shl-int v1, v6, v1

    sub-int/2addr v0, v1

    .line 168
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v6, v1, v2

    or-int/2addr v0, v6

    aput v0, v1, v2

    .line 163
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 164
    :cond_4
    and-int/lit8 v0, p1, 0x1f

    move v1, v0

    goto :goto_1

    .line 165
    :cond_5
    and-int/lit8 v0, v4, 0x1f

    goto :goto_2
.end method

.method public toBytes(I[BII)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 270
    move v4, v2

    move v3, p1

    :goto_0
    if-ge v4, p4, :cond_2

    move v1, v2

    move v0, v2

    .line 272
    :goto_1
    const/16 v5, 0x8

    if-ge v1, v5, :cond_1

    .line 273
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 274
    const/4 v5, 0x1

    rsub-int/lit8 v6, v1, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    .line 276
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_1
    add-int v1, p3, v4

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 270
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 280
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v0, v1, :cond_2

    .line 344
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 345
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x58

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_1
    const/16 v1, 0x2e

    goto :goto_1

    .line 349
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    .prologue
    .line 251
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v1, p1, Lcom/google/zxing/common/BitArray;->size:I

    if-eq v0, v1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method
