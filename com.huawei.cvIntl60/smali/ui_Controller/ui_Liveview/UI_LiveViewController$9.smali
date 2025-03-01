.class Lui_Controller/ui_Liveview/UI_LiveViewController$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->at()V
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
    .line 1863
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$9;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x1

    .line 1867
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$9;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput p3, v0, Lui_Controller/b/k;->aO:I

    .line 1868
    if-nez p3, :cond_0

    .line 1871
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$9;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, p3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(Lui_Controller/ui_Liveview/UI_LiveViewController;I)V

    .line 1873
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$9;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1874
    new-instance v1, Lui_Controller/ui_Liveview/UI_LiveViewController$9$1;

    invoke-direct {v1, p0}, Lui_Controller/ui_Liveview/UI_LiveViewController$9$1;-><init>(Lui_Controller/ui_Liveview/UI_LiveViewController$9;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1882
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1883
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$9;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v1, v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Z)V

    .line 1884
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$9;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v1}, La/c/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1886
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1887
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$9;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(Z)V

    .line 1892
    :cond_0
    return-void

    .line 1873
    nop

    :array_0
    .array-data 4
        0x44c80000    # 1600.0f
        0x0
    .end array-data
.end method
