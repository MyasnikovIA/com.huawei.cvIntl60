.class public LGeneralFunction/Player/player/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/Player/player/d$a;
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

.field private c:LGeneralFunction/Player/player/d$a;

.field private d:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

.field private e:LGeneralFunction/Player/player/SphericalVideoPlayer$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, LGeneralFunction/Player/player/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/player/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, LGeneralFunction/Player/player/d;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/d;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, LGeneralFunction/Player/player/d;->b:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 15
    sget-object v0, LGeneralFunction/Player/player/d;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(LGeneralFunction/Player/player/d;)LGeneralFunction/Player/player/SphericalVideoPlayer$c;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, LGeneralFunction/Player/player/d;->e:LGeneralFunction/Player/player/SphericalVideoPlayer$c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, LGeneralFunction/Player/player/d;->c:LGeneralFunction/Player/player/d$a;

    invoke-virtual {v0}, LGeneralFunction/Player/player/d$a;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LGeneralFunction/Player/player/d;->c:LGeneralFunction/Player/player/d$a;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/player/d$a;->a(I)V

    .line 52
    return-void
.end method

.method public a(ILGeneralFunction/Player/player/SphericalVideoPlayer$g;)V
    .locals 2

    .prologue
    .line 23
    iput-object p2, p0, LGeneralFunction/Player/player/d;->d:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    .line 24
    new-instance v0, LGeneralFunction/Player/player/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LGeneralFunction/Player/player/d$a;-><init>(LGeneralFunction/Player/player/d;LGeneralFunction/Player/player/d$1;)V

    iput-object v0, p0, LGeneralFunction/Player/player/d;->c:LGeneralFunction/Player/player/d$a;

    .line 25
    iget-object v0, p0, LGeneralFunction/Player/player/d;->c:LGeneralFunction/Player/player/d$a;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/player/d$a;->a(I)V

    .line 26
    iget-object v0, p0, LGeneralFunction/Player/player/d;->c:LGeneralFunction/Player/player/d$a;

    invoke-virtual {v0}, LGeneralFunction/Player/player/d$a;->start()V

    .line 27
    return-void
.end method

.method public a(LGeneralFunction/Player/player/SphericalVideoPlayer$c;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, LGeneralFunction/Player/player/d;->e:LGeneralFunction/Player/player/SphericalVideoPlayer$c;

    .line 46
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;IZ)V
    .locals 2

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 32
    iget-object v1, p0, LGeneralFunction/Player/player/d;->d:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 33
    new-instance v1, LGeneralFunction/Player/player/a;

    invoke-direct {v1, p1, p2, p3}, LGeneralFunction/Player/player/a;-><init>(Landroid/graphics/Bitmap;IZ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    :try_start_0
    iget-object v1, p0, LGeneralFunction/Player/player/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "360 Player can\'t receive Bitmap "

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/d;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, LGeneralFunction/Player/player/d;->c:LGeneralFunction/Player/player/d$a;

    invoke-virtual {v0}, LGeneralFunction/Player/player/d$a;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, LGeneralFunction/Player/player/d;->c:LGeneralFunction/Player/player/d$a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, LGeneralFunction/Player/player/d;->c:LGeneralFunction/Player/player/d$a;

    invoke-virtual {v0}, LGeneralFunction/Player/player/d$a;->a()V

    .line 57
    iget-object v0, p0, LGeneralFunction/Player/player/d;->c:LGeneralFunction/Player/player/d$a;

    invoke-virtual {v0}, LGeneralFunction/Player/player/d$a;->interrupt()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/Player/player/d;->c:LGeneralFunction/Player/player/d$a;

    .line 59
    iget-object v0, p0, LGeneralFunction/Player/player/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 62
    :cond_0
    return-void
.end method
