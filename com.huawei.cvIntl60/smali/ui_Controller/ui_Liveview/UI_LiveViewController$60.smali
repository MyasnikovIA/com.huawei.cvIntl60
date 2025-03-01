.class Lui_Controller/ui_Liveview/UI_LiveViewController$60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/r/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->ad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Liveview/UI_LiveViewController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;)V
    .locals 0

    .prologue
    .line 4619
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$60;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 4637
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$60;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->am:LGeneralFunction/r/b;

    if-eqz v0, :cond_0

    .line 4638
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$60;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->am:LGeneralFunction/r/b;

    invoke-virtual {v0}, LGeneralFunction/r/b;->a()I

    .line 4640
    :cond_0
    return-void
.end method

.method public a(Landroid/media/MediaFormat;)V
    .locals 1

    .prologue
    .line 4622
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$60;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->am:LGeneralFunction/r/b;

    if-eqz v0, :cond_0

    .line 4623
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$60;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->am:LGeneralFunction/r/b;

    invoke-virtual {v0, p1}, LGeneralFunction/r/b;->a(Landroid/media/MediaFormat;)I

    .line 4625
    :cond_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .prologue
    .line 4629
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$60;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->am:LGeneralFunction/r/b;

    if-eqz v0, :cond_0

    .line 4630
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$60;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lui_Controller/b/k;->aD:J

    .line 4631
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$60;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->am:LGeneralFunction/r/b;

    invoke-virtual {v0, p1, p2}, LGeneralFunction/r/b;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)I

    .line 4633
    :cond_0
    return-void
.end method
