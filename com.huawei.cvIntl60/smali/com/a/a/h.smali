.class public Lcom/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/h$b;,
        Lcom/a/a/h$a;,
        Lcom/a/a/h$e;,
        Lcom/a/a/h$d;,
        Lcom/a/a/h$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/p;

.field private final b:Lcom/a/a/g/a;

.field private final c:Lcom/a/a/g/e;

.field private final d:Lcom/a/a/g/f;

.field private final e:Lcom/a/a/d/a/d;

.field private final f:Lcom/a/a/d/d/f/e;

.field private final g:Lcom/a/a/g/b;

.field private final h:Lcom/a/a/g/d;

.field private final i:Lcom/a/a/g/c;

.field private final j:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/a/a/g/d;

    invoke-direct {v0}, Lcom/a/a/g/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->h:Lcom/a/a/g/d;

    .line 52
    new-instance v0, Lcom/a/a/g/c;

    invoke-direct {v0}, Lcom/a/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->i:Lcom/a/a/g/c;

    .line 53
    invoke-static {}, Lcom/a/a/j/a/a;->a()Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h;->j:Landroid/support/v4/util/Pools$Pool;

    .line 56
    new-instance v0, Lcom/a/a/d/c/p;

    iget-object v1, p0, Lcom/a/a/h;->j:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v0, v1}, Lcom/a/a/d/c/p;-><init>(Landroid/support/v4/util/Pools$Pool;)V

    iput-object v0, p0, Lcom/a/a/h;->a:Lcom/a/a/d/c/p;

    .line 57
    new-instance v0, Lcom/a/a/g/a;

    invoke-direct {v0}, Lcom/a/a/g/a;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->b:Lcom/a/a/g/a;

    .line 58
    new-instance v0, Lcom/a/a/g/e;

    invoke-direct {v0}, Lcom/a/a/g/e;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/g/e;

    .line 59
    new-instance v0, Lcom/a/a/g/f;

    invoke-direct {v0}, Lcom/a/a/g/f;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/g/f;

    .line 60
    new-instance v0, Lcom/a/a/d/a/d;

    invoke-direct {v0}, Lcom/a/a/d/a/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->e:Lcom/a/a/d/a/d;

    .line 61
    new-instance v0, Lcom/a/a/d/d/f/e;

    invoke-direct {v0}, Lcom/a/a/d/d/f/e;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->f:Lcom/a/a/d/d/f/e;

    .line 62
    new-instance v0, Lcom/a/a/g/b;

    invoke-direct {v0}, Lcom/a/a/g/b;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/g/b;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gif"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bitmap"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BitmapDrawable"

    aput-object v2, v0, v1

    .line 64
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/a/a/h;->a(Ljava/util/List;)Lcom/a/a/h;

    .line 65
    return-void
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/b/g",
            "<TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    .prologue
    .line 468
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 469
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/g/e;

    .line 470
    invoke-virtual {v0, p1, p2}, Lcom/a/a/g/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 472
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 473
    iget-object v0, p0, Lcom/a/a/h;->f:Lcom/a/a/d/d/f/e;

    .line 474
    invoke-virtual {v0, v2, p3}, Lcom/a/a/d/d/f/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 478
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/g/e;

    .line 479
    invoke-virtual {v0, p1, v2}, Lcom/a/a/g/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 480
    iget-object v0, p0, Lcom/a/a/h;->f:Lcom/a/a/d/d/f/e;

    .line 481
    invoke-virtual {v0, v2, v3}, Lcom/a/a/d/d/f/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/d/d/f/d;

    move-result-object v5

    .line 482
    new-instance v0, Lcom/a/a/d/b/g;

    iget-object v6, p0, Lcom/a/a/h;->j:Landroid/support/v4/util/Pools$Pool;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/a/a/d/b/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/a/a/d/d/f/d;Landroid/support/v4/util/Pools$Pool;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    :cond_1
    return-object v7
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/d/b/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Lcom/a/a/d/b/q",
            "<TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/a/a/h;->i:Lcom/a/a/g/c;

    .line 448
    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/g/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/d/b/q;

    move-result-object v0

    .line 449
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/a/a/h;->i:Lcom/a/a/g/c;

    invoke-virtual {v1, p1, p2, p3}, Lcom/a/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 454
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    const/4 v0, 0x0

    .line 460
    :goto_0
    iget-object v1, p0, Lcom/a/a/h;->i:Lcom/a/a/g/c;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/a/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/b/q;)V

    .line 462
    :cond_0
    return-object v0

    .line 457
    :cond_1
    new-instance v0, Lcom/a/a/d/b/q;

    iget-object v5, p0, Lcom/a/a/h;->j:Landroid/support/v4/util/Pools$Pool;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/d/b/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Lcom/a/a/d/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/a/a/d/d",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/a/a/h;->b:Lcom/a/a/g/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/g/a;->a(Ljava/lang/Class;)Lcom/a/a/d/d;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_0

    .line 531
    return-object v0

    .line 533
    :cond_0
    new-instance v0, Lcom/a/a/h$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/h$e;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public a(Lcom/a/a/d/a/c$a;)Lcom/a/a/h;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/a/a/h;->e:Lcom/a/a/d/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/d/a/d;->a(Lcom/a/a/d/a/c$a;)V

    .line 331
    return-object p0
.end method

.method public a(Lcom/a/a/d/f;)Lcom/a/a/h;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/g/b;

    invoke-virtual {v0, p1}, Lcom/a/a/g/b;->a(Lcom/a/a/d/f;)V

    .line 356
    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/a/a/d/d;)Lcom/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/a/a/d/d",
            "<TData;>;)",
            "Lcom/a/a/h;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/a/a/h;->b:Lcom/a/a/g/a;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/g/a;->a(Ljava/lang/Class;Lcom/a/a/d/d;)V

    .line 104
    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/a/a/d/l;)Lcom/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/a/a/d/l",
            "<TTResource;>;)",
            "Lcom/a/a/h;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/g/f;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/g/f;->a(Ljava/lang/Class;Lcom/a/a/d/l;)V

    .line 304
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/a/a/d/c/o",
            "<TModel;TData;>;)",
            "Lcom/a/a/h;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/a/a/h;->a:Lcom/a/a/d/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/d/c/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)V

    .line 384
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/d;)Lcom/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Lcom/a/a/d/d/f/d",
            "<TTResource;TTranscode;>;)",
            "Lcom/a/a/h;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/a/a/h;->f:Lcom/a/a/d/d/f/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/d/d/f/e;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/d;)V

    .line 347
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/a/a/d/k",
            "<TData;TTResource;>;)",
            "Lcom/a/a/h;"
        }
    .end annotation

    .prologue
    .line 147
    const-string v0, "legacy_append"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    .line 148
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/a/a/d/k",
            "<TData;TTResource;>;)",
            "Lcom/a/a/h;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/g/e;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/a/a/g/e;->a(Ljava/lang/String;Lcom/a/a/d/k;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 178
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/a/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/a/a/h;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    const/4 v1, 0x0

    const-string v2, "legacy_prepend_all"

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 258
    const-string v1, "legacy_append"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v1, p0, Lcom/a/a/h;->c:Lcom/a/a/g/e;

    invoke-virtual {v1, v0}, Lcom/a/a/g/e;->a(Ljava/util/List;)V

    .line 260
    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, Lcom/a/a/h;->g:Lcom/a/a/g/b;

    invoke-virtual {v0}, Lcom/a/a/g/b;->a()Ljava/util/List;

    move-result-object v0

    .line 550
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    new-instance v0, Lcom/a/a/h$b;

    invoke-direct {v0}, Lcom/a/a/h$b;-><init>()V

    throw v0

    .line 553
    :cond_0
    return-object v0
.end method

.method public a(Lcom/a/a/d/b/s;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/g/f;

    invoke-interface {p1}, Lcom/a/a/d/b/s;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/g/f;->a(Ljava/lang/Class;)Lcom/a/a/d/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Lcom/a/a/d/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/a/a/d/a/c",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/a/a/h;->e:Lcom/a/a/d/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/d/a/d;->a(Ljava/lang/Object;)Lcom/a/a/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/a/a/d/b/s;)Lcom/a/a/d/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/b/s",
            "<TX;>;)",
            "Lcom/a/a/d/l",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/g/f;

    invoke-interface {p1}, Lcom/a/a/d/b/s;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/g/f;->a(Ljava/lang/Class;)Lcom/a/a/d/l;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    .line 522
    return-object v0

    .line 524
    :cond_0
    new-instance v0, Lcom/a/a/h$d;

    invoke-interface {p1}, Lcom/a/a/d/b/s;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/h$d;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/a/a/h;->h:Lcom/a/a/g/d;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/g/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 493
    if-nez v0, :cond_3

    .line 494
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    iget-object v0, p0, Lcom/a/a/h;->a:Lcom/a/a/d/c/p;

    invoke-virtual {v0, p1}, Lcom/a/a/d/c/p;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 497
    iget-object v3, p0, Lcom/a/a/h;->c:Lcom/a/a/g/e;

    .line 498
    invoke-virtual {v3, v0, p2}, Lcom/a/a/g/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 499
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 500
    iget-object v4, p0, Lcom/a/a/h;->f:Lcom/a/a/d/d/f/e;

    .line 501
    invoke-virtual {v4, v0, p3}, Lcom/a/a/d/d/f/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 502
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 503
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/a/a/h;->h:Lcom/a/a/g/d;

    .line 508
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 507
    invoke-virtual {v0, p1, p2, v2}, Lcom/a/a/g/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    move-object v0, v1

    .line 511
    :cond_3
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/c/n",
            "<TModel;*>;>;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/a/a/h;->a:Lcom/a/a/d/c/p;

    invoke-virtual {v0, p1}, Lcom/a/a/d/c/p;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 542
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    new-instance v0, Lcom/a/a/h$c;

    invoke-direct {v0, p1}, Lcom/a/a/h$c;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 545
    :cond_0
    return-object v0
.end method
