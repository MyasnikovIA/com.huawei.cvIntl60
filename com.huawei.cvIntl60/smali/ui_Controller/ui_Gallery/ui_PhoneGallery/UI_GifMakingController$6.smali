.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/i/a/a$a;


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
    .line 746
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$6;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .prologue
    .line 749
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$6;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0x400000

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$6;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const-string v1, "ACTION CLICK"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;Ljava/lang/String;I)V

    .line 752
    packed-switch p1, :pswitch_data_0

    .line 765
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$6;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto :goto_0

    .line 757
    :pswitch_0
    new-instance v0, La/c/a;

    const/16 v1, 0x2b09

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 758
    const-string v1, "SelectPointer"

    invoke-virtual {v0, v1, p1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 759
    const-string v1, "Index"

    invoke-virtual {v0, v1, p2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 760
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$6;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(La/c/a;J)V

    goto :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
