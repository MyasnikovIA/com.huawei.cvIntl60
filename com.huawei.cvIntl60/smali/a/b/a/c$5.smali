.class La/b/a/c$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/c;->a(Landroid/os/HandlerThread;)Landroid/os/Handler;
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
    .line 185
    iput-object p1, p0, La/b/a/c$5;->a:La/b/a/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown keep alive status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, La/b/a/c;->a(Ljava/lang/String;I)V

    .line 214
    :goto_0
    return-void

    .line 194
    :pswitch_0
    iget-object v0, p0, La/b/a/c$5;->a:La/b/a/c;

    invoke-static {v0}, La/b/a/c;->g(La/b/a/c;)La/b/a/b;

    move-result-object v0

    invoke-static {}, La/b/a/c;->g()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, La/b/a/b;->a([BZ)I

    move-result v0

    .line 195
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    .line 196
    iget-object v0, p0, La/b/a/c$5;->a:La/b/a/c;

    invoke-static {v0, v3}, La/b/a/c;->a(La/b/a/c;I)I

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, La/b/a/c$5;->a:La/b/a/c;

    invoke-static {v0}, La/b/a/c;->h(La/b/a/c;)I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send keep alive fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/b/a/c$5;->a:La/b/a/c;

    invoke-static {v1}, La/b/a/c;->a(La/b/a/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, La/b/a/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 205
    :pswitch_1
    const-string v0, "Keep alive timeout!!"

    invoke-static {v0, v3}, La/b/a/c;->a(Ljava/lang/String;I)V

    .line 206
    iget-object v0, p0, La/b/a/c$5;->a:La/b/a/c;

    invoke-static {v0}, La/b/a/c;->i(La/b/a/c;)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
