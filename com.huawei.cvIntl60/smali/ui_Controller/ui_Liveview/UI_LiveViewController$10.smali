.class Lui_Controller/ui_Liveview/UI_LiveViewController$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->l(I)V
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
    .line 1920
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$10;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1923
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$10;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput p3, v0, Lui_Controller/b/k;->aP:I

    .line 1924
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$10;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->e(Lui_Controller/ui_Liveview/UI_LiveViewController;)Lui_Controller/ui_Liveview/UI_LiveViewController$b;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p1}, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 1925
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$10;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->B()V

    .line 1926
    return-void
.end method
