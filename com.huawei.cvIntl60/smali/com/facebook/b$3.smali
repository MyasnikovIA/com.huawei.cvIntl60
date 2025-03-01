.class Lcom/facebook/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/b;->b(Lcom/facebook/AccessToken$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/b$a;

.field final synthetic b:Lcom/facebook/b;


# direct methods
.method constructor <init>(Lcom/facebook/b;Lcom/facebook/b$a;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/facebook/b$3;->b:Lcom/facebook/b;

    iput-object p2, p0, Lcom/facebook/b$3;->a:Lcom/facebook/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/p;)V
    .locals 4

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 307
    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/facebook/b$3;->a:Lcom/facebook/b$a;

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/b$a;->a:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/facebook/b$3;->a:Lcom/facebook/b$a;

    const-string v2, "expires_at"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/facebook/b$a;->b:I

    .line 312
    iget-object v1, p0, Lcom/facebook/b$3;->a:Lcom/facebook/b$a;

    const-string v2, "data_access_expiration_time"

    .line 313
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/b$a;->c:Ljava/lang/Long;

    goto :goto_0
.end method
