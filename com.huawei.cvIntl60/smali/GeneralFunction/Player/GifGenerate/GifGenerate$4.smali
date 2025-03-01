.class LGeneralFunction/Player/GifGenerate/GifGenerate$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


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
    .line 524
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$4;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    .prologue
    .line 527
    packed-switch p2, :pswitch_data_0

    .line 540
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 531
    :pswitch_0
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++OnInfoListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 534
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$4;->a:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b()V

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x2be
        :pswitch_0
    .end packed-switch
.end method
