.class public interface abstract Lcom/google/android/exoplayer/MediaCodecSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/exoplayer/MediaCodecSelector$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaCodecSelector$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
.end method

.method public abstract getPassthroughDecoderInfo()Lcom/google/android/exoplayer/DecoderInfo;
.end method
