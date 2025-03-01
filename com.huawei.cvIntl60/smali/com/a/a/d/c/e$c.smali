.class public final Lcom/a/a/d/c/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/o",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/e$a",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/a/a/d/c/e$c$1;

    invoke-direct {v0, p0}, Lcom/a/a/d/c/e$c$1;-><init>(Lcom/a/a/d/c/e$c;)V

    iput-object v0, p0, Lcom/a/a/d/c/e$c;->a:Lcom/a/a/d/c/e$a;

    .line 148
    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/d/c/r;)Lcom/a/a/d/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/r;",
            ")",
            "Lcom/a/a/d/c/n",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/a/a/d/c/e;

    iget-object v1, p0, Lcom/a/a/d/c/e$c;->a:Lcom/a/a/d/c/e$a;

    invoke-direct {v0, v1}, Lcom/a/a/d/c/e;-><init>(Lcom/a/a/d/c/e$a;)V

    return-object v0
.end method
