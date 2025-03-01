.class public LThirdParty/OpenCV/OpenCVFunc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, LThirdParty/OpenCV/OpenCVFunc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LThirdParty/OpenCV/OpenCVFunc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, LThirdParty/OpenCV/OpenCVFunc;->b:Landroid/content/Context;

    .line 22
    const-string v0, "Load lib S"

    invoke-direct {p0, v0, v1}, LThirdParty/OpenCV/OpenCVFunc;->a(Ljava/lang/String;I)V

    .line 24
    const-string v0, "ViewController"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    const-string v0, "Load lib E"

    invoke-direct {p0, v0, v1}, LThirdParty/OpenCV/OpenCVFunc;->a(Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, LThirdParty/OpenCV/OpenCVFunc;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method


# virtual methods
.method public native PanoramaPath(Ljava/lang/String;Ljava/lang/String;DI)Z
.end method

.method public native cancelStitchMatch()Z
.end method
