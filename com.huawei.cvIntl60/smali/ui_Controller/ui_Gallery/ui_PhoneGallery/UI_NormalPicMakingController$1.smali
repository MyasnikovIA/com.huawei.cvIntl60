.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->o()V
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
    .line 472
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$1;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 475
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$1;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    const-string v1, "AAA"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;Ljava/lang/String;I)V

    .line 476
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$1;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$1;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    const/4 v0, 0x1

    return v0
.end method
