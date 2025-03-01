.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$3;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1153
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$3;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x1

    .line 1156
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    const/16 v0, 0x15e

    if-gt p1, v0, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_3

    .line 1161
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$3;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1163
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$3;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->f(I)V

    .line 1164
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$3;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;I)I

    goto :goto_0

    .line 1167
    :cond_3
    const/16 v0, 0xaa

    if-le p1, v0, :cond_0

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_0

    .line 1168
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$3;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1170
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$3;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->f(I)V

    .line 1171
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$3;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-static {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;I)I

    goto :goto_0
.end method
