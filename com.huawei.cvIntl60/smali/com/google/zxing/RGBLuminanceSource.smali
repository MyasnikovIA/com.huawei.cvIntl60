.class public final Lcom/google/zxing/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "SourceFile"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final luminances:[B

.field private final top:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 37
    iput p1, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 38
    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 39
    iput v0, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 40
    iput v0, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 46
    mul-int v1, p1, p2

    .line 47
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 48
    :goto_0
    if-ge v0, v1, :cond_0

    .line 49
    aget v2, p3, v0

    .line 50
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 51
    shr-int/lit8 v4, v2, 0x7

    and-int/lit16 v4, v4, 0x1fe

    .line 52
    and-int/lit16 v2, v2, 0xff

    .line 54
    iget-object v5, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 66
    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 70
    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 71
    iput p3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 72
    iput p4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 73
    iput p5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 74
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 8

    .prologue
    .line 127
    new-instance v0, Lcom/google/zxing/RGBLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iget v4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int/2addr v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/RGBLuminanceSource;-><init>([BIIIIII)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v3

    .line 93
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v4

    .line 97
    iget v0, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v3, v0, :cond_1

    iget v0, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    if-ne v4, v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    mul-int v5, v3, v4

    .line 102
    new-array v0, v5, [B

    .line 103
    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    iget v6, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v6

    iget v6, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v2, v6

    .line 106
    iget v6, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v3, v6, :cond_2

    .line 107
    iget-object v3, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    invoke-static {v3, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 112
    :cond_2
    :goto_1
    if-ge v1, v4, :cond_0

    .line 113
    mul-int v5, v1, v3

    .line 114
    iget-object v6, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    invoke-static {v6, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    add-int/2addr v2, v5

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getRow(I[B)[B
    .locals 4

    .prologue
    .line 78
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested row is outside the image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v0

    .line 82
    if-eqz p2, :cond_2

    array-length v1, p2

    if-ge v1, v0, :cond_3

    .line 83
    :cond_2
    new-array p2, v0, [B

    .line 85
    :cond_3
    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v1, v2

    .line 86
    iget-object v2, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object p2
.end method

.method public isCropSupported()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method
