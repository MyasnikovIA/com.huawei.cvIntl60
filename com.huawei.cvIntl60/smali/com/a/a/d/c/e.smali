.class public final Lcom/a/a/d/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/e$c;,
        Lcom/a/a/d/c/e$b;,
        Lcom/a/a/d/c/e$a;
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
.field private final a:Lcom/a/a/d/c/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/e$a",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/c/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/e$a",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/a/a/d/c/e;->a:Lcom/a/a/d/c/e$a;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/c/e;->a(Ljava/lang/String;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 4
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
    .line 37
    new-instance v0, Lcom/a/a/d/c/n$a;

    new-instance v1, Lcom/a/a/i/b;

    invoke-direct {v1, p1}, Lcom/a/a/i/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/a/a/d/c/e$b;

    iget-object v3, p0, Lcom/a/a/d/c/e;->a:Lcom/a/a/d/c/e$a;

    invoke-direct {v2, p1, v3}, Lcom/a/a/d/c/e$b;-><init>(Ljava/lang/String;Lcom/a/a/d/c/e$a;)V

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c/n$a;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/a/b;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/a/a/d/c/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
