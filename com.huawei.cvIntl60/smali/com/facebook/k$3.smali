.class final Lcom/facebook/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/k;->a(Landroid/content/Context;Lcom/facebook/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/k$a;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/facebook/k$a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/facebook/k$3;->a:Lcom/facebook/k$a;

    iput-object p2, p0, Lcom/facebook/k$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b;->c()Z

    .line 322
    invoke-static {}, Lcom/facebook/v;->a()Lcom/facebook/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/v;->c()Z

    .line 323
    invoke-static {}, Lcom/facebook/AccessToken;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Lcom/facebook/Profile;->a()Lcom/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/facebook/k$3;->a:Lcom/facebook/k$a;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/facebook/k$3;->a:Lcom/facebook/k$a;

    invoke-interface {v0}, Lcom/facebook/k$a;->a()V

    .line 335
    :cond_1
    invoke-static {}, Lcom/facebook/k;->p()Landroid/content/Context;

    move-result-object v0

    .line 336
    invoke-static {}, Lcom/facebook/k;->q()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {v0, v1}, Lcom/facebook/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/facebook/k$3;->b:Landroid/content/Context;

    .line 340
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 339
    invoke-static {v0}, Lcom/facebook/a/g;->a(Landroid/content/Context;)Lcom/facebook/a/g;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/facebook/a/g;->b()V

    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/facebook/k$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
