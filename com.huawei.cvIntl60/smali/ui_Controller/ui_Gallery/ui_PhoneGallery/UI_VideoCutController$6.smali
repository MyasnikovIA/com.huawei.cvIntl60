.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$6;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 802
    .line 804
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v1, v0

    move v2, v0

    .line 821
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 823
    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 825
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 827
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v3

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

    cmpg-float v0, v0, v3

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

    .line 829
    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 832
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 834
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 836
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 806
    :sswitch_0
    const v2, 0x7f0200d8

    .line 807
    const v0, 0x7f0200d7

    move v1, v0

    .line 808
    goto :goto_0

    .line 810
    :sswitch_1
    const v2, 0x7f0200e6

    .line 811
    const v0, 0x7f0200e5

    move v1, v0

    .line 812
    goto :goto_0

    .line 814
    :sswitch_2
    const v2, 0x7f0200da

    .line 815
    const v0, 0x7f0200d9

    move v1, v0

    .line 816
    goto :goto_0

    .line 804
    :sswitch_data_0
    .sparse-switch
        0x7f1003d8 -> :sswitch_0
        0x7f1003db -> :sswitch_1
        0x7f1003de -> :sswitch_2
    .end sparse-switch
.end method
