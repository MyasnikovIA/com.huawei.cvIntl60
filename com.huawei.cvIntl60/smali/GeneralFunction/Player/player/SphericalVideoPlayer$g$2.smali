.class LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a()Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:LGeneralFunction/Player/player/SphericalVideoPlayer$g;


# direct methods
.method constructor <init>(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V
    .locals 1

    .prologue
    .line 1443
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;->b:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;->a:Z

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1447
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1448
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1449
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;->b:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-virtual {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(Landroid/os/Message;)I

    .line 1450
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;->b:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->g(LGeneralFunction/Player/player/SphericalVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;->b:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Z)Z

    .line 1452
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;->b:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->g(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    .line 1454
    :cond_0
    iget-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;->a:Z

    if-eqz v0, :cond_2

    .line 1456
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;->b:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->h(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1458
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;->b:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->h(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$e;

    move-result-object v0

    invoke-interface {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$e;->a()V

    .line 1460
    :cond_1
    iput-boolean v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;->a:Z

    .line 1462
    :cond_2
    return-void
.end method
