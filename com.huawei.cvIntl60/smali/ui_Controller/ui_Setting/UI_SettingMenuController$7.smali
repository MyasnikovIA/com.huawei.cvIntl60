.class Lui_Controller/ui_Setting/UI_SettingMenuController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;->C()V
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
    .line 870
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 873
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput p3, v0, Lui_Controller/b/f;->T:I

    .line 879
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    if-eqz v0, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->r:Z

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 885
    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 886
    invoke-virtual {v6}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v6}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0094

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 884
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto :goto_0

    .line 890
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0071

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$7;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 891
    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    .line 890
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 886
    :array_0
    .array-data 4
        0x2f07
        0x2429
    .end array-data
.end method
