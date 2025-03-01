.class final Lcom/facebook/ab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ab;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/facebook/ab$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-static {}, Lcom/facebook/ab;->e()Lcom/facebook/ab$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ab$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/internal/l;->a(Ljava/lang/String;Z)Lcom/facebook/internal/k;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/internal/k;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/facebook/internal/a;->a(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v2

    .line 132
    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v2}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v2}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    const-string v3, "advertiser_id"

    .line 139
    invoke-virtual {v2}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "fields"

    const-string v3, "auto_event_setup_enabled"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v1, v2, v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 144
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/GraphRequest;->a(Z)V

    .line 145
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/facebook/ab;->f()Lcom/facebook/ab$a;

    move-result-object v1

    const-string v2, "auto_event_setup_enabled"

    .line 149
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ab$a;->c:Ljava/lang/Boolean;

    .line 150
    invoke-static {}, Lcom/facebook/ab;->f()Lcom/facebook/ab$a;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/ab$1;->a:J

    iput-wide v2, v0, Lcom/facebook/ab$a;->e:J

    .line 151
    invoke-static {}, Lcom/facebook/ab;->f()Lcom/facebook/ab$a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ab;->a(Lcom/facebook/ab$a;)V

    .line 156
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
