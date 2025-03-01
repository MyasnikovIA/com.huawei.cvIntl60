.class final Lcom/a/a/d/b/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/b/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/b/g$a",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/d/b/f;

.field private final b:Lcom/a/a/d/a;


# direct methods
.method constructor <init>(Lcom/a/a/d/b/f;Lcom/a/a/d/a;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p2, p0, Lcom/a/a/d/b/f$b;->b:Lcom/a/a/d/a;

    .line 518
    return-void
.end method

.method private b(Lcom/a/a/d/b/s;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<TZ;>;)",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 570
    invoke-interface {p1}, Lcom/a/a/d/b/s;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/s;)Lcom/a/a/d/b/s;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<TZ;>;)",
            "Lcom/a/a/d/b/s",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 522
    invoke-direct {p0, p1}, Lcom/a/a/d/b/f$b;->b(Lcom/a/a/d/b/s;)Ljava/lang/Class;

    move-result-object v6

    .line 525
    iget-object v0, p0, Lcom/a/a/d/b/f$b;->b:Lcom/a/a/d/a;

    sget-object v2, Lcom/a/a/d/a;->d:Lcom/a/a/d/a;

    if-eq v0, v2, :cond_7

    .line 526
    iget-object v0, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v0, v0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v0, v6}, Lcom/a/a/d/b/e;->c(Ljava/lang/Class;)Lcom/a/a/d/m;

    move-result-object v5

    .line 527
    iget-object v0, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    invoke-static {v0}, Lcom/a/a/d/b/f;->b(Lcom/a/a/d/b/f;)Lcom/a/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget v2, v2, Lcom/a/a/d/b/f;->d:I

    iget-object v3, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget v3, v3, Lcom/a/a/d/b/f;->e:I

    invoke-interface {v5, v0, p1, v2, v3}, Lcom/a/a/d/m;->a(Landroid/content/Context;Lcom/a/a/d/b/s;II)Lcom/a/a/d/b/s;

    move-result-object v0

    move-object v8, v0

    .line 530
    :goto_0
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-interface {p1}, Lcom/a/a/d/b/s;->e()V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v0, v0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v0, v8}, Lcom/a/a/d/b/e;->a(Lcom/a/a/d/b/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v0, v0, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v0, v8}, Lcom/a/a/d/b/e;->b(Lcom/a/a/d/b/s;)Lcom/a/a/d/l;

    move-result-object v1

    .line 538
    iget-object v0, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v0, v0, Lcom/a/a/d/b/f;->g:Lcom/a/a/d/j;

    invoke-interface {v1, v0}, Lcom/a/a/d/l;->a(Lcom/a/a/d/j;)Lcom/a/a/d/c;

    move-result-object v0

    move-object v9, v1

    .line 545
    :goto_1
    iget-object v1, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v1, v1, Lcom/a/a/d/b/f;->a:Lcom/a/a/d/b/e;

    iget-object v2, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v2, v2, Lcom/a/a/d/b/f;->h:Lcom/a/a/d/h;

    invoke-virtual {v1, v2}, Lcom/a/a/d/b/e;->a(Lcom/a/a/d/h;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 546
    :goto_2
    iget-object v2, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v2, v2, Lcom/a/a/d/b/f;->f:Lcom/a/a/d/b/h;

    iget-object v3, p0, Lcom/a/a/d/b/f$b;->b:Lcom/a/a/d/a;

    invoke-virtual {v2, v1, v3, v0}, Lcom/a/a/d/b/h;->a(ZLcom/a/a/d/a;Lcom/a/a/d/c;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 548
    if-nez v9, :cond_3

    .line 549
    new-instance v0, Lcom/a/a/h$d;

    invoke-interface {v8}, Lcom/a/a/d/b/s;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/h$d;-><init>(Ljava/lang/Class;)V

    throw v0

    .line 541
    :cond_1
    sget-object v0, Lcom/a/a/d/c;->c:Lcom/a/a/d/c;

    move-object v9, v1

    goto :goto_1

    .line 545
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 552
    :cond_3
    sget-object v1, Lcom/a/a/d/c;->a:Lcom/a/a/d/c;

    if-ne v0, v1, :cond_5

    .line 553
    new-instance v0, Lcom/a/a/d/b/b;

    iget-object v1, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v1, v1, Lcom/a/a/d/b/f;->h:Lcom/a/a/d/h;

    iget-object v2, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v2, v2, Lcom/a/a/d/b/f;->c:Lcom/a/a/d/h;

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/b/b;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/h;)V

    .line 561
    :goto_3
    invoke-static {v8}, Lcom/a/a/d/b/r;->a(Lcom/a/a/d/b/s;)Lcom/a/a/d/b/r;

    move-result-object v8

    .line 562
    iget-object v1, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v1, v1, Lcom/a/a/d/b/f;->b:Lcom/a/a/d/b/f$c;

    invoke-virtual {v1, v0, v9, v8}, Lcom/a/a/d/b/f$c;->a(Lcom/a/a/d/h;Lcom/a/a/d/l;Lcom/a/a/d/b/r;)V

    .line 565
    :cond_4
    return-object v8

    .line 554
    :cond_5
    sget-object v1, Lcom/a/a/d/c;->b:Lcom/a/a/d/c;

    if-ne v0, v1, :cond_6

    .line 555
    new-instance v0, Lcom/a/a/d/b/u;

    iget-object v1, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v1, v1, Lcom/a/a/d/b/f;->h:Lcom/a/a/d/h;

    iget-object v2, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v2, v2, Lcom/a/a/d/b/f;->c:Lcom/a/a/d/h;

    iget-object v3, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget v3, v3, Lcom/a/a/d/b/f;->d:I

    iget-object v4, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget v4, v4, Lcom/a/a/d/b/f;->e:I

    iget-object v7, p0, Lcom/a/a/d/b/f$b;->a:Lcom/a/a/d/b/f;

    iget-object v7, v7, Lcom/a/a/d/b/f;->g:Lcom/a/a/d/j;

    invoke-direct/range {v0 .. v7}, Lcom/a/a/d/b/u;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/h;IILcom/a/a/d/m;Ljava/lang/Class;Lcom/a/a/d/j;)V

    goto :goto_3

    .line 558
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v8, p1

    move-object v5, v1

    goto/16 :goto_0
.end method
