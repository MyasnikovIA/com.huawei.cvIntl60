.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v5

    .line 53
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v6

    .line 54
    array-length v3, v6

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v6, v0

    .line 55
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-array v8, v2, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    .line 61
    array-length v7, v6

    move v4, v1

    move v2, v1

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v9, v6, v4

    move v0, v1

    .line 62
    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 63
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v10

    .line 64
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v3

    add-int v11, v3, v10

    .line 65
    add-int/lit8 v3, v2, 0x1

    new-instance v12, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v11, v11, [B

    invoke-direct {v12, v10, v11}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v12, v8, v2

    .line 62
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2

    .line 61
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 72
    :cond_2
    aget-object v0, v8, v1

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v0, v0

    .line 75
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v3

    sub-int v3, v0, v3

    .line 76
    add-int/lit8 v7, v3, -0x1

    move v5, v1

    move v6, v1

    .line 80
    :goto_3
    if-ge v5, v7, :cond_4

    move v0, v1

    .line 81
    :goto_4
    if-ge v0, v2, :cond_3

    .line 82
    aget-object v4, v8, v0

    iget-object v9, v4, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v9, v5

    .line 81
    add-int/lit8 v0, v0, 0x1

    move v6, v4

    goto :goto_4

    .line 80
    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    .line 87
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v0

    const/16 v4, 0x18

    if-ne v0, v4, :cond_5

    const/4 v0, 0x1

    move v7, v0

    .line 88
    :goto_5
    if-eqz v7, :cond_6

    const/16 v0, 0x8

    :goto_6
    move v4, v1

    .line 89
    :goto_7
    if-ge v4, v0, :cond_7

    .line 90
    aget-object v5, v8, v4

    iget-object v9, v5, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v10, v3, -0x1

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v9, v10

    .line 89
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    goto :goto_7

    :cond_5
    move v7, v1

    .line 87
    goto :goto_5

    :cond_6
    move v0, v2

    .line 88
    goto :goto_6

    .line 94
    :cond_7
    aget-object v0, v8, v1

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v9, v0

    move v0, v6

    .line 95
    :goto_8
    if-ge v3, v9, :cond_b

    move v5, v1

    move v6, v0

    .line 96
    :goto_9
    if-ge v5, v2, :cond_a

    .line 97
    if-eqz v7, :cond_8

    add-int/lit8 v0, v5, 0x8

    rem-int/2addr v0, v2

    move v4, v0

    .line 98
    :goto_a
    if-eqz v7, :cond_9

    const/4 v0, 0x7

    if-le v4, v0, :cond_9

    add-int/lit8 v0, v3, -0x1

    .line 99
    :goto_b
    aget-object v4, v8, v4

    iget-object v10, v4, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v10, v0

    .line 96
    add-int/lit8 v5, v5, 0x1

    move v6, v4

    goto :goto_9

    :cond_8
    move v4, v5

    .line 97
    goto :goto_a

    :cond_9
    move v0, v3

    .line 98
    goto :goto_b

    .line 95
    :cond_a
    add-int/lit8 v3, v3, 0x1

    move v0, v6

    goto :goto_8

    .line 103
    :cond_b
    array-length v1, p0

    if-eq v0, v1, :cond_c

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 107
    :cond_c
    return-object v8
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
