.class Lui_Controller/ui_Liveview/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/r/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Liveview/a;


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/a;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lui_Controller/ui_Liveview/a$1;->a:Lui_Controller/ui_Liveview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lui_Controller/ui_Liveview/a$1;->a:Lui_Controller/ui_Liveview/a;

    invoke-static {v0}, Lui_Controller/ui_Liveview/a;->a(Lui_Controller/ui_Liveview/a;)Lui_Controller/ui_Liveview/UI_LiveViewController;

    move-result-object v0

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->an:LGeneralFunction/r/a;

    invoke-virtual {v0}, LGeneralFunction/r/a;->c()V

    .line 686
    iget-object v0, p0, Lui_Controller/ui_Liveview/a$1;->a:Lui_Controller/ui_Liveview/a;

    invoke-static {v0}, Lui_Controller/ui_Liveview/a;->a(Lui_Controller/ui_Liveview/a;)Lui_Controller/ui_Liveview/UI_LiveViewController;

    move-result-object v0

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->an:LGeneralFunction/r/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LGeneralFunction/r/a;->a(LGeneralFunction/r/a$a;)V

    .line 687
    return-void
.end method

.method public a(Landroid/media/MediaFormat;)V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .prologue
    .line 669
    if-eqz p1, :cond_0

    .line 671
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 672
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 673
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 674
    iget-object v1, p0, Lui_Controller/ui_Liveview/a$1;->a:Lui_Controller/ui_Liveview/a;

    new-instance v2, LGeneralFunction/c/d;

    invoke-direct {v2, v0}, LGeneralFunction/c/d;-><init>([B)V

    invoke-static {v1, v2, p2}, Lui_Controller/ui_Liveview/a;->a(Lui_Controller/ui_Liveview/a;LGeneralFunction/c/d;Landroid/media/MediaCodec$BufferInfo;)V

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/a$1;->a:Lui_Controller/ui_Liveview/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFrameReady receive objAudioData is null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Liveview/a;->a(Lui_Controller/ui_Liveview/a;Ljava/lang/String;I)V

    goto :goto_0
.end method
