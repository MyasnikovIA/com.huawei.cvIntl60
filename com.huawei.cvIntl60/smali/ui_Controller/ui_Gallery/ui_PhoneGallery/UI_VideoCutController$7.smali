.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 841
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 844
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 865
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const-string v1, "error press"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;Ljava/lang/String;I)V

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 846
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const v1, 0x8000

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    goto :goto_0

    .line 851
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0x800000

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 854
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v1, 0x2b43

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    goto :goto_0

    .line 857
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0x200000

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v1, 0x2b42

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    goto :goto_0

    .line 862
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v1, 0x2b45

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    goto :goto_0

    .line 844
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1003d8 -> :sswitch_0
        0x7f1003db -> :sswitch_1
        0x7f1003de -> :sswitch_2
        0x7f1003e9 -> :sswitch_3
    .end sparse-switch
.end method
