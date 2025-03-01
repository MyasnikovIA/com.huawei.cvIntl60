.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui_Controller/ui_Gallery/b$b;


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
    .line 3586
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 3589
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMainImageLoadDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;Ljava/lang/String;I)V

    .line 3590
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 3591
    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Lui_Controller/ui_Gallery/b;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/b;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3592
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 3594
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x423

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 3595
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x420

    if-ne v0, v1, :cond_2

    .line 3597
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->s:I

    .line 3599
    if-ne p1, v0, :cond_2

    .line 3601
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3603
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 3604
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->A:Z

    if-nez v0, :cond_2

    .line 3606
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->A:Z

    .line 3607
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x23b3

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    .line 3612
    :cond_2
    new-instance v0, La/c/a;

    const/16 v1, 0x238b

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 3613
    const-string v1, "update index"

    invoke-virtual {v0, v1, p1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 3614
    const-string v1, "update bitmap"

    new-instance v2, La/c/a$a;

    invoke-direct {v2, p2}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    .line 3615
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$25;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(La/c/a;J)V

    .line 3616
    return-void
.end method
