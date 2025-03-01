.class final Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# static fields
.field private static final MAX_SAMPLE_SIZE:I = 0x2000


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rechunk(I[J[IJ)Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    .locals 19

    .prologue
    .line 57
    const/16 v2, 0x2000

    div-int v13, v2, p0

    .line 60
    const/4 v3, 0x0

    .line 61
    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    move v7, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, p2, v2

    .line 62
    invoke-static {v3, v13}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v3

    add-int/2addr v3, v7

    .line 61
    add-int/lit8 v2, v2, 0x1

    move v7, v3

    goto :goto_0

    .line 65
    :cond_0
    new-array v3, v7, [J

    .line 66
    new-array v4, v7, [I

    .line 67
    const/4 v5, 0x0

    .line 68
    new-array v6, v7, [J

    .line 69
    new-array v7, v7, [I

    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v10, v0

    if-ge v2, v10, :cond_2

    .line 74
    aget v12, p2, v2

    .line 75
    aget-wide v10, p1, v2

    .line 77
    :goto_2
    if-lez v12, :cond_1

    .line 78
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 80
    aput-wide v10, v3, v8

    .line 81
    mul-int v15, p0, v14

    aput v15, v4, v8

    .line 82
    aget v15, v4, v8

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 83
    int-to-long v0, v9

    move-wide/from16 v16, v0

    mul-long v16, v16, p3

    aput-wide v16, v6, v8

    .line 84
    const/4 v15, 0x1

    aput v15, v7, v8

    .line 86
    aget v15, v4, v8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v10, v10, v16

    .line 87
    add-int/2addr v9, v14

    .line 89
    sub-int/2addr v12, v14

    .line 90
    add-int/lit8 v8, v8, 0x1

    .line 91
    goto :goto_2

    .line 73
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[I)V

    return-object v2
.end method
