.class public La/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private b:La/b/a/b;

.field private c:Ljava/util/Timer;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/HandlerThread;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/Timer;

.field private k:Landroid/os/Handler;

.field private l:Landroid/os/HandlerThread;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, La/b/a/c;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        0x3t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(La/b/a/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, La/b/a/c;->b:La/b/a/b;

    .line 25
    iput-object v0, p0, La/b/a/c;->c:Ljava/util/Timer;

    .line 26
    iput-object v0, p0, La/b/a/c;->d:Landroid/os/Handler;

    .line 27
    iput-object v0, p0, La/b/a/c;->e:Landroid/os/HandlerThread;

    .line 28
    iput-boolean v1, p0, La/b/a/c;->f:Z

    .line 29
    iput v1, p0, La/b/a/c;->g:I

    .line 30
    iput v1, p0, La/b/a/c;->h:I

    .line 31
    iput v1, p0, La/b/a/c;->i:I

    .line 33
    iput-object v0, p0, La/b/a/c;->j:Ljava/util/Timer;

    .line 34
    iput-object v0, p0, La/b/a/c;->k:Landroid/os/Handler;

    .line 35
    iput-object v0, p0, La/b/a/c;->l:Landroid/os/HandlerThread;

    .line 36
    iput-boolean v1, p0, La/b/a/c;->m:Z

    .line 40
    iput-object p1, p0, La/b/a/c;->b:La/b/a/b;

    return-void
.end method

.method static synthetic a(La/b/a/c;)I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, La/b/a/c;->h:I

    return v0
.end method

.method static synthetic a(La/b/a/c;I)I
    .locals 0

    .prologue
    .line 12
    iput p1, p0, La/b/a/c;->h:I

    return p1
.end method

.method private a(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 185
    new-instance v0, La/b/a/c$5;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La/b/a/c$5;-><init>(La/b/a/c;Landroid/os/Looper;)V

    .line 216
    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0, p1}, La/b/a/c;->b(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(La/b/a/c;Z)Z
    .locals 0

    .prologue
    .line 12
    iput-boolean p1, p0, La/b/a/c;->f:Z

    return p1
.end method

.method static synthetic b(La/b/a/c;)I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, La/b/a/c;->g:I

    return v0
.end method

.method private b(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    .line 248
    :cond_0
    new-instance v0, La/b/a/c$6;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La/b/a/c$6;-><init>(La/b/a/c;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 180
    const-string v0, "SCSIAlive"

    invoke-static {v0, p0, p1}, La/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method static synthetic c(La/b/a/c;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, La/b/a/c;->f:Z

    return v0
.end method

.method static synthetic d(La/b/a/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, La/b/a/c;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(La/b/a/c;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, La/b/a/c;->m:Z

    return v0
.end method

.method static synthetic f(La/b/a/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, La/b/a/c;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(La/b/a/c;)La/b/a/b;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, La/b/a/c;->b:La/b/a/b;

    return-object v0
.end method

.method static synthetic g()[B
    .locals 1

    .prologue
    .line 12
    sget-object v0, La/b/a/c;->a:[B

    return-object v0
.end method

.method static synthetic h(La/b/a/c;)I
    .locals 2

    .prologue
    .line 12
    iget v0, p0, La/b/a/c;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La/b/a/c;->h:I

    return v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, La/b/a/c;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 222
    iput-object v2, p0, La/b/a/c;->d:Landroid/os/Handler;

    .line 223
    iget-object v0, p0, La/b/a/c;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 224
    :goto_0
    iget-object v0, p0, La/b/a/c;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 231
    :cond_0
    iput-object v2, p0, La/b/a/c;->e:Landroid/os/HandlerThread;

    .line 233
    :cond_1
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, La/b/a/c;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, La/b/a/c;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, La/b/a/c;->c:Ljava/util/Timer;

    .line 241
    :cond_0
    return-void
.end method

.method static synthetic i(La/b/a/c;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, La/b/a/c;->i()V

    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, La/b/a/c;->l:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 285
    iput-object v2, p0, La/b/a/c;->k:Landroid/os/Handler;

    .line 286
    iget-object v0, p0, La/b/a/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 287
    :goto_0
    iget-object v0, p0, La/b/a/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 294
    :cond_0
    iput-object v2, p0, La/b/a/c;->l:Landroid/os/HandlerThread;

    .line 296
    :cond_1
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, La/b/a/c;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, La/b/a/c;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, La/b/a/c;->j:Ljava/util/Timer;

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, La/b/a/c;->i()V

    .line 88
    invoke-direct {p0}, La/b/a/c;->h()V

    .line 89
    iput-boolean v0, p0, La/b/a/c;->f:Z

    .line 90
    iput v0, p0, La/b/a/c;->g:I

    .line 91
    iput v0, p0, La/b/a/c;->h:I

    .line 92
    return-void
.end method

.method public a(II)V
    .locals 6

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    const-string v0, "Disable keep alive mechanism"

    const/4 v1, 0x3

    invoke-static {v0, v1}, La/b/a/c;->b(Ljava/lang/String;I)V

    .line 83
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, La/b/a/c;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "Warning! keep alive thread already exist. Would restart it"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/b/a/c;->b(Ljava/lang/String;I)V

    .line 51
    invoke-direct {p0}, La/b/a/c;->h()V

    .line 53
    :cond_1
    iget-object v0, p0, La/b/a/c;->c:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 54
    invoke-direct {p0}, La/b/a/c;->i()V

    .line 57
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SCSIKeepAliveThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/b/a/c;->e:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, La/b/a/c;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    iget-object v0, p0, La/b/a/c;->e:Landroid/os/HandlerThread;

    invoke-direct {p0, v0}, La/b/a/c;->a(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, La/b/a/c;->d:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, La/b/a/c;->c:Ljava/util/Timer;

    .line 62
    new-instance v1, La/b/a/c$1;

    invoke-direct {v1, p0}, La/b/a/c$1;-><init>(La/b/a/c;)V

    .line 79
    iput p1, p0, La/b/a/c;->i:I

    .line 80
    iget v0, p0, La/b/a/c;->i:I

    div-int v0, p2, v0

    iput v0, p0, La/b/a/c;->g:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/a/c;->f:Z

    .line 82
    iget-object v0, p0, La/b/a/c;->c:Ljava/util/Timer;

    iget v2, p0, La/b/a/c;->i:I

    int-to-long v2, v2

    iget v4, p0, La/b/a/c;->i:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/a/c;->f:Z

    .line 97
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 101
    iget-object v0, p0, La/b/a/c;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget v0, p0, La/b/a/c;->i:I

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, La/b/a/c;->i()V

    .line 103
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, La/b/a/c;->c:Ljava/util/Timer;

    .line 104
    new-instance v1, La/b/a/c$2;

    invoke-direct {v1, p0}, La/b/a/c$2;-><init>(La/b/a/c;)V

    .line 120
    iget-object v0, p0, La/b/a/c;->c:Ljava/util/Timer;

    iget v2, p0, La/b/a/c;->i:I

    int-to-long v2, v2

    iget v4, p0, La/b/a/c;->i:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 122
    :cond_0
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    const-wide/32 v2, 0x249f0

    .line 126
    iget-object v0, p0, La/b/a/c;->l:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "Warning! notify connected thread already exist. Would restart it"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/b/a/c;->b(Ljava/lang/String;I)V

    .line 128
    invoke-direct {p0}, La/b/a/c;->j()V

    .line 130
    :cond_0
    iget-object v0, p0, La/b/a/c;->j:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0}, La/b/a/c;->k()V

    .line 134
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/a/c;->m:Z

    .line 135
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SCSINotifyAPPConnectedThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/b/a/c;->l:Landroid/os/HandlerThread;

    .line 136
    iget-object v0, p0, La/b/a/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 137
    iget-object v0, p0, La/b/a/c;->l:Landroid/os/HandlerThread;

    invoke-direct {p0, v0}, La/b/a/c;->b(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, La/b/a/c;->k:Landroid/os/Handler;

    .line 139
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, La/b/a/c;->j:Ljava/util/Timer;

    .line 140
    new-instance v1, La/b/a/c$3;

    invoke-direct {v1, p0}, La/b/a/c$3;-><init>(La/b/a/c;)V

    .line 151
    iget-object v0, p0, La/b/a/c;->j:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 152
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/a/c;->m:Z

    .line 157
    invoke-direct {p0}, La/b/a/c;->k()V

    .line 158
    invoke-direct {p0}, La/b/a/c;->j()V

    .line 159
    return-void
.end method

.method public f()V
    .locals 6

    .prologue
    const-wide/32 v2, 0x249f0

    .line 163
    iget-object v0, p0, La/b/a/c;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, La/b/a/c;->k()V

    .line 165
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, La/b/a/c;->j:Ljava/util/Timer;

    .line 166
    new-instance v1, La/b/a/c$4;

    invoke-direct {v1, p0}, La/b/a/c$4;-><init>(La/b/a/c;)V

    .line 174
    iget-object v0, p0, La/b/a/c;->j:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 176
    :cond_0
    return-void
.end method
