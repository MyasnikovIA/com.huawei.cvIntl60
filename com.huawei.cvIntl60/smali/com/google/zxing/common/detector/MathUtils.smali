.class public final Lcom/google/zxing/common/detector/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static distance(FFFF)F
    .locals 2

    .prologue
    .line 48
    sub-float v0, p0, p2

    .line 49
    sub-float v1, p1, p3

    .line 50
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static distance(IIII)F
    .locals 2

    .prologue
    .line 61
    sub-int v0, p0, p2

    .line 62
    sub-int v1, p1, p3

    .line 63
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static round(F)I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    :goto_0
    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public static sum([I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 71
    .line 72
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v1, p0, v0

    .line 73
    add-int/2addr v1, v2

    .line 72
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 75
    :cond_0
    return v2
.end method
