.class La/b/a/c$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/b/a/c;


# direct methods
.method constructor <init>(La/b/a/c;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, La/b/a/c$2;->a:La/b/a/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 107
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 108
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 110
    iget-object v1, p0, La/b/a/c$2;->a:La/b/a/c;

    invoke-static {v1}, La/b/a/c;->a(La/b/a/c;)I

    move-result v1

    iget-object v2, p0, La/b/a/c$2;->a:La/b/a/c;

    invoke-static {v2}, La/b/a/c;->b(La/b/a/c;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 111
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 113
    :cond_0
    iget-object v1, p0, La/b/a/c$2;->a:La/b/a/c;

    invoke-static {v1}, La/b/a/c;->c(La/b/a/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iput v3, v0, Landroid/os/Message;->what:I

    .line 115
    iget-object v1, p0, La/b/a/c$2;->a:La/b/a/c;

    invoke-static {v1}, La/b/a/c;->d(La/b/a/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    :cond_1
    iget-object v0, p0, La/b/a/c$2;->a:La/b/a/c;

    invoke-static {v0, v3}, La/b/a/c;->a(La/b/a/c;Z)Z

    .line 118
    return-void
.end method
