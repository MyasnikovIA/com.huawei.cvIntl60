.class Lui_Controller/ui_Setting/UI_SettingUserInstructions$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;


# direct methods
.method constructor <init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$3;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$3;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->a(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$3;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$3;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->a(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$3;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->a(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
