###### Class ui_Controller.ui_LaunchScreen.MainActivity (ui_Controller.ui_LaunchScreen.MainActivity)
.class public Lui_Controller/ui_LaunchScreen/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method
