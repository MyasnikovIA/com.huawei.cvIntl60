.class Lui_Controller/ui_Liveview/UI_LiveViewController$61;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->aY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Liveview/UI_LiveViewController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 4842
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x9

    .line 4845
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput p1, v0, Lui_Controller/b/k;->u:I

    .line 4846
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 4881
    :cond_0
    :goto_0
    return-void

    .line 4850
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v2, v0, Lui_Controller/b/k;->ad:Z

    .line 4851
    const/16 v0, 0x15e

    if-gt p1, v0, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_4

    .line 4853
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4855
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ad(Lui_Controller/ui_Liveview/UI_LiveViewController;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 4856
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->j(I)V

    .line 4857
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Lui_Controller/ui_Liveview/UI_LiveViewController;I)I

    .line 4858
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ac:I

    goto :goto_0

    .line 4864
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ad(Lui_Controller/ui_Liveview/UI_LiveViewController;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 4865
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->j(I)V

    .line 4866
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Lui_Controller/ui_Liveview/UI_LiveViewController;I)I

    .line 4867
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v1, v0, Lui_Controller/b/k;->ac:I

    goto :goto_0

    .line 4871
    :cond_4
    const/16 v0, 0xaa

    if-le p1, v0, :cond_0

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_0

    .line 4874
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ad(Lui_Controller/ui_Liveview/UI_LiveViewController;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 4876
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->j(I)V

    .line 4877
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Lui_Controller/ui_Liveview/UI_LiveViewController;I)I

    .line 4878
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$61;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v1, v0, Lui_Controller/b/k;->ac:I

    goto :goto_0
.end method
