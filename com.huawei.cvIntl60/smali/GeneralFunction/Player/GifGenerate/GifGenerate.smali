.class public LGeneralFunction/Player/GifGenerate/GifGenerate;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/Player/GifGenerate/GifGenerate$b;,
        LGeneralFunction/Player/GifGenerate/GifGenerate$e;,
        LGeneralFunction/Player/GifGenerate/GifGenerate$a;,
        LGeneralFunction/Player/GifGenerate/GifGenerate$f;,
        LGeneralFunction/Player/GifGenerate/GifGenerate$g;,
        LGeneralFunction/Player/GifGenerate/GifGenerate$d;,
        LGeneralFunction/Player/GifGenerate/GifGenerate$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private A:LGeneralFunction/Player/GifGenerate/GifGenerate$c;

.field protected a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field b:I

.field private d:LGeneralFunction/Player/player/h;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/content/Context;

.field private final q:Ljava/lang/String;

.field private r:LGeneralFunction/Player/GifGenerate/GifGenerate$b;

.field private s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

.field private t:Ljava/lang/String;

.field private u:Landroid/view/WindowManager;

.field private v:Landroid/graphics/SurfaceTexture;

.field private w:I

.field private x:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private y:LGeneralFunction/Player/GifGenerate/GifGenerate$d;

.field private z:LGeneralFunction/Player/GifGenerate/GifGenerate$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 391
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->p:Landroid/content/Context;

    .line 392
    invoke-virtual {p0, p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 397
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->p:Landroid/content/Context;

    .line 398
    invoke-virtual {p0, p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 399
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 402
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, LGeneralFunction/Player/player/h;

    invoke-direct {v0}, LGeneralFunction/Player/player/h;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    .line 84
    iput v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->e:I

    .line 86
    const/16 v0, 0x1e

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->f:I

    .line 88
    const/16 v0, 0x280

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->g:I

    .line 89
    const/16 v0, 0x1e0

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->h:I

    .line 91
    iput-boolean v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->i:Z

    .line 92
    iput-boolean v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->j:Z

    .line 93
    iput-boolean v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->k:Z

    .line 95
    iput v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->l:I

    .line 96
    iput v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->m:I

    .line 97
    iput v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->n:I

    .line 98
    iput v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->o:I

    .line 103
    iput-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->q:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->x:Ljava/util/concurrent/BlockingQueue;

    .line 123
    iput-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->y:LGeneralFunction/Player/GifGenerate/GifGenerate$d;

    .line 124
    iput-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->z:LGeneralFunction/Player/GifGenerate/GifGenerate$g;

    .line 125
    iput-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->A:LGeneralFunction/Player/GifGenerate/GifGenerate$c;

    .line 130
    iput v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->b:I

    .line 403
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/player/h;->a(Landroid/content/Context;)V

    .line 405
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->p:Landroid/content/Context;

    .line 406
    invoke-virtual {p0, p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 408
    invoke-direct {p0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(I)V

    .line 410
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->u:Landroid/view/WindowManager;

    .line 411
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->u:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->w:I

    .line 413
    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate;Landroid/os/Message;)I
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/os/Message;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 764
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-virtual {v1, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Landroid/os/Message;)I

    .line 772
    :goto_0
    return v0

    .line 771
    :cond_0
    const-string v1, "objRenderThread is null!"

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 772
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate;LGeneralFunction/Player/GifGenerate/GifGenerate$b;)LGeneralFunction/Player/GifGenerate/GifGenerate$b;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->r:LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate;LGeneralFunction/Player/GifGenerate/GifGenerate$e;)LGeneralFunction/Player/GifGenerate/GifGenerate$e;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->j()V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(I)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    const/4 v2, 0x4

    .line 454
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RenderThread has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot begin playback: video path is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 465
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    if-eq v0, v6, :cond_2

    .line 468
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 471
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v3, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    .line 472
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAudioStreamType(I)V

    .line 473
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 474
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec-handle-resolution-change"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 475
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec-avc"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 476
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "start-on-prepared"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 477
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLogEnabled(Z)V

    .line 478
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setKeepInBackground(Z)V

    .line 481
    :try_start_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, LGeneralFunction/Player/GifGenerate/GifGenerate$1;

    invoke-direct {v1, p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$1;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 507
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, LGeneralFunction/Player/GifGenerate/GifGenerate$2;

    invoke-direct {v1, p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$2;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 514
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, LGeneralFunction/Player/GifGenerate/GifGenerate$3;

    invoke-direct {v1, p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$3;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 523
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, LGeneralFunction/Player/GifGenerate/GifGenerate$4;

    invoke-direct {v1, p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$4;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 544
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    .line 545
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, LGeneralFunction/Player/GifGenerate/GifGenerate$5;

    invoke-direct {v1, p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$5;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 565
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseResources "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 629
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    if-eqz v0, :cond_0

    .line 631
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 632
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 633
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 634
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    .line 636
    :cond_0
    return-void
.end method

.method static synthetic b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->o:I

    return v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->y:LGeneralFunction/Player/GifGenerate/GifGenerate$d;

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StutasChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 254
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->y:LGeneralFunction/Player/GifGenerate/GifGenerate$d;

    invoke-interface {v0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate$d;->a(I)V

    .line 256
    :cond_0
    return-void
.end method

.method static synthetic b(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(I)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->o:I

    return p1
.end method

.method static synthetic c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    return-object v0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->z:LGeneralFunction/Player/GifGenerate/GifGenerate$g;

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gifGenerateStatusChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 267
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->z:LGeneralFunction/Player/GifGenerate/GifGenerate$g;

    invoke-interface {v0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate$g;->a(I)V

    .line 269
    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 128
    sget-object v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method private d(I)V
    .locals 0

    .prologue
    .line 276
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->e:I

    .line 277
    return-void
.end method

.method static synthetic d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(I)V

    return-void
.end method

.method static synthetic d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->k:Z

    return v0
.end method

.method static synthetic e(LGeneralFunction/Player/GifGenerate/GifGenerate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/GifGenerate/GifGenerate$e;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    return-object v0
.end method

.method static synthetic g(LGeneralFunction/Player/GifGenerate/GifGenerate;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->i()V

    return-void
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(LGeneralFunction/Player/GifGenerate/GifGenerate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(LGeneralFunction/Player/GifGenerate/GifGenerate;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->l:I

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 444
    new-instance v0, LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    invoke-direct {v0, p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$b;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate;)V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->r:LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    .line 445
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->r:LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    iget v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->f:I

    invoke-virtual {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$b;->a(I)V

    .line 446
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->r:LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$b;->start()V

    .line 447
    const-string v0, "MJPGThread is start"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 449
    invoke-direct {p0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(I)V

    .line 450
    invoke-direct {p0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(I)V

    .line 451
    return-void
.end method

.method static synthetic j(LGeneralFunction/Player/GifGenerate/GifGenerate;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->p:Landroid/content/Context;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 569
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 573
    :cond_0
    invoke-direct {p0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(I)V

    .line 574
    invoke-direct {p0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(I)V

    .line 575
    return-void
.end method

.method static synthetic k(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/GifGenerate/GifGenerate$b;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->r:LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    return-object v0
.end method

.method static synthetic l(LGeneralFunction/Player/GifGenerate/GifGenerate;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->x:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->k:Z

    .line 187
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 188
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 189
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    .line 190
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPreplay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->k:Z

    .line 161
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 162
    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 163
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 164
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    .line 165
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 144
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 147
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    .line 148
    return-void
.end method

.method public a(III)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGifFromVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGifFromVideo:startTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGifFromVideo:endTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 172
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->m:I

    .line 173
    iput p2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->l:I

    .line 174
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->l:I

    iget v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->m:I

    sub-int/2addr v0, v1

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->n:I

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->k:Z

    .line 176
    mul-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->seekTo(I)V

    .line 177
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 178
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 179
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 180
    mul-int/lit16 v1, p1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 181
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    .line 183
    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->start()V

    .line 184
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;IZ)V
    .locals 2

    .prologue
    .line 605
    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 607
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 608
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 609
    new-instance v1, LGeneralFunction/Player/GifGenerate/GifGenerate$a;

    invoke-direct {v1, p0, p1, p2, p3}, LGeneralFunction/Player/GifGenerate/GifGenerate$a;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate;Landroid/graphics/Bitmap;IZ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 612
    :try_start_0
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->x:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 617
    :cond_0
    const-string v0, "360 Player can\'t receive Bitmap "

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 578
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 579
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 580
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 582
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 583
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    .line 584
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGifSavePathAndWatermarkIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 136
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 137
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 139
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    .line 140
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 260
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 261
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    .line 262
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->e:I

    return v0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    const-string v1, "GifRenderThread"

    invoke-direct {v0, p0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate;Ljava/lang/String;)V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    .line 420
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->s:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->start()V

    .line 422
    :cond_0
    return-void
.end method

.method public e()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 427
    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid operation in status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 439
    :goto_0
    return v0

    .line 432
    :cond_0
    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->m:I

    if-nez v2, :cond_1

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid operation in mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v3, v3, LGeneralFunction/Player/player/h;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    goto :goto_0

    .line 437
    :cond_1
    const-string v0, "[Video Player]Play"

    const/4 v2, 0x2

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 438
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->v:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->o:I

    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v3, v3, LGeneralFunction/Player/player/h;->p:I

    invoke-virtual {p0, v0, v2, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/graphics/SurfaceTexture;II)V

    move v0, v1

    .line 439
    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Z)V

    .line 624
    return-void
.end method

.method public g()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operation in status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 645
    const/4 v0, -0x1

    .line 660
    :goto_0
    return v0

    .line 647
    :cond_0
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v1, v1, LGeneralFunction/Player/player/h;->m:I

    packed-switch v1, :pswitch_data_0

    .line 658
    :cond_1
    :goto_1
    :pswitch_0
    invoke-direct {p0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(I)V

    .line 659
    invoke-direct {p0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(I)V

    goto :goto_0

    .line 649
    :pswitch_1
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    goto :goto_1

    .line 653
    :pswitch_2
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->r:LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    invoke-virtual {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$b;->a()V

    .line 654
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    goto :goto_1

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 338
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v1, v1, LGeneralFunction/Player/player/h;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v2

    long-to-int v1, v2

    div-int/2addr v0, v1

    .line 344
    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 345
    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    .line 312
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lCurrentPosition+++++-+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 317
    :goto_1
    return v0

    .line 311
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayerMode()I
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->i:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 725
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iput p2, v0, LGeneralFunction/Player/player/h;->o:I

    .line 726
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iput p3, v0, LGeneralFunction/Player/player/h;->p:I

    .line 727
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->v:Landroid/graphics/SurfaceTexture;

    .line 729
    const-wide/16 v0, 0x1e

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    invoke-direct {p0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(I)V

    .line 734
    invoke-direct {p0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(I)V

    .line 735
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 746
    const-string v0, "onSurfaceTextureDestroyed"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 747
    iput-boolean v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->k:Z

    .line 748
    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 749
    invoke-direct {p0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Z)V

    .line 752
    :cond_0
    invoke-direct {p0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(I)V

    .line 753
    invoke-direct {p0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(I)V

    .line 754
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureSizeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 740
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iput p2, v0, LGeneralFunction/Player/player/h;->o:I

    .line 741
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iput p3, v0, LGeneralFunction/Player/player/h;->p:I

    .line 742
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 294
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    .line 324
    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 220
    iput-boolean p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->i:Z

    .line 221
    iput-boolean p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->j:Z

    .line 222
    return-void
.end method

.method public setFrameRate(I)V
    .locals 1

    .prologue
    .line 685
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->f:I

    .line 686
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    packed-switch v0, :pswitch_data_0

    .line 694
    :goto_0
    :pswitch_0
    return-void

    .line 691
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->r:LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate$b;->a(I)V

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setGifFromImageDirect(I)V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 153
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 154
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 155
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    .line 156
    return-void
.end method

.method public setGifGenerateStatusListener(LGeneralFunction/Player/GifGenerate/GifGenerate$g;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->z:LGeneralFunction/Player/GifGenerate/GifGenerate$g;

    .line 212
    return-void
.end method

.method public setOnClickListener(LGeneralFunction/Player/GifGenerate/GifGenerate$c;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->A:LGeneralFunction/Player/GifGenerate/GifGenerate$c;

    .line 216
    return-void
.end method

.method public setPlayerMode(I)V
    .locals 2

    .prologue
    .line 703
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 705
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iput p1, v0, LGeneralFunction/Player/player/h;->m:I

    .line 711
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 712
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 713
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 714
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    .line 716
    return-void

    .line 709
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not support player mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setPlayerStatusListener(LGeneralFunction/Player/GifGenerate/GifGenerate$d;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->y:LGeneralFunction/Player/GifGenerate/GifGenerate$d;

    .line 209
    return-void
.end method

.method public setSphericalParameter(LGeneralFunction/Player/player/h;)V
    .locals 2

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 227
    const-string v0, "parameter is null"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(Ljava/lang/String;I)V

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 231
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 232
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Landroid/os/Message;)I

    goto :goto_0
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->t:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public setZoomInEnable(Z)V
    .locals 0

    .prologue
    .line 242
    iput-boolean p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->j:Z

    .line 243
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->d:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 286
    :cond_0
    return-void
.end method
