.class public final Lcom/a/a/d/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/k$a;,
        Lcom/a/a/d/c/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/n",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/a/a/d/c/k;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/c/n$a",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/a/a/d/c/n$a;

    new-instance v1, Lcom/a/a/i/b;

    invoke-direct {v1, p1}, Lcom/a/a/i/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/a/a/d/c/k$b;

    iget-object v3, p0, Lcom/a/a/d/c/k;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/a/a/d/c/k$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c/n$a;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/a/b;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/c/k;->a(Landroid/net/Uri;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 36
    invoke-static {p1}, Lcom/a/a/d/a/a/b;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 21
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/a/a/d/c/k;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
