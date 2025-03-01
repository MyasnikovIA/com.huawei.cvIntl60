.class public LGeneralFunction/Player/player/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/player/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/i;


# direct methods
.method public constructor <init>(LGeneralFunction/Player/player/i;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, LGeneralFunction/Player/player/i$a;->a:LGeneralFunction/Player/player/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 40
    iget-object v0, p0, LGeneralFunction/Player/player/i$a;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v6, v0, LGeneralFunction/Player/player/h;->B:Z

    .line 41
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    .line 43
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    .line 44
    sub-float/2addr v1, v2

    const-wide/16 v2, 0x2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v4

    mul-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 45
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v6

    .line 48
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, LGeneralFunction/Player/player/i$a;->a:LGeneralFunction/Player/player/i;

    invoke-static {v1}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iput-boolean v6, v1, LGeneralFunction/Player/player/h;->B:Z

    .line 53
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 54
    iget-object v2, p0, LGeneralFunction/Player/player/i$a;->a:LGeneralFunction/Player/player/i;

    invoke-static {v2}, LGeneralFunction/Player/player/i;->b(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 55
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    iget-object v0, p0, LGeneralFunction/Player/player/i$a;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->c(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$b;

    move-result-object v0

    invoke-interface {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer$b;->d(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    iget-object v0, p0, LGeneralFunction/Player/player/i$a;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0, v1}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;Z)Z

    .line 36
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, LGeneralFunction/Player/player/i$a;->a:LGeneralFunction/Player/player/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;Z)Z

    .line 62
    return-void
.end method
