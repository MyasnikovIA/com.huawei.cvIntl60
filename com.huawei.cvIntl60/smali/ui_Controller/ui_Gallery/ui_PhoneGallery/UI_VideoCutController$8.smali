.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x9

    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 886
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    const/16 v0, 0x15e

    if-gt p1, v0, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_3

    .line 891
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 893
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->f(I)V

    .line 894
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;I)I

    goto :goto_0

    .line 897
    :cond_3
    const/16 v0, 0x50

    if-le p1, v0, :cond_4

    const/16 v0, 0x64

    if-ge p1, v0, :cond_4

    .line 898
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 900
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->f(I)V

    .line 901
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;I)I

    goto :goto_0

    .line 904
    :cond_4
    const/16 v0, 0xaa

    if-le p1, v0, :cond_5

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_5

    .line 905
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 907
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->f(I)V

    .line 908
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;I)I

    goto :goto_0

    .line 911
    :cond_5
    const/16 v0, 0x104

    if-le p1, v0, :cond_0

    const/16 v0, 0x118

    if-ge p1, v0, :cond_0

    .line 912
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->f(I)V

    .line 915
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;I)I

    goto :goto_0
.end method
