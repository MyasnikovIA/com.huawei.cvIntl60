.class final Lcom/facebook/internal/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/u;->a(Ljava/lang/String;Lcom/facebook/internal/u$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/u$a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/u$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 972
    iput-object p1, p0, Lcom/facebook/internal/u$1;->a:Lcom/facebook/internal/u$a;

    iput-object p2, p0, Lcom/facebook/internal/u$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/p;)V
    .locals 2

    .prologue
    .line 975
    invoke-virtual {p1}, Lcom/facebook/p;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/facebook/internal/u$1;->a:Lcom/facebook/internal/u$a;

    invoke-virtual {p1}, Lcom/facebook/p;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->f()Lcom/facebook/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/u$a;->a(Lcom/facebook/h;)V

    .line 983
    :goto_0
    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/u$1;->b:Ljava/lang/String;

    .line 980
    invoke-virtual {p1}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 978
    invoke-static {v0, v1}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 981
    iget-object v0, p0, Lcom/facebook/internal/u$1;->a:Lcom/facebook/internal/u$a;

    invoke-virtual {p1}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/u$a;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
