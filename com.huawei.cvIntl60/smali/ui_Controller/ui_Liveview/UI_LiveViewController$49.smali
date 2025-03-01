.class Lui_Controller/ui_Liveview/UI_LiveViewController$49;
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
    .line 3849
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

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

    const/4 v2, 0x0

    const v4, 0x7f0202f7

    .line 3853
    move v1, v2

    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->I(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3855
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, -0xe8e8e9

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 3856
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3853
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3859
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3906
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10029c

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1002a0

    if-ne v0, v1, :cond_2

    .line 3907
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0202fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3908
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->M(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3914
    :goto_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2237

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 3915
    return-void

    .line 3861
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3862
    invoke-static {v2}, LGeneralFunction/m/a;->o(I)V

    .line 3863
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->K(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->K(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->K(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 3866
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3867
    invoke-static {v2}, LGeneralFunction/m/a;->o(I)V

    goto/16 :goto_1

    .line 3870
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3871
    invoke-static {v5}, LGeneralFunction/m/a;->o(I)V

    goto/16 :goto_1

    .line 3874
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3875
    invoke-static {v6}, LGeneralFunction/m/a;->o(I)V

    goto/16 :goto_1

    .line 3878
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3879
    invoke-static {v7}, LGeneralFunction/m/a;->o(I)V

    goto/16 :goto_1

    .line 3882
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3883
    const/4 v0, 0x4

    invoke-static {v0}, LGeneralFunction/m/a;->o(I)V

    goto/16 :goto_1

    .line 3886
    :sswitch_6
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3887
    const/4 v0, 0x5

    invoke-static {v0}, LGeneralFunction/m/a;->o(I)V

    goto/16 :goto_1

    .line 3890
    :sswitch_7
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3891
    const/4 v0, 0x6

    invoke-static {v0}, LGeneralFunction/m/a;->o(I)V

    goto/16 :goto_1

    .line 3894
    :sswitch_8
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3895
    const/4 v0, 0x7

    invoke-static {v0}, LGeneralFunction/m/a;->o(I)V

    goto/16 :goto_1

    .line 3898
    :sswitch_9
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J(Lui_Controller/ui_Liveview/UI_LiveViewController;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3899
    const/16 v0, 0x8

    invoke-static {v0}, LGeneralFunction/m/a;->o(I)V

    goto/16 :goto_1

    .line 3911
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0202fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3912
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->M(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$49;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 3859
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10029c -> :sswitch_0
        0x7f1002a0 -> :sswitch_1
        0x7f1002a3 -> :sswitch_2
        0x7f1002a6 -> :sswitch_3
        0x7f1002a9 -> :sswitch_4
        0x7f1002ac -> :sswitch_5
        0x7f1002af -> :sswitch_6
        0x7f1002b2 -> :sswitch_7
        0x7f1002b5 -> :sswitch_8
        0x7f1002b8 -> :sswitch_9
    .end sparse-switch
.end method
