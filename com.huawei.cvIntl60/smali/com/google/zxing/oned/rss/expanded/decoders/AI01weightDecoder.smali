.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract addWeightCode(Ljava/lang/StringBuilder;I)V
.end method

.method protected abstract checkWeight(I)I
.end method

.method final encodeCompressedWeight(Ljava/lang/StringBuilder;II)V
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->addWeightCode(Ljava/lang/StringBuilder;I)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->checkWeight(I)I

    move-result v2

    .line 46
    const v1, 0x186a0

    .line 47
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 48
    div-int v3, v2, v1

    if-nez v3, :cond_0

    .line 49
    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    div-int/lit8 v1, v1, 0xa

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    return-void
.end method
