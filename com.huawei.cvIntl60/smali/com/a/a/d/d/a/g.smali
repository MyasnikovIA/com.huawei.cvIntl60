.class public Lcom/a/a/d/d/a/g;
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
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/d/a/l;


# direct methods
.method public constructor <init>(Lcom/a/a/d/d/a/l;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/a/a/d/d/a/g;->a:Lcom/a/a/d/d/a/l;

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/d/a/g;->a(Ljava/nio/ByteBuffer;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/ByteBuffer;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
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
    .line 30
    invoke-static {p1}, Lcom/a/a/j/a;->b(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/a/a/d/d/a/g;->a:Lcom/a/a/d/d/a/l;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/a/a/d/d/a/l;->a(Ljava/io/InputStream;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/a/a/d/j;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/d/d/a/g;->a(Ljava/nio/ByteBuffer;Lcom/a/a/d/j;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;Lcom/a/a/d/j;)Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/a/a/d/d/a/g;->a:Lcom/a/a/d/d/a/l;

    invoke-virtual {v0, p1}, Lcom/a/a/d/d/a/l;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method
