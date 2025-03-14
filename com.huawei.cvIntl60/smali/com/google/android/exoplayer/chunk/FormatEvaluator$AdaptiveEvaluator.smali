.class public final Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/FormatEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/chunk/FormatEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdaptiveEvaluator"
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_INITIAL_BITRATE:I = 0xc3500

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxInitialBitrate:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V
    .locals 7

    .prologue
    const/16 v4, 0x61a8

    .line 175
    const v2, 0xc3500

    const/16 v3, 0x2710

    const/high16 v6, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;IIIIF)V

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;IIIIF)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .line 204
    iput p2, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->maxInitialBitrate:I

    .line 205
    int-to-long v0, p3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->minDurationForQualityIncreaseUs:J

    .line 206
    int-to-long v0, p4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->maxDurationForQualityDecreaseUs:J

    .line 207
    int-to-long v0, p5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->minDurationToRetainAfterDiscardUs:J

    .line 208
    iput p6, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->bandwidthFraction:F

    .line 209
    return-void
.end method

.method private determineIdealFormat([Lcom/google/android/exoplayer/chunk/Format;J)Lcom/google/android/exoplayer/chunk/Format;
    .locals 6

    .prologue
    .line 269
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->maxInitialBitrate:I

    int-to-long v0, v0

    .line 271
    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 272
    aget-object v3, p1, v2

    .line 273
    iget v4, v3, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    int-to-long v4, v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    move-object v0, v3

    .line 278
    :goto_2
    return-object v0

    .line 269
    :cond_0
    long-to-float v0, p2

    iget v1, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->bandwidthFraction:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_0

    .line 271
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    goto :goto_2
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J[",
            "Lcom/google/android/exoplayer/chunk/Format;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 224
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    .line 226
    :goto_0
    iget-object v3, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 227
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v4}, Lcom/google/android/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v6

    invoke-direct {p0, p4, v6, v7}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->determineIdealFormat([Lcom/google/android/exoplayer/chunk/Format;J)Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v4

    .line 228
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget v6, v4, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget v7, v3, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    if-le v6, v7, :cond_3

    move v6, v2

    .line 229
    :goto_1
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget v7, v4, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget v8, v3, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    if-ge v7, v8, :cond_0

    move v5, v2

    .line 230
    :cond_0
    if-eqz v6, :cond_7

    .line 231
    iget-wide v6, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->minDurationForQualityIncreaseUs:J

    cmp-long v5, v0, v6

    if-gez v5, :cond_4

    move-object v0, v3

    .line 259
    :goto_2
    if-eqz v3, :cond_1

    if-eq v0, v3, :cond_1

    .line 260
    const/4 v1, 0x3

    iput v1, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    .line 262
    :cond_1
    iput-object v0, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 263
    return-void

    .line 225
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/MediaChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->endTimeUs:J

    sub-long/2addr v0, p2

    goto :goto_0

    :cond_3
    move v6, v5

    .line 228
    goto :goto_1

    .line 235
    :cond_4
    iget-wide v6, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->minDurationToRetainAfterDiscardUs:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_8

    move v1, v2

    .line 239
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 240
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 241
    iget-wide v6, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v6, p2

    .line 242
    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->minDurationToRetainAfterDiscardUs:J

    cmp-long v2, v6, v8

    if-ltz v2, :cond_6

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget v5, v4, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    if-ge v2, v5, :cond_6

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/Format;->height:I

    iget v5, v4, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-ge v2, v5, :cond_6

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/Format;->height:I

    const/16 v5, 0x2d0

    if-ge v2, v5, :cond_6

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    const/16 v2, 0x500

    if-ge v0, v2, :cond_6

    .line 248
    iput v1, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    :cond_5
    move-object v0, v4

    .line 239
    goto :goto_2

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 253
    :cond_7
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    iget-wide v6, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->maxDurationForQualityDecreaseUs:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_8

    move-object v0, v3

    .line 257
    goto :goto_2

    :cond_8
    move-object v0, v4

    goto :goto_2
.end method
