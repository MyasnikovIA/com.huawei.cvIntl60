.class LGeneralFunction/Player/GifGenerate/GifGenerate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/GifGenerate/GifGenerate;


# direct methods
.method constructor <init>(LGeneralFunction/Player/GifGenerate/GifGenerate;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 491
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 492
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 493
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v1, v1, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 494
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v1, v1, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 495
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;Landroid/os/Message;)I

    .line 496
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->seekTo(I)V

    .line 497
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentPosition()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 499
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->seekTo(I)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "twice_getCurrentPosition()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 503
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b()V

    .line 505
    :cond_0
    return-void
.end method
