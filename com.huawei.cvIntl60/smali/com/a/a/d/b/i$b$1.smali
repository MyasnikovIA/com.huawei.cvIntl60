.class Lcom/a/a/d/b/i$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/j/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/j/a/a$a",
        "<",
        "Lcom/a/a/d/b/j",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/d/b/i$b;


# direct methods
.method constructor <init>(Lcom/a/a/d/b/i$b;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/a/a/d/b/i$b$1;->a:Lcom/a/a/d/b/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/d/b/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b/j",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lcom/a/a/d/b/j;

    iget-object v1, p0, Lcom/a/a/d/b/i$b$1;->a:Lcom/a/a/d/b/i$b;

    iget-object v1, v1, Lcom/a/a/d/b/i$b;->a:Lcom/a/a/d/b/c/a;

    iget-object v2, p0, Lcom/a/a/d/b/i$b$1;->a:Lcom/a/a/d/b/i$b;

    iget-object v2, v2, Lcom/a/a/d/b/i$b;->b:Lcom/a/a/d/b/c/a;

    iget-object v3, p0, Lcom/a/a/d/b/i$b$1;->a:Lcom/a/a/d/b/i$b;

    iget-object v3, v3, Lcom/a/a/d/b/i$b;->c:Lcom/a/a/d/b/c/a;

    iget-object v4, p0, Lcom/a/a/d/b/i$b$1;->a:Lcom/a/a/d/b/i$b;

    iget-object v4, v4, Lcom/a/a/d/b/i$b;->d:Lcom/a/a/d/b/k;

    iget-object v5, p0, Lcom/a/a/d/b/i$b$1;->a:Lcom/a/a/d/b/i$b;

    iget-object v5, v5, Lcom/a/a/d/b/i$b;->e:Landroid/support/v4/util/Pools$Pool;

    invoke-direct/range {v0 .. v5}, Lcom/a/a/d/b/j;-><init>(Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/k;Landroid/support/v4/util/Pools$Pool;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/a/a/d/b/i$b$1;->a()Lcom/a/a/d/b/j;

    move-result-object v0

    return-object v0
.end method
