.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/TabLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/TabLayout$f;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 732
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->fling(I)V

    .line 735
    :cond_0
    const-wide/16 v0, 0x32

    .line 737
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$f;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 756
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabLayout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;Ljava/lang/String;I)V

    .line 757
    return-void

    .line 740
    :pswitch_0
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x2350

    invoke-virtual {v2, v3, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 743
    :pswitch_1
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->a(I)V

    .line 744
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v2

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b()V

    .line 745
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x2351

    invoke-virtual {v2, v3, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 748
    :pswitch_2
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v2

    invoke-virtual {v2, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->a(I)V

    .line 749
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v2

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b()V

    .line 750
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$12;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x2352

    invoke-virtual {v2, v3, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/support/design/widget/TabLayout$f;)V
    .locals 0

    .prologue
    .line 762
    return-void
.end method

.method public c(Landroid/support/design/widget/TabLayout$f;)V
    .locals 0

    .prologue
    .line 767
    return-void
.end method
