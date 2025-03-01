.class Lui_Controller/ui_Liveview/UI_LiveViewController$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->aI()V
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
    .line 3215
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3219
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->q(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020307

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3220
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->r(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02030d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3221
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->s(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020305

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3223
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->aM:Z

    if-nez v0, :cond_2

    .line 3225
    invoke-static {}, LGeneralFunction/m/a;->f()I

    move-result v0

    if-nez v0, :cond_1

    .line 3227
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->o(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020328

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3233
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ah()Z

    .line 3240
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-nez v0, :cond_3

    .line 3253
    :cond_0
    :goto_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->T:I

    .line 3254
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->T:I

    invoke-static {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Lui_Controller/ui_Liveview/UI_LiveViewController;I)V

    .line 3255
    return-void

    .line 3231
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->o(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020329

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3237
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->n(Z)V

    goto :goto_1

    .line 3244
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-ne v0, v3, :cond_4

    .line 3246
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v2, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(III)V

    goto :goto_2

    .line 3248
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-ne v0, v4, :cond_0

    .line 3250
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$32;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4, v2, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(III)V

    goto :goto_2
.end method
