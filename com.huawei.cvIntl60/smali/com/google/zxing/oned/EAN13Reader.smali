.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "SourceFile"


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 69
    return-void
.end method

.method private static determineFirstDigit(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 129
    move v0, v1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 130
    sget-object v2, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 131
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 132
    return-void

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 75
    iget-object v5, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 76
    aput v1, v5, v1

    .line 77
    aput v1, v5, v10

    .line 78
    const/4 v0, 0x2

    aput v1, v5, v0

    .line 79
    const/4 v0, 0x3

    aput v1, v5, v0

    .line 80
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 81
    aget v3, p2, v10

    move v4, v1

    move v0, v1

    .line 85
    :goto_0
    if-ge v4, v11, :cond_2

    if-ge v3, v6, :cond_2

    .line 86
    sget-object v2, Lcom/google/zxing/oned/EAN13Reader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v5, v3, v2}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v7

    .line 87
    rem-int/lit8 v2, v7, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    array-length v8, v5

    move v2, v1

    :goto_1
    if-ge v2, v8, :cond_0

    aget v9, v5, v2

    .line 89
    add-int/2addr v3, v9

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_0
    const/16 v2, 0xa

    if-lt v7, v2, :cond_1

    .line 92
    rsub-int/lit8 v2, v4, 0x5

    shl-int v2, v10, v2

    or-int/2addr v0, v2

    .line 85
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {p3, v0}, Lcom/google/zxing/oned/EAN13Reader;->determineFirstDigit(Ljava/lang/StringBuilder;I)V

    .line 98
    sget-object v0, Lcom/google/zxing/oned/EAN13Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v3, v10, v0}, Lcom/google/zxing/oned/EAN13Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    .line 99
    aget v2, v0, v10

    move v3, v1

    .line 101
    :goto_2
    if-ge v3, v11, :cond_4

    if-ge v2, v6, :cond_4

    .line 102
    sget-object v0, Lcom/google/zxing/oned/EAN13Reader;->L_PATTERNS:[[I

    invoke-static {p1, v5, v2, v0}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 103
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    array-length v4, v5

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_3

    aget v7, v5, v0

    .line 105
    add-int/2addr v2, v7

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 101
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 109
    :cond_4
    return v2
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
