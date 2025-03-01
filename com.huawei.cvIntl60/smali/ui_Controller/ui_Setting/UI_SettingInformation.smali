.class public Lui_Controller/ui_Setting/UI_SettingInformation;
.super LGeneralFunction/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, LGeneralFunction/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, LGeneralFunction/a/a;->onBackPressed()V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lui_Controller/ui_Setting/UI_SettingInformation;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingInformation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingInformation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    const v0, 0x7f100355

    invoke-virtual {p0, v0}, Lui_Controller/ui_Setting/UI_SettingInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 23
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 27
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 28
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 29
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 30
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 31
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 33
    const v0, 0x7f100354

    invoke-virtual {p0, v0}, Lui_Controller/ui_Setting/UI_SettingInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lui_Controller/ui_Setting/UI_SettingInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lui_Controller/ui_Setting/UI_SettingInformation$1;

    invoke-direct {v1, p0}, Lui_Controller/ui_Setting/UI_SettingInformation$1;-><init>(Lui_Controller/ui_Setting/UI_SettingInformation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
