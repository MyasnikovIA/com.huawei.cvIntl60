.class abstract Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method static matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x3b

    invoke-static {p0, p1, v0, p2}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x3b

    invoke-static {p0, p1, v0, p2}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
