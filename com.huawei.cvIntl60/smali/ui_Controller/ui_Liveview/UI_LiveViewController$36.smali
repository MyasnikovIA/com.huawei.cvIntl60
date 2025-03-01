.class Lui_Controller/ui_Liveview/UI_LiveViewController$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->aJ()V
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
    .line 3352
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$36;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3356
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$36;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->U:I

    if-ne v0, v2, :cond_0

    .line 3358
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$36;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->t(Lui_Controller/ui_Liveview/UI_LiveViewController;)V

    .line 3359
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$36;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setIsShowThumbNail(Z)V

    .line 3360
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$36;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->u(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020312

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3362
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$36;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v3, v0, Lui_Controller/b/k;->U:I

    .line 3372
    :goto_0
    return-void

    .line 3366
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$36;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->t(Lui_Controller/ui_Liveview/UI_LiveViewController;)V

    .line 3367
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$36;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setIsShowThumbNail(Z)V

    .line 3368
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$36;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->u(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020311

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3370
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$36;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->U:I

    goto :goto_0
.end method
