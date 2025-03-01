.class public Lcom/a/a/d/d/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/m",
        "<",
        "Lcom/a/a/d/d/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/a/a/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/m;

    iput-object v0, p0, Lcom/a/a/d/d/e/f;->b:Lcom/a/a/d/m;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/a/a/d/b/s;II)Lcom/a/a/d/b/s;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/a/a/d/b/s",
            "<",
            "Lcom/a/a/d/d/e/c;",
            ">;II)",
            "Lcom/a/a/d/b/s",
            "<",
            "Lcom/a/a/d/d/e/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p2}, Lcom/a/a/d/b/s;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/e/c;

    .line 53
    invoke-static {p1}, Lcom/a/a/c;->a(Landroid/content/Context;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->a()Lcom/a/a/d/b/a/e;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/a/a/d/d/e/c;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 55
    new-instance v3, Lcom/a/a/d/d/a/e;

    invoke-direct {v3, v2, v1}, Lcom/a/a/d/d/a/e;-><init>(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/e;)V

    .line 56
    iget-object v1, p0, Lcom/a/a/d/d/e/f;->b:Lcom/a/a/d/m;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/a/a/d/m;->a(Landroid/content/Context;Lcom/a/a/d/b/s;II)Lcom/a/a/d/b/s;

    move-result-object v1

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-interface {v3}, Lcom/a/a/d/b/s;->e()V

    .line 60
    :cond_0
    invoke-interface {v1}, Lcom/a/a/d/b/s;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 62
    iget-object v2, p0, Lcom/a/a/d/d/e/f;->b:Lcom/a/a/d/m;

    invoke-virtual {v0, v2, v1}, Lcom/a/a/d/d/e/c;->a(Lcom/a/a/d/m;Landroid/graphics/Bitmap;)V

    .line 63
    return-object p2
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/a/a/d/d/e/f;->b:Lcom/a/a/d/m;

    invoke-interface {v0, p1}, Lcom/a/a/d/m;->a(Ljava/security/MessageDigest;)V

    .line 83
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 68
    instance-of v0, p1, Lcom/a/a/d/d/e/f;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/a/a/d/d/e/f;

    .line 70
    iget-object v0, p0, Lcom/a/a/d/d/e/f;->b:Lcom/a/a/d/m;

    iget-object v1, p1, Lcom/a/a/d/d/e/f;->b:Lcom/a/a/d/m;

    invoke-interface {v0, v1}, Lcom/a/a/d/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/a/a/d/d/e/f;->b:Lcom/a/a/d/m;

    invoke-interface {v0}, Lcom/a/a/d/m;->hashCode()I

    move-result v0

    return v0
.end method
