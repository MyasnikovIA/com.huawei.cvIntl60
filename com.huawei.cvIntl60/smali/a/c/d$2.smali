.class La/c/d$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/c/d;->b(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/c/d;


# direct methods
.method constructor <init>(La/c/d;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, La/c/d$2;->a:La/c/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4820

    if-eq v0, v1, :cond_0

    .line 166
    iget-object v0, p0, La/c/d$2;->a:La/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote handleMessage: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, La/c/d;->a(La/c/d;Ljava/lang/String;I)V

    .line 167
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xff00

    and-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    iget-object v0, p0, La/c/d$2;->a:La/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote not handle message!! ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La/c/d;->a(La/c/d;Ljava/lang/String;I)V

    .line 176
    :goto_0
    iget-object v0, p0, La/c/d$2;->a:La/c/d;

    invoke-static {v0}, La/c/d;->a(La/c/d;)La/c/c;

    move-result-object v0

    iget v1, v0, La/c/c;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, La/c/c;->d:I

    .line 177
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p0, La/c/d$2;->a:La/c/d;

    invoke-static {v0, p1}, La/c/d;->b(La/c/d;Landroid/os/Message;)Z

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x4800
        :pswitch_0
    .end packed-switch
.end method
