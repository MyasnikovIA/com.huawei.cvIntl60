.class final Lcom/a/a/d/b/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/j/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/j/a/a$a",
        "<",
        "Lcom/a/a/d/b/r",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/d/b/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b/r",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/a/a/d/b/r;

    invoke-direct {v0}, Lcom/a/a/d/b/r;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/a/a/d/b/r$1;->a()Lcom/a/a/d/b/r;

    move-result-object v0

    return-object v0
.end method
