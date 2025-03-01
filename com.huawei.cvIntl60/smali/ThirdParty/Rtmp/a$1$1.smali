.class LThirdParty/Rtmp/a$1$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LThirdParty/Rtmp/a$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LThirdParty/Rtmp/a$1;


# direct methods
.method constructor <init>(LThirdParty/Rtmp/a$1;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, LThirdParty/Rtmp/a$1$1;->a:LThirdParty/Rtmp/a$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 190
    const-string v0, "[RTMP DEBUG] Timer timeout..."

    const/4 v1, 0x0

    invoke-static {v0, v1}, LThirdParty/Rtmp/a;->a(Ljava/lang/String;I)V

    .line 191
    iget-object v0, p0, LThirdParty/Rtmp/a$1$1;->a:LThirdParty/Rtmp/a$1;

    iget-object v0, v0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, LThirdParty/Rtmp/a$1$1;->a:LThirdParty/Rtmp/a$1;

    iget-object v0, v0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 195
    :cond_0
    iget-object v0, p0, LThirdParty/Rtmp/a$1$1;->a:LThirdParty/Rtmp/a$1;

    iget-object v0, v0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->b(LThirdParty/Rtmp/a;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 196
    iget-object v0, p0, LThirdParty/Rtmp/a$1$1;->a:LThirdParty/Rtmp/a$1;

    iget-object v0, v0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->b(LThirdParty/Rtmp/a;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 198
    iget-object v0, p0, LThirdParty/Rtmp/a$1$1;->a:LThirdParty/Rtmp/a$1;

    iget-object v0, v0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->c(LThirdParty/Rtmp/a;)V

    .line 199
    iget-object v0, p0, LThirdParty/Rtmp/a$1$1;->a:LThirdParty/Rtmp/a$1;

    iget-object v0, v0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    invoke-static {v0}, LThirdParty/Rtmp/a;->d(LThirdParty/Rtmp/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, LThirdParty/Rtmp/a$1$1;->a:LThirdParty/Rtmp/a$1;

    iget-object v0, v0, LThirdParty/Rtmp/a$1;->a:LThirdParty/Rtmp/a;

    const/16 v1, 0x2001

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a;II)V

    .line 202
    return-void
.end method
