.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aY()V
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
    .line 1511
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1515
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1516
    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a011c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1517
    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0090

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0095

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move v7, v1

    .line 1515
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    .line 1520
    return-void

    .line 1517
    nop

    :array_0
    .array-data 4
        0x0
        0x230b
    .end array-data
.end method
