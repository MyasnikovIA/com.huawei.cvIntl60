.class Lcom/google/android/gms/internal/zzaos$4;
.super Lcom/google/android/gms/internal/zzapk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaos;->zzdg(Z)Lcom/google/android/gms/internal/zzapk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapk",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bok:Lcom/google/android/gms/internal/zzaos;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaos;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaos$4;->bok:Lcom/google/android/gms/internal/zzaos;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapk;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Number;)V
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqr;->bA()Lcom/google/android/gms/internal/zzaqr;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaos$4;->bok:Lcom/google/android/gms/internal/zzaos;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaos;->zza(Lcom/google/android/gms/internal/zzaos;D)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaqr;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaqr;

    goto :goto_0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaos$4;->zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaos$4;->zzf(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Float;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaqq;->brJ:Lcom/google/android/gms/internal/zzaqq;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
