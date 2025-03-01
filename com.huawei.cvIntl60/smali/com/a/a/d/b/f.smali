.class Lcom/a/a/d/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/b/d$a;
.implements Lcom/a/a/j/a/a$c;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/b/f$g;,
        Lcom/a/a/d/b/f$f;,
        Lcom/a/a/d/b/f$d;,
        Lcom/a/a/d/b/f$a;,
        Lcom/a/a/d/b/f$c;,
        Lcom/a/a/d/b/f$e;,
        Lcom/a/a/d/b/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/b/d$a;",
        "Lcom/a/a/j/a/a$c;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/a/a/d/b/f",
        "<*>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private A:Lcom/a/a/d/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/a/b",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile B:Lcom/a/a/d/b/d;

.field private volatile C:Z

.field private volatile D:Z

.field final a:Lcom/a/a/d/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/e",
            "<TR;>;"
        }
    .end annotation
.end field

.field final b:Lcom/a/a/d/b/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/f$c",
            "<*>;"
        }
    .end annotation
.end field

.field c:Lcom/a/a/d/h;

.field d:I

.field e:I

.field f:Lcom/a/a/d/b/h;

.field g:Lcom/a/a/d/j;

.field h:Lcom/a/a/d/h;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/a/a/j/a/b;

.field private final k:Lcom/a/a/d/b/f$d;

.field private final l:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/a/a/d/b/f",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final m:Lcom/a/a/d/b/f$e;

.field private n:Lcom/a/a/e;

.field private o:Lcom/a/a/g;

.field private p:Lcom/a/a/d/b/l;

.field private q:Lcom/a/a/d/b/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/f$a",
            "<TR;>;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Lcom/a/a/d/b/f$g;

.field private t:Lcom/a/a/d/b/f$f;

.field private u:J

.field private v:Z

.field private w:Ljava/lang/Thread;

.field private x:Lcom/a/a/d/h;

.field private y:Ljava/lang/Object;

.field private z:Lcom/a/a/d/a;


# direct methods
.method constructor <init>(Lcom/a/a/d/b/f$d;Landroid/support/v4/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/f$d;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/a/a/d/b/f",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/a/a/d/b/e;

    invoke-direct {v0}, Lcom/a/a/d/b/e;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/f;->i:Ljava/util/List;

    .line 46
    invoke-static {}, Lcom/a/a/j/a/b;->a()Lcom/a/a/j/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/f;->j:Lcom/a/a/j/a/b;

    .line 49
    new-instance v0, Lcom/a/a/d/b/f$c;

    invoke-direct {v0}, Lcom/a/a/d/b/f$c;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/f;->b:Lcom/a/a/d/b/f$c;

    .line 50
    new-instance v0, Lcom/a/a/d/b/f$e;

    invoke-direct {v0}, Lcom/a/a/d/b/f$e;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/f;->m:Lcom/a/a/d/b/f$e;

    .line 79
    iput-object p1, p0, Lcom/a/a/d/b/f;->k:Lcom/a/a/d/b/f$d;

    .line 80
    iput-object p2, p0, Lcom/a/a/d/b/f;->l:Landroid/support/v4/util/Pools$Pool;

    .line 81
    return-void
.end method

.method private a(Lcom/a/a/d/b/f$g;)Lcom/a/a/d/b/f$g;
    .locals 3

    .prologue
    .line 332
    sget-object v0, Lcom/a/a/d/b/f$1;->b:[I

    invoke-virtual {p1}, Lcom/a/a/d/b/f$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/a/a/d/b/f;->f:Lcom/a/a/d/b/h;

    invoke-virtual {v0}, Lcom/a/a/d/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/a/a/d/b/f$g;->b:Lcom/a/a/d/b/f$g;

    .line 344
    :goto_0
    return-object v0

    .line 334
    :cond_0
    sget-object v0, Lcom/a/a/d/b/f$g;->b:Lcom/a/a/d/b/f$g;

    .line 335
    invoke-direct {p0, v0}, Lcom/a/a/d/b/f;->a(Lcom/a/a/d/b/f$g;)Lcom/a/a/d/b/f$g;

    move-result-object v0

    goto :goto_0

    .line 337
    :pswitch_1
    iget-object v0, p0, Lcom/a/a/d/b/f;->f:Lcom/a/a/d/b/h;

    invoke-virtual {v0}, Lcom/a/a/d/b/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/a/a/d/b/f$g;->c:Lcom/a/a/d/b/f$g;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/a/a/d/b/f$g;->c:Lcom/a/a/d/b/f$g;

    .line 338
    invoke-direct {p0, v0}, Lcom/a/a/d/b/f;->a(Lcom/a/a/d/b/f$g;)Lcom/a/a/d/b/f$g;

    move-result-object v0

    goto :goto_0

    .line 341
    :pswitch_2
    iget-boolean v0, p0, Lcom/a/a/d/b/f;->v:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/a/a/d/b/f$g;->f:Lcom/a/a/d/b/f$g;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/a/a/d/b/f$g;->d:Lcom/a/a/d/b/f$g;

    goto :goto_0

    .line 344
    :pswitch_3
    sget-object v0, Lcom/a/a/d/b/f$g;->f:Lcom/a/a/d/b/f$g;

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/a/a/d/a/b;Ljava/lang/Object;Lcom/a/a/d/a;)Lcom/a/a/d/b/s;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/a/b",
            "<*>;TData;",
            "Lcom/a/a/d/a;",
            ")",
            "Lcom/a/a/d/b/s",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 443
    if-nez p2, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 453
    invoke-interface {p1}, Lcom/a/a/d/a/b;->a()V

    .line 451
    :goto_0
    return-object v0

    .line 446
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v2

    .line 447
    invoke-direct {p0, p2, p3}, Lcom/a/a/d/b/f;->a(Ljava/lang/Object;Lcom/a/a/d/a;)Lcom/a/a/d/b/s;

    move-result-object v0

    .line 448
    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoded result "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Lcom/a/a/d/b/f;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_1
    invoke-interface {p1}, Lcom/a/a/d/a/b;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/a/a/d/a/b;->a()V

    throw v0
.end method

.method private a(Ljava/lang/Object;Lcom/a/a/d/a;)Lcom/a/a/d/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/a/a/d/a;",
            ")",
            "Lcom/a/a/d/b/s",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/d/b/e;->b(Ljava/lang/Class;)Lcom/a/a/d/b/q;

    move-result-object v0

    .line 461
    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/d/b/f;->a(Ljava/lang/Object;Lcom/a/a/d/a;Lcom/a/a/d/b/q;)Lcom/a/a/d/b/s;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Lcom/a/a/d/a;Lcom/a/a/d/b/q;)Lcom/a/a/d/b/s;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/a/a/d/a;",
            "Lcom/a/a/d/b/q",
            "<TData;TResourceType;TR;>;)",
            "Lcom/a/a/d/b/s",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 485
    invoke-direct {p0, p2}, Lcom/a/a/d/b/f;->a(Lcom/a/a/d/a;)Lcom/a/a/d/j;

    move-result-object v2

    .line 486
    iget-object v0, p0, Lcom/a/a/d/b/f;->n:Lcom/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/e;->c()Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/h;->b(Ljava/lang/Object;)Lcom/a/a/d/a/c;

    move-result-object v1

    .line 489
    :try_start_0
    iget v3, p0, Lcom/a/a/d/b/f;->d:I

    iget v4, p0, Lcom/a/a/d/b/f;->e:I

    new-instance v5, Lcom/a/a/d/b/f$b;

    invoke-direct {v5, p0, p2}, Lcom/a/a/d/b/f$b;-><init>(Lcom/a/a/d/b/f;Lcom/a/a/d/a;)V

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/d/b/q;->a(Lcom/a/a/d/a/c;Lcom/a/a/d/j;IILcom/a/a/d/b/g$a;)Lcom/a/a/d/b/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 492
    invoke-interface {v1}, Lcom/a/a/d/a/c;->b()V

    .line 489
    return-object v0

    .line 492
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/a/a/d/a/c;->b()V

    throw v0
.end method

.method private a(Lcom/a/a/d/a;)Lcom/a/a/d/j;
    .locals 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/a/a/d/b/f;->g:Lcom/a/a/d/j;

    .line 466
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-object v0

    .line 470
    :cond_1
    sget-object v1, Lcom/a/a/d/d/a/l;->d:Lcom/a/a/d/i;

    invoke-virtual {v0, v1}, Lcom/a/a/d/j;->a(Lcom/a/a/d/i;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 474
    sget-object v1, Lcom/a/a/d/a;->d:Lcom/a/a/d/a;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    .line 475
    invoke-virtual {v1}, Lcom/a/a/d/b/e;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    :cond_2
    new-instance v0, Lcom/a/a/d/j;

    invoke-direct {v0}, Lcom/a/a/d/j;-><init>()V

    .line 477
    iget-object v1, p0, Lcom/a/a/d/b/f;->g:Lcom/a/a/d/j;

    invoke-virtual {v0, v1}, Lcom/a/a/d/j;->a(Lcom/a/a/d/j;)V

    .line 478
    sget-object v1, Lcom/a/a/d/d/a/l;->d:Lcom/a/a/d/i;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/j;->a(Lcom/a/a/d/i;Ljava/lang/Object;)Lcom/a/a/d/j;

    goto :goto_0
.end method

.method private a(Lcom/a/a/d/b/s;Lcom/a/a/d/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<TR;>;",
            "Lcom/a/a/d/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/a/a/d/b/f;->m()V

    .line 320
    iget-object v0, p0, Lcom/a/a/d/b/f;->q:Lcom/a/a/d/b/f$a;

    invoke-interface {v0, p1, p2}, Lcom/a/a/d/b/f$a;->a(Lcom/a/a/d/b/s;Lcom/a/a/d/a;)V

    .line 321
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/a/d/b/f;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 498
    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 501
    const-string v1, "DecodeJob"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", load key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/d/b/f;->p:Lcom/a/a/d/b/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void

    .line 501
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/a/a/d/b/f;)Lcom/a/a/e;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/a/a/d/b/f;->n:Lcom/a/a/e;

    return-object v0
.end method

.method private b(Lcom/a/a/d/b/s;Lcom/a/a/d/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<TR;>;",
            "Lcom/a/a/d/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 414
    instance-of v0, p1, Lcom/a/a/d/b/p;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 415
    check-cast v0, Lcom/a/a/d/b/p;

    invoke-interface {v0}, Lcom/a/a/d/b/p;->a()V

    .line 419
    :cond_0
    const/4 v0, 0x0

    .line 420
    iget-object v1, p0, Lcom/a/a/d/b/f;->b:Lcom/a/a/d/b/f$c;

    invoke-virtual {v1}, Lcom/a/a/d/b/f$c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    invoke-static {p1}, Lcom/a/a/d/b/r;->a(Lcom/a/a/d/b/s;)Lcom/a/a/d/b/r;

    move-result-object v1

    move-object v0, v1

    move-object p1, v1

    .line 425
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/a/a/d/b/f;->a(Lcom/a/a/d/b/s;Lcom/a/a/d/a;)V

    .line 427
    sget-object v1, Lcom/a/a/d/b/f$g;->e:Lcom/a/a/d/b/f$g;

    iput-object v1, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/a/a/d/b/f;->b:Lcom/a/a/d/b/f$c;

    invoke-virtual {v1}, Lcom/a/a/d/b/f$c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/a/a/d/b/f;->b:Lcom/a/a/d/b/f$c;

    iget-object v2, p0, Lcom/a/a/d/b/f;->k:Lcom/a/a/d/b/f$d;

    iget-object v3, p0, Lcom/a/a/d/b/f;->g:Lcom/a/a/d/j;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d/b/f$c;->a(Lcom/a/a/d/b/f$d;Lcom/a/a/d/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_2
    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {v0}, Lcom/a/a/d/b/r;->a()V

    .line 436
    :cond_3
    invoke-direct {p0}, Lcom/a/a/d/b/f;->e()V

    .line 438
    return-void

    .line 433
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 434
    invoke-virtual {v0}, Lcom/a/a/d/b/r;->a()V

    .line 436
    :cond_4
    invoke-direct {p0}, Lcom/a/a/d/b/f;->e()V

    throw v1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/a/a/d/b/f;->m:Lcom/a/a/d/b/f$e;

    invoke-virtual {v0}, Lcom/a/a/d/b/f$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/a/a/d/b/f;->g()V

    .line 160
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/a/a/d/b/f;->m:Lcom/a/a/d/b/f$e;

    invoke-virtual {v0}, Lcom/a/a/d/b/f$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/a/a/d/b/f;->g()V

    .line 169
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/a/a/d/b/f;->m:Lcom/a/a/d/b/f$e;

    invoke-virtual {v0}, Lcom/a/a/d/b/f$e;->c()V

    .line 173
    iget-object v0, p0, Lcom/a/a/d/b/f;->b:Lcom/a/a/d/b/f$c;

    invoke-virtual {v0}, Lcom/a/a/d/b/f$c;->b()V

    .line 174
    iget-object v0, p0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v0}, Lcom/a/a/d/b/e;->a()V

    .line 175
    iput-boolean v2, p0, Lcom/a/a/d/b/f;->C:Z

    .line 176
    iput-object v1, p0, Lcom/a/a/d/b/f;->n:Lcom/a/a/e;

    .line 177
    iput-object v1, p0, Lcom/a/a/d/b/f;->c:Lcom/a/a/d/h;

    .line 178
    iput-object v1, p0, Lcom/a/a/d/b/f;->g:Lcom/a/a/d/j;

    .line 179
    iput-object v1, p0, Lcom/a/a/d/b/f;->o:Lcom/a/a/g;

    .line 180
    iput-object v1, p0, Lcom/a/a/d/b/f;->p:Lcom/a/a/d/b/l;

    .line 181
    iput-object v1, p0, Lcom/a/a/d/b/f;->q:Lcom/a/a/d/b/f$a;

    .line 182
    iput-object v1, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    .line 183
    iput-object v1, p0, Lcom/a/a/d/b/f;->B:Lcom/a/a/d/b/d;

    .line 184
    iput-object v1, p0, Lcom/a/a/d/b/f;->w:Ljava/lang/Thread;

    .line 185
    iput-object v1, p0, Lcom/a/a/d/b/f;->h:Lcom/a/a/d/h;

    .line 186
    iput-object v1, p0, Lcom/a/a/d/b/f;->y:Ljava/lang/Object;

    .line 187
    iput-object v1, p0, Lcom/a/a/d/b/f;->z:Lcom/a/a/d/a;

    .line 188
    iput-object v1, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/a/a/d/b/f;->u:J

    .line 190
    iput-boolean v2, p0, Lcom/a/a/d/b/f;->D:Z

    .line 191
    iget-object v0, p0, Lcom/a/a/d/b/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    iget-object v0, p0, Lcom/a/a/d/b/f;->l:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method private h()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/a/a/d/b/f;->o:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->ordinal()I

    move-result v0

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcom/a/a/d/b/f$1;->a:[I

    iget-object v1, p0, Lcom/a/a/d/b/f;->t:Lcom/a/a/d/b/f$f;

    invoke-virtual {v1}, Lcom/a/a/d/b/f$f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/d/b/f;->t:Lcom/a/a/d/b/f$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_0
    sget-object v0, Lcom/a/a/d/b/f$g;->a:Lcom/a/a/d/b/f$g;

    invoke-direct {p0, v0}, Lcom/a/a/d/b/f;->a(Lcom/a/a/d/b/f$g;)Lcom/a/a/d/b/f$g;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    .line 259
    invoke-direct {p0}, Lcom/a/a/d/b/f;->j()Lcom/a/a/d/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/f;->B:Lcom/a/a/d/b/d;

    .line 260
    invoke-direct {p0}, Lcom/a/a/d/b/f;->k()V

    .line 271
    :goto_0
    return-void

    .line 263
    :pswitch_1
    invoke-direct {p0}, Lcom/a/a/d/b/f;->k()V

    goto :goto_0

    .line 266
    :pswitch_2
    invoke-direct {p0}, Lcom/a/a/d/b/f;->n()V

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private j()Lcom/a/a/d/b/d;
    .locals 3

    .prologue
    .line 274
    sget-object v0, Lcom/a/a/d/b/f$1;->b:[I

    iget-object v1, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    invoke-virtual {v1}, Lcom/a/a/d/b/f$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :pswitch_0
    new-instance v0, Lcom/a/a/d/b/t;

    iget-object v1, p0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    invoke-direct {v0, v1, p0}, Lcom/a/a/d/b/t;-><init>(Lcom/a/a/d/b/e;Lcom/a/a/d/b/d$a;)V

    .line 282
    :goto_0
    return-object v0

    .line 278
    :pswitch_1
    new-instance v0, Lcom/a/a/d/b/a;

    iget-object v1, p0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    invoke-direct {v0, v1, p0}, Lcom/a/a/d/b/a;-><init>(Lcom/a/a/d/b/e;Lcom/a/a/d/b/d$a;)V

    goto :goto_0

    .line 280
    :pswitch_2
    new-instance v0, Lcom/a/a/d/b/w;

    iget-object v1, p0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    invoke-direct {v0, v1, p0}, Lcom/a/a/d/b/w;-><init>(Lcom/a/a/d/b/e;Lcom/a/a/d/b/d$a;)V

    goto :goto_0

    .line 282
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private k()V
    .locals 3

    .prologue
    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/f;->w:Ljava/lang/Thread;

    .line 290
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/d/b/f;->u:J

    .line 291
    const/4 v0, 0x0

    .line 292
    :cond_0
    iget-boolean v1, p0, Lcom/a/a/d/b/f;->D:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/a/a/d/b/f;->B:Lcom/a/a/d/b/d;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/a/a/d/b/f;->B:Lcom/a/a/d/b/d;

    .line 293
    invoke-interface {v0}, Lcom/a/a/d/b/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    iget-object v1, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    invoke-direct {p0, v1}, Lcom/a/a/d/b/f;->a(Lcom/a/a/d/b/f$g;)Lcom/a/a/d/b/f$g;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    .line 295
    invoke-direct {p0}, Lcom/a/a/d/b/f;->j()Lcom/a/a/d/b/d;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/d/b/f;->B:Lcom/a/a/d/b/d;

    .line 297
    iget-object v1, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    sget-object v2, Lcom/a/a/d/b/f$g;->d:Lcom/a/a/d/b/f$g;

    if-ne v1, v2, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/a/a/d/b/f;->c()V

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    sget-object v2, Lcom/a/a/d/b/f$g;->f:Lcom/a/a/d/b/f$g;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/a/a/d/b/f;->D:Z

    if-eqz v1, :cond_1

    :cond_3
    if-nez v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/a/a/d/b/f;->l()V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/a/a/d/b/f;->m()V

    .line 313
    new-instance v0, Lcom/a/a/d/b/o;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/a/a/d/b/f;->i:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/b/o;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 314
    iget-object v1, p0, Lcom/a/a/d/b/f;->q:Lcom/a/a/d/b/f$a;

    invoke-interface {v1, v0}, Lcom/a/a/d/b/f$a;->a(Lcom/a/a/d/b/o;)V

    .line 315
    invoke-direct {p0}, Lcom/a/a/d/b/f;->f()V

    .line 316
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/a/a/d/b/f;->j:Lcom/a/a/j/a/b;

    invoke-virtual {v0}, Lcom/a/a/j/a/b;->b()V

    .line 325
    iget-boolean v0, p0, Lcom/a/a/d/b/f;->C:Z

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/b/f;->C:Z

    .line 329
    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    .line 393
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "Retrieved data"

    iget-wide v2, p0, Lcom/a/a/d/b/f;->u:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/a/a/d/b/f;->y:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", cache key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/a/a/d/b/f;->h:Lcom/a/a/d/h;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", fetcher: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/a/a/d/b/f;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 399
    :cond_0
    const/4 v1, 0x0

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    iget-object v2, p0, Lcom/a/a/d/b/f;->y:Ljava/lang/Object;

    iget-object v3, p0, Lcom/a/a/d/b/f;->z:Lcom/a/a/d/a;

    invoke-direct {p0, v0, v2, v3}, Lcom/a/a/d/b/f;->a(Lcom/a/a/d/a/b;Ljava/lang/Object;Lcom/a/a/d/a;)Lcom/a/a/d/b/s;
    :try_end_0
    .catch Lcom/a/a/d/b/o; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 406
    :goto_0
    if-eqz v0, :cond_1

    .line 407
    iget-object v1, p0, Lcom/a/a/d/b/f;->z:Lcom/a/a/d/a;

    invoke-direct {p0, v0, v1}, Lcom/a/a/d/b/f;->b(Lcom/a/a/d/b/s;Lcom/a/a/d/a;)V

    .line 411
    :goto_1
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    iget-object v2, p0, Lcom/a/a/d/b/f;->x:Lcom/a/a/d/h;

    iget-object v3, p0, Lcom/a/a/d/b/f;->z:Lcom/a/a/d/a;

    invoke-virtual {v0, v2, v3}, Lcom/a/a/d/b/o;->a(Lcom/a/a/d/h;Lcom/a/a/d/a;)V

    .line 404
    iget-object v2, p0, Lcom/a/a/d/b/f;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    .line 409
    :cond_1
    invoke-direct {p0}, Lcom/a/a/d/b/f;->k()V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/f;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/f",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/a/a/d/b/f;->h()I

    move-result v0

    invoke-direct {p1}, Lcom/a/a/d/b/f;->h()I

    move-result v1

    sub-int/2addr v0, v1

    .line 198
    if-nez v0, :cond_0

    .line 199
    iget v0, p0, Lcom/a/a/d/b/f;->r:I

    iget v1, p1, Lcom/a/a/d/b/f;->r:I

    sub-int/2addr v0, v1

    .line 201
    :cond_0
    return v0
.end method

.method a(Lcom/a/a/e;Ljava/lang/Object;Lcom/a/a/d/b/l;Lcom/a/a/d/h;IILjava/lang/Class;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/d/b/h;Ljava/util/Map;ZZZLcom/a/a/d/j;Lcom/a/a/d/b/f$a;I)Lcom/a/a/d/b/f;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/e;",
            "Ljava/lang/Object;",
            "Lcom/a/a/d/b/l;",
            "Lcom/a/a/d/h;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/a/a/g;",
            "Lcom/a/a/d/b/h;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/d/m",
            "<*>;>;ZZZ",
            "Lcom/a/a/d/j;",
            "Lcom/a/a/d/b/f$a",
            "<TR;>;I)",
            "Lcom/a/a/d/b/f",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/d/b/f;->k:Lcom/a/a/d/b/f$d;

    move-object/from16 v16, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p10

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p15

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-virtual/range {v2 .. v16}, Lcom/a/a/d/b/e;->a(Lcom/a/a/e;Ljava/lang/Object;Lcom/a/a/d/h;IILcom/a/a/d/b/h;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/d/j;Ljava/util/Map;ZZLcom/a/a/d/b/f$d;)Lcom/a/a/d/b/e;

    .line 116
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/a/a/d/b/f;->n:Lcom/a/a/e;

    .line 117
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/a/a/d/b/f;->c:Lcom/a/a/d/h;

    .line 118
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/a/a/d/b/f;->o:Lcom/a/a/g;

    .line 119
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/a/a/d/b/f;->p:Lcom/a/a/d/b/l;

    .line 120
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/a/d/b/f;->d:I

    .line 121
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/a/d/b/f;->e:I

    .line 122
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/a/a/d/b/f;->f:Lcom/a/a/d/b/h;

    .line 123
    move/from16 v0, p14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/a/a/d/b/f;->v:Z

    .line 124
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/a/a/d/b/f;->g:Lcom/a/a/d/j;

    .line 125
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/a/a/d/b/f;->q:Lcom/a/a/d/b/f$a;

    .line 126
    move/from16 v0, p17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/a/d/b/f;->r:I

    .line 127
    sget-object v2, Lcom/a/a/d/b/f$f;->a:Lcom/a/a/d/b/f$f;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/a/a/d/b/f;->t:Lcom/a/a/d/b/f$f;

    .line 128
    return-object p0
.end method

.method public a(Lcom/a/a/d/h;Ljava/lang/Exception;Lcom/a/a/d/a/b;Lcom/a/a/d/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Ljava/lang/Exception;",
            "Lcom/a/a/d/a/b",
            "<*>;",
            "Lcom/a/a/d/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 380
    invoke-interface {p3}, Lcom/a/a/d/a/b;->a()V

    .line 381
    new-instance v0, Lcom/a/a/d/b/o;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/a/a/d/b/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 382
    invoke-interface {p3}, Lcom/a/a/d/a/b;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lcom/a/a/d/b/o;->a(Lcom/a/a/d/h;Lcom/a/a/d/a;Ljava/lang/Class;)V

    .line 383
    iget-object v1, p0, Lcom/a/a/d/b/f;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/f;->w:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 385
    sget-object v0, Lcom/a/a/d/b/f$f;->b:Lcom/a/a/d/b/f$f;

    iput-object v0, p0, Lcom/a/a/d/b/f;->t:Lcom/a/a/d/b/f$f;

    .line 386
    iget-object v0, p0, Lcom/a/a/d/b/f;->q:Lcom/a/a/d/b/f$a;

    invoke-interface {v0, p0}, Lcom/a/a/d/b/f$a;->a(Lcom/a/a/d/b/f;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/a/a/d/b/f;->k()V

    goto :goto_0
.end method

.method public a(Lcom/a/a/d/h;Ljava/lang/Object;Lcom/a/a/d/a/b;Lcom/a/a/d/a;Lcom/a/a/d/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Ljava/lang/Object;",
            "Lcom/a/a/d/a/b",
            "<*>;",
            "Lcom/a/a/d/a;",
            "Lcom/a/a/d/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    iput-object p1, p0, Lcom/a/a/d/b/f;->h:Lcom/a/a/d/h;

    .line 360
    iput-object p2, p0, Lcom/a/a/d/b/f;->y:Ljava/lang/Object;

    .line 361
    iput-object p3, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    .line 362
    iput-object p4, p0, Lcom/a/a/d/b/f;->z:Lcom/a/a/d/a;

    .line 363
    iput-object p5, p0, Lcom/a/a/d/b/f;->x:Lcom/a/a/d/h;

    .line 364
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/f;->w:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 365
    sget-object v0, Lcom/a/a/d/b/f$f;->c:Lcom/a/a/d/b/f$f;

    iput-object v0, p0, Lcom/a/a/d/b/f;->t:Lcom/a/a/d/b/f$f;

    .line 366
    iget-object v0, p0, Lcom/a/a/d/b/f;->q:Lcom/a/a/d/b/f$a;

    invoke-interface {v0, p0}, Lcom/a/a/d/b/f$a;->a(Lcom/a/a/d/b/f;)V

    .line 375
    :goto_0
    return-void

    .line 368
    :cond_0
    const-string v0, "DecodeJob.decodeFromRetrievedData"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 370
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/d/b/f;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/a/a/d/b/f;->m:Lcom/a/a/d/b/f$e;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b/f$e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/a/a/d/b/f;->g()V

    .line 150
    :cond_0
    return-void
.end method

.method a()Z
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/a/a/d/b/f$g;->a:Lcom/a/a/d/b/f$g;

    invoke-direct {p0, v0}, Lcom/a/a/d/b/f;->a(Lcom/a/a/d/b/f$g;)Lcom/a/a/d/b/f$g;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/a/a/d/b/f$g;->b:Lcom/a/a/d/b/f$g;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/a/a/d/b/f$g;->c:Lcom/a/a/d/b/f$g;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()Lcom/a/a/j/a/b;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/a/a/d/b/f;->j:Lcom/a/a/j/a/b;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/b/f;->D:Z

    .line 210
    iget-object v0, p0, Lcom/a/a/d/b/f;->B:Lcom/a/a/d/b/d;

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lcom/a/a/d/b/d;->b()V

    .line 214
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/a/a/d/b/f$f;->b:Lcom/a/a/d/b/f$f;

    iput-object v0, p0, Lcom/a/a/d/b/f;->t:Lcom/a/a/d/b/f$f;

    .line 353
    iget-object v0, p0, Lcom/a/a/d/b/f;->q:Lcom/a/a/d/b/f$a;

    invoke-interface {v0, p0}, Lcom/a/a/d/b/f$a;->a(Lcom/a/a/d/b/f;)V

    .line 354
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    check-cast p1, Lcom/a/a/d/b/f;

    invoke-virtual {p0, p1}, Lcom/a/a/d/b/f;->a(Lcom/a/a/d/b/f;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 221
    const-string v2, "DecodeJob#run"

    invoke-static {v2}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    .line 226
    :try_start_0
    iget-boolean v2, p0, Lcom/a/a/d/b/f;->D:Z

    if-eqz v2, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/a/a/d/b/f;->l()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    .line 246
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetchers don\'t match!, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/a/a/j/h;->a(ZLjava/lang/String;)V

    .line 248
    if-eqz v3, :cond_2

    .line 249
    invoke-interface {v3}, Lcom/a/a/d/a/b;->a()V

    .line 251
    :cond_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 253
    :goto_0
    return-void

    .line 230
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/a/a/d/b/f;->i()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    .line 246
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetchers don\'t match!, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/a/a/j/h;->a(ZLjava/lang/String;)V

    .line 248
    if-eqz v3, :cond_6

    .line 249
    invoke-interface {v3}, Lcom/a/a/d/a/b;->a()V

    .line 251
    :cond_6
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    .line 232
    :try_start_2
    const-string v4, "DecodeJob"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 233
    const-string v4, "DecodeJob"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/a/a/d/b/f;->D:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :cond_7
    iget-object v4, p0, Lcom/a/a/d/b/f;->s:Lcom/a/a/d/b/f$g;

    sget-object v5, Lcom/a/a/d/b/f$g;->e:Lcom/a/a/d/b/f$g;

    if-eq v4, v5, :cond_8

    .line 239
    invoke-direct {p0}, Lcom/a/a/d/b/f;->l()V

    .line 241
    :cond_8
    iget-boolean v4, p0, Lcom/a/a/d/b/f;->D:Z

    if-nez v4, :cond_c

    .line 242
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move v0, v1

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetchers don\'t match!, old: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " new: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/a/a/j/h;->a(ZLjava/lang/String;)V

    .line 248
    if-eqz v3, :cond_b

    .line 249
    invoke-interface {v3}, Lcom/a/a/d/a/b;->a()V

    .line 251
    :cond_b
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v2

    .line 245
    :cond_c
    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    .line 246
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move v0, v1

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetchers don\'t match!, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/d/b/f;->A:Lcom/a/a/d/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/a/a/j/h;->a(ZLjava/lang/String;)V

    .line 248
    if-eqz v3, :cond_f

    .line 249
    invoke-interface {v3}, Lcom/a/a/d/a/b;->a()V

    .line 251
    :cond_f
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto/16 :goto_0
.end method
