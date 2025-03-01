.class Lui_Controller/ui_Setting/UI_SettingMenuController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;->d(I)V
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
    .line 639
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$5;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

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
    .line 643
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$5;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput p3, v0, Lui_Controller/b/f;->U:I

    .line 645
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$5;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$5;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->U:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$5;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->ad:Z

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$5;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-string v1, "MEMORY_CARD is disable"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Lui_Controller/ui_Setting/UI_SettingMenuController;Ljava/lang/String;I)V

    .line 657
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$5;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->k(Lui_Controller/ui_Setting/UI_SettingMenuController;)Lui_Controller/ui_Setting/UI_SettingMenuController$e;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p1}, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 654
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$5;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->i()V

    goto :goto_0
.end method
