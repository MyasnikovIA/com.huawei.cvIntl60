.class Lcom/google/android/gms/internal/zzwx$3;
.super Lcom/google/android/gms/internal/zzwx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzwx;->loadConnected(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBm:Lcom/google/android/gms/internal/zzwx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwx;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwx$3;->aBm:Lcom/google/android/gms/internal/zzwx;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzwx$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzwx$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzwx$3;->zza(Lcom/google/android/gms/plus/internal/zze;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/plus/internal/zze;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/plus/internal/zze;->zzv(Lcom/google/android/gms/internal/zzqo$zzb;)V

    return-void
.end method
