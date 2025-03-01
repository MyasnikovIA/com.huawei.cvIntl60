.class public Lcom/a/a/d/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/b$d;,
        Lcom/a/a/d/c/b$a;,
        Lcom/a/a/d/c/b$c;,
        Lcom/a/a/d/c/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/n",
        "<[BTData;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/b$b",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/c/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/b$b",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/a/a/d/c/b;->a:Lcom/a/a/d/c/b$b;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/c/b;->a([BIILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a([BIILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/c/n$a",
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/a/a/d/c/n$a;

    invoke-static {}, Lcom/a/a/i/a;->a()Lcom/a/a/i/a;

    move-result-object v1

    new-instance v2, Lcom/a/a/d/c/b$c;

    iget-object v3, p0, Lcom/a/a/d/c/b;->a:Lcom/a/a/d/c/b$b;

    invoke-direct {v2, p1, v3}, Lcom/a/a/d/c/b$c;-><init>([BLcom/a/a/d/c/b$b;)V

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c/n$a;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/a/b;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/a/a/d/c/b;->a([B)Z

    move-result v0

    return v0
.end method

.method public a([B)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
