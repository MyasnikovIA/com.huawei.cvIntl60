.class public final Lcom/a/a/d/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/a/c",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/d/a/p;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/a/a/d/b/a/b;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/a/a/d/d/a/p;

    invoke-direct {v0, p1, p2}, Lcom/a/a/d/d/a/p;-><init>(Ljava/io/InputStream;Lcom/a/a/d/b/a/b;)V

    iput-object v0, p0, Lcom/a/a/d/a/i;->a:Lcom/a/a/d/d/a/p;

    .line 20
    iget-object v0, p0, Lcom/a/a/d/a/i;->a:Lcom/a/a/d/d/a/p;

    const/high16 v1, 0x500000

    invoke-virtual {v0, v1}, Lcom/a/a/d/d/a/p;->mark(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/a/a/d/a/i;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/a/a/d/a/i;->a:Lcom/a/a/d/d/a/p;

    invoke-virtual {v0}, Lcom/a/a/d/d/a/p;->b()V

    .line 32
    return-void
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/a/a/d/a/i;->a:Lcom/a/a/d/d/a/p;

    invoke-virtual {v0}, Lcom/a/a/d/d/a/p;->reset()V

    .line 26
    iget-object v0, p0, Lcom/a/a/d/a/i;->a:Lcom/a/a/d/d/a/p;

    return-object v0
.end method
