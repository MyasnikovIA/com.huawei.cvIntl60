.class Lui_Controller/ui_Setting/UI_SettingMenuController$a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingMenuController;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lui_Controller/ui_Setting/UI_SettingMenuController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 815
    iput-object p2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$a;->b:Ljava/lang/String;

    .line 816
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Lui_Controller/ui_Setting/UI_SettingMenuController;Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 820
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 821
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 822
    return-void
.end method
