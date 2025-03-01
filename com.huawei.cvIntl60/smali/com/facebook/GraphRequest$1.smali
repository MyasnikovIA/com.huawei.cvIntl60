.class final Lcom/facebook/GraphRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/GraphRequest$c;


# virtual methods
.method public a(Lcom/facebook/p;)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/GraphRequest$1;->a:Lcom/facebook/GraphRequest$c;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/facebook/GraphRequest$1;->a:Lcom/facebook/GraphRequest$c;

    invoke-virtual {p1}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/GraphRequest$c;->a(Lorg/json/JSONObject;Lcom/facebook/p;)V

    .line 318
    :cond_0
    return-void
.end method
