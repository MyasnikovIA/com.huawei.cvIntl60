.class public Lcom/a/a/d/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/b/b/a;


# static fields
.field private static a:Lcom/a/a/d/b/b/e;


# instance fields
.field private final b:Lcom/a/a/d/b/b/j;

.field private final c:Ljava/io/File;

.field private final d:I

.field private final e:Lcom/a/a/d/b/b/c;

.field private f:Lcom/a/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/d/b/b/e;->a:Lcom/a/a/d/b/b/e;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/a/a/d/b/b/c;

    invoke-direct {v0}, Lcom/a/a/d/b/b/c;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/b/e;->e:Lcom/a/a/d/b/b/c;

    .line 52
    iput-object p1, p0, Lcom/a/a/d/b/b/e;->c:Ljava/io/File;

    .line 53
    iput p2, p0, Lcom/a/a/d/b/b/e;->d:I

    .line 54
    new-instance v0, Lcom/a/a/d/b/b/j;

    invoke-direct {v0}, Lcom/a/a/d/b/b/j;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/b/e;->b:Lcom/a/a/d/b/b/j;

    .line 55
    return-void
.end method

.method private declared-synchronized a()Lcom/a/a/a/a;
    .locals 6

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/b/b/e;->f:Lcom/a/a/a/a;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/a/a/d/b/b/e;->c:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v3, p0, Lcom/a/a/d/b/b/e;->d:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/a/a/a/a;->a(Ljava/io/File;IIJ)Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/b/e;->f:Lcom/a/a/a/a;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/b/e;->f:Lcom/a/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized a(Ljava/io/File;I)Lcom/a/a/d/b/b/a;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/a/a/d/b/b/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/a/a/d/b/b/e;->a:Lcom/a/a/d/b/b/e;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/a/a/d/b/b/e;

    invoke-direct {v0, p0, p1}, Lcom/a/a/d/b/b/e;-><init>(Ljava/io/File;I)V

    sput-object v0, Lcom/a/a/d/b/b/e;->a:Lcom/a/a/d/b/b/e;

    .line 48
    :cond_0
    sget-object v0, Lcom/a/a/d/b/b/e;->a:Lcom/a/a/d/b/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/a/a/d/h;)Ljava/io/File;
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/a/a/d/b/b/e;->b:Lcom/a/a/d/b/b/j;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b/b/j;->a(Lcom/a/a/d/h;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v0, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/d/b/b/e;->a()Lcom/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/a/a/a;->a(Ljava/lang/String;)Lcom/a/a/a/a$d;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/a/a/a/a$d;->a(I)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :cond_1
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const-string v2, "DiskLruCacheWrapper"

    const-string v3, "Unable to get from disk cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/a/a/d/h;Lcom/a/a/d/b/b/a$b;)V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/a/a/d/b/b/e;->b:Lcom/a/a/d/b/b/j;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b/b/j;->a(Lcom/a/a/d/h;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v0, p0, Lcom/a/a/d/b/b/e;->e:Lcom/a/a/d/b/b/c;

    invoke-virtual {v0, v1}, Lcom/a/a/d/b/b/c;->a(Ljava/lang/String;)V

    .line 94
    :try_start_0
    const-string v0, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/a/a/d/b/b/e;->a()Lcom/a/a/a/a;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Ljava/lang/String;)Lcom/a/a/a/a$d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 102
    if-eqz v2, :cond_1

    .line 124
    iget-object v0, p0, Lcom/a/a/d/b/b/e;->e:Lcom/a/a/d/b/b/c;

    invoke-virtual {v0, v1}, Lcom/a/a/d/b/b/c;->b(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 106
    :cond_1
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->b(Ljava/lang/String;)Lcom/a/a/a/a$b;

    move-result-object v2

    .line 107
    if-nez v2, :cond_3

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Had two simultaneous puts for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    :try_start_3
    const-string v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const-string v2, "DiskLruCacheWrapper"

    const-string v3, "Unable to put to disk cache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/a/a/d/b/b/e;->e:Lcom/a/a/d/b/b/c;

    invoke-virtual {v0, v1}, Lcom/a/a/d/b/b/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Lcom/a/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v0

    .line 112
    invoke-interface {p2, v0}, Lcom/a/a/d/b/b/a$b;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {v2}, Lcom/a/a/a/a$b;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Lcom/a/a/a/a$b;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/a/a/d/b/b/e;->e:Lcom/a/a/d/b/b/c;

    invoke-virtual {v2, v1}, Lcom/a/a/d/b/b/c;->b(Ljava/lang/String;)V

    throw v0

    .line 116
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Lcom/a/a/a/a$b;->c()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
