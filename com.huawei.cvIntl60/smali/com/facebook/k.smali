.class public final Lcom/facebook/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/t;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/Executor;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/Boolean;

.field private static volatile h:Ljava/lang/String;

.field private static i:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile j:Z

.field private static k:Z

.field private static l:Lcom/facebook/internal/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/n",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Landroid/content/Context;

.field private static n:I

.field private static final o:Ljava/lang/Object;

.field private static p:Ljava/lang/String;

.field private static final q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Ljava/util/concurrent/ThreadFactory;

.field private static s:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    const-class v0, Lcom/facebook/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->a:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/t;

    sget-object v2, Lcom/facebook/t;->f:Lcom/facebook/t;

    aput-object v2, v1, v4

    .line 69
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/k;->b:Ljava/util/HashSet;

    .line 78
    const-string v0, "facebook.com"

    sput-object v0, Lcom/facebook/k;->h:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/k;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    sput-boolean v4, Lcom/facebook/k;->j:Z

    .line 81
    sput-boolean v4, Lcom/facebook/k;->k:Z

    .line 84
    const v0, 0xface

    sput v0, Lcom/facebook/k;->n:I

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/k;->o:Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/facebook/internal/s;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->p:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/k;->q:Ljava/util/concurrent/BlockingQueue;

    .line 96
    new-instance v0, Lcom/facebook/k$1;

    invoke-direct {v0}, Lcom/facebook/k$1;-><init>()V

    sput-object v0, Lcom/facebook/k;->r:Ljava/util/concurrent/ThreadFactory;

    .line 154
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->s:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    const-class v0, Lcom/facebook/k;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/k;->a(Landroid/content/Context;Lcom/facebook/k$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit v0

    return-void

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/facebook/k$a;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    const-class v1, Lcom/facebook/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/k;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    if-eqz p1, :cond_0

    .line 265
    invoke-interface {p1}, Lcom/facebook/k$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 270
    :cond_1
    :try_start_1
    const-string v0, "applicationContext"

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->b(Landroid/content/Context;Z)V

    .line 275
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->a(Landroid/content/Context;Z)V

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->m:Landroid/content/Context;

    .line 280
    sget-object v0, Lcom/facebook/k;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/k;->c(Landroid/content/Context;)V

    .line 283
    sget-object v0, Lcom/facebook/k;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    new-instance v0, Lcom/facebook/h;

    const-string v2, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {v0, v2}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 291
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->s:Ljava/lang/Boolean;

    .line 294
    sget-object v0, Lcom/facebook/k;->m:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 295
    invoke-static {}, Lcom/facebook/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    sget-object v0, Lcom/facebook/k;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    sget-object v2, Lcom/facebook/k;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/a/b/a;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 303
    :cond_3
    invoke-static {}, Lcom/facebook/internal/l;->a()V

    .line 306
    invoke-static {}, Lcom/facebook/internal/p;->b()V

    .line 308
    sget-object v0, Lcom/facebook/k;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/b;->a(Landroid/content/Context;)Lcom/facebook/internal/b;

    .line 310
    new-instance v0, Lcom/facebook/internal/n;

    new-instance v2, Lcom/facebook/k$2;

    invoke-direct {v2}, Lcom/facebook/k$2;-><init>()V

    invoke-direct {v0, v2}, Lcom/facebook/internal/n;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lcom/facebook/k;->l:Lcom/facebook/internal/n;

    .line 317
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/k$3;

    invoke-direct {v2, p1, p0}, Lcom/facebook/k$3;-><init>(Lcom/facebook/k$a;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 345
    invoke-static {}, Lcom/facebook/k;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 570
    invoke-static {}, Lcom/facebook/k;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/k$4;

    invoke-direct {v2, v0, p1}, Lcom/facebook/k$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 353
    const-class v1, Lcom/facebook/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/k;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/facebook/t;)Z
    .locals 2

    .prologue
    .line 424
    sget-object v1, Lcom/facebook/k;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 425
    :try_start_0
    invoke-static {}, Lcom/facebook/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 582
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 583
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both context and applicationId must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :catch_0
    move-exception v0

    .line 617
    const-string v1, "Facebook-publish"

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 619
    :cond_1
    :goto_0
    return-void

    .line 585
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/facebook/internal/a;->a(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v0

    .line 586
    const-string v1, "com.facebook.sdk.attributionTracking"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 592
    :try_start_2
    sget-object v3, Lcom/facebook/a/b/c$a;->a:Lcom/facebook/a/b/c$a;

    .line 595
    invoke-static {p0}, Lcom/facebook/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 596
    invoke-static {p0}, Lcom/facebook/k;->b(Landroid/content/Context;)Z

    move-result v7

    .line 592
    invoke-static {v3, v0, v6, v7, p0}, Lcom/facebook/a/b/c;->a(Lcom/facebook/a/b/c$a;Lcom/facebook/internal/a;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 602
    :try_start_3
    const-string v3, "%s/activities"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 603
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v3, v0, v7}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 605
    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    .line 607
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/p;

    .line 610
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 612
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 613
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 598
    :catch_1
    move-exception v0

    .line 599
    new-instance v1, Lcom/facebook/h;

    const-string v2, "An error occurred while publishing install."

    invoke-direct {v1, v2, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 433
    sget-boolean v0, Lcom/facebook/k;->j:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 639
    invoke-static {}, Lcom/facebook/internal/v;->a()V

    .line 640
    const-string v0, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 642
    const-string v1, "limitEventUsage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v4, 0xface

    .line 681
    if-nez p0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 688
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 687
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 693
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 697
    sget-object v0, Lcom/facebook/k;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 698
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 699
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 700
    check-cast v0, Ljava/lang/String;

    .line 701
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 702
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->d:Ljava/lang/String;

    .line 713
    :cond_2
    :goto_1
    sget-object v0, Lcom/facebook/k;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 714
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->e:Ljava/lang/String;

    .line 717
    :cond_3
    sget-object v0, Lcom/facebook/k;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 718
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->f:Ljava/lang/String;

    .line 721
    :cond_4
    sget v0, Lcom/facebook/k;->n:I

    if-ne v0, v4, :cond_5

    .line 722
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.CallbackOffset"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/k;->n:I

    .line 727
    :cond_5
    sget-object v0, Lcom/facebook/k;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 728
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.CodelessDebugLogEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 704
    :cond_6
    sput-object v0, Lcom/facebook/k;->d:Ljava/lang/String;

    goto :goto_1

    .line 706
    :cond_7
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 707
    new-instance v0, Lcom/facebook/h;

    const-string v1, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 450
    sget-boolean v0, Lcom/facebook/k;->k:Z

    return v0
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 477
    sget-object v1, Lcom/facebook/k;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_0
    sget-object v0, Lcom/facebook/k;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 479
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/facebook/k;->c:Ljava/util/concurrent/Executor;

    .line 481
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    sget-object v0, Lcom/facebook/k;->c:Ljava/util/concurrent/Executor;

    return-object v0

    .line 481
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    sget-object v0, Lcom/facebook/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 528
    invoke-static {}, Lcom/facebook/internal/v;->a()V

    .line 529
    sget-object v0, Lcom/facebook/k;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 557
    sget-object v0, Lcom/facebook/k;->a:Ljava/lang/String;

    const-string v1, "getGraphApiVersion: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/k;->p:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    sget-object v0, Lcom/facebook/k;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    const-string v0, "4.42.0"

    return-object v0
.end method

.method public static i()J
    .locals 2

    .prologue
    .line 665
    invoke-static {}, Lcom/facebook/internal/v;->a()V

    .line 666
    sget-object v0, Lcom/facebook/k;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 780
    invoke-static {}, Lcom/facebook/internal/v;->a()V

    .line 781
    sget-object v0, Lcom/facebook/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 817
    invoke-static {}, Lcom/facebook/internal/v;->a()V

    .line 818
    sget-object v0, Lcom/facebook/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Z
    .locals 1

    .prologue
    .line 834
    invoke-static {}, Lcom/facebook/ab;->b()Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 867
    invoke-static {}, Lcom/facebook/ab;->d()Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 1

    .prologue
    .line 882
    invoke-static {}, Lcom/facebook/ab;->c()Z

    move-result v0

    return v0
.end method

.method public static o()I
    .locals 1

    .prologue
    .line 919
    invoke-static {}, Lcom/facebook/internal/v;->a()V

    .line 920
    sget v0, Lcom/facebook/k;->n:I

    return v0
.end method

.method static synthetic p()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/facebook/k;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/facebook/k;->d:Ljava/lang/String;

    return-object v0
.end method
