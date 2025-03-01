.class final Lcom/facebook/a/b/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/a;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 274
    iput-wide p1, p0, Lcom/facebook/a/b/a$5;->a:J

    iput-object p3, p0, Lcom/facebook/a/b/a$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 277
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v2

    if-nez v2, :cond_0

    .line 280
    new-instance v2, Lcom/facebook/a/b/i;

    iget-wide v4, p0, Lcom/facebook/a/b/a$5;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/facebook/a/b/i;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v2}, Lcom/facebook/a/b/a;->a(Lcom/facebook/a/b/i;)Lcom/facebook/a/b/i;

    .line 283
    :cond_0
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v2

    iget-wide v4, p0, Lcom/facebook/a/b/a$5;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/a/b/i;->a(Ljava/lang/Long;)V

    .line 284
    invoke-static {}, Lcom/facebook/a/b/a;->k()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_1

    .line 288
    new-instance v2, Lcom/facebook/a/b/a$5$1;

    invoke-direct {v2, p0}, Lcom/facebook/a/b/a$5$1;-><init>(Lcom/facebook/a/b/a$5;)V

    .line 306
    invoke-static {}, Lcom/facebook/a/b/a;->l()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 307
    :try_start_0
    invoke-static {}, Lcom/facebook/a/b/a;->m()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    .line 309
    invoke-static {}, Lcom/facebook/a/b/a;->j()I

    move-result v5

    int-to-long v6, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 307
    invoke-interface {v4, v2, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/a/b/a;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 311
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    invoke-static {}, Lcom/facebook/a/b/a;->n()J

    move-result-wide v2

    .line 316
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    iget-wide v0, p0, Lcom/facebook/a/b/a$5;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 319
    :cond_2
    iget-object v2, p0, Lcom/facebook/a/b/a$5;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/facebook/a/b/d;->a(Ljava/lang/String;J)V

    .line 324
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/b/i;->j()V

    .line 325
    return-void

    .line 311
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
