.class public LGeneralFunction/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:LGeneralFunction/k/a;


# instance fields
.field a:Landroid/net/NetworkInfo;

.field private b:Landroid/net/ConnectivityManager;

.field private c:Landroid/net/Network;

.field private e:Landroid/content/Context;

.field private f:Landroid/net/NetworkCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, LGeneralFunction/k/a;->d:LGeneralFunction/k/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, LGeneralFunction/k/a;->b:Landroid/net/ConnectivityManager;

    .line 20
    iput-object v0, p0, LGeneralFunction/k/a;->c:Landroid/net/Network;

    .line 22
    iput-object v0, p0, LGeneralFunction/k/a;->e:Landroid/content/Context;

    .line 23
    iput-object v0, p0, LGeneralFunction/k/a;->a:Landroid/net/NetworkInfo;

    .line 24
    iput-object v0, p0, LGeneralFunction/k/a;->f:Landroid/net/NetworkCapabilities;

    .line 35
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)LGeneralFunction/k/a;
    .locals 2

    .prologue
    .line 38
    const-class v1, LGeneralFunction/k/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, LGeneralFunction/k/a;->d:LGeneralFunction/k/a;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, LGeneralFunction/k/a;

    invoke-direct {v0, p0}, LGeneralFunction/k/a;-><init>(Landroid/content/Context;)V

    sput-object v0, LGeneralFunction/k/a;->d:LGeneralFunction/k/a;

    .line 43
    :cond_0
    sget-object v0, LGeneralFunction/k/a;->d:LGeneralFunction/k/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(I)D
    .locals 12

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v1, 0x0

    .line 53
    .line 54
    if-nez p1, :cond_0

    .line 55
    const-string v0, "live-360.facebook.com"

    .line 61
    :goto_0
    const-wide/16 v6, 0x0

    move v4, v1

    .line 64
    :goto_1
    const/4 v1, 0x4

    if-ge v4, v1, :cond_3

    .line 66
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/system/bin/ping"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "-c 1"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    aput-object v0, v5, v8

    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    const/4 v5, 0x1

    .line 68
    invoke-virtual {v1, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 71
    :try_start_1
    const-string v1, ""

    .line 72
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 73
    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "utf-8"

    invoke-direct {v9, v8, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 75
    :goto_2
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 76
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v10, v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_2

    .line 58
    :cond_0
    const-string v0, "a.rtmp.youtube.com"

    goto :goto_0

    .line 78
    :cond_1
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 79
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 81
    const-string v8, "time="

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 83
    const-string v8, "time="

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 84
    const/4 v8, 0x0

    const-string v9, " ms"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v8

    add-double/2addr v6, v8

    .line 96
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 64
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    .line 89
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    move-wide v0, v2

    .line 105
    :goto_3
    return-wide v0

    .line 93
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    move-wide v0, v2

    .line 94
    goto :goto_3

    .line 96
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 100
    :catch_1
    move-exception v0

    move-wide v0, v2

    .line 102
    goto :goto_3

    .line 105
    :cond_3
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double v0, v6, v0

    goto :goto_3
.end method
