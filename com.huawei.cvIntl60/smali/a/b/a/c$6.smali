.class La/b/a/c$6;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/c;->b(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/b/a/c;


# direct methods
.method constructor <init>(La/b/a/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, La/b/a/c$6;->a:La/b/a/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown notify status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, La/b/a/c;->a(Ljava/lang/String;I)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 254
    :pswitch_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 255
    const/16 v1, 0x7a

    aput-byte v1, v0, v3

    .line 256
    aput-byte v3, v0, v4

    .line 257
    aput-byte v2, v0, v2

    .line 258
    const/16 v1, 0x8

    aput-byte v4, v0, v1

    .line 259
    const/16 v1, 0x9

    aput-byte v4, v0, v1

    .line 260
    const/16 v1, 0xc

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 261
    const/16 v1, 0xd

    aput-byte v4, v0, v1

    .line 262
    const/16 v1, 0xe

    aput-byte v3, v0, v1

    .line 263
    const/16 v1, 0xf

    aput-byte v3, v0, v1

    .line 265
    const-string v1, "Send APP connected notify"

    invoke-static {v1, v4}, La/b/a/c;->a(Ljava/lang/String;I)V

    .line 266
    iget-object v1, p0, La/b/a/c$6;->a:La/b/a/c;

    invoke-static {v1}, La/b/a/c;->g(La/b/a/c;)La/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, La/b/a/b;->a([BZ)I

    move-result v0

    .line 267
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 268
    :cond_1
    const-string v0, "Send notify APP connected fail"

    invoke-static {v0, v3}, La/b/a/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
