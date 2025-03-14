.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field private static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    .line 47
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 55
    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    .line 47
    :array_0
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 63
    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 267
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 268
    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 269
    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 270
    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 274
    .line 275
    const/4 v3, 0x0

    .line 276
    add-int/lit8 v0, p1, -0x1

    move v2, v0

    move v4, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 277
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    mul-int/2addr v0, v4

    add-int/2addr v3, v0

    .line 278
    add-int/lit8 v0, v4, 0x1

    if-le v0, p2, :cond_0

    move v0, v1

    .line 276
    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v4, v0

    goto :goto_0

    .line 282
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v2, v3, 0x2f

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_2

    .line 283
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 285
    :cond_2
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x4f

    const/4 v1, 0x0

    const/16 v7, 0x5a

    const/16 v6, 0x41

    .line 198
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    .line 200
    :goto_0
    if-ge v2, v3, :cond_b

    .line 201
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 202
    const/16 v5, 0x61

    if-lt v0, v5, :cond_a

    const/16 v5, 0x64

    if-gt v0, v5, :cond_a

    .line 203
    add-int/lit8 v5, v3, -0x1

    if-lt v2, v5, :cond_0

    .line 204
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 206
    :cond_0
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 208
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 256
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v0, v2, 0x1

    .line 200
    :goto_2
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 211
    :pswitch_0
    if-lt v5, v6, :cond_1

    if-gt v5, v7, :cond_1

    .line 212
    add-int/lit8 v0, v5, 0x20

    int-to-char v0, v0

    goto :goto_1

    .line 214
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 219
    :pswitch_1
    if-lt v5, v6, :cond_2

    if-gt v5, v7, :cond_2

    .line 220
    add-int/lit8 v0, v5, -0x40

    int-to-char v0, v0

    goto :goto_1

    .line 222
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 226
    :pswitch_2
    if-lt v5, v6, :cond_3

    const/16 v0, 0x45

    if-gt v5, v0, :cond_3

    .line 228
    add-int/lit8 v0, v5, -0x26

    int-to-char v0, v0

    goto :goto_1

    .line 229
    :cond_3
    const/16 v0, 0x46

    if-lt v5, v0, :cond_4

    const/16 v0, 0x4a

    if-gt v5, v0, :cond_4

    .line 231
    add-int/lit8 v0, v5, -0xb

    int-to-char v0, v0

    goto :goto_1

    .line 232
    :cond_4
    const/16 v0, 0x4b

    if-lt v5, v0, :cond_5

    if-gt v5, v8, :cond_5

    .line 234
    add-int/lit8 v0, v5, 0x10

    int-to-char v0, v0

    goto :goto_1

    .line 235
    :cond_5
    const/16 v0, 0x50

    if-lt v5, v0, :cond_6

    const/16 v0, 0x53

    if-gt v5, v0, :cond_6

    .line 237
    add-int/lit8 v0, v5, 0x2b

    int-to-char v0, v0

    goto :goto_1

    .line 238
    :cond_6
    const/16 v0, 0x54

    if-lt v5, v0, :cond_7

    if-gt v5, v7, :cond_7

    .line 240
    const/16 v0, 0x7f

    goto :goto_1

    .line 242
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 247
    :pswitch_3
    if-lt v5, v6, :cond_8

    if-gt v5, v8, :cond_8

    .line 248
    add-int/lit8 v0, v5, -0x20

    int-to-char v0, v0

    goto :goto_1

    .line 249
    :cond_8
    if-ne v5, v7, :cond_9

    .line 250
    const/16 v0, 0x3a

    goto :goto_1

    .line 252
    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 260
    :cond_a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_2

    .line 263
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 133
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v6

    .line 135
    iget-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([II)V

    .line 136
    iget-object v8, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 139
    array-length v9, v8

    move v5, v6

    move v0, v4

    move v2, v4

    move v1, v6

    .line 142
    :goto_0
    if-ge v5, v7, :cond_4

    .line 143
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_0

    .line 144
    aget v6, v8, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v8, v0

    .line 142
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    :cond_0
    add-int/lit8 v6, v9, -0x1

    if-ne v0, v6, :cond_2

    .line 147
    invoke-static {v8}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v6

    sget v10, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-ne v6, v10, :cond_1

    .line 148
    new-array v0, v11, [I

    aput v1, v0, v4

    aput v5, v0, v3

    return-object v0

    .line 150
    :cond_1
    aget v6, v8, v4

    aget v10, v8, v3

    add-int/2addr v6, v10

    add-int/2addr v1, v6

    .line 151
    add-int/lit8 v6, v9, -0x2

    invoke-static {v8, v11, v8, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/lit8 v6, v9, -0x2

    aput v4, v8, v6

    .line 153
    add-int/lit8 v6, v9, -0x1

    aput v4, v8, v6

    .line 154
    add-int/lit8 v0, v0, -0x1

    .line 158
    :goto_2
    aput v3, v8, v0

    .line 159
    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    .line 156
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v4

    .line 159
    goto :goto_1

    .line 162
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static patternToChar(I)C
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 190
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 191
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v0, v1, v0

    return v0

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static toPattern([I)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 166
    .line 167
    array-length v3, p0

    move v0, v2

    move v4, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget v1, p0, v0

    .line 168
    add-int/2addr v1, v4

    .line 167
    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_0

    .line 171
    :cond_0
    array-length v5, p0

    move v3, v2

    move v0, v2

    .line 172
    :goto_1
    if-ge v3, v5, :cond_2

    .line 173
    aget v1, p0, v3

    int-to-float v1, v1

    const/high16 v6, 0x41100000    # 9.0f

    mul-float/2addr v1, v6

    int-to-float v6, v4

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 174
    if-lez v6, :cond_1

    const/4 v1, 0x4

    if-le v6, v1, :cond_3

    .line 175
    :cond_1
    const/4 v0, -0x1

    .line 185
    :cond_2
    return v0

    .line 177
    :cond_3
    and-int/lit8 v1, v3, 0x1

    if-nez v1, :cond_4

    move v1, v2

    .line 178
    :goto_2
    if-ge v1, v6, :cond_5

    .line 179
    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x1

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 182
    :cond_4
    shl-int/2addr v0, v6

    .line 172
    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v4

    .line 71
    const/4 v0, 0x1

    aget v0, v4, v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 72
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 74
    iget-object v6, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 75
    const/4 v1, 0x0

    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([II)V

    .line 76
    iget-object v7, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    :goto_0
    invoke-static {p2, v0, v6}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 83
    invoke-static {v6}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v1

    .line 84
    if-gez v1, :cond_0

    .line 85
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 87
    :cond_0
    invoke-static {v1}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v3

    .line 88
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    array-length v8, v6

    const/4 v1, 0x0

    move v2, v0

    :goto_1
    if-ge v1, v8, :cond_1

    aget v9, v6, v1

    .line 91
    add-int/2addr v2, v9

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p2, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    .line 95
    const/16 v2, 0x2a

    if-ne v3, v2, :cond_6

    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    const/4 v3, 0x0

    .line 99
    array-length v8, v6

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_2

    aget v9, v6, v2

    .line 100
    add-int/2addr v3, v9

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 104
    :cond_2
    if-eq v1, v5, :cond_3

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 105
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 108
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 110
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 113
    :cond_5
    invoke-static {v7}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 117
    invoke-static {v7}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 119
    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 120
    int-to-float v0, v0

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 121
    new-instance v3, Lcom/google/zxing/Result;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p1

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v2, 0x1

    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, p1

    invoke-direct {v6, v0, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v5, v2

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v3, v1, v4, v5, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method
