.class public LGeneralFunction/r/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/r/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:LGeneralFunction/r/c;

.field private e:Landroid/media/MediaMuxer;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:LGeneralFunction/r/b$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    .line 30
    iput-object v0, p0, LGeneralFunction/r/b;->b:Ljava/lang/String;

    .line 31
    iput-object v0, p0, LGeneralFunction/r/b;->c:Ljava/lang/String;

    .line 32
    iput-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    .line 33
    iput-object v0, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    .line 34
    iput-object v0, p0, LGeneralFunction/r/b;->f:Landroid/os/HandlerThread;

    .line 35
    iput-object v0, p0, LGeneralFunction/r/b;->g:Landroid/os/Handler;

    .line 36
    iput-boolean v2, p0, LGeneralFunction/r/b;->h:Z

    .line 38
    iput-object v0, p0, LGeneralFunction/r/b;->i:LGeneralFunction/r/b$a;

    .line 46
    iput-object p1, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    .line 47
    iput-boolean p2, p0, LGeneralFunction/r/b;->h:Z

    .line 48
    iput-object p3, p0, LGeneralFunction/r/b;->b:Ljava/lang/String;

    .line 49
    iput-object p4, p0, LGeneralFunction/r/b;->c:Ljava/lang/String;

    .line 50
    new-instance v0, LGeneralFunction/r/c;

    invoke-direct {v0}, LGeneralFunction/r/c;-><init>()V

    iput-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    .line 51
    invoke-direct {p0}, LGeneralFunction/r/b;->c()V

    .line 52
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, LGeneralFunction/r/b;->a(IJ)V

    .line 54
    return-void
.end method

.method static synthetic a(LGeneralFunction/r/b;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, LGeneralFunction/r/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 176
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    :try_start_0
    new-instance v2, Landroid/media/MediaMuxer;

    iget-object v3, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    iget-object v2, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_1

    move v0, v1

    .line 193
    :cond_1
    iget-object v1, p0, LGeneralFunction/r/b;->i:LGeneralFunction/r/b$a;

    invoke-interface {v1, v0}, LGeneralFunction/r/b$a;->a(Z)V

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaMuxer init fail with IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    .line 183
    iget-object v1, p0, LGeneralFunction/r/b;->i:LGeneralFunction/r/b$a;

    invoke-interface {v1, v0}, LGeneralFunction/r/b$a;->a(Z)V

    goto :goto_0

    .line 186
    :catch_1
    move-exception v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaMuxer init fail with IllegalArgumentException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    .line 189
    iget-object v1, p0, LGeneralFunction/r/b;->i:LGeneralFunction/r/b$a;

    invoke-interface {v1, v0}, LGeneralFunction/r/b$a;->a(Z)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v2, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    if-nez v2, :cond_2

    .line 197
    const-string v1, "MSG_RECORDING_ADD_VIDEO_TRACK fail: muxer == null"

    invoke-static {v1, v0}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, v2, LGeneralFunction/r/c;->b:Landroid/media/MediaFormat;

    .line 201
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-object v0, v0, LGeneralFunction/r/c;->b:Landroid/media/MediaFormat;

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v0, v0, LGeneralFunction/r/c;->d:I

    if-gez v0, :cond_3

    .line 204
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-object v2, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    iget-object v3, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-object v3, v3, LGeneralFunction/r/c;->b:Landroid/media/MediaFormat;

    invoke-virtual {v2, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, v0, LGeneralFunction/r/c;->d:I

    .line 207
    :cond_3
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v0, v0, LGeneralFunction/r/c;->c:I

    if-ltz v0, :cond_0

    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v0, v0, LGeneralFunction/r/c;->d:I

    if-ltz v0, :cond_0

    .line 208
    iget-object v0, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 209
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iput-boolean v1, v0, LGeneralFunction/r/c;->i:Z

    goto/16 :goto_0

    .line 213
    :pswitch_2
    iget-object v2, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    if-nez v2, :cond_4

    .line 214
    const-string v1, "MSG_RECORDING_ADD_AUDIO_TRACK fail: muxer == null"

    invoke-static {v1, v0}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 217
    :cond_4
    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, v2, LGeneralFunction/r/c;->a:Landroid/media/MediaFormat;

    .line 218
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-object v0, v0, LGeneralFunction/r/c;->a:Landroid/media/MediaFormat;

    if-eqz v0, :cond_5

    iget-object v0, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_5

    .line 220
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v0, v0, LGeneralFunction/r/c;->c:I

    if-gez v0, :cond_5

    .line 221
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-object v2, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    iget-object v3, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-object v3, v3, LGeneralFunction/r/c;->a:Landroid/media/MediaFormat;

    invoke-virtual {v2, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, v0, LGeneralFunction/r/c;->c:I

    .line 224
    :cond_5
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v0, v0, LGeneralFunction/r/c;->c:I

    if-ltz v0, :cond_0

    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v0, v0, LGeneralFunction/r/c;->d:I

    if-ltz v0, :cond_0

    .line 225
    iget-object v0, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 226
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iput-boolean v1, v0, LGeneralFunction/r/c;->i:Z

    goto/16 :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/r/d;

    .line 232
    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-boolean v1, v1, LGeneralFunction/r/c;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-boolean v1, v1, LGeneralFunction/r/c;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, LGeneralFunction/r/d;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-wide v4, v1, LGeneralFunction/r/c;->k:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 233
    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v2, v1, LGeneralFunction/r/c;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LGeneralFunction/r/c;->e:I

    .line 234
    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v1, v1, LGeneralFunction/r/c;->c:I

    iput v1, v0, LGeneralFunction/r/d;->a:I

    .line 235
    iget-object v1, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    iget v2, v0, LGeneralFunction/r/d;->a:I

    iget-object v3, v0, LGeneralFunction/r/d;->b:Ljava/nio/ByteBuffer;

    iget-object v0, v0, LGeneralFunction/r/d;->c:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_0

    .line 241
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/r/d;

    .line 242
    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-boolean v2, v2, LGeneralFunction/r/c;->i:Z

    if-eqz v2, :cond_8

    .line 243
    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-boolean v2, v2, LGeneralFunction/r/c;->j:Z

    if-nez v2, :cond_7

    .line 244
    iget-object v2, v0, LGeneralFunction/r/d;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 245
    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iput-boolean v1, v2, LGeneralFunction/r/c;->j:Z

    .line 246
    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-object v2, v0, LGeneralFunction/r/d;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, v1, LGeneralFunction/r/c;->k:J

    .line 248
    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v2, v1, LGeneralFunction/r/c;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LGeneralFunction/r/c;->f:I

    .line 249
    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v1, v1, LGeneralFunction/r/c;->d:I

    iput v1, v0, LGeneralFunction/r/d;->a:I

    .line 250
    iget-object v1, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    iget v2, v0, LGeneralFunction/r/d;->a:I

    iget-object v3, v0, LGeneralFunction/r/d;->b:Ljava/nio/ByteBuffer;

    iget-object v0, v0, LGeneralFunction/r/d;->c:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 252
    iget-object v0, p0, LGeneralFunction/r/b;->i:LGeneralFunction/r/b$a;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, LGeneralFunction/r/b;->i:LGeneralFunction/r/b$a;

    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-wide v2, v1, LGeneralFunction/r/c;->k:J

    invoke-interface {v0, v2, v3}, LGeneralFunction/r/b$a;->a(J)V

    goto/16 :goto_0

    .line 257
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputVideoFrame Fail: First I frame not ready!!! Skip this frame.  TimeStamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, LGeneralFunction/r/d;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 262
    :cond_7
    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v2, v1, LGeneralFunction/r/c;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LGeneralFunction/r/c;->f:I

    .line 263
    iget-object v1, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v1, v1, LGeneralFunction/r/c;->d:I

    iput v1, v0, LGeneralFunction/r/d;->a:I

    .line 264
    iget-object v1, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    iget v2, v0, LGeneralFunction/r/d;->a:I

    iget-object v3, v0, LGeneralFunction/r/d;->b:Ljava/nio/ByteBuffer;

    iget-object v0, v0, LGeneralFunction/r/d;->c:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_0

    .line 268
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputVideoFrame Fail: Muxer not ready!!! Skip this frame.  TimeStamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, LGeneralFunction/r/d;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 274
    :pswitch_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_c

    .line 275
    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iput-boolean v1, v2, LGeneralFunction/r/c;->h:Z

    .line 278
    :goto_1
    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-boolean v2, v2, LGeneralFunction/r/c;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-boolean v2, v2, LGeneralFunction/r/c;->h:Z

    if-eqz v2, :cond_0

    .line 282
    :try_start_1
    invoke-direct {p0}, LGeneralFunction/r/b;->d()V

    .line 283
    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v2, v2, LGeneralFunction/r/c;->f:I

    if-eqz v2, :cond_d

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createThumbnail Start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    .line 286
    invoke-direct {p0}, LGeneralFunction/r/b;->e()V

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createThumbnail End, addMetaDataInfo Start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    .line 288
    invoke-direct {p0}, LGeneralFunction/r/b;->f()V

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMetaDataInfo End: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 300
    :goto_2
    if-eqz v0, :cond_a

    .line 302
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 305
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    .line 307
    :cond_a
    iget-object v0, p0, LGeneralFunction/r/b;->i:LGeneralFunction/r/b$a;

    if-eqz v0, :cond_b

    .line 308
    iget-object v0, p0, LGeneralFunction/r/b;->i:LGeneralFunction/r/b$a;

    iget-object v1, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LGeneralFunction/r/b$a;->a(Ljava/lang/String;)V

    .line 310
    :cond_b
    iget-object v0, p0, LGeneralFunction/r/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_0

    .line 277
    :cond_c
    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iput-boolean v1, v2, LGeneralFunction/r/c;->g:Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    .line 293
    goto :goto_2

    .line 295
    :catch_2
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 297
    const-string v0, "Muxer Stop Fail"

    invoke-static {v0, v6}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    move v0, v1

    .line 298
    goto :goto_2

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "Mp4Muxer"

    invoke-static {v0, p0, p1}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecordingServer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LGeneralFunction/r/b;->f:Landroid/os/HandlerThread;

    .line 146
    iget-object v0, p0, LGeneralFunction/r/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v0, LGeneralFunction/r/b$1;

    iget-object v1, p0, LGeneralFunction/r/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LGeneralFunction/r/b$1;-><init>(LGeneralFunction/r/b;Landroid/os/Looper;)V

    iput-object v0, p0, LGeneralFunction/r/b;->g:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget-boolean v0, v0, LGeneralFunction/r/c;->i:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 324
    :cond_0
    iget-object v0, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/r/b;->e:Landroid/media/MediaMuxer;

    .line 326
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iput-boolean v1, v0, LGeneralFunction/r/c;->i:Z

    .line 327
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iput-boolean v1, v0, LGeneralFunction/r/c;->j:Z

    .line 329
    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    invoke-static {v0}, LGeneralFunction/g/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    iget-object v1, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, LGeneralFunction/g/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    const-string v0, "Original File Not Exist!"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 362
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    new-instance v0, LGeneralFunction/s/a;

    invoke-direct {v0}, LGeneralFunction/s/a;-><init>()V

    .line 366
    new-instance v1, LGeneralFunction/s/b;

    invoke-direct {v1}, LGeneralFunction/s/b;-><init>()V

    .line 367
    iget-object v2, p0, LGeneralFunction/r/b;->b:Ljava/lang/String;

    iput-object v2, v1, LGeneralFunction/s/b;->a:Ljava/lang/String;

    .line 368
    iget-object v2, p0, LGeneralFunction/r/b;->c:Ljava/lang/String;

    iput-object v2, v1, LGeneralFunction/s/b;->b:Ljava/lang/String;

    .line 369
    iget-object v2, p0, LGeneralFunction/r/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LGeneralFunction/s/a;->a(Ljava/lang/String;LGeneralFunction/s/b;)I

    move-result v0

    .line 370
    if-eqz v0, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMetaDataInfo fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const-string v0, "Original File Not Exist!"

    invoke-static {v0, v3}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-boolean v1, p0, LGeneralFunction/r/b;->h:Z

    if-nez v1, :cond_0

    .line 81
    const-string v1, "Should not do FinishAudioTrack."

    invoke-static {v1, v0}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    .line 82
    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    .line 84
    :cond_0
    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, LGeneralFunction/r/b;->a(IJ)V

    goto :goto_0
.end method

.method public a(Landroid/media/MediaFormat;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-boolean v1, p0, LGeneralFunction/r/b;->h:Z

    if-nez v1, :cond_0

    .line 59
    const-string v1, "Should not do AddAudioTrack."

    invoke-static {v1, v0}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    .line 60
    const/4 v0, -0x1

    .line 66
    :goto_0
    return v0

    .line 62
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 63
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 64
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, LGeneralFunction/r/b;->a(Landroid/os/Message;J)V

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 93
    iget-boolean v2, p0, LGeneralFunction/r/b;->h:Z

    if-nez v2, :cond_0

    .line 95
    const-string v2, "Should not do InputAudioFrame."

    invoke-static {v2, v1}, LGeneralFunction/r/b;->a(Ljava/lang/String;I)V

    .line 103
    :goto_0
    return v0

    .line 98
    :cond_0
    new-instance v2, LGeneralFunction/r/d;

    invoke-direct {v2, v0, p1, p2}, LGeneralFunction/r/d;-><init>(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 99
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 100
    const/4 v3, 0x4

    iput v3, v0, Landroid/os/Message;->what:I

    .line 101
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, LGeneralFunction/r/b;->a(Landroid/os/Message;J)V

    move v0, v1

    .line 103
    goto :goto_0
.end method

.method public a([BIJZ)I
    .locals 9

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v2, 0x0

    .line 108
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 111
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 112
    if-eqz p5, :cond_0

    .line 113
    iget-object v2, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v2, v2, LGeneralFunction/r/c;->l:I

    array-length v3, p1

    iget-object v4, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iget v4, v4, LGeneralFunction/r/c;->l:I

    sub-int/2addr v3, v4

    mul-long v4, p3, v6

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 116
    :goto_0
    invoke-virtual {p0, v0, v1}, LGeneralFunction/r/b;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    return v0

    .line 115
    :cond_0
    mul-long v4, p3, v6

    move v3, p2

    move v6, v2

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, LGeneralFunction/r/b;->d:LGeneralFunction/r/c;

    iput p1, v0, LGeneralFunction/r/c;->l:I

    .line 76
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 158
    iput p1, v0, Landroid/os/Message;->what:I

    .line 159
    invoke-virtual {p0, v0, p2, p3}, LGeneralFunction/r/b;->a(Landroid/os/Message;J)V

    .line 160
    return-void
.end method

.method public a(LGeneralFunction/r/b$a;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, LGeneralFunction/r/b;->i:LGeneralFunction/r/b$a;

    .line 384
    return-void
.end method

.method public a(Landroid/os/Message;J)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, LGeneralFunction/r/b;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 164
    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)I
    .locals 4

    .prologue
    .line 120
    new-instance v0, LGeneralFunction/r/d;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1, p2}, LGeneralFunction/r/d;-><init>(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 121
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 122
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 123
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, LGeneralFunction/r/b;->a(Landroid/os/Message;J)V

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x6

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, LGeneralFunction/r/b;->a(IJ)V

    .line 89
    return-void
.end method

.method public b(Landroid/media/MediaFormat;)V
    .locals 4

    .prologue
    .line 69
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 70
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 71
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, LGeneralFunction/r/b;->a(Landroid/os/Message;J)V

    .line 73
    return-void
.end method
