.class Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$9;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;


# direct methods
.method constructor <init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$9;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x1

    .line 693
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    const/16 v0, 0x15e

    if-gt p1, v0, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_3

    .line 698
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$9;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-static {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$9;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->setRequestedOrientation(I)V

    .line 701
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$9;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-static {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;I)I

    goto :goto_0

    .line 704
    :cond_3
    const/16 v0, 0xaa

    if-le p1, v0, :cond_0

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_0

    .line 706
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$9;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-static {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 708
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$9;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->setRequestedOrientation(I)V

    .line 709
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$9;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-static {v0, v2}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;I)I

    goto :goto_0
.end method
