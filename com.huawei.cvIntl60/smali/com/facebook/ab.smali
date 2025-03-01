.class final Lcom/facebook/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ab$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Lcom/facebook/ab$a;

.field private static d:Lcom/facebook/ab$a;

.field private static e:Lcom/facebook/ab$a;

.field private static f:Landroid/content/SharedPreferences;

.field private static g:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-class v0, Lcom/facebook/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ab;->a:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/ab;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Lcom/facebook/ab$a;

    const-string v1, "com.facebook.sdk.AutoLogAppEventsEnabled"

    const-string v2, "com.facebook.sdk.AutoLogAppEventsEnabled"

    invoke-direct {v0, v4, v1, v2}, Lcom/facebook/ab$a;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ab;->c:Lcom/facebook/ab$a;

    .line 58
    new-instance v0, Lcom/facebook/ab$a;

    const-string v1, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    const-string v2, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    invoke-direct {v0, v4, v1, v2}, Lcom/facebook/ab$a;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ab;->d:Lcom/facebook/ab$a;

    .line 62
    new-instance v0, Lcom/facebook/ab$a;

    const-string v1, "auto_event_setup_enabled"

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ab$a;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ab;->e:Lcom/facebook/ab$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-static {}, Lcom/facebook/k;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget-object v0, Lcom/facebook/ab;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.sdk.USER_SETTINGS"

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/ab;->f:Landroid/content/SharedPreferences;

    .line 87
    sget-object v0, Lcom/facebook/ab;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/facebook/ab;->g:Landroid/content/SharedPreferences$Editor;

    .line 89
    sget-object v0, Lcom/facebook/ab;->c:Lcom/facebook/ab$a;

    invoke-static {v0}, Lcom/facebook/ab;->b(Lcom/facebook/ab$a;)V

    .line 90
    sget-object v0, Lcom/facebook/ab;->d:Lcom/facebook/ab$a;

    invoke-static {v0}, Lcom/facebook/ab;->b(Lcom/facebook/ab$a;)V

    .line 91
    invoke-static {}, Lcom/facebook/ab;->g()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ab$a;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0}, Lcom/facebook/ab;->c(Lcom/facebook/ab$a;)V

    return-void
.end method

.method private static b(Lcom/facebook/ab$a;)V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/facebook/ab;->e:Lcom/facebook/ab$a;

    if-ne p0, v0, :cond_1

    .line 96
    invoke-static {}, Lcom/facebook/ab;->g()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/facebook/ab$a;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 99
    invoke-static {p0}, Lcom/facebook/ab;->d(Lcom/facebook/ab$a;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/ab$a;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ab$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/facebook/ab;->e(Lcom/facebook/ab$a;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-static {p0}, Lcom/facebook/ab;->c(Lcom/facebook/ab$a;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/facebook/ab;->a()V

    .line 228
    sget-object v0, Lcom/facebook/ab;->c:Lcom/facebook/ab$a;

    invoke-virtual {v0}, Lcom/facebook/ab$a;->a()Z

    move-result v0

    return v0
.end method

.method private static c(Lcom/facebook/ab$a;)V
    .locals 4

    .prologue
    .line 161
    invoke-static {}, Lcom/facebook/ab;->h()V

    .line 163
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 164
    const-string v1, "value"

    iget-object v2, p0, Lcom/facebook/ab$a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v1, "last_timestamp"

    iget-wide v2, p0, Lcom/facebook/ab$a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 166
    sget-object v1, Lcom/facebook/ab;->g:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/facebook/ab$a;->a:Ljava/lang/String;

    .line 167
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/facebook/ab;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/facebook/ab;->a()V

    .line 243
    sget-object v0, Lcom/facebook/ab;->d:Lcom/facebook/ab$a;

    invoke-virtual {v0}, Lcom/facebook/ab$a;->a()Z

    move-result v0

    return v0
.end method

.method private static d(Lcom/facebook/ab$a;)V
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Lcom/facebook/ab;->h()V

    .line 177
    :try_start_0
    sget-object v0, Lcom/facebook/ab;->f:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/facebook/ab$a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    const-string v0, "value"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ab$a;->c:Ljava/lang/Boolean;

    .line 181
    const-string v0, "last_timestamp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ab$a;->e:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    sget-object v1, Lcom/facebook/ab;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/facebook/ab;->a()V

    .line 248
    sget-object v0, Lcom/facebook/ab;->e:Lcom/facebook/ab$a;

    invoke-virtual {v0}, Lcom/facebook/ab$a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic e()Lcom/facebook/ab$a;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/ab;->d:Lcom/facebook/ab$a;

    return-object v0
.end method

.method private static e(Lcom/facebook/ab$a;)V
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Lcom/facebook/ab;->h()V

    .line 191
    :try_start_0
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/ab$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/facebook/ab$a;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/ab$a;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ab$a;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    sget-object v1, Lcom/facebook/ab;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic f()Lcom/facebook/ab$a;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/ab;->e:Lcom/facebook/ab$a;

    return-object v0
.end method

.method private static g()V
    .locals 6

    .prologue
    .line 111
    sget-object v0, Lcom/facebook/ab;->e:Lcom/facebook/ab$a;

    invoke-static {v0}, Lcom/facebook/ab;->d(Lcom/facebook/ab$a;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    sget-object v2, Lcom/facebook/ab;->e:Lcom/facebook/ab$a;

    iget-object v2, v2, Lcom/facebook/ab$a;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/facebook/ab;->e:Lcom/facebook/ab$a;

    iget-wide v2, v2, Lcom/facebook/ab$a;->e:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v2, Lcom/facebook/ab;->e:Lcom/facebook/ab$a;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/facebook/ab$a;->c:Ljava/lang/Boolean;

    .line 117
    sget-object v2, Lcom/facebook/ab;->e:Lcom/facebook/ab$a;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/facebook/ab$a;->e:J

    .line 121
    invoke-static {}, Lcom/facebook/k;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/ab$1;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ab$1;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static h()V
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/facebook/ab;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/facebook/l;

    const-string v1, "The UserSettingManager has not been initialized successfully"

    invoke-direct {v0, v1}, Lcom/facebook/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    return-void
.end method
