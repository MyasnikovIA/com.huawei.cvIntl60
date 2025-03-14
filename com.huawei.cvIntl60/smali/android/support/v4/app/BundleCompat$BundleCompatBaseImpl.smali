.class Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/BundleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BundleCompatBaseImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatBaseImpl"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 48
    sget-boolean v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string v2, "getIBinder"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 51
    sget-object v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    sput-boolean v6, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    .line 58
    :cond_0
    sget-object v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 60
    :try_start_1
    sget-object v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 67
    :goto_1
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v2, "BundleCompatBaseImpl"

    const-string v3, "Failed to retrieve getIBinder method"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 63
    :goto_2
    const-string v2, "BundleCompatBaseImpl"

    const-string v3, "Failed to invoke getIBinder via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    sput-object v1, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    :cond_1
    move-object v0, v1

    .line 67
    goto :goto_1

    .line 61
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 71
    sget-boolean v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    if-nez v0, :cond_0

    .line 73
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string v1, "putIBinder"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 75
    sget-object v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    sput-boolean v5, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    .line 82
    :cond_0
    sget-object v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 84
    :try_start_1
    sget-object v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    :cond_1
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "BundleCompatBaseImpl"

    const-string v2, "Failed to retrieve putIBinder method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 87
    :goto_2
    const-string v1, "BundleCompatBaseImpl"

    const-string v2, "Failed to invoke putIBinder via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 85
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method
