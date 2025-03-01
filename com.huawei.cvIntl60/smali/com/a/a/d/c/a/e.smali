.class public Lcom/a/a/d/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/n",
        "<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/n",
            "<",
            "Lcom/a/a/d/c/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/n",
            "<",
            "Lcom/a/a/d/c/g;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/a/a/d/c/a/e;->a:Lcom/a/a/d/c/n;

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/c/a/e;->a(Ljava/net/URL;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/URL;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/c/n$a",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/a/a/d/c/a/e;->a:Lcom/a/a/d/c/n;

    new-instance v1, Lcom/a/a/d/c/g;

    invoke-direct {v1, p1}, Lcom/a/a/d/c/g;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/a/a/d/c/n;->a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/a/a/d/c/a/e;->a(Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/net/URL;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
