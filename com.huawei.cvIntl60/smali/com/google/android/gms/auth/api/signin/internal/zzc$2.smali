.class Lcom/google/android/gms/auth/api/signin/internal/zzc$2;
.super Lcom/google/android/gms/auth/api/signin/internal/zzc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/signin/internal/zzc;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/zzc$zza",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic jC:Lcom/google/android/gms/auth/api/signin/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$2;->jC:Lcom/google/android/gms/auth/api/signin/internal/zzc;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/zzc$zza;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd;->zzavg()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zzh;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zzc$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzc$2$1;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzc$2;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd;->zzaje()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzb(Lcom/google/android/gms/auth/api/signin/internal/zzg;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zzd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$2;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$2;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
