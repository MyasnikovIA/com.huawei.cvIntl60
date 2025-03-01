.class Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;


# direct methods
.method constructor <init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$6;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 652
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 653
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$6;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-static {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 654
    return-void
.end method
