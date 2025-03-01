.class Lui_Controller/ui_StartMode/UI_ModeMain$6;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_StartMode/UI_ModeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_StartMode/UI_ModeMain;


# direct methods
.method constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 0

    .prologue
    .line 1108
    iput-object p1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$6;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x2

    .line 1112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1135
    :goto_1
    return-void

    .line 1112
    :sswitch_0
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1115
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$6;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v2, "ACTION_MEDIA_MOUNTED"

    invoke-static {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;Ljava/lang/String;I)V

    .line 1117
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$6;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2f0e

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_1

    .line 1120
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$6;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v2, "ACTION_MEDIA_REMOVED"

    invoke-static {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;Ljava/lang/String;I)V

    .line 1122
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$6;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2f0f

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_1

    .line 1125
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$6;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v2, "ACTION_MEDIA_BAD_REMOVAL"

    invoke-static {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;Ljava/lang/String;I)V

    .line 1127
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$6;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2f10

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_1

    .line 1130
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$6;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v2, "ACTION_MEDIA_EJECT"

    invoke-static {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;Ljava/lang/String;I)V

    .line 1132
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$6;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2f11

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_1

    .line 1112
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6342a1e0 -> :sswitch_1
        -0x5a4113c8 -> :sswitch_0
        -0x254e496f -> :sswitch_3
        0x79e65f52 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
