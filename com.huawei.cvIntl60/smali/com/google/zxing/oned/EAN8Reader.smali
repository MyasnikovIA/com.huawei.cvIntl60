.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "SourceFile"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 40
    iget-object v4, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 41
    aput v1, v4, v1

    .line 42
    aput v1, v4, v8

    .line 43
    const/4 v0, 0x2

    aput v1, v4, v0

    .line 44
    const/4 v0, 0x3

    aput v1, v4, v0

    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 46
    aget v2, p2, v8

    move v3, v1

    .line 48
    :goto_0
    if-ge v3, v9, :cond_1

    if-ge v2, v5, :cond_1

    .line 49
    sget-object v0, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v4, v2, v0}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 50
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    array-length v6, v4

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget v7, v4, v0

    .line 52
    add-int/2addr v2, v7

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v2, v8, v0}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    .line 57
    aget v2, v0, v8

    move v3, v1

    .line 59
    :goto_2
    if-ge v3, v9, :cond_3

    if-ge v2, v5, :cond_3

    .line 60
    sget-object v0, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v4, v2, v0}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 61
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    array-length v6, v4

    move v0, v1

    :goto_3
    if-ge v0, v6, :cond_2

    aget v7, v4, v0

    .line 63
    add-int/2addr v2, v7

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 59
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 67
    :cond_3
    return v2
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
