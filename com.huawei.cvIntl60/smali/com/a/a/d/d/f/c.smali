.class public Lcom/a/a/d/d/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/d/f/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/d/f/d",
        "<",
        "Lcom/a/a/d/d/e/c;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/s;Lcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<",
            "Lcom/a/a/d/d/e/c;",
            ">;",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/b/s",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-interface {p1}, Lcom/a/a/d/b/s;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/e/c;

    .line 19
    invoke-virtual {v0}, Lcom/a/a/d/d/e/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/a/a/d/d/b/b;

    invoke-static {v0}, Lcom/a/a/j/a;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/d/d/b/b;-><init>([B)V

    return-object v1
.end method
