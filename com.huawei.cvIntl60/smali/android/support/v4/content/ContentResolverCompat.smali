.class public final Landroid/support/v4/content/ContentResolverCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 76
    if-eqz p6, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p6}, Landroid/support/v4/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Landroid/os/CancellationSignal;

    move-object v0, v1

    check-cast v0, Landroid/os/CancellationSignal;

    move-object v7, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 81
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_1
    return-object v1

    .line 79
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    instance-of v2, v1, Landroid/os/OperationCanceledException;

    if-eqz v2, :cond_1

    .line 87
    new-instance v1, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v1}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v1

    .line 90
    :cond_1
    throw v1

    .line 96
    :cond_2
    if-eqz p6, :cond_3

    .line 97
    invoke-virtual {p6}, Landroid/support/v4/os/CancellationSignal;->throwIfCanceled()V

    .line 99
    :cond_3
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1
.end method
