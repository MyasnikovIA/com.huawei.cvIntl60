.class public Lcom/a/a/d/c/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/u$a;,
        Lcom/a/a/d/c/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/n",
        "<",
        "Ljava/lang/String;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/n",
            "<",
            "Landroid/net/Uri;",
            "TData;>;"
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
            "Landroid/net/Uri;",
            "TData;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/a/a/d/c/u;->a:Lcom/a/a/d/c/n;

    .line 22
    return-void
.end method

.method private static b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const/4 v0, 0x0

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-static {p0}, Lcom/a/a/d/c/u;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    invoke-static {p0}, Lcom/a/a/d/c/u;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/c/u;->a(Ljava/lang/String;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/c/n$a",
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1}, Lcom/a/a/d/c/u;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/d/c/u;->a:Lcom/a/a/d/c/n;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/a/a/d/c/n;->a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/a/a/d/c/u;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
