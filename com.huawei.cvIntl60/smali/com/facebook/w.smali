.class public abstract Lcom/facebook/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/w$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/support/v4/content/LocalBroadcastManager;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/w;->c:Z

    .line 55
    invoke-static {}, Lcom/facebook/internal/v;->a()V

    .line 56
    new-instance v0, Lcom/facebook/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/w$a;-><init>(Lcom/facebook/w;Lcom/facebook/w$1;)V

    iput-object v0, p0, Lcom/facebook/w;->a:Landroid/content/BroadcastReceiver;

    .line 58
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/w;->b:Landroid/support/v4/content/LocalBroadcastManager;

    .line 59
    invoke-virtual {p0}, Lcom/facebook/w;->a()V

    .line 60
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/facebook/w;->b:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/w;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 113
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/facebook/w;->c:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/facebook/w;->c()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/w;->c:Z

    goto :goto_0
.end method

.method protected abstract a(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
.end method

.method public b()V
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/facebook/w;->c:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/w;->b:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/w;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/w;->c:Z

    goto :goto_0
.end method
