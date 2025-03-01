.class public final Lcom/a/a/h/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/h/a;
.implements Lcom/a/a/h/a/g;
.implements Lcom/a/a/h/e;
.implements Lcom/a/a/j/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/h/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/h/a;",
        "Lcom/a/a/h/a/g;",
        "Lcom/a/a/h/e;",
        "Lcom/a/a/j/a/a$c;"
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/a/a/h/f",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static z:Z


# instance fields
.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:Lcom/a/a/j/a/b;

.field private e:Lcom/a/a/h/b;

.field private f:Lcom/a/a/e;

.field private g:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private i:Lcom/a/a/h/d;

.field private j:I

.field private k:I

.field private l:Lcom/a/a/g;

.field private m:Lcom/a/a/h/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/a/h",
            "<TR;>;"
        }
    .end annotation
.end field

.field private n:Lcom/a/a/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/c",
            "<TR;>;"
        }
    .end annotation
.end field

.field private o:Lcom/a/a/d/b/i;

.field private p:Lcom/a/a/h/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/b/c",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private q:Lcom/a/a/d/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/s",
            "<TR;>;"
        }
    .end annotation
.end field

.field private r:Lcom/a/a/d/b/i$d;

.field private s:J

.field private t:Lcom/a/a/h/f$a;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const/16 v0, 0x96

    new-instance v1, Lcom/a/a/h/f$1;

    invoke-direct {v1}, Lcom/a/a/h/f$1;-><init>()V

    invoke-static {v0, v1}, Lcom/a/a/j/a/a;->a(ILcom/a/a/j/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/a/a/h/f;->a:Landroid/support/v4/util/Pools$Pool;

    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/a/h/f;->z:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/f;->c:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/a/a/j/a/b;->a()Lcom/a/a/j/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/f;->d:Lcom/a/a/j/a/b;

    .line 149
    return-void
.end method

.method private static a(IF)I
    .locals 1

    .prologue
    .line 474
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    int-to-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 384
    sget-boolean v0, Lcom/a/a/h/f;->z:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lcom/a/a/h/f;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/a/a/h/f;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/h/d;IILcom/a/a/g;Lcom/a/a/h/a/h;Lcom/a/a/h/c;Lcom/a/a/h/b;Lcom/a/a/d/b/i;Lcom/a/a/h/b/c;)Lcom/a/a/h/f;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/a/a/h/d;",
            "II",
            "Lcom/a/a/g;",
            "Lcom/a/a/h/a/h",
            "<TR;>;",
            "Lcom/a/a/h/c",
            "<TR;>;",
            "Lcom/a/a/h/b;",
            "Lcom/a/a/d/b/i;",
            "Lcom/a/a/h/b/c",
            "<-TR;>;)",
            "Lcom/a/a/h/f",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/a/a/h/f;->a:Landroid/support/v4/util/Pools$Pool;

    .line 126
    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h/f;

    .line 127
    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/a/a/h/f;

    invoke-direct {v0}, Lcom/a/a/h/f;-><init>()V

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 130
    invoke-direct/range {v0 .. v12}, Lcom/a/a/h/f;->b(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/h/d;IILcom/a/a/g;Lcom/a/a/h/a/h;Lcom/a/a/h/c;Lcom/a/a/h/b;Lcom/a/a/d/b/i;Lcom/a/a/h/b/c;)V

    .line 143
    return-object v0
.end method

.method private a(Lcom/a/a/d/b/o;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 576
    iget-object v0, p0, Lcom/a/a/h/f;->d:Lcom/a/a/j/a/b;

    invoke-virtual {v0}, Lcom/a/a/j/a/b;->b()V

    .line 577
    iget-object v0, p0, Lcom/a/a/h/f;->f:Lcom/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/e;->d()I

    move-result v0

    .line 578
    if-gt v0, p2, :cond_0

    .line 579
    const-string v1, "Glide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/a/a/h/f;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/a/a/h/f;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 581
    const-string v0, "Glide"

    invoke-virtual {p1, v0}, Lcom/a/a/d/b/o;->a(Ljava/lang/String;)V

    .line 585
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/h/f;->r:Lcom/a/a/d/b/i$d;

    .line 586
    sget-object v0, Lcom/a/a/h/f$a;->e:Lcom/a/a/h/f$a;

    iput-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/h/f;->b:Z

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/a/a/h/f;->n:Lcom/a/a/h/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h/f;->n:Lcom/a/a/h/c;

    iget-object v1, p0, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/a/h/f;->m:Lcom/a/a/h/a/h;

    .line 592
    invoke-direct {p0}, Lcom/a/a/h/f;->r()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/a/a/h/c;->a(Lcom/a/a/d/b/o;Ljava/lang/Object;Lcom/a/a/h/a/h;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 593
    :cond_1
    invoke-direct {p0}, Lcom/a/a/h/f;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_2
    iput-boolean v4, p0, Lcom/a/a/h/f;->b:Z

    .line 598
    return-void

    .line 596
    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/a/a/h/f;->b:Z

    throw v0
.end method

.method private a(Lcom/a/a/d/b/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/a/a/h/f;->o:Lcom/a/a/d/b/i;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b/i;->a(Lcom/a/a/d/b/s;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/h/f;->q:Lcom/a/a/d/b/s;

    .line 326
    return-void
.end method

.method private a(Lcom/a/a/d/b/s;Ljava/lang/Object;Lcom/a/a/d/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<TR;>;TR;",
            "Lcom/a/a/d/a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 542
    invoke-direct {p0}, Lcom/a/a/h/f;->r()Z

    move-result v5

    .line 543
    sget-object v0, Lcom/a/a/h/f$a;->d:Lcom/a/a/h/f$a;

    iput-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    .line 544
    iput-object p1, p0, Lcom/a/a/h/f;->q:Lcom/a/a/d/b/s;

    .line 546
    iget-object v0, p0, Lcom/a/a/h/f;->f:Lcom/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/e;->d()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 547
    const-string v0, "Glide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/a/a/h/f;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/a/a/h/f;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/a/a/h/f;->s:J

    .line 549
    invoke-static {v2, v3}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/h/f;->b:Z

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/a/a/h/f;->n:Lcom/a/a/h/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h/f;->n:Lcom/a/a/h/c;

    iget-object v2, p0, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    iget-object v3, p0, Lcom/a/a/h/f;->m:Lcom/a/a/h/a/h;

    move-object v1, p2

    move-object v4, p3

    .line 555
    invoke-interface/range {v0 .. v5}, Lcom/a/a/h/c;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/h/a/h;Lcom/a/a/d/a;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/a/a/h/f;->p:Lcom/a/a/h/b/c;

    .line 557
    invoke-interface {v0, p3, v5}, Lcom/a/a/h/b/c;->a(Lcom/a/a/d/a;Z)Lcom/a/a/h/b/b;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/a/a/h/f;->m:Lcom/a/a/h/a/h;

    invoke-interface {v1, p2, v0}, Lcom/a/a/h/a/h;->a(Ljava/lang/Object;Lcom/a/a/h/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :cond_2
    iput-boolean v6, p0, Lcom/a/a/h/f;->b:Z

    .line 564
    invoke-direct {p0}, Lcom/a/a/h/f;->s()V

    .line 565
    return-void

    .line 561
    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/a/a/h/f;->b:Z

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 615
    const-string v0, "Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/h/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/a/a/h/f;->f:Lcom/a/a/e;

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/a/h/f;->z:Z

    .line 400
    invoke-direct {p0, p1}, Lcom/a/a/h/f;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/h/d;IILcom/a/a/g;Lcom/a/a/h/a/h;Lcom/a/a/h/c;Lcom/a/a/h/b;Lcom/a/a/d/b/i;Lcom/a/a/h/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/a/a/h/d;",
            "II",
            "Lcom/a/a/g;",
            "Lcom/a/a/h/a/h",
            "<TR;>;",
            "Lcom/a/a/h/c",
            "<TR;>;",
            "Lcom/a/a/h/b;",
            "Lcom/a/a/d/b/i;",
            "Lcom/a/a/h/b/c",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lcom/a/a/h/f;->f:Lcom/a/a/e;

    .line 165
    iput-object p2, p0, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    .line 166
    iput-object p3, p0, Lcom/a/a/h/f;->h:Ljava/lang/Class;

    .line 167
    iput-object p4, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    .line 168
    iput p5, p0, Lcom/a/a/h/f;->j:I

    .line 169
    iput p6, p0, Lcom/a/a/h/f;->k:I

    .line 170
    iput-object p7, p0, Lcom/a/a/h/f;->l:Lcom/a/a/g;

    .line 171
    iput-object p8, p0, Lcom/a/a/h/f;->m:Lcom/a/a/h/a/h;

    .line 172
    iput-object p9, p0, Lcom/a/a/h/f;->n:Lcom/a/a/h/c;

    .line 173
    iput-object p10, p0, Lcom/a/a/h/f;->e:Lcom/a/a/h/b;

    .line 174
    iput-object p11, p0, Lcom/a/a/h/f;->o:Lcom/a/a/d/b/i;

    .line 175
    iput-object p12, p0, Lcom/a/a/h/f;->p:Lcom/a/a/h/b/c;

    .line 176
    sget-object v0, Lcom/a/a/h/f$a;->a:Lcom/a/a/h/f$a;

    iput-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    .line 177
    return-void
.end method

.method private c(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 405
    iget-object v0, p0, Lcom/a/a/h/f;->f:Lcom/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v1}, Lcom/a/a/h/d;->t()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/a/a/h/f;->b:Z

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you must do so, consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    return-void
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/a/a/h/f;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v0}, Lcom/a/a/h/d;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/f;->u:Landroid/graphics/drawable/Drawable;

    .line 356
    iget-object v0, p0, Lcom/a/a/h/f;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v0}, Lcom/a/a/h/d;->o()I

    move-result v0

    if-lez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v0}, Lcom/a/a/h/d;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/a/h/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/f;->u:Landroid/graphics/drawable/Drawable;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/a/a/h/f;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/a/a/h/f;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v0}, Lcom/a/a/h/d;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/f;->v:Landroid/graphics/drawable/Drawable;

    .line 366
    iget-object v0, p0, Lcom/a/a/h/f;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v0}, Lcom/a/a/h/d;->p()I

    move-result v0

    if-lez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v0}, Lcom/a/a/h/d;->p()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/a/h/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/f;->v:Landroid/graphics/drawable/Drawable;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/a/a/h/f;->v:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private n()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/a/a/h/f;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v0}, Lcom/a/a/h/d;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/f;->w:Landroid/graphics/drawable/Drawable;

    .line 376
    iget-object v0, p0, Lcom/a/a/h/f;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v0}, Lcom/a/a/h/d;->r()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v0}, Lcom/a/a/h/d;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/a/h/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/f;->w:Landroid/graphics/drawable/Drawable;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/a/a/h/f;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/a/a/h/f;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 414
    :cond_0
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/a/a/h/f;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 419
    :cond_1
    if-nez v0, :cond_2

    .line 420
    invoke-direct {p0}, Lcom/a/a/h/f;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 423
    :cond_2
    if-nez v0, :cond_3

    .line 424
    invoke-direct {p0}, Lcom/a/a/h/f;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 426
    :cond_3
    iget-object v1, p0, Lcom/a/a/h/f;->m:Lcom/a/a/h/a/h;

    invoke-interface {v1, v0}, Lcom/a/a/h/a/h;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/a/a/h/f;->e:Lcom/a/a/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->e:Lcom/a/a/h/b;

    invoke-interface {v0, p0}, Lcom/a/a/h/b;->b(Lcom/a/a/h/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/a/a/h/f;->e:Lcom/a/a/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->e:Lcom/a/a/h/b;

    invoke-interface {v0, p0}, Lcom/a/a/h/b;->c(Lcom/a/a/h/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/a/a/h/f;->e:Lcom/a/a/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->e:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/a/a/h/f;->e:Lcom/a/a/h/b;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/a/a/h/f;->e:Lcom/a/a/h/b;

    invoke-interface {v0, p0}, Lcom/a/a/h/b;->d(Lcom/a/a/h/a;)V

    .line 493
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/a/a/h/f;->k()V

    .line 209
    iget-object v0, p0, Lcom/a/a/h/f;->d:Lcom/a/a/j/a/b;

    invoke-virtual {v0}, Lcom/a/a/j/a/b;->b()V

    .line 210
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/h/f;->s:J

    .line 211
    iget-object v0, p0, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 212
    iget v0, p0, Lcom/a/a/h/f;->j:I

    iget v1, p0, Lcom/a/a/h/f;->k:I

    invoke-static {v0, v1}, Lcom/a/a/j/i;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget v0, p0, Lcom/a/a/h/f;->j:I

    iput v0, p0, Lcom/a/a/h/f;->x:I

    .line 214
    iget v0, p0, Lcom/a/a/h/f;->k:I

    iput v0, p0, Lcom/a/a/h/f;->y:I

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/a/a/h/f;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 219
    :goto_0
    new-instance v1, Lcom/a/a/d/b/o;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lcom/a/a/d/b/o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/a/a/h/f;->a(Lcom/a/a/d/b/o;I)V

    .line 255
    :cond_1
    :goto_1
    return-void

    .line 218
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->b:Lcom/a/a/h/f$a;

    if-ne v0, v1, :cond_4

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->d:Lcom/a/a/h/f$a;

    if-ne v0, v1, :cond_5

    .line 234
    iget-object v0, p0, Lcom/a/a/h/f;->q:Lcom/a/a/d/b/s;

    sget-object v1, Lcom/a/a/d/a;->e:Lcom/a/a/d/a;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h/f;->a(Lcom/a/a/d/b/s;Lcom/a/a/d/a;)V

    goto :goto_1

    .line 241
    :cond_5
    sget-object v0, Lcom/a/a/h/f$a;->c:Lcom/a/a/h/f$a;

    iput-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    .line 242
    iget v0, p0, Lcom/a/a/h/f;->j:I

    iget v1, p0, Lcom/a/a/h/f;->k:I

    invoke-static {v0, v1}, Lcom/a/a/j/i;->a(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 243
    iget v0, p0, Lcom/a/a/h/f;->j:I

    iget v1, p0, Lcom/a/a/h/f;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h/f;->a(II)V

    .line 248
    :goto_2
    iget-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->b:Lcom/a/a/h/f$a;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->c:Lcom/a/a/h/f$a;

    if-ne v0, v1, :cond_7

    .line 249
    :cond_6
    invoke-direct {p0}, Lcom/a/a/h/f;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Lcom/a/a/h/f;->m:Lcom/a/a/h/a/h;

    invoke-direct {p0}, Lcom/a/a/h/f;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/h/a/h;->b(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :cond_7
    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a/a/h/f;->s:J

    invoke-static {v2, v3}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/h/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/a/a/h/f;->m:Lcom/a/a/h/a/h;

    invoke-interface {v0, p0}, Lcom/a/a/h/a/h;->a(Lcom/a/a/h/a/g;)V

    goto :goto_2
.end method

.method public a(II)V
    .locals 20

    .prologue
    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h/f;->d:Lcom/a/a/j/a/b;

    invoke-virtual {v2}, Lcom/a/a/j/a/b;->b()V

    .line 435
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/a/a/h/f;->s:J

    invoke-static {v4, v5}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/a/a/h/f;->a(Ljava/lang/String;)V

    .line 438
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v3, Lcom/a/a/h/f$a;->c:Lcom/a/a/h/f$a;

    if-eq v2, v3, :cond_2

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 441
    :cond_2
    sget-object v2, Lcom/a/a/h/f$a;->b:Lcom/a/a/h/f$a;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    invoke-virtual {v2}, Lcom/a/a/h/d;->B()F

    move-result v2

    .line 444
    move/from16 v0, p1

    invoke-static {v0, v2}, Lcom/a/a/h/f;->a(IF)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/a/a/h/f;->x:I

    .line 445
    move/from16 v0, p2

    invoke-static {v0, v2}, Lcom/a/a/h/f;->a(IF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/h/f;->y:I

    .line 447
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished setup for calling load in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/a/a/h/f;->s:J

    invoke-static {v4, v5}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/a/a/h/f;->a(Ljava/lang/String;)V

    .line 450
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/h/f;->o:Lcom/a/a/d/b/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/h/f;->f:Lcom/a/a/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    .line 453
    invoke-virtual {v5}, Lcom/a/a/h/d;->v()Lcom/a/a/d/h;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/h/f;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/h/f;->y:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    .line 456
    invoke-virtual {v8}, Lcom/a/a/h/d;->l()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/h/f;->h:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/h/f;->l:Lcom/a/a/g;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    .line 459
    invoke-virtual {v11}, Lcom/a/a/h/d;->m()Lcom/a/a/d/b/h;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    .line 460
    invoke-virtual {v12}, Lcom/a/a/h/d;->i()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    .line 461
    invoke-virtual {v13}, Lcom/a/a/h/d;->j()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    .line 462
    invoke-virtual {v14}, Lcom/a/a/h/d;->C()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    .line 463
    invoke-virtual {v15}, Lcom/a/a/h/d;->k()Lcom/a/a/d/j;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    move-object/from16 v16, v0

    .line 464
    invoke-virtual/range {v16 .. v16}, Lcom/a/a/h/d;->u()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    move-object/from16 v17, v0

    .line 465
    invoke-virtual/range {v17 .. v17}, Lcom/a/a/h/d;->D()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    move-object/from16 v18, v0

    .line 466
    invoke-virtual/range {v18 .. v18}, Lcom/a/a/h/d;->E()Z

    move-result v18

    move-object/from16 v19, p0

    .line 450
    invoke-virtual/range {v2 .. v19}, Lcom/a/a/d/b/i;->a(Lcom/a/a/e;Ljava/lang/Object;Lcom/a/a/d/h;IILjava/lang/Class;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/d/b/h;Ljava/util/Map;ZZLcom/a/a/d/j;ZZZLcom/a/a/h/e;)Lcom/a/a/d/b/i$d;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/a/a/h/f;->r:Lcom/a/a/d/b/i$d;

    .line 468
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/a/a/h/f;->s:J

    invoke-static {v4, v5}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/a/a/h/f;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/a/a/d/b/o;)V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/a/a/h/f;->a(Lcom/a/a/d/b/o;I)V

    .line 573
    return-void
.end method

.method public a(Lcom/a/a/d/b/s;Lcom/a/a/d/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<*>;",
            "Lcom/a/a/d/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/a/a/h/f;->d:Lcom/a/a/j/a/b;

    invoke-virtual {v0}, Lcom/a/a/j/a/b;->b()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/h/f;->r:Lcom/a/a/d/b/i$d;

    .line 503
    if-nez p1, :cond_0

    .line 504
    new-instance v0, Lcom/a/a/d/b/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/h/f;->h:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d/b/o;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0, v0}, Lcom/a/a/h/f;->a(Lcom/a/a/d/b/o;)V

    .line 531
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-interface {p1}, Lcom/a/a/d/b/s;->c()Ljava/lang/Object;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/a/a/h/f;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 512
    :cond_1
    invoke-direct {p0, p1}, Lcom/a/a/h/f;->a(Lcom/a/a/d/b/s;)V

    .line 513
    new-instance v2, Lcom/a/a/d/b/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/a/a/h/f;->h:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 515
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "} inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/a/a/d/b/o;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0, v2}, Lcom/a/a/h/f;->a(Lcom/a/a/d/b/o;)V

    goto :goto_0

    .line 515
    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    .line 523
    :cond_4
    invoke-direct {p0}, Lcom/a/a/h/f;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 524
    invoke-direct {p0, p1}, Lcom/a/a/h/f;->a(Lcom/a/a/d/b/s;)V

    .line 526
    sget-object v0, Lcom/a/a/h/f$a;->d:Lcom/a/a/h/f$a;

    iput-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    goto :goto_0

    .line 530
    :cond_5
    invoke-direct {p0, p1, v1, p2}, Lcom/a/a/h/f;->a(Lcom/a/a/d/b/s;Ljava/lang/Object;Lcom/a/a/d/a;)V

    goto :goto_0
.end method

.method public a(Lcom/a/a/h/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 602
    instance-of v1, p1, Lcom/a/a/h/f;

    if-eqz v1, :cond_0

    .line 603
    check-cast p1, Lcom/a/a/h/f;

    .line 604
    iget v1, p0, Lcom/a/a/h/f;->j:I

    iget v2, p1, Lcom/a/a/h/f;->j:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/a/a/h/f;->k:I

    iget v2, p1, Lcom/a/a/h/f;->k:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    iget-object v2, p1, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    .line 606
    invoke-static {v1, v2}, Lcom/a/a/j/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/h/f;->h:Ljava/lang/Class;

    iget-object v2, p1, Lcom/a/a/h/f;->h:Ljava/lang/Class;

    .line 607
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    iget-object v2, p1, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    .line 608
    invoke-virtual {v1, v2}, Lcom/a/a/h/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/h/f;->l:Lcom/a/a/g;

    iget-object v2, p1, Lcom/a/a/h/f;->l:Lcom/a/a/g;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 611
    :cond_0
    return v0
.end method

.method public a_()Lcom/a/a/j/a/b;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/a/a/h/f;->d:Lcom/a/a/j/a/b;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/a/a/h/f;->c()V

    .line 320
    sget-object v0, Lcom/a/a/h/f$a;->h:Lcom/a/a/h/f$a;

    iput-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    .line 321
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 296
    invoke-direct {p0}, Lcom/a/a/h/f;->k()V

    .line 297
    iget-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->g:Lcom/a/a/h/f$a;

    if-ne v0, v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/h/f;->j()V

    .line 302
    iget-object v0, p0, Lcom/a/a/h/f;->q:Lcom/a/a/d/b/s;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/a/a/h/f;->q:Lcom/a/a/d/b/s;

    invoke-direct {p0, v0}, Lcom/a/a/h/f;->a(Lcom/a/a/d/b/s;)V

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/a/a/h/f;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/a/a/h/f;->m:Lcom/a/a/h/a/h;

    invoke-direct {p0}, Lcom/a/a/h/f;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/h/a/h;->a(Landroid/graphics/drawable/Drawable;)V

    .line 309
    :cond_2
    sget-object v0, Lcom/a/a/h/f$a;->g:Lcom/a/a/h/f$a;

    iput-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->b:Lcom/a/a/h/f$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->c:Lcom/a/a/h/f$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->d:Lcom/a/a/h/f$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/a/a/h/f;->f()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->f:Lcom/a/a/h/f$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->g:Lcom/a/a/h/f$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0}, Lcom/a/a/h/f;->k()V

    .line 187
    iput-object v0, p0, Lcom/a/a/h/f;->f:Lcom/a/a/e;

    .line 188
    iput-object v0, p0, Lcom/a/a/h/f;->g:Ljava/lang/Object;

    .line 189
    iput-object v0, p0, Lcom/a/a/h/f;->h:Ljava/lang/Class;

    .line 190
    iput-object v0, p0, Lcom/a/a/h/f;->i:Lcom/a/a/h/d;

    .line 191
    iput v1, p0, Lcom/a/a/h/f;->j:I

    .line 192
    iput v1, p0, Lcom/a/a/h/f;->k:I

    .line 193
    iput-object v0, p0, Lcom/a/a/h/f;->m:Lcom/a/a/h/a/h;

    .line 194
    iput-object v0, p0, Lcom/a/a/h/f;->n:Lcom/a/a/h/c;

    .line 195
    iput-object v0, p0, Lcom/a/a/h/f;->e:Lcom/a/a/h/b;

    .line 196
    iput-object v0, p0, Lcom/a/a/h/f;->p:Lcom/a/a/h/b/c;

    .line 197
    iput-object v0, p0, Lcom/a/a/h/f;->r:Lcom/a/a/d/b/i$d;

    .line 198
    iput-object v0, p0, Lcom/a/a/h/f;->u:Landroid/graphics/drawable/Drawable;

    .line 199
    iput-object v0, p0, Lcom/a/a/h/f;->v:Landroid/graphics/drawable/Drawable;

    .line 200
    iput-object v0, p0, Lcom/a/a/h/f;->w:Landroid/graphics/drawable/Drawable;

    .line 201
    iput v1, p0, Lcom/a/a/h/f;->x:I

    .line 202
    iput v1, p0, Lcom/a/a/h/f;->y:I

    .line 203
    sget-object v0, Lcom/a/a/h/f;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method j()V
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/a/a/h/f;->k()V

    .line 267
    iget-object v0, p0, Lcom/a/a/h/f;->d:Lcom/a/a/j/a/b;

    invoke-virtual {v0}, Lcom/a/a/j/a/b;->b()V

    .line 268
    iget-object v0, p0, Lcom/a/a/h/f;->m:Lcom/a/a/h/a/h;

    invoke-interface {v0, p0}, Lcom/a/a/h/a/h;->b(Lcom/a/a/h/a/g;)V

    .line 269
    sget-object v0, Lcom/a/a/h/f$a;->f:Lcom/a/a/h/f$a;

    iput-object v0, p0, Lcom/a/a/h/f;->t:Lcom/a/a/h/f$a;

    .line 270
    iget-object v0, p0, Lcom/a/a/h/f;->r:Lcom/a/a/d/b/i$d;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/a/a/h/f;->r:Lcom/a/a/d/b/i$d;

    invoke-virtual {v0}, Lcom/a/a/d/b/i$d;->a()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/h/f;->r:Lcom/a/a/d/b/i$d;

    .line 274
    :cond_0
    return-void
.end method
