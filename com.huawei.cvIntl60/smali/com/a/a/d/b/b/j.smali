.class public Lcom/a/a/d/b/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/b/b/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/j/e",
            "<",
            "Lcom/a/a/d/h;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/a/a/d/b/b/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/a/a/j/e;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/a/a/j/e;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/d/b/b/j;->a:Lcom/a/a/j/e;

    .line 19
    const/16 v0, 0xa

    new-instance v1, Lcom/a/a/d/b/b/j$1;

    invoke-direct {v1, p0}, Lcom/a/a/d/b/b/j$1;-><init>(Lcom/a/a/d/b/b/j;)V

    invoke-static {v0, v1}, Lcom/a/a/j/a/a;->b(ILcom/a/a/j/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/b/j;->b:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private b(Lcom/a/a/d/h;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/a/a/d/b/b/j;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/b/j$a;

    .line 48
    :try_start_0
    iget-object v1, v0, Lcom/a/a/d/b/b/j$a;->a:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lcom/a/a/d/h;->a(Ljava/security/MessageDigest;)V

    .line 50
    iget-object v1, v0, Lcom/a/a/d/b/b/j$a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/j/i;->a([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/a/a/d/b/b/j;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 50
    return-object v1

    .line 52
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/a/a/d/b/b/j;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw v1
.end method


# virtual methods
.method public a(Lcom/a/a/d/h;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/a/a/d/b/b/j;->a:Lcom/a/a/j/e;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/b/b/j;->a:Lcom/a/a/j/e;

    invoke-virtual {v0, p1}, Lcom/a/a/j/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-nez v0, :cond_0

    .line 37
    invoke-direct {p0, p1}, Lcom/a/a/d/b/b/j;->b(Lcom/a/a/d/h;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/a/a/d/b/b/j;->a:Lcom/a/a/j/e;

    monitor-enter v1

    .line 40
    :try_start_1
    iget-object v2, p0, Lcom/a/a/d/b/b/j;->a:Lcom/a/a/j/e;

    invoke-virtual {v2, p1, v0}, Lcom/a/a/j/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 41
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
