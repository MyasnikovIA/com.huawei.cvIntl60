.class public final Lcom/google/android/gms/internal/zzad$zza;
.super Lcom/google/android/gms/internal/zzasa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public zzck:Lcom/google/android/gms/internal/zzad$zzb;

.field public zzcl:Lcom/google/android/gms/internal/zzad$zzc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzasa;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzad$zza;->zzw()Lcom/google/android/gms/internal/zzad$zza;

    return-void
.end method

.method public static zzc([B)Lcom/google/android/gms/internal/zzad$zza;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzad$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzad$zza;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzasa;->zza(Lcom/google/android/gms/internal/zzasa;[B)Lcom/google/android/gms/internal/zzasa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzad$zza;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzad$zza;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bU()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzasd;->zzb(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Lcom/google/android/gms/internal/zzad$zzb;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzad$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzad$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Lcom/google/android/gms/internal/zzad$zzb;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Lcom/google/android/gms/internal/zzad$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzars;->zza(Lcom/google/android/gms/internal/zzasa;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzad$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzad$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzars;->zza(Lcom/google/android/gms/internal/zzasa;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Lcom/google/android/gms/internal/zzad$zzb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Lcom/google/android/gms/internal/zzad$zzb;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zza(ILcom/google/android/gms/internal/zzasa;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zza(ILcom/google/android/gms/internal/zzasa;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzasa;->zza(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasa;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzad$zza;->zza(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzad$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzw()Lcom/google/android/gms/internal/zzad$zza;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Lcom/google/android/gms/internal/zzad$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzad$zza;->btP:I

    return-object p0
.end method

.method protected zzx()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzasa;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Lcom/google/android/gms/internal/zzad$zzb;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Lcom/google/android/gms/internal/zzad$zzb;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzc(ILcom/google/android/gms/internal/zzasa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzc(ILcom/google/android/gms/internal/zzasa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
