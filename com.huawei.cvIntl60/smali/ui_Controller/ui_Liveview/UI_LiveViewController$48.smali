.class Lui_Controller/ui_Liveview/UI_LiveViewController$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;
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
    .line 3731
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x7f0202f7

    const/4 v2, 0x0

    .line 3735
    move v1, v2

    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->D(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3737
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->E(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3738
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->E(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, -0xe8e8e9

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 3735
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3741
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3773
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100289

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10028d

    if-ne v0, v1, :cond_2

    .line 3774
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->G(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0202fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3775
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->H(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3781
    :goto_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2236

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 3782
    return-void

    .line 3744
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->E(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3745
    invoke-static {v2}, LGeneralFunction/m/a;->n(I)V

    .line 3746
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->F(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->F(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->F(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 3749
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->E(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3750
    invoke-static {v2}, LGeneralFunction/m/a;->n(I)V

    goto/16 :goto_1

    .line 3753
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->E(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3754
    invoke-static {v5}, LGeneralFunction/m/a;->n(I)V

    goto/16 :goto_1

    .line 3757
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->E(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3758
    invoke-static {v6}, LGeneralFunction/m/a;->n(I)V

    goto/16 :goto_1

    .line 3761
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->E(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3762
    invoke-static {v7}, LGeneralFunction/m/a;->n(I)V

    goto/16 :goto_1

    .line 3765
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->E(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3766
    const/4 v0, 0x4

    invoke-static {v0}, LGeneralFunction/m/a;->n(I)V

    goto/16 :goto_1

    .line 3778
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->G(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0202fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3779
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->H(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$48;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 3741
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100289 -> :sswitch_0
        0x7f10028d -> :sswitch_1
        0x7f100290 -> :sswitch_2
        0x7f100293 -> :sswitch_3
        0x7f100296 -> :sswitch_4
        0x7f100299 -> :sswitch_5
    .end sparse-switch
.end method
