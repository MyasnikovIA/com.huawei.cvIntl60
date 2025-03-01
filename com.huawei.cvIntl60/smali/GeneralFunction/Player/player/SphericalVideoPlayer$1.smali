.class LGeneralFunction/Player/player/SphericalVideoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/Player/player/SphericalVideoPlayer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/player/SphericalVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/SphericalVideoPlayer;


# direct methods
.method constructor <init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Landroid/os/Message;)I

    .line 430
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$d;

    move-result-object v0

    invoke-interface {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$d;->a(Landroid/view/MotionEvent;)V

    .line 446
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 463
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Landroid/os/Message;)I

    .line 438
    :cond_0
    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Landroid/os/Message;)I

    .line 468
    return-void
.end method

.method public d(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Landroid/os/Message;)I

    .line 476
    :cond_0
    return-void
.end method

.method public e(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Landroid/os/Message;)I

    .line 481
    return-void
.end method
