.class public Lcom/a/a/d/c/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/x$a;
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
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/a/a/d/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/n",
            "<",
            "Lcom/a/a/d/c/g;",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "http"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "https"

    aput-object v3, v1, v2

    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/a/a/d/c/x;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/n",
            "<",
            "Lcom/a/a/d/c/g;",
            "TData;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/a/a/d/c/x;->b:Lcom/a/a/d/c/n;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/c/n$a",
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/a/a/d/c/g;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d/c/g;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/a/a/d/c/x;->b:Lcom/a/a/d/c/n;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/a/a/d/c/n;->a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/c/x;->a(Landroid/net/Uri;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/a/a/d/c/x;->a:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/a/a/d/c/x;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
