.class final Lcom/facebook/a/b/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/facebook/k;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/b/f$2$1;

    invoke-direct {v1, p0}, Lcom/facebook/a/b/f$2$1;-><init>(Lcom/facebook/a/b/f$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/facebook/a/b/f;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.billingclient.api.ProxyBillingActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/facebook/k;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/b/f$2$2;

    invoke-direct {v1, p0}, Lcom/facebook/a/b/f$2$2;-><init>(Lcom/facebook/a/b/f$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 162
    :cond_0
    return-void
.end method
