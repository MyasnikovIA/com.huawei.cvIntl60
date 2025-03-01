.class public LGeneralFunction/Player/player/SphericalVideoPlayer;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/Player/player/SphericalVideoPlayer$g;,
        LGeneralFunction/Player/player/SphericalVideoPlayer$a;,
        LGeneralFunction/Player/player/SphericalVideoPlayer$b;,
        LGeneralFunction/Player/player/SphericalVideoPlayer$c;,
        LGeneralFunction/Player/player/SphericalVideoPlayer$e;,
        LGeneralFunction/Player/player/SphericalVideoPlayer$f;,
        LGeneralFunction/Player/player/SphericalVideoPlayer$d;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private A:LGeneralFunction/Player/player/i;

.field private B:I

.field private C:I

.field private D:Landroid/view/Surface;

.field protected a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field private c:LGeneralFunction/Player/player/h;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private final n:Ljava/lang/String;

.field private o:LGeneralFunction/Player/player/e;

.field private p:LGeneralFunction/Player/player/c;

.field private q:LGeneralFunction/Player/player/d;

.field private r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

.field private s:Ljava/lang/String;

.field private t:J

.field private u:Landroid/graphics/SurfaceTexture;

.field private v:LGeneralFunction/Player/player/SphericalVideoPlayer$f;

.field private w:LGeneralFunction/Player/player/SphericalVideoPlayer$d;

.field private x:LGeneralFunction/Player/player/SphericalVideoPlayer$e;

.field private y:LGeneralFunction/Player/player/SphericalVideoPlayer$a;

.field private z:LGeneralFunction/Player/player/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 394
    invoke-virtual {p0, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 395
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 399
    invoke-virtual {p0, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 413
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, LGeneralFunction/Player/player/h;

    invoke-direct {v0}, LGeneralFunction/Player/player/h;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    .line 65
    iput v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->d:I

    .line 67
    const/16 v0, 0x1e

    iput v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->e:I

    .line 68
    iput-boolean v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->f:Z

    .line 69
    iput-boolean v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->g:Z

    .line 70
    iput-boolean v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->h:Z

    .line 71
    iput-boolean v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->i:Z

    .line 72
    iput-boolean v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->j:Z

    .line 73
    iput-boolean v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->k:Z

    .line 75
    const/16 v0, 0x780

    iput v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->l:I

    .line 76
    const/16 v0, 0x3c0

    iput v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->m:I

    .line 80
    iput-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->n:Ljava/lang/String;

    .line 95
    iput-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->v:LGeneralFunction/Player/player/SphericalVideoPlayer$f;

    .line 96
    iput-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->w:LGeneralFunction/Player/player/SphericalVideoPlayer$d;

    .line 97
    iput-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->x:LGeneralFunction/Player/player/SphericalVideoPlayer$e;

    .line 99
    iput-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->y:LGeneralFunction/Player/player/SphericalVideoPlayer$a;

    .line 100
    iput-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->z:LGeneralFunction/Player/player/f;

    .line 106
    iput v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->B:I

    .line 107
    iput v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->C:I

    .line 108
    iput-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->D:Landroid/view/Surface;

    .line 414
    invoke-virtual {p0, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 415
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/player/h;->a(Landroid/content/Context;)V

    .line 416
    invoke-virtual {p0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 418
    new-instance v0, LGeneralFunction/Player/player/e;

    invoke-direct {v0, p1, p0}, LGeneralFunction/Player/player/e;-><init>(Landroid/content/Context;LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    .line 419
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0, p0}, LGeneralFunction/Player/player/e;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 420
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0, p0}, LGeneralFunction/Player/player/e;->setAnchorView(Landroid/view/View;)V

    .line 421
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/e;->setEnabled(Z)V

    .line 422
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-static {}, Lui_Controller/b/d;->a()Lui_Controller/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lui_Controller/b/d;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/e;->a(Z)V

    .line 424
    new-instance v0, LGeneralFunction/Player/player/i;

    invoke-direct {v0, p1}, LGeneralFunction/Player/player/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->A:LGeneralFunction/Player/player/i;

    .line 425
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->A:LGeneralFunction/Player/player/i;

    new-instance v1, LGeneralFunction/Player/player/SphericalVideoPlayer$1;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$1;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$b;)V

    .line 484
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->A:LGeneralFunction/Player/player/i;

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-virtual {v0, v1, v2}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/h;LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    .line 486
    new-instance v0, LGeneralFunction/Player/player/SphericalVideoPlayer$2;

    invoke-direct {v0, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$2;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->z:LGeneralFunction/Player/player/f;

    if-nez v0, :cond_0

    .line 495
    const-string v0, "motionStrategy registerSensor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 496
    new-instance v0, LGeneralFunction/Player/player/f;

    invoke-direct {v0}, LGeneralFunction/Player/player/f;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->z:LGeneralFunction/Player/player/f;

    .line 497
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->z:LGeneralFunction/Player/player/f;

    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    invoke-virtual {v0, v1, v2}, LGeneralFunction/Player/player/f;->a(Landroid/content/Context;LGeneralFunction/Player/player/h;)V

    .line 498
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->z:LGeneralFunction/Player/player/f;

    new-instance v1, LGeneralFunction/Player/player/SphericalVideoPlayer$3;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$3;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/f;->a(LGeneralFunction/Player/player/f$c;)V

    .line 509
    :cond_0
    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer;Landroid/os/Message;)I
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/os/Message;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1000
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-virtual {v1, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(Landroid/os/Message;)I

    .line 1008
    :goto_0
    return v0

    .line 1007
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "objRenderThread is null! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 1008
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$d;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->w:LGeneralFunction/Player/player/SphericalVideoPlayer$d;

    return-object v0
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer;LGeneralFunction/Player/player/SphericalVideoPlayer$g;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer;LGeneralFunction/Player/player/c;)LGeneralFunction/Player/player/c;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->p:LGeneralFunction/Player/player/c;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer;LGeneralFunction/Player/player/d;)LGeneralFunction/Player/player/d;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->q:LGeneralFunction/Player/player/d;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->D:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(I)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x1

    const/4 v2, 0x4

    .line 572
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RenderThread has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot begin playback: video path is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 582
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 583
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec-handle-resolution-change"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 584
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec-avc"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 585
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "start-on-prepared"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 588
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLogEnabled(Z)V

    .line 589
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setKeepInBackground(Z)V

    .line 590
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v3, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    .line 591
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)Landroid/view/Surface;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 601
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAudioStreamType(I)V

    .line 603
    :try_start_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, LGeneralFunction/Player/player/SphericalVideoPlayer$5;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$5;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 615
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, LGeneralFunction/Player/player/SphericalVideoPlayer$6;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$6;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 624
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, LGeneralFunction/Player/player/SphericalVideoPlayer$7;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$7;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 652
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, LGeneralFunction/Player/player/SphericalVideoPlayer$8;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$8;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 659
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    .line 660
    iput-boolean v6, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->j:Z

    .line 661
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, LGeneralFunction/Player/player/SphericalVideoPlayer$9;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$9;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 678
    return-void

    .line 598
    :cond_2
    const-string v0, "is fail Surface"

    invoke-static {v0, v6}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->j:Z

    return p1
.end method

.method static synthetic b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    return-object v0
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 104
    sget-object v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method static synthetic c(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/i;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->A:LGeneralFunction/Player/player/i;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 754
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

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 755
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->D:Landroid/view/Surface;

    .line 757
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    if-eqz v0, :cond_0

    .line 759
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 760
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 761
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 762
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 765
    :cond_0
    return-void
.end method

.method static synthetic d(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    return-object v0
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->v:LGeneralFunction/Player/player/SphericalVideoPlayer$f;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->v:LGeneralFunction/Player/player/SphericalVideoPlayer$f;

    invoke-interface {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$f;->a(I)V

    .line 235
    :cond_0
    return-void
.end method

.method static synthetic e(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/e;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    return-object v0
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->y:LGeneralFunction/Player/player/SphericalVideoPlayer$a;

    if-eqz v0, :cond_0

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdditionalButtonClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 1078
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->y:LGeneralFunction/Player/player/SphericalVideoPlayer$a;

    invoke-interface {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$a;->a(I)V

    .line 1079
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->o()V

    .line 1081
    :cond_0
    return-void
.end method

.method static synthetic f(LGeneralFunction/Player/player/SphericalVideoPlayer;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->D:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic g(LGeneralFunction/Player/player/SphericalVideoPlayer;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->j:Z

    return v0
.end method

.method private getMatrixText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1098
    const-string v1, ""

    .line 1099
    const/16 v0, 0x9

    new-array v2, v0, [F

    .line 1100
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1101
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1105
    :cond_0
    return-object v1
.end method

.method static synthetic h(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$e;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->x:LGeneralFunction/Player/player/SphericalVideoPlayer$e;

    return-object v0
.end method

.method static synthetic i(LGeneralFunction/Player/player/SphericalVideoPlayer;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->s()V

    return-void
.end method

.method static synthetic j(LGeneralFunction/Player/player/SphericalVideoPlayer;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->k:Z

    return v0
.end method

.method static synthetic k(LGeneralFunction/Player/player/SphericalVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(LGeneralFunction/Player/player/SphericalVideoPlayer;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->r()V

    return-void
.end method

.method static synthetic m(LGeneralFunction/Player/player/SphericalVideoPlayer;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->q()V

    return-void
.end method

.method static synthetic n(LGeneralFunction/Player/player/SphericalVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(LGeneralFunction/Player/player/SphericalVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getMatrixText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/c;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->p:LGeneralFunction/Player/player/c;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 179
    const/16 v1, 0x18

    iput v1, v0, Landroid/os/Message;->what:I

    .line 180
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 181
    return-void
.end method

.method static synthetic q(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/d;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->q:LGeneralFunction/Player/player/d;

    return-object v0
.end method

.method private q()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 548
    new-instance v0, LGeneralFunction/Player/player/d;

    invoke-direct {v0}, LGeneralFunction/Player/player/d;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->q:LGeneralFunction/Player/player/d;

    .line 549
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->q:LGeneralFunction/Player/player/d;

    iget v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->e:I

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-virtual {v0, v1, v2}, LGeneralFunction/Player/player/d;->a(ILGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    .line 550
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->q:LGeneralFunction/Player/player/d;

    new-instance v1, LGeneralFunction/Player/player/SphericalVideoPlayer$4;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$4;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/d;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$c;)V

    .line 556
    const-string v0, "MJPGThread is start"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 558
    invoke-virtual {p0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 559
    invoke-direct {p0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(I)V

    .line 560
    return-void
.end method

.method private r()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 563
    sget-object v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->b:Ljava/lang/String;

    const-string v1, "livePlay++++"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v0, LGeneralFunction/Player/player/c;

    invoke-direct {v0}, LGeneralFunction/Player/player/c;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->p:LGeneralFunction/Player/player/c;

    .line 565
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->p:LGeneralFunction/Player/player/c;

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)Landroid/view/Surface;

    move-result-object v1

    iget v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->l:I

    iget v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->m:I

    iget v4, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, LGeneralFunction/Player/player/c;->a(Landroid/view/Surface;III)V

    .line 566
    invoke-virtual {p0, v5}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 567
    invoke-direct {p0, v5}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(I)V

    .line 568
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 691
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 695
    :cond_0
    invoke-virtual {p0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 696
    invoke-direct {p0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(I)V

    .line 697
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 134
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 135
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 136
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 242
    iput p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->d:I

    .line 243
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrientationChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 157
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0, p1, p2}, LGeneralFunction/Player/player/e;->a(IZ)V

    .line 1033
    return-void
.end method

.method public a(LGeneralFunction/c/d;II)V
    .locals 2

    .prologue
    .line 710
    iget v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->l:I

    if-ne p2, v0, :cond_0

    iget v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->m:I

    if-eq p3, v0, :cond_1

    .line 712
    :cond_0
    iput p2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->l:I

    .line 713
    iput p3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->m:I

    .line 714
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 715
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 716
    iget v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->l:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 717
    iget v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->m:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 718
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 721
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->t:J

    .line 722
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 723
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->p:LGeneralFunction/Player/player/c;

    invoke-virtual {v0, p1, p2, p3}, LGeneralFunction/Player/player/c;->a(LGeneralFunction/c/d;II)V

    .line 729
    :goto_0
    return-void

    .line 726
    :cond_2
    const-string v0, "360 Player can\'t receive Buffer"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;IZ)V
    .locals 2

    .prologue
    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->t:J

    .line 733
    if-nez p1, :cond_0

    .line 735
    sget-object v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->b:Ljava/lang/String;

    const-string v1, "bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 738
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->q:LGeneralFunction/Player/player/d;

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->q:LGeneralFunction/Player/player/d;

    invoke-virtual {v0, p1, p2, p3}, LGeneralFunction/Player/player/d;->a(Landroid/graphics/Bitmap;IZ)V

    .line 745
    :cond_1
    :goto_0
    return-void

    .line 743
    :cond_2
    const-string v0, "360 Player can\'t receive Bitmap "

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 700
    const-string v0, "----StartPlay---"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 701
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 702
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 703
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 704
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 705
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 706
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 707
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 513
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->i:Z

    .line 514
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 173
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 174
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 175
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/player/e;->b(I)V

    .line 683
    return-void
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 862
    iput p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->l:I

    .line 863
    iput p2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->m:I

    .line 865
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 866
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 867
    iget v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->l:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 868
    iget v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->m:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 869
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 870
    return-void
.end method

.method public b(IZ)V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0, p1, p2}, LGeneralFunction/Player/player/e;->b(IZ)V

    .line 1038
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 918
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->k:Z

    .line 919
    return-void
.end method

.method protected c(I)V
    .locals 1

    .prologue
    .line 1041
    packed-switch p1, :pswitch_data_0

    .line 1067
    :goto_0
    return-void

    .line 1044
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(I)V

    goto :goto_0

    .line 1048
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(I)V

    goto :goto_0

    .line 1052
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(I)V

    goto :goto_0

    .line 1056
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(I)V

    goto :goto_0

    .line 1060
    :pswitch_4
    const/4 v0, 0x4

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(I)V

    goto :goto_0

    .line 1064
    :pswitch_5
    const/4 v0, 0x5

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(I)V

    goto :goto_0

    .line 1041
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->g:Z

    return v0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->d:I

    return v0
.end method

.method public e()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/e;->a(I)V

    .line 270
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 271
    iget-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->k:Z

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v3, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v2, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    const-string v1, "360RenderThread"

    invoke-direct {v0, p0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer;Ljava/lang/String;)V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    .line 520
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->r:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->start()V

    .line 522
    :cond_0
    return-void
.end method

.method public g()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 527
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid operation in status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 543
    :goto_0
    return v0

    .line 533
    :cond_0
    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->m:I

    if-nez v2, :cond_1

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid operation in mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v3, v3, LGeneralFunction/Player/player/h;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->u:Landroid/graphics/SurfaceTexture;

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Video Player]Play:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 540
    if-eqz v0, :cond_2

    .line 541
    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->o:I

    iget-object v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v3, v3, LGeneralFunction/Player/player/h;->p:I

    invoke-virtual {p0, v0, v2, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/graphics/SurfaceTexture;II)V

    :cond_2
    move v0, v1

    .line 543
    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 349
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v1, v1, LGeneralFunction/Player/player/h;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v2

    long-to-int v1, v2

    div-int/2addr v0, v1

    .line 355
    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 356
    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 321
    :goto_0
    return v0

    .line 317
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 321
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInteractiveMode()I
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    return v0
.end method

.method public getMediaControllerHeight()I
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0}, LGeneralFunction/Player/player/e;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPlayerMode()I
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    return v0
.end method

.method public getSphericalParameter()LGeneralFunction/Player/player/h;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->a:I

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0}, LGeneralFunction/Player/player/e;->a()V

    .line 687
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->c(Z)V

    .line 750
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->f:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operation(flushDecoder) in status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 775
    const/4 v0, -0x1

    .line 785
    :goto_0
    return v0

    .line 777
    :cond_0
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v1, v1, LGeneralFunction/Player/player/h;->m:I

    packed-switch v1, :pswitch_data_0

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playerFormat not handle flushDecoder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 783
    const/4 v0, -0x2

    goto :goto_0

    .line 779
    :pswitch_0
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->p:LGeneralFunction/Player/player/c;

    invoke-virtual {v1}, LGeneralFunction/Player/player/c;->a()V

    goto :goto_0

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public k()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 790
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operation in status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 793
    const/4 v0, -0x1

    .line 819
    :goto_0
    return v0

    .line 795
    :cond_0
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v1, v1, LGeneralFunction/Player/player/h;->m:I

    packed-switch v1, :pswitch_data_0

    .line 817
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 818
    invoke-direct {p0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(I)V

    goto :goto_0

    .line 797
    :pswitch_0
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez v1, :cond_2

    .line 799
    const-string v1, "objMediaPlayerInternal is null:"

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    goto :goto_1

    .line 802
    :cond_2
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    goto :goto_1

    .line 808
    :pswitch_1
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->p:LGeneralFunction/Player/player/c;

    invoke-virtual {v1}, LGeneralFunction/Player/player/c;->b()V

    .line 809
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->p()V

    goto :goto_1

    .line 812
    :pswitch_2
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->q:LGeneralFunction/Player/player/d;

    invoke-virtual {v1}, LGeneralFunction/Player/player/d;->a()V

    .line 813
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_1

    .line 814
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    goto :goto_1

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public l()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 823
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operation in status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 826
    const/4 v0, -0x1

    .line 843
    :goto_0
    return v0

    .line 828
    :cond_0
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v1, v1, LGeneralFunction/Player/player/h;->m:I

    packed-switch v1, :pswitch_data_0

    .line 841
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 842
    invoke-direct {p0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(I)V

    goto :goto_0

    .line 830
    :pswitch_0
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    goto :goto_1

    .line 833
    :pswitch_1
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->p:LGeneralFunction/Player/player/c;

    invoke-virtual {v1}, LGeneralFunction/Player/player/c;->c()V

    goto :goto_1

    .line 836
    :pswitch_2
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->q:LGeneralFunction/Player/player/d;

    invoke-virtual {v1}, LGeneralFunction/Player/player/d;->b()V

    .line 837
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_1

    .line 838
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    goto :goto_1

    .line 828
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public m()V
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0}, LGeneralFunction/Player/player/e;->c()V

    .line 1025
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0}, LGeneralFunction/Player/player/e;->d()V

    .line 1029
    return-void
.end method

.method protected o()V
    .locals 2

    .prologue
    .line 1084
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->y:LGeneralFunction/Player/player/SphericalVideoPlayer$a;

    if-eqz v0, :cond_0

    .line 1086
    const-string v0, "UserInteraction:"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 1087
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->y:LGeneralFunction/Player/player/SphericalVideoPlayer$a;

    invoke-interface {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$a;->a()V

    .line 1089
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 384
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 385
    const-string v0, "motionStrategy unregisterSensor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 386
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->z:LGeneralFunction/Player/player/f;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->z:LGeneralFunction/Player/player/f;

    invoke-virtual {v0}, LGeneralFunction/Player/player/f;->a()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->z:LGeneralFunction/Player/player/f;

    .line 390
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    const/16 v3, 0x1a

    const/4 v2, 0x1

    .line 923
    iget v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->B:I

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PLAYER]onSurfaceTextureAvailable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "surfaceAvailableCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v1, v1, LGeneralFunction/Player/player/h;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 926
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iput p2, v0, LGeneralFunction/Player/player/h;->o:I

    .line 927
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iput p3, v0, LGeneralFunction/Player/player/h;->p:I

    .line 928
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->u:Landroid/graphics/SurfaceTexture;

    .line 930
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 932
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 933
    iput v3, v0, Landroid/os/Message;->what:I

    .line 934
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 955
    :goto_0
    return-void

    .line 938
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    if-eqz v0, :cond_1

    .line 940
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 941
    iput v3, v0, Landroid/os/Message;->what:I

    .line 942
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    goto :goto_0

    .line 947
    :cond_1
    const-wide/16 v0, 0x1e

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_1
    invoke-virtual {p0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 952
    invoke-direct {p0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(I)V

    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 980
    iget v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->C:I

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->u:Landroid/graphics/SurfaceTexture;

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PLAYER]onSurfaceTextureDestroyed surfaceDestoryCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetPlayerStatus()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 985
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 987
    invoke-direct {p0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->c(Z)V

    .line 990
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PLAYER]onSurfaceTextureSizeChanged:"

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

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 960
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 962
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iput p2, v0, LGeneralFunction/Player/player/h;->o:I

    .line 963
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iput p3, v0, LGeneralFunction/Player/player/h;->p:I

    .line 965
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b()V

    .line 966
    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b()V

    .line 976
    :goto_0
    return-void

    .line 970
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iput p2, v0, LGeneralFunction/Player/player/h;->o:I

    .line 971
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iput p3, v0, LGeneralFunction/Player/player/h;->p:I

    .line 972
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 973
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 974
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 996
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 294
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v2, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    .line 297
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 329
    :try_start_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAdditionalButtonCallback(LGeneralFunction/Player/player/SphericalVideoPlayer$a;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->y:LGeneralFunction/Player/player/SphericalVideoPlayer$a;

    .line 1072
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->f:Z

    .line 212
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->g:Z

    .line 213
    return-void
.end method

.method public setFrameRate(I)V
    .locals 1

    .prologue
    .line 847
    iput p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->e:I

    .line 848
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    packed-switch v0, :pswitch_data_0

    .line 858
    :goto_0
    :pswitch_0
    return-void

    .line 852
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->p:LGeneralFunction/Player/player/c;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/player/c;->a(I)V

    goto :goto_0

    .line 855
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->q:LGeneralFunction/Player/player/d;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/player/d;->a(I)V

    goto :goto_0

    .line 848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setInteractiveMode(I)V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    if-ne v0, p1, :cond_0

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInteractiveMode is the same:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 900
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 901
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 902
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 903
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 904
    return-void
.end method

.method public setIsShowThumbNail(Z)V
    .locals 2

    .prologue
    .line 139
    if-eqz p0, :cond_0

    .line 141
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->h:Z

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 143
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 144
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 145
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 148
    :cond_0
    return-void
.end method

.method public setMediaControllerHide(Z)V
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/player/e;->setControllerHide(Z)V

    .line 1020
    return-void
.end method

.method public setOnClickListener(LGeneralFunction/Player/player/SphericalVideoPlayer$d;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->w:LGeneralFunction/Player/player/SphericalVideoPlayer$d;

    .line 207
    return-void
.end method

.method public setPlayerDrawFirstFrameListener(LGeneralFunction/Player/player/SphericalVideoPlayer$e;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->x:LGeneralFunction/Player/player/SphericalVideoPlayer$e;

    .line 202
    return-void
.end method

.method public setPlayerMode(I)V
    .locals 2

    .prologue
    .line 878
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 880
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iput p1, v0, LGeneralFunction/Player/player/h;->m:I

    .line 886
    :goto_0
    return-void

    .line 884
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

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setPlayerStatusListener(LGeneralFunction/Player/player/SphericalVideoPlayer$f;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->v:LGeneralFunction/Player/player/SphericalVideoPlayer$f;

    .line 198
    return-void
.end method

.method public setSphericalParameter(LGeneralFunction/Player/player/h;)V
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 165
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 166
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 168
    return-void
.end method

.method public setVideoAutoPlay(Z)V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iput-boolean p1, v0, LGeneralFunction/Player/player/h;->n:Z

    .line 875
    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->s:Ljava/lang/String;

    .line 768
    return-void
.end method

.method public setViewMode(I)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->b:I

    if-ne v0, p1, :cond_0

    .line 122
    const-string v0, "already same viewMode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Ljava/lang/String;I)V

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 126
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    goto :goto_0
.end method

.method public setViewType(I)V
    .locals 2

    .prologue
    .line 111
    if-eqz p0, :cond_0

    .line 112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 113
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    invoke-direct {p0, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Landroid/os/Message;)I

    .line 117
    :cond_0
    return-void
.end method

.method public setZoomInEnable(Z)V
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->g:Z

    .line 223
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->c:LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0, v4}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 251
    invoke-direct {p0, v4}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(I)V

    .line 252
    iget-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->k:Z

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v2, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    .line 260
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 261
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->o:LGeneralFunction/Player/player/e;

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/e;->b(Z)V

    .line 265
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method
