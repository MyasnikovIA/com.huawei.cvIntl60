.class public final Lcom/google/zxing/aztec/AztecDetectorResult;
.super Lcom/google/zxing/common/DetectorResult;
.source "SourceFile"


# instance fields
.field private final compact:Z

.field private final nbDatablocks:I

.field private final nbLayers:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    .line 41
    iput-boolean p3, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->compact:Z

    .line 42
    iput p4, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->nbDatablocks:I

    .line 43
    iput p5, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->nbLayers:I

    .line 44
    return-void
.end method


# virtual methods
.method public getNbDatablocks()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->nbDatablocks:I

    return v0
.end method

.method public getNbLayers()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->nbLayers:I

    return v0
.end method

.method public isCompact()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->compact:Z

    return v0
.end method
