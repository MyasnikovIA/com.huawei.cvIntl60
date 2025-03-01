.class public Lcom/facebook/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/a$a;,
        Lcom/facebook/internal/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static g:Lcom/facebook/internal/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/facebook/internal/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/internal/a;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 167
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 169
    sget-object v0, Lcom/facebook/internal/a;->a:Ljava/lang/String;

    const-string v1, "getAttributionIdentifiers should not be called from the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    sget-object v0, Lcom/facebook/internal/a;->g:Lcom/facebook/internal/a;

    if-eqz v0, :cond_2

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/facebook/internal/a;->g:Lcom/facebook/internal/a;

    iget-wide v2, v2, Lcom/facebook/internal/a;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 177
    sget-object v0, Lcom/facebook/internal/a;->g:Lcom/facebook/internal/a;

    .line 228
    :cond_1
    :goto_0
    return-object v0

    .line 180
    :cond_2
    invoke-static {p0}, Lcom/facebook/internal/a;->b(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v7

    .line 183
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "androidid"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "limit_tracking"

    aput-object v1, v2, v0

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.facebook.katana.provider.AttributionIdProvider"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 190
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 195
    :goto_1
    invoke-static {p0}, Lcom/facebook/internal/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_3

    .line 197
    iput-object v0, v7, Lcom/facebook/internal/a;->d:Ljava/lang/String;

    .line 199
    :cond_3
    if-nez v1, :cond_5

    .line 200
    invoke-static {v7}, Lcom/facebook/internal/a;->a(Lcom/facebook/internal/a;)Lcom/facebook/internal/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 224
    if-eqz v6, :cond_1

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 191
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.facebook.wakizashi.provider.AttributionIdProvider"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 193
    const-string v0, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 202
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 203
    if-eqz v1, :cond_6

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 204
    :cond_6
    invoke-static {v7}, Lcom/facebook/internal/a;->a(Lcom/facebook/internal/a;)Lcom/facebook/internal/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 224
    if-eqz v1, :cond_1

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 206
    :cond_7
    :try_start_3
    const-string v0, "aid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 207
    const-string v2, "androidid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 208
    const-string v3, "limit_tracking"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 210
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/internal/a;->b:Ljava/lang/String;

    .line 214
    if-lez v2, :cond_8

    if-lez v3, :cond_8

    .line 215
    invoke-virtual {v7}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 216
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/internal/a;->c:Ljava/lang/String;

    .line 218
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/facebook/internal/a;->e:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    :cond_8
    if-eqz v1, :cond_9

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_9
    invoke-static {v7}, Lcom/facebook/internal/a;->a(Lcom/facebook/internal/a;)Lcom/facebook/internal/a;

    move-result-object v0

    goto/16 :goto_0

    .line 220
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 221
    :goto_2
    :try_start_4
    sget-object v2, Lcom/facebook/internal/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    if-eqz v1, :cond_a

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object v0, v6

    .line 222
    goto/16 :goto_0

    .line 224
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_b

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_b
    throw v0

    .line 224
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 220
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_c
    move-object v1, v6

    goto/16 :goto_1
.end method

.method private static a(Lcom/facebook/internal/a;)Lcom/facebook/internal/a;
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/internal/a;->f:J

    .line 238
    sput-object p0, Lcom/facebook/internal/a;->g:Lcom/facebook/internal/a;

    .line 239
    return-object p0
.end method

.method private static b(Landroid/content/Context;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/internal/a;->c(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/facebook/internal/a;->d(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/facebook/internal/a;

    invoke-direct {v0}, Lcom/facebook/internal/a;-><init>()V

    .line 83
    :cond_0
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/facebook/internal/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 90
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 91
    new-instance v0, Lcom/facebook/h;

    const-string v2, "getAndroidId cannot be called on the main thread."

    invoke-direct {v0, v2}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v2, "android_id"

    invoke-static {v2, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 143
    :goto_0
    return-object v0

    .line 93
    :cond_0
    :try_start_1
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v2, "isGooglePlayServicesAvailable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    if-nez v0, :cond_1

    move-object v0, v1

    .line 100
    goto :goto_0

    .line 103
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v0, v3}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Integer;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 107
    goto :goto_0

    .line 110
    :cond_3
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    if-nez v0, :cond_4

    move-object v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v0, v3}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 120
    if-nez v3, :cond_5

    move-object v0, v1

    .line 121
    goto :goto_0

    .line 124
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/facebook/internal/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "isLimitAdTrackingEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 125
    invoke-static {v2, v4, v5}, Lcom/facebook/internal/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 128
    if-eqz v0, :cond_6

    if-nez v4, :cond_7

    :cond_6
    move-object v0, v1

    .line 129
    goto :goto_0

    .line 132
    :cond_7
    new-instance v2, Lcom/facebook/internal/a;

    invoke-direct {v2}, Lcom/facebook/internal/a;-><init>()V

    .line 133
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 134
    invoke-static {v3, v0, v5}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/facebook/internal/a;->c:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/internal/a;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 139
    goto/16 :goto_0
.end method

.method private static d(Landroid/content/Context;)Lcom/facebook/internal/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 147
    new-instance v2, Lcom/facebook/internal/a$b;

    invoke-direct {v2, v1}, Lcom/facebook/internal/a$b;-><init>(Lcom/facebook/internal/a$1;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v3, "com.google.android.gms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    new-instance v3, Lcom/facebook/internal/a$a;

    invoke-virtual {v2}, Lcom/facebook/internal/a$b;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/internal/a$a;-><init>(Landroid/os/IBinder;)V

    .line 153
    new-instance v0, Lcom/facebook/internal/a;

    invoke-direct {v0}, Lcom/facebook/internal/a;-><init>()V

    .line 154
    invoke-virtual {v3}, Lcom/facebook/internal/a$a;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/facebook/internal/a;->c:Ljava/lang/String;

    .line 155
    invoke-virtual {v3}, Lcom/facebook/internal/a$a;->b()Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/internal/a;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 163
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_1
    const-string v3, "android_id"

    invoke-static {v3, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    move-object v0, v1

    .line 163
    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 161
    throw v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/internal/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/facebook/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/k;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/facebook/internal/a;->c:Ljava/lang/String;

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/facebook/internal/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/facebook/internal/a;->e:Z

    return v0
.end method
