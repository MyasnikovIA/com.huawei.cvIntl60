.class Lcom/a/a/d/b/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/s;Z)Lcom/a/a/d/b/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/b/s",
            "<TR;>;Z)",
            "Lcom/a/a/d/b/n",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Lcom/a/a/d/b/n;

    invoke-direct {v0, p1, p2}, Lcom/a/a/d/b/n;-><init>(Lcom/a/a/d/b/s;Z)V

    return-object v0
.end method
