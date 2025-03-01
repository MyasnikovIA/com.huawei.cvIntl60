.class Lcom/facebook/a/b/a$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/a$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/b/a$5;


# direct methods
.method constructor <init>(Lcom/facebook/a/b/a$5;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/facebook/a/b/a$5$1;->a:Lcom/facebook/a/b/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    invoke-static {}, Lcom/facebook/a/b/a;->k()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/facebook/a/b/a$5$1;->a:Lcom/facebook/a/b/a$5;

    iget-object v0, v0, Lcom/facebook/a/b/a$5;->b:Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v1

    .line 295
    invoke-static {}, Lcom/facebook/a/b/a;->i()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-static {v0, v1, v2}, Lcom/facebook/a/b/j;->a(Ljava/lang/String;Lcom/facebook/a/b/i;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/facebook/a/b/i;->b()V

    .line 297
    invoke-static {v3}, Lcom/facebook/a/b/a;->a(Lcom/facebook/a/b/i;)Lcom/facebook/a/b/i;

    .line 300
    :cond_0
    invoke-static {}, Lcom/facebook/a/b/a;->l()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 301
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/a/b/a;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 302
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
