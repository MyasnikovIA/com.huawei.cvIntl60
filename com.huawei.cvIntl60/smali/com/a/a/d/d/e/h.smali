.class public final Lcom/a/a/d/d/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/k",
        "<",
        "Lcom/a/a/b/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/b/a/e;


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/a/e;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/a/a/d/d/e/h;->a:Lcom/a/a/d/b/a/e;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/a;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/a;",
            "II",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/b/s",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-interface {p1}, Lcom/a/a/b/a;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/a/a/d/d/e/h;->a:Lcom/a/a/d/b/a/e;

    invoke-static {v0, v1}, Lcom/a/a/d/d/a/e;->a(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/e;)Lcom/a/a/d/d/a/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/a/a/b/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/d/e/h;->a(Lcom/a/a/b/a;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/a/b/a;Lcom/a/a/d/j;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/a/a/d/j;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/a/a/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/d/d/e/h;->a(Lcom/a/a/b/a;Lcom/a/a/d/j;)Z

    move-result v0

    return v0
.end method
