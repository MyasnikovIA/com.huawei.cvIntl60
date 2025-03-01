.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;
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
    .line 2662
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$15;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 2665
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$15;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const-string v1, "ItemLongClick"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;Ljava/lang/String;I)V

    .line 2666
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$15;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->f:I

    if-eq v0, v3, :cond_0

    .line 2668
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$15;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v3, v0, Lui_Controller/b/e;->f:I

    .line 2669
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$15;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0, v3}, Lui_Controller/CustomWidget/a/a/a;->c(I)V

    .line 2670
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$15;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 2671
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$15;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f(Z)V

    .line 2672
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$15;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r(Z)V

    .line 2675
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$15;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0, p3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;I)V

    .line 2676
    return v4
.end method
