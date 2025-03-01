.class Lcom/facebook/login/DeviceAuthDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->d()Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/p;)V
    .locals 6

    .prologue
    .line 300
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->c(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/p;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 329
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/p;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->f()Lcom/facebook/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/h;)V

    goto :goto_0

    .line 312
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->d(Lcom/facebook/login/DeviceAuthDialog;)V

    goto :goto_0

    .line 315
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->e(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    .line 317
    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->e(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Lcom/facebook/b/a/a;->c(Ljava/lang/String;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->f(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->f(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/LoginClient$Request;)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog;->a()V

    goto :goto_0

    .line 326
    :sswitch_2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog;->a()V

    goto :goto_0

    .line 337
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    const-string v2, "access_token"

    .line 339
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "expires_in"

    .line 340
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "data_access_expiration_time"

    .line 341
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 338
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->a:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v2, Lcom/facebook/h;

    invoke-direct {v2, v0}, Lcom/facebook/h;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/h;)V

    goto/16 :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x149620 -> :sswitch_1
        0x149634 -> :sswitch_0
        0x149635 -> :sswitch_2
        0x149636 -> :sswitch_0
    .end sparse-switch
.end method
