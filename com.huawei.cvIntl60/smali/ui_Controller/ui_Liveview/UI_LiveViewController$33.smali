.class Lui_Controller/ui_Liveview/UI_LiveViewController$33;
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
    .line 3258
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 3262
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->s(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020304

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3263
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->q(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020309

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3264
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->r(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02030d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3266
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->o(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020324

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3268
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-nez v0, :cond_2

    .line 3270
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v2, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(III)V

    .line 3280
    :cond_0
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->T:I

    .line 3281
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->aM:Z

    if-eqz v0, :cond_1

    .line 3282
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->n(Z)V

    .line 3284
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->T:I

    invoke-static {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Lui_Controller/ui_Liveview/UI_LiveViewController;I)V

    .line 3285
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2260

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    .line 3286
    return-void

    .line 3272
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-ne v0, v4, :cond_3

    .line 3274
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4, v2, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(III)V

    goto :goto_0

    .line 3276
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$33;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method
