.class public Lcom/a/a/d/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/n",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/c/a/c;->a:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
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
    .line 27
    invoke-static {p2, p3}, Lcom/a/a/d/a/a/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/a/a/d/c/n$a;

    new-instance v1, Lcom/a/a/i/b;

    invoke-direct {v1, p1}, Lcom/a/a/i/b;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/a/a/d/c/a/c;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/a/a/d/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/a/a/d/a/a/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c/n$a;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/a/b;)V

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/c/a/c;->a(Landroid/net/Uri;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 36
    invoke-static {p1}, Lcom/a/a/d/a/a/b;->c(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/a/a/d/c/a/c;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
