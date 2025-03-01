.class public LGeneralFunction/r/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/r/a$a;
    }
.end annotation


# instance fields
.field final a:I

.field b:LGeneralFunction/r/a$a;

.field private c:Landroid/media/MediaCodec;

.field private d:Landroid/media/AudioRecord;

.field private e:Z

.field private f:J

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(LGeneralFunction/r/a$a;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x32

    iput v0, p0, LGeneralFunction/r/a;->a:I

    .line 36
    iput-boolean v1, p0, LGeneralFunction/r/a;->e:Z

    .line 37
    iput-wide v2, p0, LGeneralFunction/r/a;->f:J

    .line 38
    iput-wide v2, p0, LGeneralFunction/r/a;->g:J

    .line 39
    iput-boolean v1, p0, LGeneralFunction/r/a;->h:Z

    .line 47
    invoke-virtual {p0, p1}, LGeneralFunction/r/a;->a(LGeneralFunction/r/a$a;)V

    .line 48
    invoke-direct {p0}, LGeneralFunction/r/a;->d()V

    .line 49
    invoke-direct {p0}, LGeneralFunction/r/a;->e()V

    .line 50
    return-void
.end method

.method static synthetic a(LGeneralFunction/r/a;J)J
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, LGeneralFunction/r/a;->f:J

    return-wide p1
.end method

.method static synthetic a(LGeneralFunction/r/a;)Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, LGeneralFunction/r/a;->d:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic a(LGeneralFunction/r/a;Landroid/media/MediaCodec;Z)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, LGeneralFunction/r/a;->a(Landroid/media/MediaCodec;Z)V

    return-void
.end method

.method private a(Landroid/media/MediaCodec;Z)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollAudioEncodeOutputAndFeedToMuxer:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move v0, v1

    .line 174
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 175
    rem-int/lit8 v3, v0, 0x64

    if-nez v3, :cond_1

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lTempCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endOfStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    .line 178
    :cond_1
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 179
    const-wide/16 v4, 0x32

    invoke-virtual {p1, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoderStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " endOfStream:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v9}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    .line 181
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 182
    if-nez p2, :cond_0

    .line 244
    :cond_2
    :goto_1
    return-void

    .line 185
    :cond_3
    const/4 v5, -0x3

    if-ne v4, v5, :cond_4

    .line 187
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    .line 188
    :cond_4
    const/4 v5, -0x2

    if-ne v4, v5, :cond_5

    .line 190
    iget-object v0, p0, LGeneralFunction/r/a;->b:LGeneralFunction/r/a$a;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, LGeneralFunction/r/a;->b:LGeneralFunction/r/a$a;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, LGeneralFunction/r/a$a;->a(Landroid/media/MediaFormat;)V

    goto :goto_1

    .line 194
    :cond_5
    if-gez v4, :cond_6

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 199
    :cond_6
    aget-object v5, v2, v4

    .line 200
    if-nez v5, :cond_7

    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_7
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    .line 208
    iput v1, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 212
    :cond_8
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_a

    .line 213
    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v6, v10

    if-gez v6, :cond_9

    .line 214
    iput-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 216
    :cond_9
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v6, v6, [B

    .line 218
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 219
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 220
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    iput v1, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 223
    iget-object v6, p0, LGeneralFunction/r/a;->b:LGeneralFunction/r/a$a;

    if-eqz v6, :cond_a

    .line 224
    iget-object v6, p0, LGeneralFunction/r/a;->b:LGeneralFunction/r/a$a;

    invoke-interface {v6, v5, v3}, LGeneralFunction/r/a$a;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 228
    :cond_a
    invoke-virtual {p1, v4, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 230
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endOfStream:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    .line 232
    if-nez p2, :cond_b

    .line 233
    const-string v0, "reached end of stream unexpectedly"

    invoke-virtual {p0, v0, v1}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 235
    :cond_b
    iget-object v0, p0, LGeneralFunction/r/a;->b:LGeneralFunction/r/a$a;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, LGeneralFunction/r/a;->b:LGeneralFunction/r/a$a;

    invoke-interface {v0}, LGeneralFunction/r/a$a;->a()V

    goto/16 :goto_1
.end method

.method static synthetic b(LGeneralFunction/r/a;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, LGeneralFunction/r/a;->e:Z

    return v0
.end method

.method static synthetic c(LGeneralFunction/r/a;)Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    .line 60
    const-string v0, "mime"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 62
    const-string v0, "sample-rate"

    const v2, 0xac44

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    const-string v0, "channel-count"

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 64
    const-string v0, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    const-string v0, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    :try_start_0
    const-string v0, "audio/mp4a-latm"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 73
    iget-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 75
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(LGeneralFunction/r/a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, LGeneralFunction/r/a;->f()V

    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    .line 78
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 79
    const/16 v5, 0x2800

    .line 80
    if-ge v5, v0, :cond_0

    .line 81
    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit8 v5, v0, 0x2

    .line 83
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, LGeneralFunction/r/a;->d:Landroid/media/AudioRecord;

    .line 89
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, LGeneralFunction/r/a;->d:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, LGeneralFunction/r/a;->d:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/r/a;->d:Landroid/media/AudioRecord;

    .line 259
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, LGeneralFunction/r/a;->d:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/r/a;->e:Z

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LGeneralFunction/r/a;->g:J

    .line 95
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LGeneralFunction/r/a$1;

    invoke-direct {v1, p0}, LGeneralFunction/r/a$1;-><init>(LGeneralFunction/r/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    :cond_0
    return-void
.end method

.method public a(LGeneralFunction/r/a$a;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, LGeneralFunction/r/a;->b:LGeneralFunction/r/a$a;

    .line 265
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 43
    const-string v0, "AudioProcess"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, LGeneralFunction/r/a;->h:Z

    .line 55
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/r/a;->e:Z

    .line 125
    return-void
.end method

.method public b(Z)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/16 v4, 0x800

    const/4 v10, 0x0

    .line 130
    :try_start_0
    iget-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 131
    iget-object v1, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 132
    if-ltz v1, :cond_5

    .line 133
    aget-object v0, v0, v1

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    iget-object v2, p0, LGeneralFunction/r/a;->d:Landroid/media/AudioRecord;

    const/16 v3, 0x800

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 136
    iget-boolean v2, p0, LGeneralFunction/r/a;->h:Z

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 140
    new-array v2, v3, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 143
    :cond_0
    if-eq v3, v4, :cond_1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioInputLength not correct:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    .line 145
    :cond_1
    const/4 v0, -0x3

    if-ne v3, v0, :cond_3

    .line 146
    const-string v0, "Audio read error: invalid operation"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    .line 149
    :cond_2
    :goto_0
    iget-wide v4, p0, LGeneralFunction/r/a;->f:J

    iget-wide v6, p0, LGeneralFunction/r/a;->g:J

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    const-wide/32 v8, 0xac44

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 150
    if-eqz p1, :cond_4

    .line 151
    const-string v0, "EOS received in sendAudioToEncoder"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    .line 152
    iget-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 156
    :goto_1
    iget-wide v0, p0, LGeneralFunction/r/a;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LGeneralFunction/r/a;->g:J

    .line 165
    :goto_2
    return-void

    .line 147
    :cond_3
    const/4 v0, -0x2

    if-ne v3, v0, :cond_2

    .line 148
    const-string v0, "Audio read error: bad value"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v0, "_offerAudioEncoder exception"

    invoke-virtual {p0, v0, v10}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 154
    :cond_4
    :try_start_1
    iget-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 160
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dequeueInputBuffer fail, inputBufferIndex:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endOfStream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public c()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 249
    iget-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/r/a;->c:Landroid/media/MediaCodec;

    .line 252
    :cond_0
    return-void
.end method
