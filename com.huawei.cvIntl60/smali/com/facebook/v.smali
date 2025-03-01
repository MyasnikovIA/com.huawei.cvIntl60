.class public final Lcom/facebook/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/facebook/v;


# instance fields
.field private final b:Landroid/support/v4/content/LocalBroadcastManager;

.field private final c:Lcom/facebook/u;

.field private d:Lcom/facebook/Profile;


# direct methods
.method constructor <init>(Landroid/support/v4/content/LocalBroadcastManager;Lcom/facebook/u;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v0, "profileCache"

    invoke-static {p2, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/facebook/v;->b:Landroid/support/v4/content/LocalBroadcastManager;

    .line 52
    iput-object p2, p0, Lcom/facebook/v;->c:Lcom/facebook/u;

    .line 53
    return-void
.end method

.method static a()Lcom/facebook/v;
    .locals 4

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/v;->a:Lcom/facebook/v;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/facebook/v;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/facebook/v;->a:Lcom/facebook/v;

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 63
    new-instance v2, Lcom/facebook/v;

    new-instance v3, Lcom/facebook/u;

    invoke-direct {v3}, Lcom/facebook/u;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/facebook/v;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Lcom/facebook/u;)V

    sput-object v2, Lcom/facebook/v;->a:Lcom/facebook/v;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/facebook/v;->a:Lcom/facebook/v;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v1, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    const-string v1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/facebook/v;->b:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 115
    return-void
.end method

.method private a(Lcom/facebook/Profile;Z)V
    .locals 2
    .param p1    # Lcom/facebook/Profile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/v;->d:Lcom/facebook/Profile;

    .line 91
    iput-object p1, p0, Lcom/facebook/v;->d:Lcom/facebook/Profile;

    .line 93
    if-eqz p2, :cond_0

    .line 94
    if-eqz p1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/facebook/v;->c:Lcom/facebook/u;

    invoke-virtual {v1, p1}, Lcom/facebook/u;->a(Lcom/facebook/Profile;)V

    .line 101
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/facebook/v;->a(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    .line 104
    :cond_1
    return-void

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/facebook/v;->c:Lcom/facebook/u;

    invoke-virtual {v1}, Lcom/facebook/u;->b()V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/facebook/Profile;)V
    .locals 1
    .param p1    # Lcom/facebook/Profile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/v;->a(Lcom/facebook/Profile;Z)V

    .line 87
    return-void
.end method

.method b()Lcom/facebook/Profile;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/v;->d:Lcom/facebook/Profile;

    return-object v0
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/facebook/v;->c:Lcom/facebook/u;

    invoke-virtual {v1}, Lcom/facebook/u;->a()Lcom/facebook/Profile;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    invoke-direct {p0, v1, v0}, Lcom/facebook/v;->a(Lcom/facebook/Profile;Z)V

    .line 79
    const/4 v0, 0x1

    .line 82
    :cond_0
    return v0
.end method
