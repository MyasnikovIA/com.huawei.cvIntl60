.class public Lcom/google/android/gms/common/util/zzt;
.super Ljava/lang/Object;


# static fields
.field private static GE:Ljava/lang/String;

.field private static final GF:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/zzt;->GE:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/util/zzt;->GF:I

    return-void
.end method

.method public static zzayz()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/util/zzt;->GE:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/common/util/zzt;->GF:I

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzt;->zzhi(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzt;->GE:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/util/zzt;->GE:Ljava/lang/String;

    return-object v0
.end method

.method static zzhi(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cmdline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v2

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method
