.class Lcom/a/a/d/b/i$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/j/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/i$a;
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
        "Lcom/a/a/d/b/f",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/d/b/i$a;


# direct methods
.method constructor <init>(Lcom/a/a/d/b/i$a;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/a/a/d/b/i$a$1;->a:Lcom/a/a/d/b/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/d/b/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b/f",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Lcom/a/a/d/b/f;

    iget-object v1, p0, Lcom/a/a/d/b/i$a$1;->a:Lcom/a/a/d/b/i$a;

    iget-object v1, v1, Lcom/a/a/d/b/i$a;->a:Lcom/a/a/d/b/f$d;

    iget-object v2, p0, Lcom/a/a/d/b/i$a$1;->a:Lcom/a/a/d/b/i$a;

    iget-object v2, v2, Lcom/a/a/d/b/i$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/b/f;-><init>(Lcom/a/a/d/b/f$d;Landroid/support/v4/util/Pools$Pool;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/a/a/d/b/i$a$1;->a()Lcom/a/a/d/b/f;

    move-result-object v0

    return-object v0
.end method
