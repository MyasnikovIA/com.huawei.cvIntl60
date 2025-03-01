.class public Lcom/a/a/d/c/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/o",
        "<",
        "Lcom/a/a/d/c/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/m",
            "<",
            "Lcom/a/a/d/c/g;",
            "Lcom/a/a/d/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/a/a/d/c/m;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/a/a/d/c/m;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/d/c/a/a$a;->a:Lcom/a/a/d/c/m;

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
            "<",
            "Lcom/a/a/d/c/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/a/a/d/c/a/a;

    iget-object v1, p0, Lcom/a/a/d/c/a/a$a;->a:Lcom/a/a/d/c/m;

    invoke-direct {v0, v1}, Lcom/a/a/d/c/a/a;-><init>(Lcom/a/a/d/c/m;)V

    return-object v0
.end method
