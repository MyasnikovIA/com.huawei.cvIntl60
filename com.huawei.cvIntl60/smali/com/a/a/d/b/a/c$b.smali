.class Lcom/a/a/d/b/a/c$b;
.super Lcom/a/a/d/b/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/d/b/a/d",
        "<",
        "Lcom/a/a/d/b/a/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/a/a/d/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/a/a/d/b/a/c$a;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/a/a/d/b/a/c$a;

    invoke-direct {v0, p0}, Lcom/a/a/d/b/a/c$a;-><init>(Lcom/a/a/d/b/a/c$b;)V

    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Lcom/a/a/d/b/a/c$a;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/a/a/d/b/a/c$b;->c()Lcom/a/a/d/b/a/m;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/a/c$a;

    .line 66
    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/d/b/a/c$a;->a(IILandroid/graphics/Bitmap$Config;)V

    .line 67
    return-object v0
.end method

.method protected synthetic b()Lcom/a/a/d/b/a/m;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/a/a/d/b/a/c$b;->a()Lcom/a/a/d/b/a/c$a;

    move-result-object v0

    return-object v0
.end method
