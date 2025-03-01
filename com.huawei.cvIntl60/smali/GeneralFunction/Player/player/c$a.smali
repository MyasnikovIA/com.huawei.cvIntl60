.class LGeneralFunction/Player/player/c$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/player/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/c;

.field private b:Landroid/media/MediaCodec;

.field private c:Landroid/view/Surface;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LGeneralFunction/Player/player/c;Landroid/view/Surface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iput-object p1, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    .line 169
    const-string v0, "MediaCodecThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 156
    const/16 v0, 0x1e

    iput v0, p0, LGeneralFunction/Player/player/c$a;->d:I

    .line 157
    const/16 v0, 0x780

    iput v0, p0, LGeneralFunction/Player/player/c$a;->e:I

    .line 158
    const/16 v0, 0x3c0

    iput v0, p0, LGeneralFunction/Player/player/c$a;->f:I

    .line 159
    iget v0, p0, LGeneralFunction/Player/player/c$a;->d:I

    invoke-direct {p0, v0, v2}, LGeneralFunction/Player/player/c$a;->b(II)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/player/c$a;->g:I

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LGeneralFunction/Player/player/c$a;->h:J

    .line 161
    iput v2, p0, LGeneralFunction/Player/player/c$a;->i:I

    .line 162
    iput-boolean v2, p0, LGeneralFunction/Player/player/c$a;->j:Z

    .line 163
    iput-boolean v2, p0, LGeneralFunction/Player/player/c$a;->k:Z

    .line 164
    iput v2, p0, LGeneralFunction/Player/player/c$a;->l:I

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/player/c$a;->m:Ljava/util/ArrayList;

    .line 170
    iput-object p2, p0, LGeneralFunction/Player/player/c$a;->c:Landroid/view/Surface;

    .line 171
    return-void
.end method

.method private a(J)LGeneralFunction/c/b;
    .locals 7

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 206
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/c/b;

    invoke-virtual {v0}, LGeneralFunction/c/b;->a()J

    move-result-wide v4

    .line 207
    cmp-long v0, v4, p1

    if-gez v0, :cond_0

    .line 209
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frame decode fail:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    move-object v0, v1

    .line 204
    :goto_1
    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    goto :goto_0

    .line 213
    :cond_0
    cmp-long v0, v4, p1

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/c/b;

    .line 216
    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 219
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private b(II)I
    .locals 4

    .prologue
    .line 193
    int-to-float v0, p1

    .line 194
    const/high16 v1, 0x40c00000    # 6.0f

    div-float v1, v0, v1

    .line 195
    const/high16 v2, 0x41700000    # 15.0f

    div-float v2, v0, v2

    .line 196
    int-to-float v3, p2

    div-float v1, v3, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 197
    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method private b()J
    .locals 2

    .prologue
    .line 223
    iget v0, p0, LGeneralFunction/Player/player/c$a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LGeneralFunction/Player/player/c$a;->i:I

    .line 224
    iget v0, p0, LGeneralFunction/Player/player/c$a;->i:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private c(II)Landroid/media/MediaFormat;
    .locals 3

    .prologue
    .line 229
    const-string v0, "video/avc"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 230
    const-string v1, "frame-rate"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 231
    return-object v0
.end method

.method private d(II)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 238
    :try_start_0
    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 247
    invoke-direct {p0, p1, p2}, LGeneralFunction/Player/player/c$a;->c(II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 250
    :try_start_1
    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :goto_1
    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->c:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->c:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    iget-object v3, p0, LGeneralFunction/Player/player/c$a;->c:Landroid/view/Surface;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 256
    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 264
    :goto_2
    return v0

    .line 240
    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 251
    :catch_1
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 260
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surface is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/Player/player/c$a;->c:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 261
    const/4 v0, -0x1

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/c$a;->k:Z

    .line 188
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 175
    iput p1, p0, LGeneralFunction/Player/player/c$a;->d:I

    .line 176
    iget v0, p0, LGeneralFunction/Player/player/c$a;->d:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/player/c$a;->b(II)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/player/c$a;->g:I

    .line 177
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, LGeneralFunction/Player/player/c$a;->e:I

    .line 182
    iput p2, p0, LGeneralFunction/Player/player/c$a;->f:I

    .line 183
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    .line 269
    .line 270
    const/4 v5, 0x0

    .line 271
    const/4 v4, 0x0

    .line 272
    const/4 v3, 0x0

    .line 275
    const/4 v2, 0x0

    .line 277
    iget v0, p0, LGeneralFunction/Player/player/c$a;->e:I

    iget v1, p0, LGeneralFunction/Player/player/c$a;->f:I

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/player/c$a;->c(II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 280
    :try_start_0
    const-string v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->c:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    iget-object v6, p0, LGeneralFunction/Player/player/c$a;->c:Landroid/view/Surface;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 286
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 293
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 294
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;I)I

    .line 296
    :cond_0
    :goto_1
    iget-boolean v0, p0, LGeneralFunction/Player/player/c$a;->k:Z

    if-nez v0, :cond_9

    .line 299
    :try_start_1
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->b(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->b(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v6, 0x32

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 301
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 334
    :cond_1
    :goto_2
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->c(LGeneralFunction/Player/player/c;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 348
    :pswitch_0
    iget-boolean v0, p0, LGeneralFunction/Player/player/c$a;->j:Z

    if-nez v0, :cond_10

    .line 350
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_10

    .line 351
    :cond_2
    if-nez v2, :cond_15

    .line 354
    :try_start_2
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v6, 0x32

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 355
    :try_start_3
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, LGeneralFunction/c/d;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_9

    .line 356
    :try_start_4
    invoke-virtual {v1}, LGeneralFunction/c/d;->a()[B

    move-result-object v4

    invoke-static {v4}, LGeneralFunction/e;->b([B)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_a

    move-result v4

    if-eqz v4, :cond_8

    .line 359
    const/4 v2, 0x1

    move v7, v2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    .line 373
    :goto_3
    :try_start_5
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x32

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v1

    .line 381
    if-ltz v1, :cond_16

    .line 383
    if-eqz v3, :cond_a

    .line 386
    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/c/d;

    .line 387
    const/4 v2, 0x0

    move-object v8, v2

    move-object v9, v0

    move-object v10, v3

    .line 400
    :goto_4
    invoke-virtual {v10}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 401
    const-string v2, "width"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 402
    const-string v3, "height"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 403
    const-string v3, "needReinitial"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 404
    iget v5, p0, LGeneralFunction/Player/player/c$a;->e:I

    if-ne v2, v5, :cond_3

    iget v5, p0, LGeneralFunction/Player/player/c$a;->f:I

    if-ne v4, v5, :cond_3

    if-eqz v3, :cond_d

    .line 405
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-configure reason:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, LGeneralFunction/Player/player/c$a;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, LGeneralFunction/Player/player/c$a;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 406
    iput v2, p0, LGeneralFunction/Player/player/c$a;->e:I

    .line 407
    iput v4, p0, LGeneralFunction/Player/player/c$a;->f:I

    .line 408
    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 409
    iget v1, p0, LGeneralFunction/Player/player/c$a;->e:I

    iget v2, p0, LGeneralFunction/Player/player/c$a;->f:I

    invoke-direct {p0, v1, v2}, LGeneralFunction/Player/player/c$a;->d(II)I

    move-result v1

    if-gez v1, :cond_b

    .line 575
    :cond_4
    :goto_5
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 290
    :cond_5
    const-string v0, "surface is null!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    goto :goto_5

    .line 304
    :pswitch_1
    :try_start_6
    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v1}, LGeneralFunction/Player/player/c;->c(LGeneralFunction/Player/player/c;)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_6

    .line 306
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 307
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    iget v0, p0, LGeneralFunction/Player/player/c$a;->e:I

    iget v1, p0, LGeneralFunction/Player/player/c$a;->f:I

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/player/c$a;->d(II)I

    move-result v0

    if-ltz v0, :cond_4

    .line 311
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    const/4 v1, 0x2

    invoke-static {v0, v1}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;I)I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 330
    :catch_1
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 315
    :cond_6
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in not correct status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v1}, LGeneralFunction/Player/player/c;->c(LGeneralFunction/Player/player/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 319
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->c(LGeneralFunction/Player/player/c;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 321
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;I)I

    goto/16 :goto_2

    .line 325
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restart in not correct status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v1}, LGeneralFunction/Player/player/c;->c(LGeneralFunction/Player/player/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 341
    :pswitch_3
    const-wide/16 v0, 0x1e

    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 342
    :catch_2
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 363
    :cond_8
    :try_start_9
    const-string v4, "Wait first I frame..."

    const/4 v5, 0x3

    invoke-static {v4, v5}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 364
    invoke-virtual {v1}, LGeneralFunction/c/d;->d()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_a

    move-object v4, v1

    move-object v5, v0

    .line 365
    goto/16 :goto_1

    .line 367
    :catch_3
    move-exception v6

    move-object v1, v4

    move-object v0, v5

    .line 368
    :goto_6
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v7, v2

    move-object v4, v1

    move-object v5, v0

    goto/16 :goto_3

    .line 375
    :catch_4
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 554
    :cond_9
    :goto_7
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 556
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/c/d;

    .line 557
    invoke-virtual {v0}, LGeneralFunction/c/d;->d()V

    goto :goto_8

    .line 392
    :cond_a
    :try_start_a
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v8, 0x32

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v8, v9, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5

    .line 393
    :try_start_b
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, LGeneralFunction/c/d;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_8

    move-object v8, v3

    move-object v9, v2

    move-object v10, v0

    .line 396
    goto/16 :goto_4

    .line 394
    :catch_5
    move-exception v2

    move-object v0, v5

    .line 395
    :goto_9
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v8, v3

    move-object v9, v4

    move-object v10, v0

    goto/16 :goto_4

    .line 412
    :cond_b
    invoke-virtual {v9}, LGeneralFunction/c/d;->a()[B

    move-result-object v1

    invoke-static {v1}, LGeneralFunction/e;->b([B)Z

    move-result v1

    if-nez v1, :cond_c

    .line 414
    const-string v1, "Re-configure and first frame is not I frame"

    const/4 v2, 0x1

    invoke-static {v1, v2}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 415
    const/4 v7, 0x0

    .line 421
    :goto_a
    const-string v1, "needReinitial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 422
    const-string v0, "Re-configure done"

    const/4 v1, 0x2

    invoke-static {v0, v1}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 423
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/Player/player/c$a;->l:I

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    .line 424
    goto/16 :goto_1

    :cond_c
    move-object v8, v10

    .line 419
    goto :goto_a

    .line 427
    :cond_d
    invoke-virtual {v9}, LGeneralFunction/c/d;->a()[B

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/e;->b([B)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 429
    iget v0, p0, LGeneralFunction/Player/player/c$a;->l:I

    const/16 v3, 0xf

    if-eq v0, v3, :cond_e

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "H264 decode GOP count gap:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, LGeneralFunction/Player/player/c$a;->l:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 433
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/Player/player/c$a;->l:I

    .line 435
    :cond_f
    iget v0, p0, LGeneralFunction/Player/player/c$a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LGeneralFunction/Player/player/c$a;->l:I

    .line 437
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 439
    iget v3, p0, LGeneralFunction/Player/player/c$a;->d:I

    iget-object v5, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v5}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-direct {p0, v3, v5}, LGeneralFunction/Player/player/c$a;->b(II)I

    move-result v3

    iput v3, p0, LGeneralFunction/Player/player/c$a;->g:I

    .line 441
    iget v3, v9, LGeneralFunction/c/d;->a:I

    .line 444
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 445
    invoke-virtual {v9}, LGeneralFunction/c/d;->a()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 446
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 448
    new-instance v5, LGeneralFunction/c/b;

    invoke-direct {v5}, LGeneralFunction/c/b;-><init>()V

    .line 449
    invoke-virtual {v5, v2}, LGeneralFunction/c/b;->a(I)V

    .line 450
    invoke-virtual {v5, v4}, LGeneralFunction/c/b;->b(I)V

    .line 451
    invoke-direct {p0}, LGeneralFunction/Player/player/c$a;->b()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, LGeneralFunction/c/b;->a(J)V

    .line 452
    iget-wide v12, v9, LGeneralFunction/c/d;->b:J

    iput-wide v12, v5, LGeneralFunction/c/b;->a:J

    .line 453
    iget-wide v12, v9, LGeneralFunction/c/d;->c:J

    iput-wide v12, v5, LGeneralFunction/c/b;->b:J

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v5, LGeneralFunction/c/b;->c:J

    .line 455
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual {v9}, LGeneralFunction/c/d;->d()V

    .line 459
    if-gtz v3, :cond_13

    .line 461
    const-string v0, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    const/4 v2, 0x0

    invoke-static {v0, v2}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 462
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v5}, LGeneralFunction/c/b;->a()J

    move-result-wide v4

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/c$a;->j:Z

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    .line 474
    :cond_10
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, LGeneralFunction/Player/player/c$a;->h:J

    sub-long/2addr v0, v6

    .line 476
    iget-boolean v0, p0, LGeneralFunction/Player/player/c$a;->k:Z

    if-nez v0, :cond_9

    .line 485
    :try_start_c
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x32

    invoke-virtual {v0, v11, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_6

    move-result v1

    .line 494
    const/4 v0, 0x0

    .line 495
    packed-switch v1, :pswitch_data_2

    .line 506
    const/4 v0, 0x1

    .line 510
    :goto_c
    :pswitch_4
    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, LGeneralFunction/Player/player/c$a;->h:J

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get lPresentationTimeUs:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x4

    invoke-static {v0, v6}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 514
    iget-wide v6, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v6, v7}, LGeneralFunction/Player/player/c$a;->a(J)LGeneralFunction/c/b;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_11

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, LGeneralFunction/c/b;->d:J

    .line 537
    :cond_11
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 538
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;J)J

    .line 539
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->d(LGeneralFunction/Player/player/c;)J

    move-result-wide v0

    iget-object v6, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v6}, LGeneralFunction/Player/player/c;->e(LGeneralFunction/Player/player/c;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    .line 541
    iget-object v6, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v6}, LGeneralFunction/Player/player/c;->e(LGeneralFunction/Player/player/c;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_12

    .line 543
    iget-object v6, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v6}, LGeneralFunction/Player/player/c;->f(LGeneralFunction/Player/player/c;)J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gez v6, :cond_12

    .line 545
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@-------endTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v7}, LGeneralFunction/Player/player/c;->d(LGeneralFunction/Player/player/c;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@-------startTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v7}, LGeneralFunction/Player/player/c;->e(LGeneralFunction/Player/player/c;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@-------maXDecodeDurationTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 547
    iget-object v6, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v6, v0, v1}, LGeneralFunction/Player/player/c;->b(LGeneralFunction/Player/player/c;J)J

    .line 550
    :cond_12
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, LGeneralFunction/Player/player/c;->c(LGeneralFunction/Player/player/c;J)J

    goto/16 :goto_1

    .line 467
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set lPresentationTimeUs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, LGeneralFunction/c/b;->a()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 468
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v5}, LGeneralFunction/c/b;->a()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    goto/16 :goto_b

    .line 487
    :catch_6
    move-exception v0

    .line 490
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_7

    .line 497
    :pswitch_5
    const-string v6, "INFO_OUTPUT_BUFFERS_CHANGED"

    const/4 v7, 0x4

    invoke-static {v6, v7}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 500
    :pswitch_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 560
    :cond_14
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "objBufferQueue Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v1}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, LGeneralFunction/Player/player/c;->a(Ljava/lang/String;I)V

    .line 562
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    invoke-static {v0}, LGeneralFunction/Player/player/c;->b(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 566
    :try_start_d
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7

    .line 573
    :goto_d
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 574
    iget-object v0, p0, LGeneralFunction/Player/player/c$a;->a:LGeneralFunction/Player/player/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/Player/player/c;I)I

    goto/16 :goto_5

    .line 568
    :catch_7
    move-exception v0

    .line 571
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_d

    .line 394
    :catch_8
    move-exception v2

    goto/16 :goto_9

    .line 367
    :catch_9
    move-exception v5

    move-object v6, v5

    move-object v1, v4

    goto/16 :goto_6

    :catch_a
    move-exception v4

    move-object v6, v4

    goto/16 :goto_6

    :cond_15
    move v7, v2

    goto/16 :goto_3

    :cond_16
    move v2, v7

    goto/16 :goto_b

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 334
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 495
    :pswitch_data_2
    .packed-switch -0x3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
