.class Lui_Controller/ui_Liveview/UI_LiveViewController$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController$9;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Liveview/UI_LiveViewController$9;


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController$9;)V
    .locals 0

    .prologue
    .line 1874
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$9$1;->a:Lui_Controller/ui_Liveview/UI_LiveViewController$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1877
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1878
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$9$1;->a:Lui_Controller/ui_Liveview/UI_LiveViewController$9;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController$9;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Z)V

    .line 1879
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$9$1;->a:Lui_Controller/ui_Liveview/UI_LiveViewController$9;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController$9;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Z)V

    .line 1880
    return-void
.end method
