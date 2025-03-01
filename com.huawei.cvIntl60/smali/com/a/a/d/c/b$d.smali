.class public Lcom/a/a/d/c/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/o",
        "<[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/c/r;)Lcom/a/a/d/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/r;",
            ")",
            "Lcom/a/a/d/c/n",
            "<[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/a/a/d/c/b;

    new-instance v1, Lcom/a/a/d/c/b$d$1;

    invoke-direct {v1, p0}, Lcom/a/a/d/c/b$d$1;-><init>(Lcom/a/a/d/c/b$d;)V

    invoke-direct {v0, v1}, Lcom/a/a/d/c/b;-><init>(Lcom/a/a/d/c/b$b;)V

    return-object v0
.end method
