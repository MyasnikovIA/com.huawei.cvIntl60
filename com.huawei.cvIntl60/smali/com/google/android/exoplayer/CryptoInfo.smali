.class public final Lcom/google/android/exoplayer/CryptoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/CryptoInfo;->newFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 106
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private updateFrameworkCryptoInfoV16()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/google/android/exoplayer/CryptoInfo;->numSubSamples:I

    iget-object v2, p0, Lcom/google/android/exoplayer/CryptoInfo;->numBytesOfClearData:[I

    iget-object v3, p0, Lcom/google/android/exoplayer/CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v4, p0, Lcom/google/android/exoplayer/CryptoInfo;->key:[B

    iget-object v5, p0, Lcom/google/android/exoplayer/CryptoInfo;->iv:[B

    iget v6, p0, Lcom/google/android/exoplayer/CryptoInfo;->mode:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    .line 113
    return-void
.end method


# virtual methods
.method public getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public set(I[I[I[B[BI)V
    .locals 2

    .prologue
    .line 63
    iput p1, p0, Lcom/google/android/exoplayer/CryptoInfo;->numSubSamples:I

    .line 64
    iput-object p2, p0, Lcom/google/android/exoplayer/CryptoInfo;->numBytesOfClearData:[I

    .line 65
    iput-object p3, p0, Lcom/google/android/exoplayer/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 66
    iput-object p4, p0, Lcom/google/android/exoplayer/CryptoInfo;->key:[B

    .line 67
    iput-object p5, p0, Lcom/google/android/exoplayer/CryptoInfo;->iv:[B

    .line 68
    iput p6, p0, Lcom/google/android/exoplayer/CryptoInfo;->mode:I

    .line 69
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/google/android/exoplayer/CryptoInfo;->updateFrameworkCryptoInfoV16()V

    .line 72
    :cond_0
    return-void
.end method

.method public setFromExtractorV16(Landroid/media/MediaExtractor;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v0, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->numSubSamples:I

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->numBytesOfClearData:[I

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->key:[B

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->iv:[B

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v0, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    iput v0, p0, Lcom/google/android/exoplayer/CryptoInfo;->mode:I

    .line 88
    return-void
.end method
