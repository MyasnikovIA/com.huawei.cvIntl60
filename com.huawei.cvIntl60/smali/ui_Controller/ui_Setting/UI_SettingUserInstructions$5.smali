.class Lui_Controller/ui_Setting/UI_SettingUserInstructions$5;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Setting/UI_SettingUserInstructions;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;


# direct methods
.method constructor <init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$5;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x1

    .line 386
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const/16 v0, 0x15e

    if-gt p1, v0, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_3

    .line 391
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$5;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->i(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$5;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c(I)V

    .line 394
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$5;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0, v1}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->a(Lui_Controller/ui_Setting/UI_SettingUserInstructions;I)I

    goto :goto_0

    .line 397
    :cond_3
    const/16 v0, 0xaa

    if-le p1, v0, :cond_0

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_0

    .line 398
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$5;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->i(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 400
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$5;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c(I)V

    .line 401
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$5;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v0, v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->a(Lui_Controller/ui_Setting/UI_SettingUserInstructions;I)I

    goto :goto_0
.end method
