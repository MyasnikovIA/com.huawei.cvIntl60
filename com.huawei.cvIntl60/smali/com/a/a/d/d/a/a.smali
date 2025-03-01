.class public Lcom/a/a/d/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/k",
        "<TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/k",
            "<TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/a/a/d/b/a/e;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/a/a/d/b/a/e;Lcom/a/a/d/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/a/a/d/b/a/e;",
            "Lcom/a/a/d/k",
            "<TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/a/a/d/d/a/a;->b:Landroid/content/res/Resources;

    .line 33
    invoke-static {p2}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/a/e;

    iput-object v0, p0, Lcom/a/a/d/d/a/a;->c:Lcom/a/a/d/b/a/e;

    .line 34
    invoke-static {p3}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/k;

    iput-object v0, p0, Lcom/a/a/d/d/a/a;->a:Lcom/a/a/d/k;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/b/s",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/a/a/d/d/a/a;->a:Lcom/a/a/d/k;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/a/a/d/k;->a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/d/d/a/a;->b:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/a/a/d/d/a/a;->c:Lcom/a/a/d/b/a/e;

    invoke-interface {v0}, Lcom/a/a/d/b/s;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0}, Lcom/a/a/d/d/a/o;->a(Landroid/content/res/Resources;Lcom/a/a/d/b/a/e;Landroid/graphics/Bitmap;)Lcom/a/a/d/d/a/o;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Lcom/a/a/d/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Lcom/a/a/d/j;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/a/a/d/d/a/a;->a:Lcom/a/a/d/k;

    invoke-interface {v0, p1, p2}, Lcom/a/a/d/k;->a(Ljava/lang/Object;Lcom/a/a/d/j;)Z

    move-result v0

    return v0
.end method
