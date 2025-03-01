.class Lui_Controller/ui_Liveview/UI_LiveViewController$29;
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
    .line 2930
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$29;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2934
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$29;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$29;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ae:I

    invoke-static {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(Lui_Controller/ui_Liveview/UI_LiveViewController;I)V

    .line 2935
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$29;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->e(Z)V

    .line 2936
    return-void
.end method
