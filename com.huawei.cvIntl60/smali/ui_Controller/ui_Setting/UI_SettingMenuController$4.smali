.class Lui_Controller/ui_Setting/UI_SettingMenuController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingMenuController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Setting/UI_SettingMenuController;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 509
    :goto_0
    return-void

    .line 468
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x2100

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto :goto_0

    .line 471
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->e(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->d(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->h(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 476
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->e(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->g(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->h(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 481
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->e(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->d(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->g(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->i(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->h(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 488
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->e(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->d(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->i(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->h(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->g(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 502
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->j(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$4;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->g(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 466
    :sswitch_data_0
    .sparse-switch
        0x7f100357 -> :sswitch_0
        0x7f10035b -> :sswitch_1
        0x7f10035f -> :sswitch_2
        0x7f100367 -> :sswitch_3
        0x7f10036b -> :sswitch_5
        0x7f10036f -> :sswitch_4
    .end sparse-switch
.end method
