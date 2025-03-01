.class public Lcom/a/a/d/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/l",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/b/a/e;

.field private final b:Lcom/a/a/d/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/a/e;Lcom/a/a/d/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/a/e;",
            "Lcom/a/a/d/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/a/a/d/d/a/b;->a:Lcom/a/a/d/b/a/e;

    .line 22
    iput-object p2, p0, Lcom/a/a/d/d/a/b;->b:Lcom/a/a/d/l;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/j;)Lcom/a/a/d/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/a/a/d/d/a/b;->b:Lcom/a/a/d/l;

    invoke-interface {v0, p1}, Lcom/a/a/d/l;->a(Lcom/a/a/d/j;)Lcom/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/a/d/b/s;Ljava/io/File;Lcom/a/a/d/j;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lcom/a/a/d/j;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v1, p0, Lcom/a/a/d/d/a/b;->b:Lcom/a/a/d/l;

    new-instance v2, Lcom/a/a/d/d/a/e;

    invoke-interface {p1}, Lcom/a/a/d/b/s;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/a/a/d/d/a/b;->a:Lcom/a/a/d/b/a/e;

    invoke-direct {v2, v0, v3}, Lcom/a/a/d/d/a/e;-><init>(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/e;)V

    invoke-interface {v1, v2, p2, p3}, Lcom/a/a/d/l;->a(Ljava/lang/Object;Ljava/io/File;Lcom/a/a/d/j;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/a/a/d/j;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/a/a/d/b/s;

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/d/a/b;->a(Lcom/a/a/d/b/s;Ljava/io/File;Lcom/a/a/d/j;)Z

    move-result v0

    return v0
.end method
