.class public LThirdParty/Rtmp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LThirdParty/Rtmp/a$a;
    }
.end annotation


# static fields
.field private static b:LThirdParty/Rtmp/a;


# instance fields
.field private A:[B

.field public a:LThirdParty/Rtmp/a$a;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:[B

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:J

.field private t:I

.field private u:I

.field private v:Ljava/util/Timer;

.field private final w:LGeneralFunction/j;

.field private x:Z

.field private y:Z

.field private z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, LThirdParty/Rtmp/a;->b:LThirdParty/Rtmp/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v3, p0, LThirdParty/Rtmp/a;->a:LThirdParty/Rtmp/a$a;

    .line 47
    iput-object v3, p0, LThirdParty/Rtmp/a;->e:Ljava/lang/String;

    .line 48
    iput-boolean v2, p0, LThirdParty/Rtmp/a;->f:Z

    .line 59
    iput v2, p0, LThirdParty/Rtmp/a;->o:I

    .line 60
    iput v2, p0, LThirdParty/Rtmp/a;->p:I

    .line 61
    iput v2, p0, LThirdParty/Rtmp/a;->q:I

    .line 63
    iput v2, p0, LThirdParty/Rtmp/a;->r:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LThirdParty/Rtmp/a;->s:J

    .line 65
    iput v2, p0, LThirdParty/Rtmp/a;->t:I

    .line 66
    iput v2, p0, LThirdParty/Rtmp/a;->u:I

    .line 67
    iput-object v3, p0, LThirdParty/Rtmp/a;->v:Ljava/util/Timer;

    .line 68
    new-instance v0, LGeneralFunction/j;

    invoke-direct {v0}, LGeneralFunction/j;-><init>()V

    iput-object v0, p0, LThirdParty/Rtmp/a;->w:LGeneralFunction/j;

    .line 69
    iput-boolean v2, p0, LThirdParty/Rtmp/a;->x:Z

    .line 70
    iput-boolean v2, p0, LThirdParty/Rtmp/a;->y:Z

    .line 72
    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, LThirdParty/Rtmp/a;->z:[B

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, LThirdParty/Rtmp/a;->A:[B

    .line 87
    return-void

    .line 72
    :array_0
    .array-data 1
        -0x22t
        0x2t
        0x0t
        0x4ct
        0x61t
        0x76t
        0x63t
        0x35t
        0x36t
        0x2et
        0x36t
        0x30t
        0x2et
        0x31t
        0x30t
        0x30t
        0x0t
        0x2t
        0x30t
        0x40t
        0xet
    .end array-data

    .line 76
    nop

    :array_1
    .array-data 1
        0x1t
        0x18t
        0x20t
        0x7t
    .end array-data
.end method

.method static synthetic a(LThirdParty/Rtmp/a;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, LThirdParty/Rtmp/a;->p:I

    return p1
.end method

.method static synthetic a(LThirdParty/Rtmp/a;J)J
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, LThirdParty/Rtmp/a;->s:J

    return-wide p1
.end method

.method public static declared-synchronized a()LThirdParty/Rtmp/a;
    .locals 2

    .prologue
    .line 92
    const-class v1, LThirdParty/Rtmp/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, LThirdParty/Rtmp/a;->b:LThirdParty/Rtmp/a;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, LThirdParty/Rtmp/a;

    invoke-direct {v0}, LThirdParty/Rtmp/a;-><init>()V

    sput-object v0, LThirdParty/Rtmp/a;->b:LThirdParty/Rtmp/a;

    .line 97
    :cond_0
    sget-object v0, LThirdParty/Rtmp/a;->b:LThirdParty/Rtmp/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LThirdParty/Rtmp/a;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, LThirdParty/Rtmp/a;->v:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(LThirdParty/Rtmp/a;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, LThirdParty/Rtmp/a;->v:Ljava/util/Timer;

    return-object p1
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, LThirdParty/Rtmp/a;->a:LThirdParty/Rtmp/a$a;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, LThirdParty/Rtmp/a;->a:LThirdParty/Rtmp/a$a;

    invoke-interface {v0, p1, p2}, LThirdParty/Rtmp/a$a;->a(II)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    const-string v0, "No register rtmpStreamerOnResultHandler!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LThirdParty/Rtmp/a;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(LThirdParty/Rtmp/a;II)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, LThirdParty/Rtmp/a;->a(II)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0, p1}, LThirdParty/Rtmp/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(LThirdParty/Rtmp/a;III[BIIII)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p8}, LThirdParty/Rtmp/a;->b(III[BIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic a(LThirdParty/Rtmp/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, LThirdParty/Rtmp/a;->x:Z

    return p1
.end method

.method static synthetic b(LThirdParty/Rtmp/a;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, LThirdParty/Rtmp/a;->o:I

    return p1
.end method

.method static synthetic b(LThirdParty/Rtmp/a;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, LThirdParty/Rtmp/a;->c:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 81
    const-string v0, "RtmpStreamer"

    invoke-static {v0, p0, p1}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method private b(III[BIIII)Z
    .locals 2

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TEST] rtmpInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/Rtmp/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LThirdParty/Rtmp/a;->b(Ljava/lang/String;I)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RtmpFunc JNI ver. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, LThirdParty/Rtmp/RtmpFunc;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LThirdParty/Rtmp/a;->b(Ljava/lang/String;I)V

    .line 435
    iget-object v0, p0, LThirdParty/Rtmp/a;->e:Ljava/lang/String;

    invoke-static {v0}, LThirdParty/Rtmp/RtmpFunc;->init(Ljava/lang/String;)Z

    move-result v0

    .line 436
    iput-boolean v0, p0, LThirdParty/Rtmp/a;->f:Z

    .line 438
    iget-boolean v0, p0, LThirdParty/Rtmp/a;->f:Z

    return v0
.end method

.method static synthetic c(LThirdParty/Rtmp/a;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, LThirdParty/Rtmp/a;->q:I

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "rtmpStreamer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LThirdParty/Rtmp/a;->c:Landroid/os/HandlerThread;

    .line 175
    iget-object v0, p0, LThirdParty/Rtmp/a;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 176
    new-instance v0, LThirdParty/Rtmp/a$1;

    iget-object v1, p0, LThirdParty/Rtmp/a;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LThirdParty/Rtmp/a$1;-><init>(LThirdParty/Rtmp/a;Landroid/os/Looper;)V

    iput-object v0, p0, LThirdParty/Rtmp/a;->d:Landroid/os/Handler;

    .line 429
    return-void
.end method

.method static synthetic c(LThirdParty/Rtmp/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, LThirdParty/Rtmp/a;->d()V

    return-void
.end method

.method static synthetic d(LThirdParty/Rtmp/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, LThirdParty/Rtmp/a;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 443
    const-string v0, "BARRY rtmpDestory()"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LThirdParty/Rtmp/a;->b(Ljava/lang/String;I)V

    .line 444
    invoke-static {}, LThirdParty/Rtmp/RtmpFunc;->shutdown()V

    .line 445
    iput-boolean v2, p0, LThirdParty/Rtmp/a;->f:Z

    .line 446
    iput v2, p0, LThirdParty/Rtmp/a;->r:I

    .line 447
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LThirdParty/Rtmp/a;->s:J

    .line 448
    iput-boolean v2, p0, LThirdParty/Rtmp/a;->x:Z

    .line 449
    iput v2, p0, LThirdParty/Rtmp/a;->t:I

    .line 450
    iget-object v0, p0, LThirdParty/Rtmp/a;->v:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, LThirdParty/Rtmp/a;->v:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, LThirdParty/Rtmp/a;->v:Ljava/util/Timer;

    .line 455
    :cond_0
    return-void
.end method

.method static synthetic e(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->g:I

    return v0
.end method

.method static synthetic f(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->h:I

    return v0
.end method

.method static synthetic g(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->i:I

    return v0
.end method

.method static synthetic h(LThirdParty/Rtmp/a;)[B
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, LThirdParty/Rtmp/a;->j:[B

    return-object v0
.end method

.method static synthetic i(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->k:I

    return v0
.end method

.method static synthetic j(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->l:I

    return v0
.end method

.method static synthetic k(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->m:I

    return v0
.end method

.method static synthetic l(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->n:I

    return v0
.end method

.method static synthetic m(LThirdParty/Rtmp/a;)LGeneralFunction/j;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, LThirdParty/Rtmp/a;->w:LGeneralFunction/j;

    return-object v0
.end method

.method static synthetic n(LThirdParty/Rtmp/a;)I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->t:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, LThirdParty/Rtmp/a;->t:I

    return v0
.end method

.method static synthetic o(LThirdParty/Rtmp/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, LThirdParty/Rtmp/a;->f:Z

    return v0
.end method

.method static synthetic p(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->t:I

    return v0
.end method

.method static synthetic q(LThirdParty/Rtmp/a;)I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LThirdParty/Rtmp/a;->p:I

    return v0
.end method

.method static synthetic r(LThirdParty/Rtmp/a;)I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LThirdParty/Rtmp/a;->r:I

    return v0
.end method

.method static synthetic s(LThirdParty/Rtmp/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, LThirdParty/Rtmp/a;->x:Z

    return v0
.end method

.method static synthetic t(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->p:I

    return v0
.end method

.method static synthetic u(LThirdParty/Rtmp/a;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, LThirdParty/Rtmp/a;->s:J

    return-wide v0
.end method

.method static synthetic v(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->r:I

    return v0
.end method

.method static synthetic w(LThirdParty/Rtmp/a;)I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LThirdParty/Rtmp/a;->o:I

    return v0
.end method

.method static synthetic x(LThirdParty/Rtmp/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LThirdParty/Rtmp/a;->o:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 103
    iput p1, v0, Landroid/os/Message;->what:I

    .line 104
    invoke-virtual {p0, v0}, LThirdParty/Rtmp/a;->a(Landroid/os/Message;)V

    .line 105
    return-void
.end method

.method public a(III[BIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 459
    iput p1, p0, LThirdParty/Rtmp/a;->g:I

    .line 460
    iput p2, p0, LThirdParty/Rtmp/a;->h:I

    .line 461
    iput p3, p0, LThirdParty/Rtmp/a;->i:I

    .line 462
    if-eqz p4, :cond_0

    .line 464
    array-length v0, p4

    new-array v0, v0, [B

    iput-object v0, p0, LThirdParty/Rtmp/a;->j:[B

    .line 465
    iget-object v0, p0, LThirdParty/Rtmp/a;->j:[B

    array-length v1, p4

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    :goto_0
    iput p5, p0, LThirdParty/Rtmp/a;->k:I

    .line 472
    iput p6, p0, LThirdParty/Rtmp/a;->l:I

    .line 473
    iput p7, p0, LThirdParty/Rtmp/a;->m:I

    .line 474
    iput p8, p0, LThirdParty/Rtmp/a;->n:I

    .line 475
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LThirdParty/Rtmp/a;->j:[B

    goto :goto_0
.end method

.method public a(III[BIIIILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iput p1, p0, LThirdParty/Rtmp/a;->g:I

    .line 152
    iput p2, p0, LThirdParty/Rtmp/a;->h:I

    .line 153
    iput p3, p0, LThirdParty/Rtmp/a;->i:I

    .line 154
    if-eqz p4, :cond_0

    .line 156
    array-length v0, p4

    new-array v0, v0, [B

    iput-object v0, p0, LThirdParty/Rtmp/a;->j:[B

    .line 157
    iget-object v0, p0, LThirdParty/Rtmp/a;->j:[B

    array-length v1, p4

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    :goto_0
    iput p5, p0, LThirdParty/Rtmp/a;->k:I

    .line 164
    iput p6, p0, LThirdParty/Rtmp/a;->l:I

    .line 165
    iput p7, p0, LThirdParty/Rtmp/a;->m:I

    .line 166
    iput p8, p0, LThirdParty/Rtmp/a;->n:I

    .line 167
    iput-object p9, p0, LThirdParty/Rtmp/a;->e:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, LThirdParty/Rtmp/a;->c()V

    .line 170
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LThirdParty/Rtmp/a;->j:[B

    goto :goto_0
.end method

.method public a(LThirdParty/Rtmp/a$a;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, LThirdParty/Rtmp/a;->a:LThirdParty/Rtmp/a$a;

    .line 502
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2001

    if-ne v0, v1, :cond_3

    .line 111
    iget v0, p0, LThirdParty/Rtmp/a;->t:I

    const/16 v1, 0xd2

    if-le v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RTMP DEBUG] lPendingVideoMsg > lPendingVideoMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LThirdParty/Rtmp/a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LThirdParty/Rtmp/a;->b(Ljava/lang/String;I)V

    .line 114
    iput-boolean v3, p0, LThirdParty/Rtmp/a;->y:Z

    .line 116
    :cond_0
    iget-boolean v0, p0, LThirdParty/Rtmp/a;->y:Z

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    const-string v1, "streamVideoData"

    .line 119
    invoke-virtual {v0, v1}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/c/d;

    invoke-virtual {v0}, LGeneralFunction/c/d;->a()[B

    move-result-object v0

    .line 118
    invoke-static {v0}, LGeneralFunction/e;->b([B)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, LThirdParty/Rtmp/a;->t:I

    const/16 v1, 0x96

    if-gt v0, v1, :cond_4

    .line 122
    const-string v0, "[RTMP DEBUG] bIsDropFrameMsg = false"

    invoke-static {v0, v2}, LThirdParty/Rtmp/a;->b(Ljava/lang/String;I)V

    .line 123
    iput-boolean v2, p0, LThirdParty/Rtmp/a;->y:Z

    .line 130
    :cond_1
    iget v0, p0, LThirdParty/Rtmp/a;->t:I

    iget v1, p0, LThirdParty/Rtmp/a;->u:I

    if-le v0, v1, :cond_2

    .line 132
    iget v0, p0, LThirdParty/Rtmp/a;->t:I

    iput v0, p0, LThirdParty/Rtmp/a;->u:I

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxPending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LThirdParty/Rtmp/a;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LThirdParty/Rtmp/a;->b(Ljava/lang/String;I)V

    .line 135
    :cond_2
    iget-object v0, p0, LThirdParty/Rtmp/a;->w:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 136
    iget v0, p0, LThirdParty/Rtmp/a;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LThirdParty/Rtmp/a;->t:I

    .line 137
    iget-object v0, p0, LThirdParty/Rtmp/a;->w:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 140
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2003

    if-ne v0, v1, :cond_5

    .line 142
    iget-object v0, p0, LThirdParty/Rtmp/a;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 147
    :cond_4
    :goto_0
    return-void

    .line 145
    :cond_5
    iget-object v0, p0, LThirdParty/Rtmp/a;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, LThirdParty/Rtmp/a;->f:Z

    return v0
.end method
