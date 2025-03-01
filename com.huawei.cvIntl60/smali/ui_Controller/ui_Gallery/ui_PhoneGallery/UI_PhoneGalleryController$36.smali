.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->bl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 5448
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/16 v3, 0x9

    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 5451
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 5452
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    invoke-static {v0}, Lui_Controller/a/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5454
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->n(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)V

    .line 5504
    :cond_0
    :goto_0
    return-void

    .line 5459
    :cond_1
    const/16 v0, 0x15e

    if-gt p1, v0, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_4

    .line 5460
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 5461
    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->N:I

    if-eq v0, v5, :cond_0

    .line 5464
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->l(I)V

    .line 5465
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;I)I

    .line 5466
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iput v1, v0, Lui_Controller/b/b;->k:I

    goto :goto_0

    .line 5469
    :cond_4
    const/16 v0, 0x50

    if-le p1, v0, :cond_5

    const/16 v0, 0x64

    if-ge p1, v0, :cond_5

    .line 5470
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 5472
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    invoke-static {v0}, Lui_Controller/a/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5474
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->l(I)V

    .line 5475
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;I)I

    .line 5476
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iput v2, v0, Lui_Controller/b/b;->k:I

    goto :goto_0

    .line 5480
    :cond_5
    const/16 v0, 0xaa

    if-le p1, v0, :cond_7

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_7

    .line 5481
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 5482
    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->N:I

    if-eq v0, v5, :cond_0

    .line 5485
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->l(I)V

    .line 5486
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;I)I

    .line 5487
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iput v3, v0, Lui_Controller/b/b;->k:I

    goto/16 :goto_0

    .line 5490
    :cond_7
    const/16 v0, 0x104

    if-le p1, v0, :cond_0

    const/16 v0, 0x118

    if-ge p1, v0, :cond_0

    .line 5491
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5493
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    invoke-static {v0}, Lui_Controller/a/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5495
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->l(I)V

    .line 5496
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;I)I

    .line 5497
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$36;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iput v4, v0, Lui_Controller/b/b;->k:I

    goto/16 :goto_0
.end method
