.class final Lcom/facebook/a/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/a;->a(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/facebook/t;->e:Lcom/facebook/t;

    invoke-static {}, Lcom/facebook/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityCreated"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/facebook/a/b/b;->b()V

    .line 103
    invoke-static {p1}, Lcom/facebook/a/b/a;->a(Landroid/app/Activity;)V

    .line 104
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lcom/facebook/t;->e:Lcom/facebook/t;

    invoke-static {}, Lcom/facebook/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityDestroyed"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcom/facebook/t;->e:Lcom/facebook/t;

    invoke-static {}, Lcom/facebook/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityPaused"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/facebook/a/b/b;->b()V

    .line 123
    invoke-static {p1}, Lcom/facebook/a/b/a;->c(Landroid/app/Activity;)V

    .line 124
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 114
    sget-object v0, Lcom/facebook/t;->e:Lcom/facebook/t;

    invoke-static {}, Lcom/facebook/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityResumed"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/facebook/a/b/b;->b()V

    .line 116
    invoke-static {p1}, Lcom/facebook/a/b/a;->b(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lcom/facebook/t;->e:Lcom/facebook/t;

    invoke-static {}, Lcom/facebook/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivitySaveInstanceState"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lcom/facebook/a/b/a;->f()I

    .line 109
    sget-object v0, Lcom/facebook/t;->e:Lcom/facebook/t;

    invoke-static {}, Lcom/facebook/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityStarted"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 128
    sget-object v0, Lcom/facebook/t;->e:Lcom/facebook/t;

    invoke-static {}, Lcom/facebook/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityStopped"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/facebook/a/g;->c()V

    .line 130
    invoke-static {}, Lcom/facebook/a/b/a;->g()I

    .line 131
    return-void
.end method
