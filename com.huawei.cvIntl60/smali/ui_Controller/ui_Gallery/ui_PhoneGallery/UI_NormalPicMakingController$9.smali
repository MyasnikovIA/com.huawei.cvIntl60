.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$9;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$9;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x1

    .line 1102
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    const/16 v0, 0x15e

    if-gt p1, v0, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_3

    .line 1107
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$9;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->h(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1109
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$9;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d(I)V

    .line 1110
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$9;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;I)I

    goto :goto_0

    .line 1113
    :cond_3
    const/16 v0, 0xaa

    if-le p1, v0, :cond_0

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_0

    .line 1114
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$9;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->h(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1116
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$9;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d(I)V

    .line 1117
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$9;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;I)I

    goto :goto_0
.end method
