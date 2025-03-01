.class Lui_Controller/ui_Liveview/UI_LiveViewController$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->aM()V
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
    .line 3447
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$40;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 3451
    const/4 v0, 0x6

    invoke-static {v0}, LGeneralFunction/m/a;->m(I)V

    .line 3452
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$40;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->v(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0202f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3453
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$40;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->w(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$40;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3454
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$40;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->x(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {}, LGeneralFunction/m/a;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3455
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$40;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->y(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$40;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->W:Ljava/util/ArrayList;

    invoke-static {}, LGeneralFunction/m/a;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3456
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$40;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2231

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 3457
    return-void
.end method
