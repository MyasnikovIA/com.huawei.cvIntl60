.class public final Lcom/google/android/gms/internal/zztl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zztl$zza;,
        Lcom/google/android/gms/internal/zztl$zzb;
    }
.end annotation


# static fields
.field private static Qh:Lcom/google/android/gms/internal/zztm;

.field private static final Qi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static Qj:Ljava/lang/String;

.field private static final Qk:Lcom/google/android/gms/internal/zztl$zzb$zza;

.field private static final Ql:Lcom/google/android/gms/internal/zztl$zzb$zza;

.field public static final Qm:Lcom/google/android/gms/internal/zztl$zzb;

.field public static final Qn:Lcom/google/android/gms/internal/zztl$zzb;

.field public static final Qo:Lcom/google/android/gms/internal/zztl$zzb;

.field public static final Qp:Lcom/google/android/gms/internal/zztl$zzb;

.field public static final Qq:Lcom/google/android/gms/internal/zztl$zzb;


# instance fields
.field private final Qr:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztl;->Qi:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/zztl$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztl$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztl;->Qk:Lcom/google/android/gms/internal/zztl$zzb$zza;

    new-instance v0, Lcom/google/android/gms/internal/zztl$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztl$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztl;->Ql:Lcom/google/android/gms/internal/zztl$zzb$zza;

    new-instance v0, Lcom/google/android/gms/internal/zztl$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztl$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztl;->Qm:Lcom/google/android/gms/internal/zztl$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zztl$4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztl$4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztl;->Qn:Lcom/google/android/gms/internal/zztl$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zztl$5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztl$5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztl;->Qo:Lcom/google/android/gms/internal/zztl$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zztl$6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztl$6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztl;->Qp:Lcom/google/android/gms/internal/zztl$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zztl$7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztl$7;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztl;->Qq:Lcom/google/android/gms/internal/zztl$zzb;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zztl;->Qr:Landroid/content/Context;

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Landroid/content/Context;
    .locals 5

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "DynamiteModule"

    const-string v2, "No valid DynamiteLoader APK path"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zztl$9;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, p3, v2}, Lcom/google/android/gms/internal/zztl$9;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_0
    const-string v2, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztn$zza;->zzff(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zztn;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Lcom/google/android/gms/internal/zztn;->zza(Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;[B)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "DynamiteModule"

    const-string v3, "Failed to load DynamiteLoader: "

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zztl$zzb;Ljava/lang/String;)Lcom/google/android/gms/internal/zztl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zztl;->Qk:Lcom/google/android/gms/internal/zztl$zzb$zza;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zztl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zztl$zzb;Ljava/lang/String;Lcom/google/android/gms/internal/zztl$zzb$zza;)Lcom/google/android/gms/internal/zztl;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zztl$zzb;Ljava/lang/String;Lcom/google/android/gms/internal/zztl$zzb$zza;)Lcom/google/android/gms/internal/zztl;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/zztl$zzb;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zztl$zzb$zza;)Lcom/google/android/gms/internal/zztl$zzb$zzb;

    move-result-object v2

    const-string v0, "DynamiteModule"

    iget v1, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    iget v3, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qu:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x44

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Considering local module "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and remote module "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    if-eqz v0, :cond_1

    iget v0, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    if-ne v0, v7, :cond_0

    iget v0, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    if-ne v0, v9, :cond_2

    iget v0, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qu:I

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zztl$zza;

    iget v1, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    iget v2, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qu:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x5b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "No acceptable module found. Local version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and remote version is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zztl$1;)V

    throw v0

    :cond_2
    iget v0, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    if-ne v0, v7, :cond_3

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zztl;->zzac(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zztl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    iget v0, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    if-ne v0, v9, :cond_6

    :try_start_0
    iget v0, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qu:I

    invoke-interface {p3, p0, p2, v0}, Lcom/google/android/gms/internal/zztl$zzb$zza;->zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/zztl;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zztl$zza; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v3, "DynamiteModule"

    const-string v4, "Failed to load remote module: "

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztl$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    if-eqz v0, :cond_5

    iget v0, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    new-instance v2, Lcom/google/android/gms/internal/zztl$8;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zztl$8;-><init>(I)V

    invoke-interface {p1, p0, p2, v2}, Lcom/google/android/gms/internal/zztl$zzb;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zztl$zzb$zza;)Lcom/google/android/gms/internal/zztl$zzb$zzb;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    if-ne v0, v7, :cond_5

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zztl;->zzac(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zztl;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zztl$zza;

    const-string v2, "Remote load failed. No local fallback found."

    invoke-direct {v0, v2, v1, v8}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/internal/zztl$1;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/zztl$zza;

    iget v1, v2, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VersionPolicy returned invalid code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zztl$1;)V

    throw v0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/zztl;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "DynamiteModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Selected remote version of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/gms/internal/zztl;->zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zztm;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zztl$zza;

    const-string v1, "Failed to create IDynamiteLoader."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zztl$1;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zztm;->zza(Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/zzd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zztl$zza;

    const-string v1, "Failed to load remote module."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zztl$1;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zztl$zza;

    const-string v2, "Failed to load remote module."

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/internal/zztl$1;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zztl;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zztl;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static zzaa(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ModuleDescriptor"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "MODULE_ID"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "MODULE_VERSION"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "DynamiteModule"

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Module descriptor id \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' didn\'t match expected id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "DynamiteModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Local module descriptor class for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "DynamiteModule"

    const-string v3, "Failed to load module descriptor class: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static zzab(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zztl;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private static zzac(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zztl;
    .locals 4

    const-string v1, "DynamiteModule"

    const-string v2, "Selected local version of "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zztl;->zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zztm;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Lcom/google/android/gms/internal/zztm;->zza(Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DynamiteModule"

    const-string v3, "Failed to retrieve remote module version: "

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/zztl;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "DynamiteModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Selected remote version of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/google/android/gms/internal/zztl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zztl;->Qi:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v2, Lcom/google/android/gms/internal/zztl;->Qj:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zztl$zza;

    const-string v1, "Module implementation could not be found."

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zztl$1;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/internal/zztl;->zza(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zztl$zza;

    const-string v1, "Failed to get module context"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zztl$1;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zztl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zztl;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static zzc(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 6

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const-string v0, "api_force_staging"

    :goto_0
    const-string v1, "content://com.google.android.gms.chimera/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zztl$zza;

    const-string v1, "Failed to get dynamite module ContentResolver."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zztl$1;)V

    throw v0

    :cond_1
    const-string v0, "api"

    goto :goto_0

    :cond_2
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const-string v0, "DynamiteModule"

    const-string v2, "Failed to retrieve remote module version."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/zztl$zza;

    const-string v2, "Failed to connect to dynamite module ContentResolver."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zztl$1;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6

    const-class v2, Lcom/google/android/gms/internal/zztl;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v3, Lcom/google/android/gms/internal/zztl;->Qi:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/zztl;->Qj:Ljava/lang/String;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static synthetic zzc(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/zztl;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zztl;->zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/zztl;

    move-result-object v0

    return-object v0
.end method

.method private static zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zztm;
    .locals 6

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/gms/internal/zztl;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zztl;->Qh:Lcom/google/android/gms/internal/zztm;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zztl;->Qh:Lcom/google/android/gms/internal/zztm;

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzaql()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "com.google.android.gms"

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztm$zza;->zzfe(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zztm;

    move-result-object v0

    if-eqz v0, :cond_2

    sput-object v0, Lcom/google/android/gms/internal/zztl;->Qh:Lcom/google/android/gms/internal/zztm;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "DynamiteModule"

    const-string v4, "Failed to load IDynamiteLoader from GmsCore: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic zzd(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/zztl;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zztl;->zzb(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/zztl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zzbdt()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->Qr:Landroid/content/Context;

    return-object v0
.end method

.method public zzjd(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->Qr:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/zztl$zza;

    const-string v3, "Failed to instantiate module class: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/internal/zztl$1;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
