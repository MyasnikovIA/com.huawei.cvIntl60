.class Lcom/a/a/d/d/e/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/d/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/a/a/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/a/a/j/i;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/d/e/a$b;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/nio/ByteBuffer;)Lcom/a/a/b/d;
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/d/e/a$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/d;

    .line 157
    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/b/d;-><init>()V

    .line 160
    :cond_0
    invoke-virtual {v0, p1}, Lcom/a/a/b/d;->a(Ljava/nio/ByteBuffer;)Lcom/a/a/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/a/a/b/d;)V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/b/d;->a()V

    .line 165
    iget-object v0, p0, Lcom/a/a/d/d/e/a$b;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
