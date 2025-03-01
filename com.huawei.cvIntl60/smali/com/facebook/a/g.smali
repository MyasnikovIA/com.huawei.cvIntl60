.class public Lcom/facebook/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static e:Lcom/facebook/a/g$a;

.field private static f:Ljava/lang/Object;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/facebook/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/g;->a:Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/facebook/a/g$a;->a:Lcom/facebook/a/g$a;

    sput-object v0, Lcom/facebook/a/g;->e:Lcom/facebook/a/g$a;

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/a/g;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 1

    .prologue
    .line 1213
    .line 1214
    invoke-static {p1}, Lcom/facebook/internal/u;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 1217
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    invoke-static {}, Lcom/facebook/internal/v;->a()V

    .line 1224
    iput-object p1, p0, Lcom/facebook/a/g;->b:Ljava/lang/String;

    .line 1226
    if-nez p3, :cond_0

    .line 1227
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 1231
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 1232
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1234
    :cond_1
    new-instance v0, Lcom/facebook/a/a;

    invoke-direct {v0, p3}, Lcom/facebook/a/a;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/a/g;->c:Lcom/facebook/a/a;

    .line 1244
    :goto_0
    invoke-static {}, Lcom/facebook/a/g;->i()V

    .line 1245
    return-void

    .line 1237
    :cond_2
    if-nez p2, :cond_3

    .line 1239
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 1238
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 1241
    :cond_3
    new-instance v0, Lcom/facebook/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/a/g;->c:Lcom/facebook/a/a;

    goto :goto_0
.end method

.method public static a()Lcom/facebook/a/g$a;
    .locals 2

    .prologue
    .line 578
    sget-object v1, Lcom/facebook/a/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_0
    sget-object v0, Lcom/facebook/a/g;->e:Lcom/facebook/a/g$a;

    monitor-exit v1

    return-object v0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/a/g;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 511
    new-instance v0, Lcom/facebook/a/g;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/facebook/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/facebook/h;

    const-string v1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    invoke-static {}, Lcom/facebook/a/b;->a()V

    .line 267
    invoke-static {}, Lcom/facebook/a/m;->a()V

    .line 269
    if-nez p1, :cond_1

    .line 270
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object p1

    .line 276
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    invoke-static {p0, p1}, Lcom/facebook/a/b/a;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 443
    invoke-static {}, Lcom/facebook/k;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 446
    :cond_0
    new-instance v0, Lcom/facebook/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 447
    sget-object v1, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/facebook/a/g$1;

    invoke-direct {v2, v0}, Lcom/facebook/a/g$1;-><init>(Lcom/facebook/a/g;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static a(Lcom/facebook/a/c;Lcom/facebook/a/a;)V
    .locals 3

    .prologue
    .line 1323
    invoke-static {p1, p0}, Lcom/facebook/a/e;->a(Lcom/facebook/a/a;Lcom/facebook/a/c;)V

    .line 1326
    invoke-virtual {p0}, Lcom/facebook/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/a/g;->h:Z

    if-nez v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Lcom/facebook/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb_mobile_activate_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/g;->h:Z

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1330
    :cond_1
    sget-object v0, Lcom/facebook/t;->e:Lcom/facebook/t;

    const-string v1, "AppEvents"

    const-string v2, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1351
    sget-object v0, Lcom/facebook/t;->f:Lcom/facebook/t;

    const-string v1, "AppEvents"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 10
    .param p5    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1299
    :try_start_0
    new-instance v0, Lcom/facebook/a/c;

    iget-object v1, p0, Lcom/facebook/a/g;->b:Ljava/lang/String;

    .line 1305
    invoke-static {}, Lcom/facebook/a/b/a;->a()Z

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V

    .line 1307
    iget-object v1, p0, Lcom/facebook/a/g;->c:Lcom/facebook/a/a;

    invoke-static {v0, v1}, Lcom/facebook/a/g;->a(Lcom/facebook/a/c;Lcom/facebook/a/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/h; {:try_start_0 .. :try_end_0} :catch_1

    .line 1319
    :goto_0
    return-void

    .line 1308
    :catch_0
    move-exception v0

    .line 1310
    sget-object v1, Lcom/facebook/t;->e:Lcom/facebook/t;

    const-string v2, "AppEvents"

    const-string v3, "JSON encoding for app event failed: \'%s\'"

    new-array v4, v9, [Ljava/lang/Object;

    .line 1311
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 1310
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1313
    :catch_1
    move-exception v0

    .line 1315
    sget-object v1, Lcom/facebook/t;->e:Lcom/facebook/t;

    const-string v2, "AppEvents"

    const-string v3, "Invalid app event: %s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 1316
    invoke-virtual {v0}, Lcom/facebook/h;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 1315
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    .locals 6

    .prologue
    .line 768
    if-nez p1, :cond_0

    .line 769
    const-string v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lcom/facebook/a/g;->a(Ljava/lang/String;)V

    .line 788
    :goto_0
    return-void

    .line 771
    :cond_0
    if-nez p2, :cond_1

    .line 772
    const-string v0, "currency cannot be null"

    invoke-static {v0}, Lcom/facebook/a/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_1
    if-nez p3, :cond_2

    .line 777
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 779
    :goto_1
    const-string v0, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v1, "fb_mobile_purchase"

    .line 783
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 786
    invoke-static {}, Lcom/facebook/a/b/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move v4, p4

    .line 781
    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/g;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 787
    invoke-static {}, Lcom/facebook/a/g;->g()V

    goto :goto_0

    :cond_2
    move-object v3, p3

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/a/g;
    .locals 2

    .prologue
    .line 556
    new-instance v0, Lcom/facebook/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1442
    sget-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1443
    sget-object v1, Lcom/facebook/a/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 1444
    :try_start_0
    sget-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1446
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1449
    const-string v2, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    .line 1450
    sget-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    .line 1454
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1455
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "anonymousAppDeviceGUID"

    sget-object v3, Lcom/facebook/a/g;->g:Ljava/lang/String;

    .line 1456
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1460
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    :cond_1
    sget-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    return-object v0

    .line 1460
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 948
    invoke-static {}, Lcom/facebook/a/e;->a()V

    .line 949
    return-void
.end method

.method static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 984
    sget-object v1, Lcom/facebook/a/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 985
    :try_start_0
    sget-object v0, Lcom/facebook/a/g;->i:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 986
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1032
    invoke-static {}, Lcom/facebook/a/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1111
    invoke-static {}, Lcom/facebook/a/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static g()V
    .locals 2

    .prologue
    .line 1340
    invoke-static {}, Lcom/facebook/a/g;->a()Lcom/facebook/a/g$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/g$a;->b:Lcom/facebook/a/g$a;

    if-eq v0, v1, :cond_0

    .line 1341
    sget-object v0, Lcom/facebook/a/h;->f:Lcom/facebook/a/h;

    invoke-static {v0}, Lcom/facebook/a/e;->a(Lcom/facebook/a/h;)V

    .line 1343
    :cond_0
    return-void
.end method

.method static h()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1427
    sget-object v0, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 1428
    invoke-static {}, Lcom/facebook/a/g;->i()V

    .line 1431
    :cond_0
    sget-object v0, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static i()V
    .locals 7

    .prologue
    .line 1248
    sget-object v1, Lcom/facebook/a/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 1249
    :try_start_0
    sget-object v0, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 1250
    monitor-exit v1

    .line 1278
    :goto_0
    return-void

    .line 1255
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    new-instance v1, Lcom/facebook/a/g$2;

    invoke-direct {v1}, Lcom/facebook/a/g$2;-><init>()V

    .line 1272
    sget-object v0, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 1256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 676
    .line 678
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x0

    .line 681
    invoke-static {}, Lcom/facebook/a/b/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 676
    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/g;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 682
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 646
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 651
    invoke-static {}, Lcom/facebook/a/b/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 646
    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/g;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 652
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1188
    const/4 v4, 0x1

    .line 1193
    invoke-static {}, Lcom/facebook/a/b/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1188
    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/g;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 1194
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1284
    .line 1286
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    .line 1289
    invoke-static {}, Lcom/facebook/a/b/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 1284
    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/g;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 1290
    return-void
.end method

.method protected a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/a/g;->a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V

    .line 747
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 936
    sget-object v0, Lcom/facebook/a/h;->a:Lcom/facebook/a/h;

    invoke-static {v0}, Lcom/facebook/a/e;->a(Lcom/facebook/a/h;)V

    .line 937
    return-void
.end method
