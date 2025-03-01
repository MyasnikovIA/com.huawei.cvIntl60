.class final Lcom/facebook/a/b/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/facebook/a/b/a$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 368
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/app_indexing_session"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/a/b/a$6;->a:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 370
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v8, v0, v8, v8}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v4

    .line 374
    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    .line 376
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    :cond_0
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    .line 381
    invoke-static {v1}, Lcom/facebook/internal/a;->a(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v5

    .line 383
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 384
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 385
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 386
    invoke-virtual {v5}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 390
    :goto_1
    const-string v1, "0"

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 391
    invoke-static {}, Lcom/facebook/a/b/b;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    :goto_2
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 393
    invoke-static {}, Lcom/facebook/internal/u;->a()Ljava/util/Locale;

    move-result-object v1

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 395
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    const-string v5, "device_session_id"

    .line 397
    invoke-static {}, Lcom/facebook/a/b/a;->c()Ljava/lang/String;

    move-result-object v6

    .line 396
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v5, "extinfo"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v4, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 401
    if-eqz v4, :cond_1

    .line 402
    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/p;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_5

    const-string v1, "is_app_indexing_enabled"

    .line 405
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 404
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/b/a;->b(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 406
    invoke-static {}, Lcom/facebook/a/b/a;->o()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 407
    invoke-static {v8}, Lcom/facebook/a/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    :cond_1
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/b/a;->c(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 414
    return-void

    .line 384
    :cond_2
    const-string v1, ""

    goto/16 :goto_0

    .line 388
    :cond_3
    const-string v1, ""

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 391
    :cond_4
    const-string v1, "0"

    goto :goto_2

    :cond_5
    move v0, v3

    .line 405
    goto :goto_3

    .line 409
    :cond_6
    invoke-static {}, Lcom/facebook/a/b/a;->p()Lcom/facebook/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/a/d;->a()V

    goto :goto_4
.end method
