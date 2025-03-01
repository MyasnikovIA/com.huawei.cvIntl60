.class Lui_Controller/ui_Liveview/UI_LiveViewController$50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->aR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field final synthetic b:Lui_Controller/ui_Liveview/UI_LiveViewController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;)V
    .locals 1

    .prologue
    .line 3984
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3985
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->a:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/high16 v5, 0x42a00000    # 80.0f

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3989
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 3991
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->a:F

    .line 4045
    :cond_0
    :goto_0
    return v2

    .line 3993
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3995
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->a:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    .line 3997
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-nez v0, :cond_2

    .line 3999
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->N(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4000
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v4, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;II)V

    goto :goto_0

    .line 4003
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-ne v0, v2, :cond_4

    .line 4005
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->N(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 4006
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v2, v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;II)V

    goto :goto_0

    .line 4009
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;II)V

    goto :goto_0

    .line 4013
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-ne v0, v3, :cond_0

    .line 4015
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->N(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 4016
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v3, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;II)V

    goto :goto_0

    .line 4020
    :cond_5
    iget v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    .line 4022
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-nez v0, :cond_6

    .line 4024
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->N(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 4025
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v4, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;II)V

    goto/16 :goto_0

    .line 4028
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-ne v0, v2, :cond_8

    .line 4030
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->N(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_7

    .line 4031
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;II)V

    goto/16 :goto_0

    .line 4034
    :cond_7
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v2, v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;II)V

    goto/16 :goto_0

    .line 4037
    :cond_8
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-ne v0, v3, :cond_0

    .line 4039
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->N(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4040
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$50;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v3, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;II)V

    goto/16 :goto_0
.end method
