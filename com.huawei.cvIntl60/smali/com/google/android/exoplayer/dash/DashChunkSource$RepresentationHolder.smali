.class public final Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/DashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field public final extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

.field public mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field public final mimeTypeIsRawText:Z

.field private periodDurationUs:J

.field private final periodStartTimeUs:J

.field public representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

.field public segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

.field private segmentNumShift:I


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer/dash/mpd/Representation;)V
    .locals 3

    .prologue
    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput-wide p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodStartTimeUs:J

    .line 886
    iput-wide p3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 887
    iput-object p5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 888
    iget-object v0, p5, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    .line 889
    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->mimeTypeIsRawText:Z

    .line 890
    iget-boolean v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->mimeTypeIsRawText:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 891
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 892
    invoke-virtual {p5}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 893
    return-void

    .line 890
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 891
    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;-><init>()V

    :goto_1
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer/extractor/Extractor;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public getFirstAvailableSegmentNum()I
    .locals 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLastSegmentNum()I
    .locals 4

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v0

    return v0
.end method

.method public getSegmentEndTimeUs(I)J
    .locals 6

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    iget v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v3, p1, v3

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 944
    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 943
    return-wide v0
.end method

.method public getSegmentNum(J)I
    .locals 7

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodStartTimeUs:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSegmentStartTimeUs(I)J
    .locals 4

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodStartTimeUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public isBeyondLastSegment(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 952
    invoke-virtual {p0}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getLastSegmentNum()I

    move-result v1

    .line 953
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v1, v2

    if-le p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateRepresentation(JLcom/google/android/exoplayer/dash/mpd/Representation;)V
    .locals 9

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v0

    .line 898
    invoke-virtual {p3}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v1

    .line 900
    iput-wide p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 901
    iput-object p3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 902
    if-nez v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 908
    invoke-interface {v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v2

    .line 914
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 915
    invoke-interface {v0, v2, v6, v7}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 916
    invoke-interface {v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v4

    .line 917
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v6

    .line 918
    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 920
    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_0

    .line 922
    :cond_2
    cmp-long v1, v2, v6

    if-gez v1, :cond_3

    .line 925
    new-instance v0, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    throw v0

    .line 928
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v6, v7, v2, v3}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_0
.end method
