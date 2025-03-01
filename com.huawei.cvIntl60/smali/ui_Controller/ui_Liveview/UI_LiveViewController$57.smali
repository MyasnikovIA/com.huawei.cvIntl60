.class Lui_Controller/ui_Liveview/UI_LiveViewController$57;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Ljava/lang/Object;I)Landroid/animation/ObjectAnimator;
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
    .line 4267
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 4304
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 4305
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4270
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4271
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->V()V

    .line 4272
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->o(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4274
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->aa:Z

    if-eqz v0, :cond_0

    .line 4276
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->k(Z)V

    .line 4277
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->V()V

    .line 4278
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v2, v0, Lui_Controller/b/k;->aa:Z

    .line 4301
    :goto_0
    return-void

    .line 4282
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4284
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->k(Z)V

    .line 4285
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->V()V

    .line 4286
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, "Activity not ready, ignore record msg"

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    goto :goto_0

    .line 4290
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-nez v0, :cond_2

    .line 4292
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v2, v0, Lui_Controller/b/k;->Z:Z

    .line 4293
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2247

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_0

    .line 4298
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$57;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2246

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_0
.end method
