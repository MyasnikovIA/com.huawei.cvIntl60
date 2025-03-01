.class public final Lcom/facebook/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/facebook/b;


# instance fields
.field private final b:Landroid/support/v4/content/LocalBroadcastManager;

.field private final c:Lcom/facebook/a;

.field private d:Lcom/facebook/AccessToken;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/Date;


# direct methods
.method constructor <init>(Landroid/support/v4/content/LocalBroadcastManager;Lcom/facebook/a;)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/b;->f:Ljava/util/Date;

    .line 75
    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const-string v0, "accessTokenCache"

    invoke-static {p2, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/facebook/b;->b:Landroid/support/v4/content/LocalBroadcastManager;

    .line 79
    iput-object p2, p0, Lcom/facebook/b;->c:Lcom/facebook/a;

    .line 80
    return-void
.end method

.method private static a(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 201
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 202
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me/permissions"

    sget-object v4, Lcom/facebook/q;->a:Lcom/facebook/q;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    return-object v0
.end method

.method static a()Lcom/facebook/b;
    .locals 4

    .prologue
    .line 83
    sget-object v0, Lcom/facebook/b;->a:Lcom/facebook/b;

    if-nez v0, :cond_1

    .line 84
    const-class v1, Lcom/facebook/b;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/facebook/b;->a:Lcom/facebook/b;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 89
    new-instance v2, Lcom/facebook/a;

    invoke-direct {v2}, Lcom/facebook/a;-><init>()V

    .line 91
    new-instance v3, Lcom/facebook/b;

    invoke-direct {v3, v0, v2}, Lcom/facebook/b;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Lcom/facebook/a;)V

    sput-object v3, Lcom/facebook/b;->a:Lcom/facebook/b;

    .line 93
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_1
    sget-object v0, Lcom/facebook/b;->a:Lcom/facebook/b;

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    .line 148
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    const-string v1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/facebook/b;->b:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 155
    return-void
.end method

.method private a(Lcom/facebook/AccessToken;Z)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/b;->d:Lcom/facebook/AccessToken;

    .line 120
    iput-object p1, p0, Lcom/facebook/b;->d:Lcom/facebook/AccessToken;

    .line 121
    iget-object v1, p0, Lcom/facebook/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/facebook/b;->f:Ljava/util/Date;

    .line 124
    if-eqz p2, :cond_0

    .line 125
    if-eqz p1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/facebook/b;->c:Lcom/facebook/a;

    invoke-virtual {v1, p1}, Lcom/facebook/a;->a(Lcom/facebook/AccessToken;)V

    .line 133
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-direct {p0, v0, p1}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 135
    invoke-direct {p0}, Lcom/facebook/b;->f()V

    .line 137
    :cond_1
    return-void

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/facebook/b;->c:Lcom/facebook/a;

    invoke-virtual {v1}, Lcom/facebook/a;->b()V

    .line 129
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/u;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/b;Lcom/facebook/AccessToken$a;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/b;->b(Lcom/facebook/AccessToken$a;)V

    return-void
.end method

.method private static b(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 214
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 215
    const-string v0, "grant_type"

    const-string v1, "fb_extend_sso_token"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "oauth/access_token"

    sget-object v4, Lcom/facebook/q;->a:Lcom/facebook/q;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    return-object v0
.end method

.method private b(Lcom/facebook/AccessToken$a;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 246
    iget-object v2, p0, Lcom/facebook/b;->d:Lcom/facebook/AccessToken;

    .line 247
    if-nez v2, :cond_1

    .line 248
    if-eqz p1, :cond_0

    .line 249
    new-instance v0, Lcom/facebook/h;

    const-string v1, "No current access token to refresh"

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/h;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/facebook/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    if-eqz p1, :cond_0

    .line 256
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Refresh already in progress"

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/h;)V

    goto :goto_0

    .line 262
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/facebook/b;->f:Ljava/util/Date;

    .line 264
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 265
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 266
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 267
    new-instance v5, Lcom/facebook/b$a;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/facebook/b$a;-><init>(Lcom/facebook/b$1;)V

    .line 269
    new-instance v8, Lcom/facebook/o;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    new-instance v1, Lcom/facebook/b$2;

    invoke-direct {v1, p0, v4, v6, v7}, Lcom/facebook/b$2;-><init>(Lcom/facebook/b;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;)V

    .line 270
    invoke-static {v2, v1}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/b$3;

    invoke-direct {v1, p0, v5}, Lcom/facebook/b$3;-><init>(Lcom/facebook/b;Lcom/facebook/b$a;)V

    .line 303
    invoke-static {v2, v1}, Lcom/facebook/b;->b(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-direct {v8, v0}, Lcom/facebook/o;-><init>([Lcom/facebook/GraphRequest;)V

    .line 318
    new-instance v0, Lcom/facebook/b$4;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/b$4;-><init>(Lcom/facebook/b;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$a;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/b$a;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v8, v0}, Lcom/facebook/o;->a(Lcom/facebook/o$a;)V

    .line 368
    invoke-virtual {v8}, Lcom/facebook/o;->h()Lcom/facebook/n;

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 158
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 160
    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 162
    invoke-static {}, Lcom/facebook/AccessToken;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->e()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v4, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-static {v1, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 172
    const/4 v3, 0x1

    .line 174
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 172
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/facebook/b;->d:Lcom/facebook/AccessToken;

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/facebook/b;->d:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->i()Lcom/facebook/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/b;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 193
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/b;->d:Lcom/facebook/AccessToken;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->j()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/facebook/AccessToken$a;)V
    .locals 2

    .prologue
    .line 231
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lcom/facebook/b;->b(Lcom/facebook/AccessToken$a;)V

    .line 242
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 235
    new-instance v1, Lcom/facebook/b$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/b$1;-><init>(Lcom/facebook/b;Lcom/facebook/AccessToken$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Lcom/facebook/AccessToken;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;Z)V

    .line 116
    return-void
.end method

.method b()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/b;->d:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/facebook/b;->c:Lcom/facebook/a;

    invoke-virtual {v1}, Lcom/facebook/a;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0, v1, v0}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;Z)V

    .line 108
    const/4 v0, 0x1

    .line 111
    :cond_0
    return v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/b;->d:Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/b;->d:Lcom/facebook/AccessToken;

    invoke-direct {p0, v0, v1}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 143
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/facebook/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken$a;)V

    goto :goto_0
.end method
