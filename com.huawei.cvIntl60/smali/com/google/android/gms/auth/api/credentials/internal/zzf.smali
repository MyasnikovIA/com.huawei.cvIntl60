.class abstract Lcom/google/android/gms/auth/api/credentials/internal/zzf;
.super Lcom/google/android/gms/internal/zzqo$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzqo$zza",
        "<TR;",
        "Lcom/google/android/gms/auth/api/credentials/internal/zzg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzqo$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzk;)V
.end method

.method protected final zza(Lcom/google/android/gms/auth/api/credentials/internal/zzg;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzg;->zzavg()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/zzk;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzf;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzk;)V

    return-void
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/internal/zzg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzf;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzg;)V

    return-void
.end method
