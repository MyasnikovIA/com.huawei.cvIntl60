.class LGeneralFunction/Player/player/SphericalVideoPlayer$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;)V
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
    .line 661
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$9;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 664
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$9;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/e;->b(Z)V

    .line 665
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$9;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 666
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$9;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v2, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    .line 668
    const-wide/16 v0, 0x19

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$9;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 674
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$9;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;I)V

    .line 675
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
