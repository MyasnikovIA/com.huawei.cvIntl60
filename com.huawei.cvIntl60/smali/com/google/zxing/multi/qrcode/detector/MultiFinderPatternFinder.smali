.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 98
    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 15

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v6

    .line 108
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 110
    const/4 v0, 0x3

    if-ge v7, v0, :cond_0

    .line 112
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 118
    :cond_0
    const/4 v0, 0x3

    if-ne v7, v0, :cond_1

    .line 119
    const/4 v0, 0x1

    new-array v1, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v3, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v3, v4

    const/4 v4, 0x1

    const/4 v0, 0x1

    .line 122
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const/4 v0, 0x2

    .line 123
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v3, v4

    aput-object v3, v1, v2

    move-object v0, v1

    .line 224
    :goto_0
    return-object v0

    .line 129
    :cond_1
    new-instance v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 148
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    add-int/lit8 v0, v7, -0x2

    if-ge v5, v0, :cond_7

    .line 149
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 150
    if-eqz v0, :cond_6

    .line 154
    add-int/lit8 v1, v5, 0x1

    move v4, v1

    :goto_2
    add-int/lit8 v1, v7, -0x1

    if-ge v4, v1, :cond_6

    .line 155
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 156
    if-eqz v1, :cond_5

    .line 161
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    sub-float/2addr v2, v3

    .line 162
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v2, v3

    .line 163
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 164
    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v9

    if-lez v3, :cond_2

    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_6

    .line 170
    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v3, v2

    :goto_3
    if-ge v3, v7, :cond_5

    .line 171
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 172
    if-eqz v2, :cond_4

    .line 177
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    sub-float/2addr v9, v10

    .line 178
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    div-float/2addr v9, v10

    .line 179
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 180
    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    const v10, 0x3d4ccccd    # 0.05f

    cmpl-float v9, v9, v10

    if-gez v9, :cond_5

    .line 186
    :cond_3
    const/4 v9, 0x3

    new-array v9, v9, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    .line 187
    invoke-static {v9}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 190
    new-instance v2, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v2, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 191
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v10

    .line 192
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v11

    .line 193
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v12

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 196
    add-float v12, v10, v2

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    .line 197
    const/high16 v13, 0x43340000    # 180.0f

    cmpl-float v13, v12, v13

    if-gtz v13, :cond_4

    const/high16 v13, 0x41100000    # 9.0f

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_4

    .line 203
    sub-float v12, v10, v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v13

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 204
    const v13, 0x3dcccccd    # 0.1f

    cmpl-float v12, v12, v13

    if-gez v12, :cond_4

    .line 209
    mul-float/2addr v10, v10

    mul-float/2addr v2, v2

    add-float/2addr v2, v10

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 211
    sub-float v10, v11, v2

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 213
    const v10, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v10

    if-gez v2, :cond_4

    .line 218
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_3

    .line 154
    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_2

    .line 148
    :cond_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    .line 223
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 224
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    goto/16 :goto_0

    .line 228
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .prologue
    .line 232
    if-eqz p1, :cond_3

    sget-object v0, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    .line 233
    :goto_0
    if-eqz p1, :cond_4

    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 234
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    .line 235
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 236
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 244
    int-to-float v1, v6

    const/high16 v3, 0x43640000    # 228.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 245
    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    if-eqz v2, :cond_1

    .line 246
    :cond_0
    const/4 v1, 0x3

    .line 249
    :cond_1
    const/4 v2, 0x5

    new-array v8, v2, [I

    .line 250
    add-int/lit8 v2, v1, -0x1

    move v4, v2

    :goto_2
    if-ge v4, v6, :cond_b

    .line 252
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v8, v2

    .line 253
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v8, v2

    .line 254
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v8, v2

    .line 255
    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v8, v2

    .line 256
    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v8, v2

    .line 257
    const/4 v2, 0x0

    .line 258
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_9

    .line 259
    invoke-virtual {v5, v3, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 261
    and-int/lit8 v9, v2, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 262
    add-int/lit8 v2, v2, 0x1

    .line 264
    :cond_2
    aget v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    .line 258
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 232
    :cond_3
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 233
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 266
    :cond_5
    and-int/lit8 v9, v2, 0x1

    if-nez v9, :cond_8

    .line 267
    const/4 v9, 0x4

    if-ne v2, v9, :cond_7

    .line 268
    invoke-static {v8}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v8, v4, v3, v0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 270
    const/4 v2, 0x0

    .line 271
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 272
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 273
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 274
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 275
    const/4 v9, 0x4

    const/4 v10, 0x0

    aput v10, v8, v9

    goto :goto_4

    .line 277
    :cond_6
    const/4 v2, 0x0

    const/4 v9, 0x2

    aget v9, v8, v9

    aput v9, v8, v2

    .line 278
    const/4 v2, 0x1

    const/4 v9, 0x3

    aget v9, v8, v9

    aput v9, v8, v2

    .line 279
    const/4 v2, 0x2

    const/4 v9, 0x4

    aget v9, v8, v9

    aput v9, v8, v2

    .line 280
    const/4 v2, 0x3

    const/4 v9, 0x1

    aput v9, v8, v2

    .line 281
    const/4 v2, 0x4

    const/4 v9, 0x0

    aput v9, v8, v2

    .line 282
    const/4 v2, 0x3

    goto :goto_4

    .line 285
    :cond_7
    add-int/lit8 v2, v2, 0x1

    aget v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    goto :goto_4

    .line 288
    :cond_8
    aget v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    goto :goto_4

    .line 293
    :cond_9
    invoke-static {v8}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 294
    invoke-virtual {p0, v8, v4, v7, v0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    .line 250
    :cond_a
    add-int v2, v4, v1

    move v4, v2

    goto/16 :goto_2

    .line 297
    :cond_b
    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v1

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 299
    array-length v3, v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v3, :cond_c

    aget-object v4, v1, v0

    .line 300
    invoke-static {v4}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 301
    new-instance v5, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v5, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 304
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 305
    sget-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 307
    :goto_6
    return-object v0

    :cond_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    goto :goto_6
.end method
