.class LGeneralFunction/Player/player/d$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/player/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/d;

.field private b:I

.field private c:I

.field private d:J

.field private e:Z


# direct methods
.method private constructor <init>(LGeneralFunction/Player/player/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iput-object p1, p0, LGeneralFunction/Player/player/d$a;->a:LGeneralFunction/Player/player/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 66
    const/16 v0, 0x1e

    iput v0, p0, LGeneralFunction/Player/player/d$a;->b:I

    .line 67
    iget v0, p0, LGeneralFunction/Player/player/d$a;->b:I

    invoke-direct {p0, v0, v2}, LGeneralFunction/Player/player/d$a;->a(II)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/player/d$a;->c:I

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LGeneralFunction/Player/player/d$a;->d:J

    .line 70
    iput-boolean v2, p0, LGeneralFunction/Player/player/d$a;->e:Z

    return-void
.end method

.method synthetic constructor <init>(LGeneralFunction/Player/player/d;LGeneralFunction/Player/player/d$1;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/d$a;-><init>(LGeneralFunction/Player/player/d;)V

    return-void
.end method

.method private a(II)I
    .locals 4

    .prologue
    .line 81
    int-to-float v0, p1

    .line 82
    const/high16 v1, 0x40c00000    # 6.0f

    div-float v1, v0, v1

    .line 83
    const/high16 v2, 0x41700000    # 15.0f

    div-float v2, v0, v2

    .line 84
    int-to-float v3, p2

    div-float v1, v3, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 85
    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/d$a;->e:Z

    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 74
    iput p1, p0, LGeneralFunction/Player/player/d$a;->b:I

    .line 75
    iget v0, p0, LGeneralFunction/Player/player/d$a;->b:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/player/d$a;->a(II)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/player/d$a;->c:I

    .line 76
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/Player/player/d$a;->e:Z

    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 89
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-boolean v0, p0, LGeneralFunction/Player/player/d$a;->e:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, LGeneralFunction/Player/player/d$a;->a:LGeneralFunction/Player/player/d;

    invoke-static {v0}, LGeneralFunction/Player/player/d;->a(LGeneralFunction/Player/player/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, LGeneralFunction/Player/player/d$a;->a:LGeneralFunction/Player/player/d;

    invoke-static {v0}, LGeneralFunction/Player/player/d;->a(LGeneralFunction/Player/player/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v2, 0x32

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 95
    iget v1, p0, LGeneralFunction/Player/player/d$a;->b:I

    iget-object v2, p0, LGeneralFunction/Player/player/d$a;->a:LGeneralFunction/Player/player/d;

    invoke-static {v2}, LGeneralFunction/Player/player/d;->a(LGeneralFunction/Player/player/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, LGeneralFunction/Player/player/d$a;->a(II)I

    move-result v1

    iput v1, p0, LGeneralFunction/Player/player/d$a;->c:I

    .line 98
    iget v1, p0, LGeneralFunction/Player/player/d$a;->c:I

    int-to-long v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, LGeneralFunction/Player/player/d$a;->d:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 99
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 103
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LGeneralFunction/Player/player/d$a;->d:J

    .line 104
    iget-object v1, p0, LGeneralFunction/Player/player/d$a;->a:LGeneralFunction/Player/player/d;

    invoke-static {v1}, LGeneralFunction/Player/player/d;->b(LGeneralFunction/Player/player/d;)LGeneralFunction/Player/player/SphericalVideoPlayer$c;

    move-result-object v1

    invoke-interface {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$c;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 112
    :cond_2
    return-void
.end method
