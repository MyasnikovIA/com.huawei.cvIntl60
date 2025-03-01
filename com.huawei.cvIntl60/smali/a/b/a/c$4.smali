.class La/b/a/c$4;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/c;->f()V
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
    .line 166
    iput-object p1, p0, La/b/a/c$4;->a:La/b/a/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 170
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 171
    iget-object v1, p0, La/b/a/c$4;->a:La/b/a/c;

    invoke-static {v1}, La/b/a/c;->f(La/b/a/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method
