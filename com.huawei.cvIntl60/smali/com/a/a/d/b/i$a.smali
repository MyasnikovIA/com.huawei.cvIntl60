.class Lcom/a/a/d/b/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/a/a/d/b/f$d;

.field final b:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/a/a/d/b/f",
            "<*>;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Lcom/a/a/d/b/f$d;)V
    .locals 2

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/16 v0, 0x96

    new-instance v1, Lcom/a/a/d/b/i$a$1;

    invoke-direct {v1, p0}, Lcom/a/a/d/b/i$a$1;-><init>(Lcom/a/a/d/b/i$a;)V

    invoke-static {v0, v1}, Lcom/a/a/j/a/a;->a(ILcom/a/a/j/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/i$a;->b:Landroid/support/v4/util/Pools$Pool;

    .line 409
    iput-object p1, p0, Lcom/a/a/d/b/i$a;->a:Lcom/a/a/d/b/f$d;

    .line 410
    return-void
.end method


# virtual methods
.method a(Lcom/a/a/e;Ljava/lang/Object;Lcom/a/a/d/b/l;Lcom/a/a/d/h;IILjava/lang/Class;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/d/b/h;Ljava/util/Map;ZZZLcom/a/a/d/j;Lcom/a/a/d/b/f$a;)Lcom/a/a/d/b/f;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
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
            "<TR;>;)",
            "Lcom/a/a/d/b/f",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/d/b/i$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/d/b/f;

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/d/b/i$a;->c:I

    move/from16 v18, v0

    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/d/b/i$a;->c:I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-virtual/range {v1 .. v18}, Lcom/a/a/d/b/f;->a(Lcom/a/a/e;Ljava/lang/Object;Lcom/a/a/d/b/l;Lcom/a/a/d/h;IILjava/lang/Class;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/d/b/h;Ljava/util/Map;ZZZLcom/a/a/d/j;Lcom/a/a/d/b/f$a;I)Lcom/a/a/d/b/f;

    move-result-object v1

    return-object v1
.end method
