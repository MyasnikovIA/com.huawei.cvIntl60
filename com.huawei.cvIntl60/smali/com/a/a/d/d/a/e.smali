.class public Lcom/a/a/d/d/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/b/p;
.implements Lcom/a/a/d/b/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/b/p;",
        "Lcom/a/a/d/b/s",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lcom/a/a/d/b/a/e;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/e;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Lcom/a/a/j/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/a/a/d/d/a/e;->a:Landroid/graphics/Bitmap;

    .line 37
    const-string v0, "BitmapPool must not be null"

    invoke-static {p2, v0}, Lcom/a/a/j/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/a/e;

    iput-object v0, p0, Lcom/a/a/d/d/a/e;->b:Lcom/a/a/d/b/a/e;

    .line 38
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/e;)Lcom/a/a/d/d/a/e;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/d/d/a/e;

    invoke-direct {v0, p0, p1}, Lcom/a/a/d/d/a/e;-><init>(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/e;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/a/a/d/d/a/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 63
    return-void
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/a/a/d/d/a/e;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/a/a/d/d/a/e;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/a/a/j/i;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/a/a/d/d/a/e;->b:Lcom/a/a/d/b/a/e;

    iget-object v1, p0, Lcom/a/a/d/d/a/e;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/a/a/d/b/a/e;->a(Landroid/graphics/Bitmap;)V

    .line 58
    return-void
.end method

.method public f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/a/a/d/d/a/e;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
