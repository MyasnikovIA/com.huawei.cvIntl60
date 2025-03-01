.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 828
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 836
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->e:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-static {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;)I

    move-result v1

    div-int/2addr v0, v1

    .line 837
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAA t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-static {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;Ljava/lang/String;I)V

    .line 838
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->e:I

    add-int/lit8 v1, v1, -0x5

    if-le v0, v1, :cond_0

    .line 839
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->e:I

    add-int/lit8 v1, v1, -0xa

    iput v1, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n:I

    .line 844
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->m()V

    .line 846
    return v4

    .line 840
    :cond_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 841
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iput v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n:I

    goto :goto_0

    .line 843
    :cond_1
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    add-int/lit8 v0, v0, -0x5

    iput v0, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n:I

    goto :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
