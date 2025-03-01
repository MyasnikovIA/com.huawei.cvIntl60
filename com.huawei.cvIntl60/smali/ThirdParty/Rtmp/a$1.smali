.class LThirdParty/Rtmp/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LThirdParty/Rtmp/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LThirdParty/Rtmp/a;


# direct methods
.method constructor <init>(LThirdParty/Rtmp/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2003

    if-eq v0, v1, :cond_0

    .line 185
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;Ljava/util/Timer;)Ljava/util/Timer;

    .line 186
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, LThirdParty/Rtmp/a$1$1;

    invoke-direct {v1, p0}, LThirdParty/Rtmp/a$1$1;-><init>(LThirdParty/Rtmp/a$1;)V

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x7530

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 207
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2002

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2001

    if-eq v0, v1, :cond_1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rtmpStreamerThread: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    .line 213
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v9, v10

    .line 421
    :cond_2
    :goto_0
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1, v9}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;II)V

    .line 422
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 425
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;Ljava/util/Timer;)Ljava/util/Timer;

    .line 427
    :cond_3
    return-void

    .line 217
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 218
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0, v9}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;I)I

    .line 219
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0, v9}, LThirdParty/Rtmp/a;->b(LThirdParty/Rtmp/a;I)I

    .line 220
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0, v9}, LThirdParty/Rtmp/a;->c(LThirdParty/Rtmp/a;I)I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TEST] init:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v1}, LThirdParty/Rtmp/a;->e(LThirdParty/Rtmp/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v1}, LThirdParty/Rtmp/a;->f(LThirdParty/Rtmp/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v1}, LThirdParty/Rtmp/a;->g(LThirdParty/Rtmp/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v1}, LThirdParty/Rtmp/a;->h(LThirdParty/Rtmp/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v1}, LThirdParty/Rtmp/a;->i(LThirdParty/Rtmp/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v1}, LThirdParty/Rtmp/a;->j(LThirdParty/Rtmp/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v1}, LThirdParty/Rtmp/a;->k(LThirdParty/Rtmp/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v1}, LThirdParty/Rtmp/a;->l(LThirdParty/Rtmp/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    .line 222
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v1}, LThirdParty/Rtmp/a;->e(LThirdParty/Rtmp/a;)I

    move-result v1

    iget-object v2, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v2}, LThirdParty/Rtmp/a;->f(LThirdParty/Rtmp/a;)I

    move-result v2

    iget-object v3, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v3}, LThirdParty/Rtmp/a;->g(LThirdParty/Rtmp/a;)I

    move-result v3

    iget-object v4, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v4}, LThirdParty/Rtmp/a;->h(LThirdParty/Rtmp/a;)[B

    move-result-object v4

    iget-object v5, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v5}, LThirdParty/Rtmp/a;->i(LThirdParty/Rtmp/a;)I

    move-result v5

    iget-object v6, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v6}, LThirdParty/Rtmp/a;->j(LThirdParty/Rtmp/a;)I

    move-result v6

    iget-object v7, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v7}, LThirdParty/Rtmp/a;->k(LThirdParty/Rtmp/a;)I

    move-result v7

    iget-object v8, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v8}, LThirdParty/Rtmp/a;->l(LThirdParty/Rtmp/a;)I

    move-result v8

    invoke-static/range {v0 .. v8}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;III[BIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v9

    .line 230
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtmpInit spend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    move v9, v0

    .line 231
    goto/16 :goto_0

    :cond_4
    move v0, v10

    .line 228
    goto :goto_1

    .line 235
    :pswitch_1
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->m(LThirdParty/Rtmp/a;)LGeneralFunction/j;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 236
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->n(LThirdParty/Rtmp/a;)I

    .line 237
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->m(LThirdParty/Rtmp/a;)LGeneralFunction/j;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 239
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->o(LThirdParty/Rtmp/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->p(LThirdParty/Rtmp/a;)I

    move-result v0

    const/16 v1, 0x96

    if-lt v0, v1, :cond_5

    .line 243
    const-string v0, "[RTMP DEBUG] lPendingVideoMsg >= 150"

    invoke-static {v0, v6}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    .line 244
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0, v7}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;Z)Z

    .line 251
    :cond_5
    new-instance v1, La/c/a;

    invoke-direct {v1, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 253
    const-string v0, "streamVideoData"

    invoke-virtual {v1, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 255
    const-string v0, "streamVideoData"

    invoke-virtual {v1, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/c/d;

    .line 257
    iget v2, v0, LGeneralFunction/c/d;->a:I

    .line 258
    invoke-virtual {v0}, LGeneralFunction/c/d;->a()[B

    move-result-object v3

    .line 259
    const-string v0, "streamVideoPts"

    invoke-virtual {v1, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    .line 266
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->q(LThirdParty/Rtmp/a;)I

    .line 290
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->r(LThirdParty/Rtmp/a;)I

    .line 292
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->s(LThirdParty/Rtmp/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 294
    invoke-static {v3}, LGeneralFunction/e;->b([B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->p(LThirdParty/Rtmp/a;)I

    move-result v0

    const/16 v4, 0x78

    if-gt v0, v4, :cond_2

    .line 296
    const-string v0, "[RTMP DEBUG] bIsDropFrame = false"

    invoke-static {v0, v6}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    .line 297
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0, v9}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;Z)Z

    .line 306
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 307
    invoke-static {v3, v2, v1}, LThirdParty/Rtmp/RtmpFunc;->encodeVideoFrame([BII)I

    move-result v0

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TEST] encodeVideoFrame:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v7}, LThirdParty/Rtmp/a;->t(LThirdParty/Rtmp/a;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, LGeneralFunction/e;->b([B)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 310
    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    iget-object v6, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v6}, LThirdParty/Rtmp/a;->u(LThirdParty/Rtmp/a;)J

    move-result-wide v6

    sub-long/2addr v2, v4

    add-long/2addr v2, v6

    invoke-static {v1, v2, v3}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;J)J

    .line 311
    iget-object v1, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v1}, LThirdParty/Rtmp/a;->v(LThirdParty/Rtmp/a;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_7

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v2}, LThirdParty/Rtmp/a;->v(LThirdParty/Rtmp/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v2}, LThirdParty/Rtmp/a;->u(LThirdParty/Rtmp/a;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",average:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v2}, LThirdParty/Rtmp/a;->u(LThirdParty/Rtmp/a;)J

    move-result-wide v2

    iget-object v4, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v4}, LThirdParty/Rtmp/a;->v(LThirdParty/Rtmp/a;)I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    .line 337
    :cond_7
    if-gez v0, :cond_2

    move v9, v0

    .line 339
    goto/16 :goto_0

    .line 348
    :cond_8
    const-string v0, "messageEx.getCustomData(STREAM_VIDEO_DATA_KEY) == null"

    invoke-static {v0, v6}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    move v9, v10

    .line 349
    goto/16 :goto_0

    :cond_9
    move v9, v10

    .line 357
    goto/16 :goto_0

    .line 361
    :pswitch_2
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->o(LThirdParty/Rtmp/a;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 367
    new-instance v1, La/c/a;

    invoke-direct {v1, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 369
    const-string v0, "streamAudioData"

    invoke-virtual {v1, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 371
    const-string v0, "streamAudioData"

    invoke-virtual {v1, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/c/d;

    .line 373
    iget v2, v0, LGeneralFunction/c/d;->a:I

    .line 374
    invoke-virtual {v0}, LGeneralFunction/c/d;->a()[B

    move-result-object v0

    .line 375
    const-string v3, "streamAudioPts"

    invoke-virtual {v1, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    .line 376
    iget-object v3, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v3}, LThirdParty/Rtmp/a;->w(LThirdParty/Rtmp/a;)I

    .line 377
    iget-object v3, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v3}, LThirdParty/Rtmp/a;->s(LThirdParty/Rtmp/a;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v9

    .line 385
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TEST] encodeAudioFrame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v3}, LThirdParty/Rtmp/a;->x(LThirdParty/Rtmp/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    .line 387
    if-gez v0, :cond_b

    :goto_3
    move v9, v0

    .line 401
    goto/16 :goto_0

    .line 383
    :cond_a
    invoke-static {v0, v2, v1}, LThirdParty/Rtmp/RtmpFunc;->encodeAudioFrame([BII)I

    move-result v0

    goto :goto_2

    :cond_b
    move v0, v9

    .line 393
    goto :goto_3

    .line 398
    :cond_c
    const-string v0, "messageEx.getCustomData(STREAM_AAC_DATA_KEY) == null"

    invoke-static {v0, v6}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    move v0, v10

    .line 399
    goto :goto_3

    :cond_d
    move v9, v10

    .line 407
    goto/16 :goto_0

    .line 411
    :pswitch_3
    const-string v0, "BARRY MSG_LIVE_STREAMING_RTMP_STREAMER_DESTORY"

    invoke-static {v0, v9}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    .line 412
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->o(LThirdParty/Rtmp/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->c(LThirdParty/Rtmp/a;)V

    goto/16 :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x2000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
