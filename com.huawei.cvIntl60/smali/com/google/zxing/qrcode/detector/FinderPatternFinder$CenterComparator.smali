.class final Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CenterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/qrcode/detector/FinderPattern;",
        ">;"
    }
.end annotation


# instance fields
.field private final average:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    .line 667
    return-void
.end method

.method synthetic constructor <init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(F)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
    .locals 3

    .prologue
    .line 670
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 671
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    iget v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 672
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    iget v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 673
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, 0x1

    .line 675
    :goto_0
    return v0

    .line 673
    :cond_0
    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 675
    :cond_2
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 663
    check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I

    move-result v0

    return v0
.end method
