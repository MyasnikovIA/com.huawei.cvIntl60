.class public final Lcom/a/a/d/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/a/c$a",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/b/a/b;


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/a/b;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/a/a/d/a/i$a;->a:Lcom/a/a/d/b/a/b;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/a/a/d/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/a/a/d/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/a/a/d/a/i;

    iget-object v1, p0, Lcom/a/a/d/a/i$a;->a:Lcom/a/a/d/b/a/b;

    invoke-direct {v0, p1, v1}, Lcom/a/a/d/a/i;-><init>(Ljava/io/InputStream;Lcom/a/a/d/b/a/b;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/a/a/d/a/c;
    .locals 1

    .prologue
    .line 38
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/a/a/d/a/i$a;->a(Ljava/io/InputStream;)Lcom/a/a/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
