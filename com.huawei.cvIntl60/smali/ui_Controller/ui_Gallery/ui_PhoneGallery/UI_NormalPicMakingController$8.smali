.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;
.super Landroid/support/v7/widget/RecyclerView$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V
    .locals 0

    .prologue
    .line 1008
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 1011
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 1012
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 1016
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 1017
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 1018
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->f(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;F)F

    .line 1020
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->f(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)F

    move-result v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->g(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->f(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)F

    move-result v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->g(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;F)F

    .line 1022
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->f(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)F

    move-result v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->g(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1023
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->f(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)F

    move-result v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->g(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;F)F

    .line 1024
    :cond_1
    return-void
.end method
