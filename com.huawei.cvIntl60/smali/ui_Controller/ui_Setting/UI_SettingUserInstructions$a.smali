.class Lui_Controller/ui_Setting/UI_SettingUserInstructions$a;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Setting/UI_SettingUserInstructions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;


# direct methods
.method constructor <init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$a;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 239
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$a;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 240
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$a;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$a;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$a;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 227
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method
