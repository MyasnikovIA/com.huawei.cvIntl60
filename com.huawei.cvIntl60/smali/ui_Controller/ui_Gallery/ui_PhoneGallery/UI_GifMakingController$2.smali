.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1094
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const-wide/32 v2, 0x200000

    const-wide/16 v4, 0x0

    .line 1097
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1145
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const-string v1, "error press"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;Ljava/lang/String;I)V

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1099
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n()V

    goto :goto_0

    .line 1102
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const v1, 0x8000

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto :goto_0

    .line 1107
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0x800000

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2b04

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto :goto_0

    .line 1112
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2b03

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto :goto_0

    .line 1117
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2b00

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto :goto_0

    .line 1122
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2b02

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto :goto_0

    .line 1127
    :sswitch_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2b0e

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto :goto_0

    .line 1130
    :sswitch_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2b05

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto :goto_0

    .line 1133
    :sswitch_8
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2b06

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto :goto_0

    .line 1136
    :sswitch_9
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2b07

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto/16 :goto_0

    .line 1139
    :sswitch_a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2b0f

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto/16 :goto_0

    .line 1142
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$2;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2b0d

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto/16 :goto_0

    .line 1097
    :sswitch_data_0
    .sparse-switch
        0x7f100241 -> :sswitch_0
        0x7f100248 -> :sswitch_1
        0x7f10024a -> :sswitch_4
        0x7f10024c -> :sswitch_5
        0x7f10024e -> :sswitch_3
        0x7f100250 -> :sswitch_2
        0x7f100255 -> :sswitch_6
        0x7f100256 -> :sswitch_7
        0x7f100257 -> :sswitch_8
        0x7f100258 -> :sswitch_9
        0x7f100259 -> :sswitch_a
        0x7f100260 -> :sswitch_b
    .end sparse-switch
.end method
