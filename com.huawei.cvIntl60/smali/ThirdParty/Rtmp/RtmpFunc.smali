.class public LThirdParty/Rtmp/RtmpFunc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "rtmpClient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native encodeAudioFrame([BII)I
.end method

.method public static native encodeVideoFrame([BII)I
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static native init(Ljava/lang/String;)Z
.end method

.method public static native shutdown()V
.end method
