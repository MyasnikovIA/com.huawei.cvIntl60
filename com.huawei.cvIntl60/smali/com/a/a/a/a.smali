.class public final Lcom/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/a$a;,
        Lcom/a/a/a/a$c;,
        Lcom/a/a/a/a$b;,
        Lcom/a/a/a/a$d;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J

.field private final h:I

.field private i:J

.field private j:Ljava/io/Writer;

.field private final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:J

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-wide v4, p0, Lcom/a/a/a/a;->i:J

    .line 147
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    .line 156
    iput-wide v4, p0, Lcom/a/a/a/a;->m:J

    .line 159
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/a/a/a/a$a;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/a/a/a/a$a;-><init>(Lcom/a/a/a/a$1;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/a/a/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 162
    new-instance v0, Lcom/a/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/a/a/a/a$1;-><init>(Lcom/a/a/a/a;)V

    iput-object v0, p0, Lcom/a/a/a/a;->n:Ljava/util/concurrent/Callable;

    .line 179
    iput-object p1, p0, Lcom/a/a/a/a;->b:Ljava/io/File;

    .line 180
    iput p2, p0, Lcom/a/a/a/a;->f:I

    .line 181
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/a;->c:Ljava/io/File;

    .line 182
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/a;->d:Ljava/io/File;

    .line 183
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/a;->e:Ljava/io/File;

    .line 184
    iput p3, p0, Lcom/a/a/a/a;->h:I

    .line 185
    iput-wide p4, p0, Lcom/a/a/a/a;->g:J

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/a/a/a/a;I)I
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/a/a/a/a;->l:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/a/a/a/a$b;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 447
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/a;->f()V

    .line 448
    iget-object v0, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a$c;

    .line 449
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 450
    invoke-static {v0}, Lcom/a/a/a/a$c;->e(Lcom/a/a/a/a$c;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 469
    :goto_0
    monitor-exit p0

    return-object v0

    .line 453
    :cond_1
    if-nez v0, :cond_2

    .line 454
    :try_start_1
    new-instance v0, Lcom/a/a/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/a/a/a/a$c;-><init>(Lcom/a/a/a/a;Ljava/lang/String;Lcom/a/a/a/a$1;)V

    .line 455
    iget-object v1, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 460
    :goto_1
    new-instance v0, Lcom/a/a/a/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/a/a/a/a$b;-><init>(Lcom/a/a/a/a;Lcom/a/a/a/a$c;Lcom/a/a/a/a$1;)V

    .line 461
    invoke-static {v1, v0}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;Lcom/a/a/a/a$b;)Lcom/a/a/a/a$b;

    .line 464
    iget-object v1, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const-string v2, "DIRTY"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 465
    iget-object v1, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 466
    iget-object v1, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 467
    iget-object v1, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 468
    iget-object v1, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 456
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;)Lcom/a/a/a/a$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 457
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/a/a/a/a;
    .locals 7

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    if-gtz p2, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 219
    :cond_2
    :goto_0
    new-instance v0, Lcom/a/a/a/a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/a;-><init>(Ljava/io/File;IIJ)V

    .line 220
    iget-object v1, v0, Lcom/a/a/a/a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    :try_start_0
    invoke-direct {v0}, Lcom/a/a/a/a;->b()V

    .line 223
    invoke-direct {v0}, Lcom/a/a/a/a;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_1
    return-object v0

    .line 214
    :cond_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/a/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/a/a/a/a;->a()V

    .line 237
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 238
    new-instance v0, Lcom/a/a/a/a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/a;-><init>(Ljava/io/File;IIJ)V

    .line 239
    invoke-direct {v0}, Lcom/a/a/a/a;->d()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/a/a/a/a;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/a/a/a/a$b;Z)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 504
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/a/a/a/a$b;->a(Lcom/a/a/a/a$b;)Lcom/a/a/a/a$c;

    move-result-object v2

    .line 505
    invoke-static {v2}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;)Lcom/a/a/a/a$b;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 506
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 510
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/a/a/a/a$c;->d(Lcom/a/a/a/a$c;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 511
    :goto_0
    iget v3, p0, Lcom/a/a/a/a;->h:I

    if-ge v1, v3, :cond_4

    .line 512
    invoke-static {p1}, Lcom/a/a/a/a$b;->b(Lcom/a/a/a/a$b;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 513
    invoke-virtual {p1}, Lcom/a/a/a/a$b;->b()V

    .line 514
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_1
    invoke-virtual {v2, v1}, Lcom/a/a/a/a$c;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 517
    invoke-virtual {p1}, Lcom/a/a/a/a$b;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 511
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/a/a/a/a;->h:I

    if-ge v0, v1, :cond_7

    .line 524
    invoke-virtual {v2, v0}, Lcom/a/a/a/a$c;->b(I)Ljava/io/File;

    move-result-object v1

    .line 525
    if-eqz p2, :cond_6

    .line 526
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 527
    invoke-virtual {v2, v0}, Lcom/a/a/a/a$c;->a(I)Ljava/io/File;

    move-result-object v3

    .line 528
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 529
    invoke-static {v2}, Lcom/a/a/a/a$c;->b(Lcom/a/a/a/a$c;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 530
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 531
    invoke-static {v2}, Lcom/a/a/a/a$c;->b(Lcom/a/a/a/a$c;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 532
    iget-wide v8, p0, Lcom/a/a/a/a;->i:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/a/a/a/a;->i:J

    .line 523
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 535
    :cond_6
    invoke-static {v1}, Lcom/a/a/a/a;->a(Ljava/io/File;)V

    goto :goto_3

    .line 539
    :cond_7
    iget v0, p0, Lcom/a/a/a/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/a;->l:I

    .line 540
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;Lcom/a/a/a/a$b;)Lcom/a/a/a/a$b;

    .line 541
    invoke-static {v2}, Lcom/a/a/a/a$c;->d(Lcom/a/a/a/a$c;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 542
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;Z)Z

    .line 543
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const-string v1, "CLEAN"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 544
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 545
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    invoke-static {v2}, Lcom/a/a/a/a$c;->c(Lcom/a/a/a/a$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 546
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v2}, Lcom/a/a/a/a$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 547
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 549
    if-eqz p2, :cond_8

    .line 550
    iget-wide v0, p0, Lcom/a/a/a/a;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/a/a/a/a;->m:J

    invoke-static {v2, v0, v1}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;J)J

    .line 559
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 561
    iget-wide v0, p0, Lcom/a/a/a/a;->i:J

    iget-wide v2, p0, Lcom/a/a/a/a;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/a/a/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    :cond_9
    iget-object v0, p0, Lcom/a/a/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/a/a/a/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 553
    :cond_a
    iget-object v0, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/a/a/a/a$c;->c(Lcom/a/a/a/a$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const-string v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 555
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 556
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    invoke-static {v2}, Lcom/a/a/a/a$c;->c(Lcom/a/a/a/a$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 557
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/a/a/a/a;Lcom/a/a/a/a$b;Z)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/a;->a(Lcom/a/a/a/a$b;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 392
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1

    .prologue
    .line 395
    if-eqz p2, :cond_0

    .line 396
    invoke-static {p1}, Lcom/a/a/a/a;->a(Ljava/io/File;)V

    .line 398
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 401
    :cond_1
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    .line 244
    new-instance v1, Lcom/a/a/a/b;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/a/a/a/a;->c:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/a/a/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/a/a/a/b;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 246
    :try_start_0
    invoke-virtual {v1}, Lcom/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {v1}, Lcom/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v1}, Lcom/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {v1}, Lcom/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v1}, Lcom/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v5

    .line 251
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    .line 252
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/a/a/a/a;->f:I

    .line 253
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/a/a/a/a;->h:I

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 255
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/a/a/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    .line 260
    :cond_1
    const/4 v0, 0x0

    .line 263
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/a/a/a/a;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :catch_0
    move-exception v2

    .line 269
    :try_start_2
    iget-object v2, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/a/a;->l:I

    .line 272
    invoke-virtual {v1}, Lcom/a/a/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/a/a/a/a;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :goto_1
    invoke-static {v1}, Lcom/a/a/a/c;->a(Ljava/io/Closeable;)V

    .line 281
    return-void

    .line 275
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/a/a/a/a;->c:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/a/a/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/a/a/a/a;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/a/a/a/a;->g()V

    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/a/a/a/a;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/a/a/a/a;->a(Ljava/io/File;)V

    .line 328
    iget-object v0, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a$c;

    .line 330
    invoke-static {v0}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;)Lcom/a/a/a/a$b;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 331
    :goto_1
    iget v4, p0, Lcom/a/a/a/a;->h:I

    if-ge v1, v4, :cond_0

    .line 332
    iget-wide v4, p0, Lcom/a/a/a/a;->i:J

    invoke-static {v0}, Lcom/a/a/a/a$c;->b(Lcom/a/a/a/a$c;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/a/a/a/a;->i:J

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;Lcom/a/a/a/a$b;)Lcom/a/a/a/a$b;

    move v1, v2

    .line 336
    :goto_2
    iget v4, p0, Lcom/a/a/a/a;->h:I

    if-ge v1, v4, :cond_2

    .line 337
    invoke-virtual {v0, v1}, Lcom/a/a/a/a$c;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/a/a/a/a;->a(Ljava/io/File;)V

    .line 338
    invoke-virtual {v0, v1}, Lcom/a/a/a/a$c;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/a/a/a/a;->a(Ljava/io/File;)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 340
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 343
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/a/a/a/a;)Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/a/a/a/a;->e()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized d()V
    .locals 5

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 354
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/a/a/a/a;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/a/a/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 357
    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lcom/a/a/a/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    iget v0, p0, Lcom/a/a/a/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a$c;

    .line 368
    invoke-static {v0}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;)Lcom/a/a/a/a$b;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/a/a/a/a$c;->c(Lcom/a/a/a/a$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 371
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/a/a/a/a$c;->c(Lcom/a/a/a/a$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/a/a/a/a$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 375
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 378
    iget-object v0, p0, Lcom/a/a/a/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/a/a/a/a;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/a/a;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/a/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/a/a/a/a;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/a/a;->c:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/a/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 382
    iget-object v0, p0, Lcom/a/a/a/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 384
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/a/a/a/a;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/a/a/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 386
    monitor-exit p0

    return-void
.end method

.method static synthetic d(Lcom/a/a/a/a;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/a/a/a/a;->d()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 285
    if-ne v2, v5, :cond_0

    .line 286
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 290
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 292
    if-ne v3, v5, :cond_2

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_7

    const-string v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 295
    iget-object v1, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 299
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a$c;

    .line 303
    if-nez v0, :cond_3

    .line 304
    new-instance v0, Lcom/a/a/a/a$c;

    invoke-direct {v0, p0, v1, v6}, Lcom/a/a/a/a$c;-><init>(Lcom/a/a/a/a;Ljava/lang/String;Lcom/a/a/a/a$1;)V

    .line 305
    iget-object v4, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_3
    if-eq v3, v5, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 310
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;Z)Z

    .line 311
    invoke-static {v0, v6}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;Lcom/a/a/a/a$b;)Lcom/a/a/a/a$b;

    .line 312
    invoke-static {v0, v1}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;[Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_4
    if-ne v3, v5, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    new-instance v1, Lcom/a/a/a/a$b;

    invoke-direct {v1, p0, v0, v6}, Lcom/a/a/a/a$b;-><init>(Lcom/a/a/a/a;Lcom/a/a/a/a$c;Lcom/a/a/a/a$1;)V

    invoke-static {v0, v1}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;Lcom/a/a/a/a$b;)Lcom/a/a/a/a$b;

    goto :goto_0

    .line 315
    :cond_5
    if-ne v3, v5, :cond_6

    const-string v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_6

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic e(Lcom/a/a/a/a;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/a/a/a/a;->h:I

    return v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 571
    .line 572
    iget v0, p0, Lcom/a/a/a/a;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/a/a/a/a;->l:I

    iget-object v1, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    .line 573
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 572
    :goto_0
    return v0

    .line 573
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/a/a/a/a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 647
    :goto_0
    iget-wide v0, p0, Lcom/a/a/a/a;->i:J

    iget-wide v2, p0, Lcom/a/a/a/a;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 649
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/a/a/a/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 651
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/a/a/a/a$d;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 409
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/a;->f()V

    .line 410
    iget-object v0, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 415
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/a/a/a/a$c;->d(Lcom/a/a/a/a$c;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    iget-object v3, v0, Lcom/a/a/a/a$c;->a:[Ljava/io/File;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 421
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 426
    :cond_2
    iget v1, p0, Lcom/a/a/a/a;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/a/a;->l:I

    .line 427
    iget-object v1, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 428
    iget-object v1, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 429
    iget-object v1, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 430
    iget-object v1, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 431
    invoke-direct {p0}, Lcom/a/a/a/a;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    iget-object v1, p0, Lcom/a/a/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/a/a/a/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 435
    :cond_3
    new-instance v1, Lcom/a/a/a/a$d;

    invoke-static {v0}, Lcom/a/a/a/a$c;->e(Lcom/a/a/a/a$c;)J

    move-result-wide v4

    iget-object v6, v0, Lcom/a/a/a/a$c;->a:[Ljava/io/File;

    invoke-static {v0}, Lcom/a/a/a/a$c;->b(Lcom/a/a/a/a$c;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/a/a/a/a$d;-><init>(Lcom/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[JLcom/a/a/a/a$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/a/a/a/a;->close()V

    .line 660
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/a/a/a/c;->a(Ljava/io/File;)V

    .line 661
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/a/a/a/a$b;
    .locals 2

    .prologue
    .line 443
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/a/a;->a(Ljava/lang/String;J)Lcom/a/a/a/a$b;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 583
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/a;->f()V

    .line 584
    iget-object v0, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a$c;

    .line 585
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;)Lcom/a/a/a/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 610
    :goto_0
    monitor-exit p0

    return v0

    .line 594
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/a/a/a/a;->i:J

    invoke-static {v0}, Lcom/a/a/a/a$c;->b(Lcom/a/a/a/a$c;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/a/a/a/a;->i:J

    .line 595
    invoke-static {v0}, Lcom/a/a/a/a$c;->b(Lcom/a/a/a/a$c;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 589
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/a/a/a/a;->h:I

    if-ge v1, v2, :cond_3

    .line 590
    invoke-virtual {v0, v1}, Lcom/a/a/a/a$c;->a(I)Ljava/io/File;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 592
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 598
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/a/a/a/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/a;->l:I

    .line 599
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const-string v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 601
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 602
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 604
    iget-object v0, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-direct {p0}, Lcom/a/a/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    iget-object v0, p0, Lcom/a/a/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/a/a/a/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 610
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 633
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 644
    :goto_0
    monitor-exit p0

    return-void

    .line 636
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/a/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a$c;

    .line 637
    invoke-static {v0}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;)Lcom/a/a/a/a$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 638
    invoke-static {v0}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;)Lcom/a/a/a/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a$b;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 641
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/a/a/a/a;->g()V

    .line 642
    iget-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/a;->j:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
