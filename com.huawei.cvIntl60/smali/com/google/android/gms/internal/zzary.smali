.class public final Lcom/google/android/gms/internal/zzary;
.super Ljava/lang/Object;


# static fields
.field protected static final ISO_8859_1:Ljava/nio/charset/Charset;

.field protected static final UTF_8:Ljava/nio/charset/Charset;

.field public static final btO:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzary;->UTF_8:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzary;->ISO_8859_1:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzary;->btO:Ljava/lang/Object;

    return-void
.end method

.method public static equals([F[F)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([I[I)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([J[J)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v7, v1

    :goto_0
    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    move v3, v1

    move v6, v1

    :goto_2
    if-ge v6, v7, :cond_7

    aget-object v4, p0, v6

    if-nez v4, :cond_7

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    :cond_0
    array-length v0, p0

    move v7, v0

    goto :goto_0

    :cond_1
    array-length v0, p1

    goto :goto_1

    :goto_3
    if-ge v5, v0, :cond_2

    aget-object v3, p1, v5

    if-nez v3, :cond_2

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    :cond_2
    if-lt v6, v7, :cond_4

    move v4, v2

    :goto_4
    if-lt v5, v0, :cond_5

    move v3, v2

    :goto_5
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    move v1, v2

    :cond_3
    return v1

    :cond_4
    move v4, v1

    goto :goto_4

    :cond_5
    move v3, v1

    goto :goto_5

    :cond_6
    if-ne v4, v3, :cond_3

    aget-object v3, p0, v6

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v3, v5, 0x1

    move v6, v4

    goto :goto_2

    :cond_7
    move v5, v3

    goto :goto_3
.end method

.method public static hashCode([F)I
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    move v3, v1

    move v2, v1

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v1, p0, v3

    if-eqz v1, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_1

    :cond_0
    array-length v0, p0

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaru;Lcom/google/android/gms/internal/zzaru;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarw;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    :cond_0
    return-void
.end method

.method public static zza([[B[[B)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v7, v1

    :goto_0
    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    move v3, v1

    move v6, v1

    :goto_2
    if-ge v6, v7, :cond_7

    aget-object v4, p0, v6

    if-nez v4, :cond_7

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    :cond_0
    array-length v0, p0

    move v7, v0

    goto :goto_0

    :cond_1
    array-length v0, p1

    goto :goto_1

    :goto_3
    if-ge v5, v0, :cond_2

    aget-object v3, p1, v5

    if-nez v3, :cond_2

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    :cond_2
    if-lt v6, v7, :cond_4

    move v4, v2

    :goto_4
    if-lt v5, v0, :cond_5

    move v3, v2

    :goto_5
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    move v1, v2

    :cond_3
    return v1

    :cond_4
    move v4, v1

    goto :goto_4

    :cond_5
    move v3, v1

    goto :goto_5

    :cond_6
    if-ne v4, v3, :cond_3

    aget-object v3, p0, v6

    aget-object v4, p1, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v3, v5, 0x1

    move v6, v4

    goto :goto_2

    :cond_7
    move v5, v3

    goto :goto_3
.end method

.method public static zzb([[B)I
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    move v3, v1

    move v2, v1

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v1, p0, v3

    if-eqz v1, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_1

    :cond_0
    array-length v0, p0

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v1, v2

    goto :goto_2
.end method
