.class public Lcom/a/a/d/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/f$b;,
        Lcom/a/a/d/c/f$e;,
        Lcom/a/a/d/c/f$a;,
        Lcom/a/a/d/c/f$c;,
        Lcom/a/a/d/c/f$d;
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
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/f$d",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/c/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/f$d",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/a/a/d/c/f;->a:Lcom/a/a/d/c/f$d;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/c/n$a",
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/a/a/d/c/n$a;

    new-instance v1, Lcom/a/a/i/b;

    invoke-direct {v1, p1}, Lcom/a/a/i/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/a/a/d/c/f$c;

    iget-object v3, p0, Lcom/a/a/d/c/f;->a:Lcom/a/a/d/c/f$d;

    invoke-direct {v2, p1, v3}, Lcom/a/a/d/c/f$c;-><init>(Ljava/io/File;Lcom/a/a/d/c/f$d;)V

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c/n$a;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/a/b;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/c/f;->a(Ljava/io/File;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 23
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/a/a/d/c/f;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
