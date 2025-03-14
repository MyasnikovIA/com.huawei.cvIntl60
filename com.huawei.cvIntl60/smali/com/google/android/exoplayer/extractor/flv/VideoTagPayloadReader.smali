.class final Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;
.super Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;
    }
.end annotation


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final VIDEO_CODEC_AVC:I = 0x7

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private frameType:I

.field private hasOutputFormat:Z

.field private final nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 60
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 61
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 62
    return-void
.end method

.method private parseAvcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 145
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 146
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x1

    .line 147
    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v4, v0, 0x1f

    move v0, v3

    .line 150
    :goto_1
    if-ge v0, v4, :cond_1

    .line 151
    invoke-static {p1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    .line 147
    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    move v0, v3

    .line 154
    :goto_2
    if-ge v0, v5, :cond_2

    .line 155
    invoke-static {p1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 161
    if-lez v4, :cond_3

    .line 163
    new-instance v4, Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 165
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 166
    invoke-static {v4}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v0

    .line 167
    iget v3, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->width:I

    .line 168
    iget v4, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->height:I

    .line 169
    iget v5, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    .line 172
    :goto_3
    new-instance v0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;-><init>(Ljava/util/List;IIIF)V

    return-object v0

    :cond_3
    move v4, v6

    move v3, v6

    goto :goto_3
.end method


# virtual methods
.method protected parseHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 72
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 73
    and-int/lit8 v0, v0, 0xf

    .line 75
    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 76
    new-instance v1, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->frameType:I

    .line 79
    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parsePayload(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    .line 86
    int-to-long v4, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    add-long v8, p2, v4

    .line 88
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v3, :cond_1

    .line 89
    new-instance v1, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    .line 90
    iget-object v3, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {p1, v3, v6, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 92
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->parseAvcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;

    move-result-object v3

    .line 93
    iget v1, v3, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->nalUnitLengthFieldLength:I

    iput v1, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    .line 96
    const-string v1, "video/avc"

    .line 97
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->getDurationUs()J

    move-result-wide v4

    iget v6, v3, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->width:I

    iget v7, v3, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->height:I

    iget-object v8, v3, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->initializationData:Ljava/util/List;

    iget v10, v3, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->pixelWidthAspectRatio:F

    move v3, v2

    move v9, v2

    .line 96
    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 101
    iput-boolean v11, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-ne v1, v11, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 107
    aput-byte v6, v1, v6

    .line 108
    aput-byte v6, v1, v11

    .line 109
    const/4 v2, 0x2

    aput-byte v6, v1, v2

    .line 110
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v1, v1, 0x4

    move v5, v6

    .line 116
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 119
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 120
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 123
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 124
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v7, 0x4

    invoke-interface {v3, v4, v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 125
    add-int/lit8 v3, v5, 0x4

    .line 128
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v4, p1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 129
    add-int v5, v3, v2

    goto :goto_1

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v2, v11, :cond_3

    move v4, v11

    :goto_2
    move-wide v2, v8

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_2
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
