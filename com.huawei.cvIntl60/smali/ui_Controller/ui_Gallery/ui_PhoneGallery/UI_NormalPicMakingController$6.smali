.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;
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
    .line 811
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$6;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const v3, 0x7f0200e6

    const v0, 0x7f0200e5

    .line 813
    .line 815
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    move v3, v2

    .line 844
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 846
    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 848
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 850
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    move-object v0, p1

    .line 852
    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 855
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 857
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 859
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 817
    :pswitch_1
    const v2, 0x7f0200d8

    .line 818
    const v0, 0x7f0200d7

    move v1, v0

    move v3, v2

    .line 819
    goto :goto_0

    .line 821
    :pswitch_2
    const v2, 0x7f0200da

    .line 822
    const v0, 0x7f0200d9

    move v1, v0

    move v3, v2

    .line 823
    goto :goto_0

    :pswitch_3
    move v1, v0

    .line 827
    goto :goto_0

    :pswitch_4
    move v1, v0

    .line 831
    goto :goto_0

    :pswitch_5
    move v1, v0

    .line 835
    goto :goto_0

    :pswitch_6
    move v1, v0

    .line 839
    goto :goto_0

    .line 815
    :pswitch_data_0
    .packed-switch 0x7f1001a2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
