.class public final Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.super Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;
    }
.end annotation


# static fields
.field public static final FFP_PROPV_DECODER_AVCODEC:I = 0x1

.field public static final FFP_PROPV_DECODER_MEDIACODEC:I = 0x2

.field public static final FFP_PROPV_DECODER_UNKNOWN:I = 0x0

.field public static final FFP_PROPV_DECODER_VIDEOTOOLBOX:I = 0x3

.field public static final FFP_PROP_FLOAT_DROP_FRAME_RATE:I = 0x2717

.field public static final FFP_PROP_FLOAT_PLAYBACK_RATE:I = 0x2713

.field public static final FFP_PROP_INT64_ASYNC_STATISTIC_BUF_BACKWARDS:I = 0x4ee9

.field public static final FFP_PROP_INT64_ASYNC_STATISTIC_BUF_CAPACITY:I = 0x4eeb

.field public static final FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS:I = 0x4eea

.field public static final FFP_PROP_INT64_AUDIO_CACHED_BYTES:I = 0x4e28

.field public static final FFP_PROP_INT64_AUDIO_CACHED_DURATION:I = 0x4e26

.field public static final FFP_PROP_INT64_AUDIO_CACHED_PACKETS:I = 0x4e2a

.field public static final FFP_PROP_INT64_AUDIO_DECODER:I = 0x4e24

.field public static final FFP_PROP_INT64_BIT_RATE:I = 0x4e84

.field public static final FFP_PROP_INT64_CACHE_STATISTIC_COUNT_BYTES:I = 0x4ef0

.field public static final FFP_PROP_INT64_CACHE_STATISTIC_FILE_FORWARDS:I = 0x4eee

.field public static final FFP_PROP_INT64_CACHE_STATISTIC_FILE_POS:I = 0x4eef

.field public static final FFP_PROP_INT64_CACHE_STATISTIC_PHYSICAL_POS:I = 0x4eed

.field public static final FFP_PROP_INT64_IMMEDIATE_RECONNECT:I = 0x4ef3

.field public static final FFP_PROP_INT64_LATEST_SEEK_LOAD_DURATION:I = 0x4f4c

.field public static final FFP_PROP_INT64_LOGICAL_FILE_SIZE:I = 0x4ef1

.field public static final FFP_PROP_INT64_SELECTED_AUDIO_STREAM:I = 0x4e22

.field public static final FFP_PROP_INT64_SELECTED_TIMEDTEXT_STREAM:I = 0x4e2b

.field public static final FFP_PROP_INT64_SELECTED_VIDEO_STREAM:I = 0x4e21

.field public static final FFP_PROP_INT64_SHARE_CACHE_DATA:I = 0x4ef2

.field public static final FFP_PROP_INT64_TCP_SPEED:I = 0x4ee8

.field public static final FFP_PROP_INT64_TRAFFIC_STATISTIC_BYTE_COUNT:I = 0x4eec

.field public static final FFP_PROP_INT64_VIDEO_CACHED_BYTES:I = 0x4e27

.field public static final FFP_PROP_INT64_VIDEO_CACHED_DURATION:I = 0x4e25

.field public static final FFP_PROP_INT64_VIDEO_CACHED_PACKETS:I = 0x4e29

.field public static final FFP_PROP_INT64_VIDEO_DECODER:I = 0x4e23

.field public static final IJK_LOG_DEBUG:I = 0x3

.field public static final IJK_LOG_DEFAULT:I = 0x1

.field public static final IJK_LOG_ERROR:I = 0x6

.field public static final IJK_LOG_FATAL:I = 0x7

.field public static final IJK_LOG_INFO:I = 0x4

.field public static final IJK_LOG_SILENT:I = 0x8

.field public static final IJK_LOG_UNKNOWN:I = 0x0

.field public static final IJK_LOG_VERBOSE:I = 0x2

.field public static final IJK_LOG_WARN:I = 0x5

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field protected static final MEDIA_SET_VIDEO_SAR:I = 0x2711

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final OPT_CATEGORY_CODEC:I = 0x2

.field public static final OPT_CATEGORY_FORMAT:I = 0x1

.field public static final OPT_CATEGORY_PLAYER:I = 0x4

.field public static final OPT_CATEGORY_SWS:I = 0x3

.field public static final PROP_FLOAT_VIDEO_DECODE_FRAMES_PER_SECOND:I = 0x2711

.field public static final PROP_FLOAT_VIDEO_OUTPUT_FRAMES_PER_SECOND:I = 0x2712

.field public static final SDL_FCC_RV16:I = 0x36315652

.field public static final SDL_FCC_RV32:I = 0x32335652

.field public static final SDL_FCC_YV12:I = 0x32315659

.field private static final TAG:Ljava/lang/String;

.field private static volatile mIsLibLoaded:Z

.field private static volatile mIsNativeInitialized:Z

.field private static final sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;


# instance fields
.field private mDataSource:Ljava/lang/String;

.field private mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

.field private mListenerContext:I
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeAndroidIO:J
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeMediaDataSource:J
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeMediaPlayer:J
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeSurfaceTexture:I
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

.field private mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

.field private mOnNativeInvokeListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const-class v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    .line 176
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;-><init>()V

    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    .line 183
    sput-boolean v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    .line 198
    sput-boolean v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 218
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 227
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initPlayer(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 228
    return-void
.end method

.method private native _getAudioCodecInfo()Ljava/lang/String;
.end method

.method private static native _getColorFormatName(I)Ljava/lang/String;
.end method

.method private native _getLoopCount()I
.end method

.method private native _getMediaMeta()Landroid/os/Bundle;
.end method

.method private native _getPropertyFloat(IF)F
.end method

.method private native _getPropertyLong(IJ)J
.end method

.method private native _getVideoCodecInfo()Ljava/lang/String;
.end method

.method private native _pause()V
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setAndroidIOCallback(Ltv/danmaku/ijk/media/player/misc/IAndroidIO;)V
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private native _setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
.end method

.method private native _setDataSourceFd(I)V
.end method

.method private native _setFrameAtTime(Ljava/lang/String;JJII)V
.end method

.method private native _setLoopCount(I)V
.end method

.method private native _setOption(ILjava/lang/String;J)V
.end method

.method private native _setOption(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setPropertyFloat(IF)V
.end method

.method private native _setPropertyLong(IJ)V
.end method

.method private native _setStreamSelected(IZ)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
.end method

.method private native _stop()V
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mNativeMediaPlayer:J

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$402(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$502(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$602(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return p1
.end method

.method public static getColorFormatName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getColorFormatName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initNativeOnce()V
    .locals 2

    .prologue
    .line 200
    const-class v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v1

    .line 201
    :try_start_0
    sget-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_init()V

    .line 203
    const/4 v0, 0x1

    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    .line 205
    :cond_0
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initPlayer(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
    .locals 2

    .prologue
    .line 231
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 232
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initNativeOnce()V

    .line 235
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    .line 247
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 248
    return-void

    .line 237
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    goto :goto_0
.end method

.method public static loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
    .locals 2

    .prologue
    .line 185
    const-class v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v1

    .line 186
    :try_start_0
    sget-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    if-nez v0, :cond_1

    .line 187
    if-nez p0, :cond_0

    .line 188
    sget-object p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    .line 190
    :cond_0
    const-string v0, "ijkffmpeg"

    invoke-interface {p0, v0}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 191
    const-string v0, "ijksdl"

    invoke-interface {p0, v0}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 192
    const-string v0, "ijkplayer"

    invoke-interface {p0, v0}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    .line 195
    :cond_1
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_message_loop(Ljava/lang/Object;)V
.end method

.method public static native native_profileBegin(Ljava/lang/String;)V
.end method

.method public static native native_profileEnd()V
.end method

.method public static native native_setLogLevel(I)V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static onNativeInvoke(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 6
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1148
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onNativeInvoke %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 1150
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "<null weakThiz>.onNativeInvoke()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1154
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 1155
    if-nez v0, :cond_2

    .line 1156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "<null weakPlayer>.onNativeInvoke()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_2
    iget-object v3, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnNativeInvokeListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;

    .line 1159
    if-eqz v3, :cond_3

    invoke-interface {v3, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;->onNativeInvoke(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 1180
    :goto_0
    return v0

    .line 1162
    :cond_3
    packed-switch p1, :pswitch_data_0

    move v0, v2

    .line 1180
    goto :goto_0

    .line 1164
    :pswitch_0
    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    .line 1165
    if-nez v0, :cond_4

    move v0, v2

    .line 1166
    goto :goto_0

    .line 1168
    :cond_4
    const-string v2, "segment_index"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1169
    if-gez v2, :cond_5

    .line 1170
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "onNativeInvoke(invalid segment index)"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_5
    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;->onControlResolveSegmentUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 1173
    if-nez v0, :cond_6

    .line 1174
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "onNativeInvoke() = <NULL newUrl>"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1176
    :cond_6
    const-string v2, "url"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1177
    goto :goto_0

    .line 1162
    nop

    :pswitch_data_0
    .packed-switch 0x20007
        :pswitch_0
    .end packed-switch
.end method

.method private static onSelectCodec(Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1203
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1216
    :goto_0
    return-object v0

    .line 1207
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1208
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 1209
    if-nez v0, :cond_2

    move-object v0, v1

    .line 1210
    goto :goto_0

    .line 1212
    :cond_2
    iget-object v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    .line 1213
    if-nez v1, :cond_3

    .line 1214
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;->sInstance:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;

    .line 1216
    :cond_3
    invoke-interface {v1, v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;->onMediaCodecSelect(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 2
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1069
    if-nez p0, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 1074
    if-eqz v0, :cond_0

    .line 1078
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 1081
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 1083
    :cond_2
    iget-object v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    if-eqz v1, :cond_0

    .line 1084
    iget-object v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1085
    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 484
    return-void
.end method

.method private stayAwake(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 581
    if-eqz p1, :cond_1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 587
    :cond_0
    :goto_0
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStayAwake:Z

    .line 588
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 589
    return-void

    .line 583
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 593
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 595
    :cond_0
    return-void

    .line 593
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native _prepareAsync()V
.end method

.method public deselectTrack(I)V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setStreamSelected(IZ)V

    .line 647
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 949
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 950
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_finalize()V

    .line 951
    return-void
.end method

.method public getAsyncStatisticBufBackwards()J
    .locals 4

    .prologue
    .line 794
    const/16 v0, 0x4ee9

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsyncStatisticBufCapacity()J
    .locals 4

    .prologue
    .line 802
    const/16 v0, 0x4eeb

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsyncStatisticBufForwards()J
    .locals 4

    .prologue
    .line 798
    const/16 v0, 0x4eea

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedBytes()J
    .locals 4

    .prologue
    .line 782
    const/16 v0, 0x4e28

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedDuration()J
    .locals 4

    .prologue
    .line 774
    const/16 v0, 0x4e26

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedPackets()J
    .locals 4

    .prologue
    .line 790
    const/16 v0, 0x4e2a

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getAudioSessionId()I
.end method

.method public getBitRate()J
    .locals 4

    .prologue
    .line 830
    const/16 v0, 0x4e84

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheStatisticCountBytes()J
    .locals 4

    .prologue
    .line 822
    const/16 v0, 0x4ef0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheStatisticFileForwards()J
    .locals 4

    .prologue
    .line 814
    const/16 v0, 0x4eee

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheStatisticFilePos()J
    .locals 4

    .prologue
    .line 818
    const/16 v0, 0x4eef

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheStatisticPhysicalPos()J
    .locals 4

    .prologue
    .line 810
    const/16 v0, 0x4eed

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getCurrentPosition()J
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDropFrameRate()F
    .locals 2

    .prologue
    .line 847
    const/16 v0, 0x2717

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public native getDuration()J
.end method

.method public getFileSize()J
    .locals 4

    .prologue
    .line 826
    const/16 v0, 0x4ef1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 858
    new-instance v1, Ltv/danmaku/ijk/media/player/MediaInfo;

    invoke-direct {v1}, Ltv/danmaku/ijk/media/player/MediaInfo;-><init>()V

    .line 859
    const-string v0, "ijkplayer"

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mMediaPlayerName:Ljava/lang/String;

    .line 861
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getVideoCodecInfo()Ljava/lang/String;

    move-result-object v0

    .line 862
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 863
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 864
    array-length v2, v0

    if-lt v2, v5, :cond_2

    .line 865
    aget-object v2, v0, v3

    iput-object v2, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 866
    aget-object v0, v0, v4

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    .line 873
    :cond_0
    :goto_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getAudioCodecInfo()Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 875
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 876
    array-length v2, v0

    if-lt v2, v5, :cond_3

    .line 877
    aget-object v2, v0, v3

    iput-object v2, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 878
    aget-object v0, v0, v4

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    .line 886
    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->parse(Landroid/os/Bundle;)Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    move-result-object v0

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_2
    return-object v1

    .line 867
    :cond_2
    array-length v2, v0

    if-lt v2, v4, :cond_0

    .line 868
    aget-object v0, v0, v3

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 869
    const-string v0, ""

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    goto :goto_0

    .line 879
    :cond_3
    array-length v2, v0

    if-lt v2, v4, :cond_1

    .line 880
    aget-object v0, v0, v3

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 881
    const-string v0, ""

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    goto :goto_1

    .line 887
    :catch_0
    move-exception v0

    .line 888
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public getMediaMeta()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 920
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSeekLoadDuration()J
    .locals 4

    .prologue
    .line 838
    const/16 v0, 0x4f4c

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTrack(I)I
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 625
    packed-switch p1, :pswitch_data_0

    .line 633
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 627
    :pswitch_0
    const/16 v0, 0x4e21

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 629
    :pswitch_1
    const/16 v0, 0x4e22

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 631
    :pswitch_2
    const/16 v0, 0x4e2b

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSpeed(F)F
    .locals 2

    .prologue
    .line 754
    const/16 v0, 0x2713

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public getTcpSpeed()J
    .locals 4

    .prologue
    .line 834
    const/16 v0, 0x4ee8

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaMeta()Landroid/os/Bundle;

    move-result-object v1

    .line 600
    if-nez v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-object v0

    .line 603
    :cond_1
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->parse(Landroid/os/Bundle;)Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    move-result-object v1

    .line 604
    if-eqz v1, :cond_0

    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mStreams:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 607
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 608
    iget-object v0, v1, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    .line 609
    new-instance v3, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    invoke-direct {v3, v0}, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;)V

    .line 610
    iget-object v4, v0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mType:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 611
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->setTrackType(I)V

    .line 617
    :cond_2
    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 612
    :cond_3
    iget-object v4, v0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mType:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 613
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->setTrackType(I)V

    goto :goto_2

    .line 614
    :cond_4
    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mType:Ljava/lang/String;

    const-string v4, "timedtext"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->setTrackType(I)V

    goto :goto_2

    .line 620
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    goto :goto_0
.end method

.method public getTrafficStatisticByteCount()J
    .locals 4

    .prologue
    .line 806
    const/16 v0, 0x4eec

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedBytes()J
    .locals 4

    .prologue
    .line 778
    const/16 v0, 0x4e27

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedDuration()J
    .locals 4

    .prologue
    .line 770
    const/16 v0, 0x4e25

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedPackets()J
    .locals 4

    .prologue
    .line 786
    const/16 v0, 0x4e29

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoDecodeFramesPerSecond()F
    .locals 2

    .prologue
    .line 766
    const/16 v0, 0x2711

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public getVideoDecoder()I
    .locals 4

    .prologue
    .line 758
    const/16 v0, 0x4e23

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoOutputFramesPerSecond()F
    .locals 2

    .prologue
    .line 762
    const/16 v0, 0x2712

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public httphookReconnect()V
    .locals 4

    .prologue
    .line 954
    const/16 v0, 0x4ef3

    const-wide/16 v2, 0x1

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 955
    return-void
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 743
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getLoopCount()I

    move-result v1

    .line 744
    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x1

    return v0
.end method

.method public native isPlaying()Z
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 539
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_pause()V

    .line 540
    return-void
.end method

.method public prepareAsync()V
    .locals 0

    .prologue
    .line 515
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_prepareAsync()V

    .line 516
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 702
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 703
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->resetListeners()V

    .line 704
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_release()V

    .line 705
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 711
    invoke-direct {p0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 712
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_reset()V

    .line 714
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 716
    iput v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    .line 717
    iput v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    .line 718
    return-void
.end method

.method public resetListeners()V
    .locals 1

    .prologue
    .line 1197
    invoke-super {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->resetListeners()V

    .line 1198
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    .line 1199
    return-void
.end method

.method public native seekTo(J)V
.end method

.method public selectTrack(I)V
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setStreamSelected(IZ)V

    .line 641
    return-void
.end method

.method public setAndroidIOCallback(Ltv/danmaku/ijk/media/player/misc/IAndroidIO;)V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setAndroidIOCallback(Ltv/danmaku/ijk/media/player/misc/IAndroidIO;)V

    .line 494
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 933
    return-void
.end method

.method public setCacheShare(I)V
    .locals 4

    .prologue
    .line 958
    const/16 v0, 0x4ef2

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 959
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 326
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 345
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "settings"

    .line 349
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 351
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 353
    if-nez p2, :cond_2

    .line 354
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to resolve default ringtone"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_2
    const/4 v0, 0x0

    .line 360
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 361
    const-string v2, "r"

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 362
    if-nez v6, :cond_3

    .line 377
    if-eqz v6, :cond_0

    .line 378
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 368
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 369
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 377
    :goto_1
    if-eqz v6, :cond_0

    .line 378
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 371
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 374
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 377
    :goto_2
    if-eqz v0, :cond_5

    .line 378
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 382
    :cond_5
    :goto_3
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 375
    :catch_1
    move-exception v1

    move-object v6, v0

    .line 377
    :goto_4
    if-eqz v6, :cond_5

    .line 378
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_3

    .line 377
    :catchall_0
    move-exception v1

    move-object v6, v0

    :goto_5
    if-eqz v6, :cond_6

    .line 378
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_6
    throw v1

    .line 377
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    .line 375
    :catch_2
    move-exception v0

    goto :goto_4

    .line 374
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 451
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 452
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 459
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setDataSourceFd(I)V

    .line 468
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 456
    :catch_1
    move-exception v0

    .line 457
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 461
    :cond_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 463
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setDataSourceFd(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 407
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 408
    invoke-direct {p0, p1, v0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 421
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 424
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 427
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v0, "headers"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v0, "protocol_whitelist"

    const-string v1, "async,cache,crypto,file,http,https,ijkhttphook,ijkinject,ijklivehook,ijklongurl,ijksegment,ijktcphook,pipe,rtp,tcp,tls,udp,ijkurlhook,data"

    invoke-virtual {p0, v4, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    .line 489
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 274
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 276
    if-eqz p1, :cond_0

    .line 277
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 281
    :goto_0
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 282
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 283
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    .prologue
    .line 938
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 896
    return-void
.end method

.method public setLooping(Z)V
    .locals 6

    .prologue
    .line 729
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 730
    :goto_0
    const/4 v1, 0x4

    const-string v2, "loop"

    int-to-long v4, v0

    invoke-virtual {p0, v1, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 731
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setLoopCount(I)V

    .line 732
    return-void

    .line 729
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnControlMessageListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    .line 1096
    return-void
.end method

.method public setOnMediaCodecSelectListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;)V
    .locals 0

    .prologue
    .line 1193
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    .line 1194
    return-void
.end method

.method public setOnNativeInvokeListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;)V
    .locals 0

    .prologue
    .line 1108
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnNativeInvokeListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;

    .line 1109
    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .locals 1

    .prologue
    .line 913
    invoke-direct {p0, p1, p2, p3, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;J)V

    .line 914
    return-void
.end method

.method public setOption(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 908
    invoke-direct {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    .prologue
    .line 568
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 569
    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 570
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_0
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 574
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 576
    :cond_1
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .prologue
    .line 750
    const/16 v0, 0x2713

    invoke-direct {p0, v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyFloat(IF)V

    .line 751
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 306
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 307
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 311
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 312
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 313
    return-void
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 547
    .line 548
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    const/4 v0, 0x1

    .line 551
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 553
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move v2, v0

    .line 556
    :goto_1
    const-string v0, "power"

    .line 557
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 558
    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    const-class v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 559
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 558
    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 560
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 561
    if-eqz v2, :cond_0

    .line 562
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 564
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 523
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_start()V

    .line 524
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 531
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_stop()V

    .line 532
    return-void
.end method
