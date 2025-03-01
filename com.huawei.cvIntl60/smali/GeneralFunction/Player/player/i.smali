.class public LGeneralFunction/Player/player/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/Player/player/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/GestureDetector;

.field private c:Landroid/view/ScaleGestureDetector;

.field private d:I

.field private e:LGeneralFunction/Player/player/SphericalVideoPlayer$b;

.field private f:LGeneralFunction/Player/player/h;

.field private g:Z

.field private h:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

.field private i:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, LGeneralFunction/Player/player/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/player/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, LGeneralFunction/Player/player/i;->d:I

    .line 17
    new-instance v0, LGeneralFunction/Player/player/h;

    invoke-direct {v0}, LGeneralFunction/Player/player/h;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/player/i;->f:LGeneralFunction/Player/player/h;

    .line 18
    iput-boolean v1, p0, LGeneralFunction/Player/player/i;->g:Z

    .line 104
    new-instance v0, LGeneralFunction/Player/player/i$1;

    invoke-direct {v0, p0}, LGeneralFunction/Player/player/i$1;-><init>(LGeneralFunction/Player/player/i;)V

    iput-object v0, p0, LGeneralFunction/Player/player/i;->i:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 26
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, LGeneralFunction/Player/player/i;->i:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, LGeneralFunction/Player/player/i;->b:Landroid/view/GestureDetector;

    .line 27
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, LGeneralFunction/Player/player/i$a;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/i$a;-><init>(LGeneralFunction/Player/player/i;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, LGeneralFunction/Player/player/i;->c:Landroid/view/ScaleGestureDetector;

    .line 28
    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, LGeneralFunction/Player/player/i;->f:LGeneralFunction/Player/player/h;

    return-object v0
.end method

.method static synthetic a(LGeneralFunction/Player/player/i;Z)Z
    .locals 0

    .prologue
    .line 9
    iput-boolean p1, p0, LGeneralFunction/Player/player/i;->g:Z

    return p1
.end method

.method static synthetic b(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, LGeneralFunction/Player/player/i;->h:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    return-object v0
.end method

.method static synthetic c(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$b;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, LGeneralFunction/Player/player/i;->e:LGeneralFunction/Player/player/SphericalVideoPlayer$b;

    return-object v0
.end method


# virtual methods
.method public a(LGeneralFunction/Player/player/SphericalVideoPlayer$b;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, LGeneralFunction/Player/player/i;->e:LGeneralFunction/Player/player/SphericalVideoPlayer$b;

    .line 96
    return-void
.end method

.method public a(LGeneralFunction/Player/player/h;LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, LGeneralFunction/Player/player/i;->f:LGeneralFunction/Player/player/h;

    .line 100
    iput-object p2, p0, LGeneralFunction/Player/player/i;->h:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    .line 101
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 68
    iget-object v0, p0, LGeneralFunction/Player/player/i;->c:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 74
    :sswitch_0
    iget-boolean v0, p0, LGeneralFunction/Player/player/i;->g:Z

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 77
    iget-object v1, p0, LGeneralFunction/Player/player/i;->h:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 78
    iget-object v1, p0, LGeneralFunction/Player/player/i;->e:LGeneralFunction/Player/player/SphericalVideoPlayer$b;

    invoke-interface {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$b;->e(Landroid/os/Message;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 86
    iget-object v0, p0, LGeneralFunction/Player/player/i;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x106 -> :sswitch_0
    .end sparse-switch
.end method
