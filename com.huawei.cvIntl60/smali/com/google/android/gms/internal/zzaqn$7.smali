.class final Lcom/google/android/gms/internal/zzaqn$7;
.super Lcom/google/android/gms/internal/zzapk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaqn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapk",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaqn$7;->zza(Lcom/google/android/gms/internal/zzaqr;Ljava/math/BigInteger;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaqr;Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaqr;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaqr;

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaqn$7;->zzs(Lcom/google/android/gms/internal/zzaqp;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public zzs(Lcom/google/android/gms/internal/zzaqp;)Ljava/math/BigInteger;
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
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaph;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaph;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
