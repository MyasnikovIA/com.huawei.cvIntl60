.class public Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
.super Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegmentTemplate"
.end annotation


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field final initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

.field final mediaTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;)V

    .line 311
    iput-object p10, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    .line 312
    iput-object p11, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    .line 313
    iput-object p12, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->baseUrl:Ljava/lang/String;

    .line 314
    return-void
.end method


# virtual methods
.method public getInitialization(Lcom/google/android/exoplayer/dash/mpd/Representation;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    iget-object v1, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, v3, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    .line 321
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->baseUrl:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 323
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getInitialization(Lcom/google/android/exoplayer/dash/mpd/Representation;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v1

    goto :goto_0
.end method

.method public getLastSegmentNum(J)I
    .locals 5

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 348
    :goto_0
    return v0

    .line 344
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 345
    const/4 v0, -0x1

    goto :goto_0

    .line 347
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->timescale:J

    div-long/2addr v0, v2

    .line 348
    iget v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getSegmentUrl(Lcom/google/android/exoplayer/dash/mpd/Representation;I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 8

    .prologue
    .line 329
    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->startTime:J

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    iget-object v1, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, v2, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    .line 337
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->baseUrl:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1

    .line 333
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    sub-int v0, p2, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    mul-long v4, v0, v2

    goto :goto_0
.end method
