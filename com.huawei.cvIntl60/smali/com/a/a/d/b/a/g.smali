.class public final Lcom/a/a/d/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/b/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/b/a/a",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/a/a/d/b/a/g;->a([B)I

    move-result v0

    return v0
.end method

.method public a([B)I
    .locals 1

    .prologue
    .line 17
    array-length v0, p1

    return v0
.end method

.method public synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/a/a/d/b/a/g;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "ByteArrayPool"

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public b(I)[B
    .locals 1

    .prologue
    .line 22
    new-array v0, p1, [B

    return-object v0
.end method
