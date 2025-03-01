.class Lui_Controller/ui_Setting/UI_SettingInformation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Setting/UI_SettingInformation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingInformation;


# direct methods
.method constructor <init>(Lui_Controller/ui_Setting/UI_SettingInformation;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingInformation$1;->a:Lui_Controller/ui_Setting/UI_SettingInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingInformation$1;->a:Lui_Controller/ui_Setting/UI_SettingInformation;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingInformation;->onBackPressed()V

    .line 38
    return-void
.end method
