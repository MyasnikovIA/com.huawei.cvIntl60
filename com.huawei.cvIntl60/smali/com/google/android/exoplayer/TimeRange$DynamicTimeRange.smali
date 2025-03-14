.class public final Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/TimeRange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/TimeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicTimeRange"
.end annotation


# instance fields
.field private final bufferDepthUs:J

.field private final elapsedRealtimeAtStartUs:J

.field private final maxEndTimeUs:J

.field private final minStartTimeUs:J

.field private final systemClock:Lcom/google/android/exoplayer/util/Clock;


# direct methods
.method public constructor <init>(JJJJLcom/google/android/exoplayer/util/Clock;)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-wide p1, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    .line 137
    iput-wide p3, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    .line 138
    iput-wide p5, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    .line 139
    iput-wide p7, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    .line 140
    iput-object p9, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    .line 141
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 187
    if-ne p1, p0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 191
    goto :goto_0

    .line 193
    :cond_3
    check-cast p1, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;

    .line 194
    iget-wide v2, p1, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getCurrentBoundsMs([J)[J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->getCurrentBoundsUs([J)[J

    move-result-object v0

    .line 151
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    div-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 152
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    div-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 153
    return-object v0
.end method

.method public getCurrentBoundsUs([J)[J
    .locals 8

    .prologue
    const/4 v1, 0x2

    .line 158
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 159
    :cond_0
    new-array p1, v1, [J

    .line 162
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    .line 163
    invoke-interface {v2}, Lcom/google/android/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    sub-long/2addr v2, v4

    .line 162
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 164
    iget-wide v0, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    .line 165
    iget-wide v4, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 167
    iget-wide v4, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    sub-long v4, v2, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 170
    :cond_2
    const/4 v4, 0x0

    aput-wide v0, p1, v4

    .line 171
    const/4 v0, 0x1

    aput-wide v2, p1, v0

    .line 172
    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 177
    .line 178
    iget-wide v0, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 179
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 182
    return v0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method
