.class Lcom/a/a/d/b/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/a/a/d/b/c/a;

.field final b:Lcom/a/a/d/b/c/a;

.field final c:Lcom/a/a/d/b/c/a;

.field final d:Lcom/a/a/d/b/k;

.field final e:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/a/a/d/b/j",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/k;)V
    .locals 2

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const/16 v0, 0x96

    new-instance v1, Lcom/a/a/d/b/i$b$1;

    invoke-direct {v1, p0}, Lcom/a/a/d/b/i$b$1;-><init>(Lcom/a/a/d/b/i$b;)V

    invoke-static {v0, v1}, Lcom/a/a/j/a/a;->a(ILcom/a/a/j/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/i$b;->e:Landroid/support/v4/util/Pools$Pool;

    .line 468
    iput-object p1, p0, Lcom/a/a/d/b/i$b;->a:Lcom/a/a/d/b/c/a;

    .line 469
    iput-object p2, p0, Lcom/a/a/d/b/i$b;->b:Lcom/a/a/d/b/c/a;

    .line 470
    iput-object p3, p0, Lcom/a/a/d/b/i$b;->c:Lcom/a/a/d/b/c/a;

    .line 471
    iput-object p4, p0, Lcom/a/a/d/b/i$b;->d:Lcom/a/a/d/b/k;

    .line 472
    return-void
.end method


# virtual methods
.method a(Lcom/a/a/d/h;ZZ)Lcom/a/a/d/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/h;",
            "ZZ)",
            "Lcom/a/a/d/b/j",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/a/a/d/b/i$b;->e:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/j;

    .line 478
    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/d/b/j;->a(Lcom/a/a/d/h;ZZ)Lcom/a/a/d/b/j;

    move-result-object v0

    return-object v0
.end method
