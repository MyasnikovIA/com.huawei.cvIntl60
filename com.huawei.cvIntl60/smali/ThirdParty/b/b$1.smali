.class LThirdParty/b/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LThirdParty/b/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LThirdParty/b/b;


# direct methods
.method constructor <init>(LThirdParty/b/b;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    const/16 v3, 0x14

    const/4 v12, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x3

    .line 224
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 226
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] youtubeApiServerHandler: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 451
    :cond_0
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1006

    if-eq v0, v1, :cond_2

    .line 453
    if-eq v10, v12, :cond_1

    .line 455
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1, v10}, LThirdParty/b/b;->a(LThirdParty/b/b;II)V

    .line 457
    :cond_1
    if-nez v10, :cond_c

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1005

    if-eq v0, v1, :cond_c

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_c

    .line 459
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->s(LThirdParty/b/b;)LThirdParty/b/b$a;

    move-result-object v0

    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->c(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->d(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LThirdParty/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_2
    :goto_1
    return-void

    .line 231
    :pswitch_0
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 232
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DEBUG] YM MSG_YOUTUBE_CREATE_EVENT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "liveStreamTitle"

    invoke-virtual {v0, v3}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v13}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 237
    :try_start_0
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, LThirdParty/b/b;->a(LThirdParty/b/b;La/c/a;Z)I

    .line 238
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 239
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->a(LThirdParty/b/b;)Lcom/google/api/services/youtube/YouTube;

    move-result-object v0

    invoke-static {v0}, LThirdParty/b/b;->a(Lcom/google/api/services/youtube/YouTube;)Ljava/util/List;

    move-result-object v1

    .line 240
    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LThirdParty/b/a;

    invoke-virtual {v0}, LThirdParty/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LThirdParty/b/a;

    invoke-virtual {v0}, LThirdParty/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LThirdParty/b/b;->b(LThirdParty/b/b;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->b(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LThirdParty/b/b;->c(LThirdParty/b/b;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] broadcastId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->b(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 245
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] rtmpUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->c(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] streaming link: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->d(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 247
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->c(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v10

    :goto_2
    move v10, v0

    .line 272
    goto/16 :goto_0

    .line 253
    :cond_3
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->e(LThirdParty/b/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->f(LThirdParty/b/b;)I

    move-result v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->g(LThirdParty/b/b;)I

    move-result v2

    iget-object v3, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v3}, LThirdParty/b/b;->h(LThirdParty/b/b;)I

    move-result v3

    iget-object v4, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v4}, LThirdParty/b/b;->i(LThirdParty/b/b;)[B

    move-result-object v4

    iget-object v5, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v5}, LThirdParty/b/b;->j(LThirdParty/b/b;)I

    move-result v5

    iget-object v6, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v6}, LThirdParty/b/b;->k(LThirdParty/b/b;)I

    move-result v6

    iget-object v7, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v7}, LThirdParty/b/b;->l(LThirdParty/b/b;)I

    move-result v7

    iget-object v8, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v8}, LThirdParty/b/b;->m(LThirdParty/b/b;)I

    move-result v8

    iget-object v9, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v9}, LThirdParty/b/b;->c(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, LThirdParty/Rtmp/a;->a(III[BIIIILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    move v0, v11

    .line 257
    goto :goto_2

    .line 260
    :catch_0
    move-exception v0

    .line 262
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->n(LThirdParty/b/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 264
    :catch_1
    move-exception v0

    .line 266
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    const-string v2, "[DEBUG] Enter YM MSG_YOUTUBE_CREATE_EVENT"

    invoke-static {v1, v2, v13}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 267
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v10}, LThirdParty/b/b;->a(LThirdParty/b/b;II)V

    .line 268
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 269
    :catch_2
    move-exception v0

    .line 270
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v10}, LThirdParty/b/b;->a(LThirdParty/b/b;II)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 280
    :pswitch_1
    :try_start_1
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->a(LThirdParty/b/b;)Lcom/google/api/services/youtube/YouTube;

    move-result-object v0

    invoke-static {v0}, LThirdParty/b/b;->b(Lcom/google/api/services/youtube/YouTube;)Ljava/util/List;

    move-result-object v1

    .line 281
    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LThirdParty/b/a;

    invoke-virtual {v0}, LThirdParty/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LThirdParty/b/a;

    invoke-virtual {v0}, LThirdParty/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LThirdParty/b/b;->b(LThirdParty/b/b;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->b(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LThirdParty/b/b;->c(LThirdParty/b/b;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] broadcastId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->b(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 286
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] rtmpUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->c(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 287
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] streaming link: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->d(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 289
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->c(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->e(LThirdParty/b/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->f(LThirdParty/b/b;)I

    move-result v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->g(LThirdParty/b/b;)I

    move-result v2

    iget-object v3, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v3}, LThirdParty/b/b;->h(LThirdParty/b/b;)I

    move-result v3

    iget-object v4, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v4}, LThirdParty/b/b;->i(LThirdParty/b/b;)[B

    move-result-object v4

    iget-object v5, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v5}, LThirdParty/b/b;->j(LThirdParty/b/b;)I

    move-result v5

    iget-object v6, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v6}, LThirdParty/b/b;->k(LThirdParty/b/b;)I

    move-result v6

    iget-object v7, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v7}, LThirdParty/b/b;->l(LThirdParty/b/b;)I

    move-result v7

    iget-object v8, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v8}, LThirdParty/b/b;->m(LThirdParty/b/b;)I

    move-result v8

    iget-object v9, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v9}, LThirdParty/b/b;->c(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, LThirdParty/Rtmp/a;->a(III[BIIIILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_5
    move v10, v11

    .line 299
    goto/16 :goto_0

    .line 302
    :catch_3
    move-exception v0

    .line 304
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->n(LThirdParty/b/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 306
    :catch_4
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 316
    :pswitch_2
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 317
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DEBUG] MSG_YOUTUBE_CREATE_360_EVENT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "liveStreamTitle"

    invoke-virtual {v0, v3}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v13}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 319
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1, v0, v12}, LThirdParty/b/b;->a(LThirdParty/b/b;La/c/a;Z)I

    move-result v10

    .line 321
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] broadcastId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->b(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 322
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] rtmpUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->c(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 323
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] streaming link: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->d(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    .line 325
    if-nez v10, :cond_7

    .line 327
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->e(LThirdParty/b/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 329
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->f(LThirdParty/b/b;)I

    move-result v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->g(LThirdParty/b/b;)I

    move-result v2

    iget-object v3, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v3}, LThirdParty/b/b;->h(LThirdParty/b/b;)I

    move-result v3

    iget-object v4, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v4}, LThirdParty/b/b;->i(LThirdParty/b/b;)[B

    move-result-object v4

    iget-object v5, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v5}, LThirdParty/b/b;->j(LThirdParty/b/b;)I

    move-result v5

    iget-object v6, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v6}, LThirdParty/b/b;->k(LThirdParty/b/b;)I

    move-result v6

    iget-object v7, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v7}, LThirdParty/b/b;->l(LThirdParty/b/b;)I

    move-result v7

    iget-object v8, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v8}, LThirdParty/b/b;->m(LThirdParty/b/b;)I

    move-result v8

    iget-object v9, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v9}, LThirdParty/b/b;->c(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, LThirdParty/Rtmp/a;->a(III[BIIIILjava/lang/String;)V

    :cond_6
    move v10, v11

    .line 331
    goto/16 :goto_0

    .line 336
    :cond_7
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createLiveEvent res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, LThirdParty/b/b;->a(LThirdParty/b/b;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 343
    :pswitch_3
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->o(LThirdParty/b/b;)I

    move-result v0

    if-le v0, v3, :cond_8

    .line 345
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0, v11}, LThirdParty/b/b;->a(LThirdParty/b/b;I)I

    goto/16 :goto_0

    .line 351
    :cond_8
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->p(LThirdParty/b/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 355
    :try_start_2
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LThirdParty/b/b;->a(LThirdParty/b/b;I)I

    .line 356
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->a(LThirdParty/b/b;)Lcom/google/api/services/youtube/YouTube;

    move-result-object v0

    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->b(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LThirdParty/b/b;->a(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move v10, v11

    .line 367
    goto/16 :goto_0

    .line 359
    :catch_5
    move-exception v0

    .line 361
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->n(LThirdParty/b/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 363
    :catch_6
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 371
    :cond_9
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->q(LThirdParty/b/b;)I

    .line 373
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    const/16 v1, 0x1004

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, LThirdParty/b/b;->a(IJ)V

    move v10, v12

    .line 375
    goto/16 :goto_0

    .line 379
    :pswitch_4
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->o(LThirdParty/b/b;)I

    move-result v0

    if-le v0, v3, :cond_a

    .line 381
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0, v11}, LThirdParty/b/b;->a(LThirdParty/b/b;I)I

    goto/16 :goto_0

    .line 387
    :cond_a
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->r(LThirdParty/b/b;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 389
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0, v11}, LThirdParty/b/b;->a(LThirdParty/b/b;I)I

    move v10, v11

    .line 390
    goto/16 :goto_0

    .line 394
    :cond_b
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->q(LThirdParty/b/b;)I

    .line 396
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    const/16 v1, 0x1009

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, LThirdParty/b/b;->a(IJ)V

    move v10, v12

    .line 398
    goto/16 :goto_0

    .line 404
    :pswitch_5
    :try_start_3
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->a(LThirdParty/b/b;)Lcom/google/api/services/youtube/YouTube;

    move-result-object v0

    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->b(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LThirdParty/b/b;->b(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move v10, v11

    .line 415
    goto/16 :goto_0

    .line 407
    :catch_7
    move-exception v0

    .line 409
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->n(LThirdParty/b/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 411
    :catch_8
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 423
    :pswitch_6
    :try_start_4
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->a(LThirdParty/b/b;)Lcom/google/api/services/youtube/YouTube;

    move-result-object v0

    invoke-static {v0}, LThirdParty/b/b;->b(Lcom/google/api/services/youtube/YouTube;)Ljava/util/List;

    .line 424
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->s(LThirdParty/b/b;)LThirdParty/b/b$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LThirdParty/b/b$a;->a(Z)V
    :try_end_4
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    goto/16 :goto_0

    .line 426
    :catch_9
    move-exception v0

    .line 428
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->s(LThirdParty/b/b;)LThirdParty/b/b$a;

    move-result-object v1

    invoke-interface {v1, v11}, LThirdParty/b/b$a;->a(Z)V

    .line 429
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->n(LThirdParty/b/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 431
    :catch_a
    move-exception v0

    .line 433
    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->s(LThirdParty/b/b;)LThirdParty/b/b$a;

    move-result-object v1

    invoke-interface {v1, v12}, LThirdParty/b/b$a;->a(Z)V

    .line 434
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 441
    :pswitch_7
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->a(LThirdParty/b/b;)Lcom/google/api/services/youtube/YouTube;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->b(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v12}, LThirdParty/b/b;->a(LThirdParty/b/b;Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 446
    :pswitch_8
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    iget-object v1, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v1}, LThirdParty/b/b;->a(LThirdParty/b/b;)Lcom/google/api/services/youtube/YouTube;

    move-result-object v1

    iget-object v2, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v2}, LThirdParty/b/b;->b(LThirdParty/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v11}, LThirdParty/b/b;->a(LThirdParty/b/b;Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 463
    :cond_c
    iget-object v0, p0, LThirdParty/b/b$1;->a:LThirdParty/b/b;

    invoke-static {v0}, LThirdParty/b/b;->s(LThirdParty/b/b;)LThirdParty/b/b$a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LThirdParty/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 227
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method
