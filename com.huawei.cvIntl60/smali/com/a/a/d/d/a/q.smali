.class public Lcom/a/a/d/d/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/a/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/k",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/d/a/l;

.field private final b:Lcom/a/a/d/b/a/b;


# direct methods
.method public constructor <init>(Lcom/a/a/d/d/a/l;Lcom/a/a/d/b/a/b;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/a/a/d/d/a/q;->a:Lcom/a/a/d/d/a/l;

    .line 24
    iput-object p2, p0, Lcom/a/a/d/d/a/q;->b:Lcom/a/a/d/b/a/b;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
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
    .line 39
    instance-of v0, p1, Lcom/a/a/d/d/a/p;

    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Lcom/a/a/d/d/a/p;

    .line 41
    const/4 v0, 0x0

    move v6, v0

    .line 51
    :goto_0
    invoke-static {p1}, Lcom/a/a/j/c;->a(Ljava/io/InputStream;)Lcom/a/a/j/c;

    move-result-object v7

    .line 57
    new-instance v1, Lcom/a/a/j/f;

    invoke-direct {v1, v7}, Lcom/a/a/j/f;-><init>(Ljava/io/InputStream;)V

    .line 58
    new-instance v5, Lcom/a/a/d/d/a/q$a;

    invoke-direct {v5, p1, v7}, Lcom/a/a/d/d/a/q$a;-><init>(Lcom/a/a/d/d/a/p;Lcom/a/a/j/c;)V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/d/a/q;->a:Lcom/a/a/d/d/a/l;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/d/d/a/l;->a(Ljava/io/InputStream;IILcom/a/a/d/j;Lcom/a/a/d/d/a/l$a;)Lcom/a/a/d/b/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    invoke-virtual {v7}, Lcom/a/a/j/c;->b()V

    .line 63
    if-eqz v6, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/a/a/d/d/a/p;->b()V

    .line 60
    :cond_0
    return-object v0

    .line 43
    :cond_1
    new-instance v1, Lcom/a/a/d/d/a/p;

    iget-object v0, p0, Lcom/a/a/d/d/a/q;->b:Lcom/a/a/d/b/a/b;

    invoke-direct {v1, p1, v0}, Lcom/a/a/d/d/a/p;-><init>(Ljava/io/InputStream;Lcom/a/a/d/b/a/b;)V

    .line 44
    const/4 v0, 0x1

    move v6, v0

    move-object p1, v1

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lcom/a/a/j/c;->b()V

    .line 63
    if-eqz v6, :cond_2

    .line 64
    invoke-virtual {p1}, Lcom/a/a/d/d/a/p;->b()V

    :cond_2
    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/d/a/q;->a(Ljava/io/InputStream;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Lcom/a/a/d/j;)Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/a/a/d/d/a/q;->a:Lcom/a/a/d/d/a/l;

    invoke-virtual {v0, p1}, Lcom/a/a/d/d/a/l;->a(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/a/a/d/j;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/d/d/a/q;->a(Ljava/io/InputStream;Lcom/a/a/d/j;)Z

    move-result v0

    return v0
.end method
