.class Lui_Controller/ui_Liveview/UI_LiveViewController$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->aH()V
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
    .line 2917
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$28;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2921
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$28;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x110

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$28;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 2923
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$28;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->p(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2924
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$28;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2256

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    .line 2926
    :cond_1
    return-void
.end method
