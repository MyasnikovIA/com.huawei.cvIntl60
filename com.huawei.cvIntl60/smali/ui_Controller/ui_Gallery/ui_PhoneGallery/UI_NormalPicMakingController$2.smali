.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 482
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const v5, 0x7f0a0190

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 486
    long-to-int v0, p4

    packed-switch v0, :pswitch_data_0

    .line 505
    :goto_0
    return-void

    .line 489
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "objMoreSettingAdapter.getItem(0) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;Ljava/lang/String;I)V

    .line 490
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->a(ILjava/lang/String;)V

    .line 492
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b()V

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->a(ILjava/lang/String;)V

    .line 497
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
