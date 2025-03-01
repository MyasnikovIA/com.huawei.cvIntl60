.class Lcom/facebook/login/DeviceAuthDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Date;

.field final synthetic c:Ljava/util/Date;

.field final synthetic d:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$7;->d:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/DeviceAuthDialog$7;->b:Ljava/util/Date;

    iput-object p4, p0, Lcom/facebook/login/DeviceAuthDialog$7;->c:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/p;)V
    .locals 7

    .prologue
    .line 418
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$7;->d:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->c(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/p;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$7;->d:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/p;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->f()Lcom/facebook/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/h;)V

    goto :goto_0

    .line 431
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 432
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Lorg/json/JSONObject;)Lcom/facebook/internal/u$b;

    move-result-object v2

    .line 434
    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 439
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$7;->d:Lcom/facebook/login/DeviceAuthDialog;

    .line 440
    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->e(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v0}, Lcom/facebook/b/a/a;->c(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/l;->a(Ljava/lang/String;)Lcom/facebook/internal/k;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lcom/facebook/internal/k;->e()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v3, Lcom/facebook/internal/t;->c:Lcom/facebook/internal/t;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 446
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$7;->d:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->h(Lcom/facebook/login/DeviceAuthDialog;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$7;->d:Lcom/facebook/login/DeviceAuthDialog;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Z)Z

    .line 448
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$7;->d:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$7;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/login/DeviceAuthDialog$7;->b:Ljava/util/Date;

    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$7;->c:Ljava/util/Date;

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/u$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$7;->d:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v2, Lcom/facebook/h;

    invoke-direct {v2, v0}, Lcom/facebook/h;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/h;)V

    goto :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$7;->d:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$7;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/login/DeviceAuthDialog$7;->b:Ljava/util/Date;

    iget-object v5, p0, Lcom/facebook/login/DeviceAuthDialog$7;->c:Ljava/util/Date;

    invoke-static/range {v0 .. v5}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/u$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0
.end method
