.class final Lcom/google/android/gms/internal/zztl$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztl$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zztl$zzb$zza;)Lcom/google/android/gms/internal/zztl$zzb$zzb;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztl$zzb$zzb;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/zztl$zzb$zza;->zzaa(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    iget v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    if-eqz v1, :cond_0

    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/internal/zztl$zzb$zza;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qu:I

    :goto_0
    iget v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    if-nez v1, :cond_1

    iget v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qu:I

    if-nez v1, :cond_1

    iput v2, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/gms/internal/zztl$zzb$zza;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qu:I

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qu:I

    iget v2, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qt:I

    if-lt v1, v2, :cond_2

    iput v3, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/zztl$zzb$zzb;->Qv:I

    goto :goto_1
.end method
