.class public Lcom/a/a/d/d/f/b;
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
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/a/a/d/b/a/e;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/a/a/d/b/a/e;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/a/a/d/d/f/b;->a:Landroid/content/res/Resources;

    .line 28
    invoke-static {p2}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/a/e;

    iput-object v0, p0, Lcom/a/a/d/d/f/b;->b:Lcom/a/a/d/b/a/e;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/s;Lcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/b/s",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v1, p0, Lcom/a/a/d/d/f/b;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/a/a/d/d/f/b;->b:Lcom/a/a/d/b/a/e;

    invoke-interface {p1}, Lcom/a/a/d/b/s;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0}, Lcom/a/a/d/d/a/o;->a(Landroid/content/res/Resources;Lcom/a/a/d/b/a/e;Landroid/graphics/Bitmap;)Lcom/a/a/d/d/a/o;

    move-result-object v0

    return-object v0
.end method
