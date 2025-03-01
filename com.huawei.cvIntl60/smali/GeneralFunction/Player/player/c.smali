.class public LGeneralFunction/Player/player/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/Player/player/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:LGeneralFunction/Player/player/c$a;

.field private e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:I

.field private j:Z

.field private k:J

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, LGeneralFunction/Player/player/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/player/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, LGeneralFunction/Player/player/c;->b:Ljava/util/concurrent/BlockingQueue;

    .line 34
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, LGeneralFunction/Player/player/c;->c:Ljava/util/concurrent/BlockingQueue;

    .line 36
    iput v4, p0, LGeneralFunction/Player/player/c;->e:I

    .line 37
    iput-wide v2, p0, LGeneralFunction/Player/player/c;->f:J

    .line 38
    iput-wide v2, p0, LGeneralFunction/Player/player/c;->g:J

    .line 39
    iput-wide v2, p0, LGeneralFunction/Player/player/c;->h:J

    .line 40
    iput v4, p0, LGeneralFunction/Player/player/c;->i:I

    .line 41
    iput-boolean v4, p0, LGeneralFunction/Player/player/c;->j:Z

    .line 44
    iput-wide v2, p0, LGeneralFunction/Player/player/c;->k:J

    .line 45
    iput-wide v2, p0, LGeneralFunction/Player/player/c;->l:J

    .line 46
    iput-wide v2, p0, LGeneralFunction/Player/player/c;->m:J

    .line 47
    iput-wide v2, p0, LGeneralFunction/Player/player/c;->n:J

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/c;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, LGeneralFunction/Player/player/c;->e:I

    return p1
.end method

.method static synthetic a(LGeneralFunction/Player/player/c;J)J
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, LGeneralFunction/Player/player/c;->g:J

    return-wide p1
.end method

.method static synthetic a(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, LGeneralFunction/Player/player/c;->b:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-static {p0, p1}, LGeneralFunction/Player/player/c;->b(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(LGeneralFunction/Player/player/c;J)J
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, LGeneralFunction/Player/player/c;->h:J

    return-wide p1
.end method

.method static synthetic b(LGeneralFunction/Player/player/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, LGeneralFunction/Player/player/c;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private b(I)V
    .locals 6

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 128
    :cond_0
    :goto_0
    iget v2, p0, LGeneralFunction/Player/player/c;->e:I

    if-eq v2, p1, :cond_1

    .line 131
    const-wide/16 v2, 0x5

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitDecoderStatus error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, LGeneralFunction/Player/player/c;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, LGeneralFunction/Player/player/c;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 140
    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, LGeneralFunction/Player/player/c;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method static synthetic c(LGeneralFunction/Player/player/c;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, LGeneralFunction/Player/player/c;->e:I

    return v0
.end method

.method static synthetic c(LGeneralFunction/Player/player/c;J)J
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, LGeneralFunction/Player/player/c;->f:J

    return-wide p1
.end method

.method static synthetic d(LGeneralFunction/Player/player/c;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, LGeneralFunction/Player/player/c;->g:J

    return-wide v0
.end method

.method static synthetic e(LGeneralFunction/Player/player/c;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, LGeneralFunction/Player/player/c;->f:J

    return-wide v0
.end method

.method static synthetic f(LGeneralFunction/Player/player/c;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, LGeneralFunction/Player/player/c;->h:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/c;->j:Z

    .line 65
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, LGeneralFunction/Player/player/c;->d:LGeneralFunction/Player/player/c$a;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/player/c$a;->a(I)V

    .line 88
    return-void
.end method

.method public a(LGeneralFunction/c/d;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    if-eqz p1, :cond_0

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 95
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    const-string v2, "width"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v2, "height"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    iget-boolean v2, p0, LGeneralFunction/Player/player/c;->j:Z

    if-eqz v2, :cond_1

    .line 100
    iput-boolean v3, p0, LGeneralFunction/Player/player/c;->j:Z

    .line 101
    const-string v2, "needReinitial"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 110
    :try_start_0
    iget-object v0, p0, LGeneralFunction/Player/player/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, LGeneralFunction/Player/player/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 112
    iget v1, p0, LGeneralFunction/Player/player/c;->i:I

    if-le v0, v1, :cond_0

    .line 114
    iput v0, p0, LGeneralFunction/Player/player/c;->i:I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@-------currentQueyeCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LGeneralFunction/Player/player/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, LGeneralFunction/Player/player/c;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_1
    return-void

    .line 105
    :cond_1
    const-string v2, "needReinitial"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Landroid/view/Surface;III)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, LGeneralFunction/Player/player/c$a;

    invoke-direct {v0, p0, p1}, LGeneralFunction/Player/player/c$a;-><init>(LGeneralFunction/Player/player/c;Landroid/view/Surface;)V

    iput-object v0, p0, LGeneralFunction/Player/player/c;->d:LGeneralFunction/Player/player/c$a;

    .line 57
    iget-object v0, p0, LGeneralFunction/Player/player/c;->d:LGeneralFunction/Player/player/c$a;

    invoke-virtual {v0, p2, p3}, LGeneralFunction/Player/player/c$a;->a(II)V

    .line 58
    iget-object v0, p0, LGeneralFunction/Player/player/c;->d:LGeneralFunction/Player/player/c$a;

    invoke-virtual {v0, p4}, LGeneralFunction/Player/player/c$a;->a(I)V

    .line 59
    iget-object v0, p0, LGeneralFunction/Player/player/c;->d:LGeneralFunction/Player/player/c$a;

    invoke-virtual {v0}, LGeneralFunction/Player/player/c$a;->start()V

    .line 60
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, LGeneralFunction/Player/player/c;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x2

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/c;->b(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, LGeneralFunction/Player/player/c;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/c;->b(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, LGeneralFunction/Player/player/c;->d:LGeneralFunction/Player/player/c$a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, LGeneralFunction/Player/player/c;->d:LGeneralFunction/Player/player/c$a;

    invoke-virtual {v0}, LGeneralFunction/Player/player/c$a;->a()V

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/c;->b(I)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/Player/player/c;->d:LGeneralFunction/Player/player/c$a;

    .line 149
    :cond_0
    return-void
.end method
