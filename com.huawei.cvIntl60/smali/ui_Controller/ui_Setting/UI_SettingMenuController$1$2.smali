.class Lui_Controller/ui_Setting/UI_SettingMenuController$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingMenuController$1;


# direct methods
.method constructor <init>(Lui_Controller/ui_Setting/UI_SettingMenuController$1;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1$2;->a:Lui_Controller/ui_Setting/UI_SettingMenuController$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 449
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1$2;->a:Lui_Controller/ui_Setting/UI_SettingMenuController$1;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->e(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1$2;->a:Lui_Controller/ui_Setting/UI_SettingMenuController$1;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Lui_Controller/ui_Setting/UI_SettingMenuController;Z)V

    .line 451
    return-void
.end method
