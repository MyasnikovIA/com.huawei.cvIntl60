.class Lui_Controller/ui_Setting/UI_SettingMenuController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;->A()V
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
    .line 741
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$6;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    const/4 v2, 0x0

    .line 744
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$6;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput p3, v0, Lui_Controller/b/f;->T:I

    .line 745
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$6;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    if-nez v0, :cond_1

    .line 747
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$6;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->l(Lui_Controller/ui_Setting/UI_SettingMenuController;)V

    .line 748
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$6;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->h(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$6;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 753
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$6;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->i(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
