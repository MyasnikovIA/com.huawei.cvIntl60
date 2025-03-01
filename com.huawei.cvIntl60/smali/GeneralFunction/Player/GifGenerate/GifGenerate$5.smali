.class LGeneralFunction/Player/GifGenerate/GifGenerate$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


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
    .line 545
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$5;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 548
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$5;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 549
    invoke-static {}, LGeneralFunction/Player/GifGenerate/GifGenerate;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrePlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$5;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$5;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 552
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$5;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 554
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 555
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 556
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$5;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;Landroid/os/Message;)I

    .line 559
    :cond_0
    const-string v0, "Video play complete"

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 560
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$5;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 561
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$5;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 562
    return-void
.end method
