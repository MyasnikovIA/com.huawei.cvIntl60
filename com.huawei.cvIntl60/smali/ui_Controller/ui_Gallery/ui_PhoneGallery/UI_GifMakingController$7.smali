.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/i/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;
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
    .line 771
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/32 v2, 0x400000

    const/4 v0, 0x1

    .line 774
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 806
    :pswitch_0
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v0

    .line 777
    :pswitch_1
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const-string v1, "ACTION DOWN"

    invoke-static {v0, v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;Ljava/lang/String;I)V

    .line 810
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 783
    :pswitch_2
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const-string v1, "ACTION UP"

    invoke-static {v0, v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;Ljava/lang/String;I)V

    goto :goto_1

    .line 788
    :pswitch_3
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const-string v1, "ACTION MOVE"

    invoke-static {v0, v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;Ljava/lang/String;I)V

    .line 791
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 795
    :pswitch_4
    new-instance v0, La/c/a;

    const/16 v1, 0x2b08

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 796
    const-string v1, "SelectPointer"

    invoke-virtual {v0, v1, p1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 797
    const-string v1, "Index"

    invoke-virtual {v0, v1, p2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 798
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(La/c/a;J)V

    goto :goto_1

    .line 774
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 791
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
