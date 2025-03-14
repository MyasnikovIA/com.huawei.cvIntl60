.class final Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaCodecListCompatV21"
.end annotation


# instance fields
.field private final codecKind:I

.field private mediaCodecInfos:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    .line 420
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureMediaCodecInfosInitialized()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 448
    :cond_0
    return-void
.end method


# virtual methods
.method public getCodecCount()I
    .locals 1

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isSecurePlaybackSupported(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .prologue
    .line 441
    const-string v0, "secure-playback"

    invoke-virtual {p2, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public secureDecodersExplicit()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method
