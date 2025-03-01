.class Lcom/a/a/d/c/m$1;
.super Lcom/a/a/j/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/d/c/m;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/j/e",
        "<",
        "Lcom/a/a/d/c/m$a",
        "<TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/d/c/m;


# direct methods
.method constructor <init>(Lcom/a/a/d/c/m;I)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/a/a/d/c/m$1;->a:Lcom/a/a/d/c/m;

    invoke-direct {p0, p2}, Lcom/a/a/j/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/d/c/m$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/m$a",
            "<TA;>;TB;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/a/a/d/c/m$a;->a()V

    .line 31
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/a/a/d/c/m$a;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/d/c/m$1;->a(Lcom/a/a/d/c/m$a;Ljava/lang/Object;)V

    return-void
.end method
