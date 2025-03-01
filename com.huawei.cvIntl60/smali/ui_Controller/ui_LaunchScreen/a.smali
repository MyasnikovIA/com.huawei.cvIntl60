.class public Lui_Controller/ui_LaunchScreen/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;


# direct methods
.method public constructor <init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    .line 42
    iput-object p1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 36
    const-string v0, "UI_LaunchScreenHandler"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    .line 55
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 57
    :sswitch_0
    invoke-virtual {p0, p1}, Lui_Controller/ui_LaunchScreen/a;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 58
    :sswitch_1
    invoke-virtual {p0, p1}, Lui_Controller/ui_LaunchScreen/a;->c(Landroid/os/Message;)V

    goto :goto_0

    .line 55
    :sswitch_data_0
    .sparse-switch
        0xc10 -> :sswitch_0
        0xc20 -> :sswitch_1
    .end sparse-switch
.end method

.method public b(Landroid/os/Message;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    const/16 v3, 0x2900

    const/16 v1, 0xc20

    const/4 v2, 0x1

    .line 67
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 200
    :goto_0
    :sswitch_0
    return-void

    .line 73
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->c()V

    .line 74
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e()V

    .line 75
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->d()V

    .line 76
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->p()V

    .line 78
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/16 v1, 0x2909

    invoke-virtual {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(I)V

    .line 83
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/16 v1, 0x2903

    invoke-virtual {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(I)V

    goto :goto_0

    .line 96
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/16 v1, 0x2104

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(IJ)V

    .line 100
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->o()V

    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const-class v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v1, v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x400

    iget-object v3, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v1, v2, v3, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/16 v1, 0x2100

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(IJ)V

    .line 109
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->o()V

    .line 110
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const-class v2, Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v1, v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x100

    iget-object v3, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v1, v2, v3, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :sswitch_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 115
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->finish()V

    goto/16 :goto_0

    .line 118
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->k()V

    goto/16 :goto_0

    .line 121
    :sswitch_6
    const-string v0, "MSG_UI_LAUNCH_SCREEN_USB_INIT_DONE. Start checkNeedShowInstruction"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_LaunchScreen/a;->a(Ljava/lang/String;I)V

    .line 122
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->t()V

    .line 126
    :sswitch_7
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    .line 134
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 137
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->f()V

    goto/16 :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->o()V

    .line 142
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->n()V

    goto/16 :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/16 v1, 0x2902

    invoke-virtual {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(I)V

    goto/16 :goto_0

    .line 152
    :sswitch_8
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->l()V

    goto/16 :goto_0

    .line 156
    :sswitch_9
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    .line 163
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 166
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->f()V

    goto/16 :goto_0

    .line 170
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->o()V

    .line 171
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->n()V

    goto/16 :goto_0

    .line 177
    :sswitch_a
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->c(Z)V

    goto/16 :goto_0

    .line 183
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    const-string v1, "bPermissionAgreementChecked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 185
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->q()V

    goto/16 :goto_0

    .line 188
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(I)V

    goto/16 :goto_0

    .line 194
    :sswitch_c
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    const-string v1, "bPermissionAgreementChecked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(I)V

    goto/16 :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x2100 -> :sswitch_3
        0x2104 -> :sswitch_2
        0x2900 -> :sswitch_5
        0x2901 -> :sswitch_6
        0x2902 -> :sswitch_7
        0x2903 -> :sswitch_8
        0x2904 -> :sswitch_a
        0x2905 -> :sswitch_9
        0x2909 -> :sswitch_b
        0x2910 -> :sswitch_c
        0x2f00 -> :sswitch_4
        0x2f01 -> :sswitch_1
        0x2f02 -> :sswitch_0
        0x2f03 -> :sswitch_0
        0x2f04 -> :sswitch_0
        0x2f05 -> :sswitch_0
        0x2f06 -> :sswitch_0
    .end sparse-switch
.end method

.method public c(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 204
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 207
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_UI_LAUNCH_SCREEN_360_PLAYER_STATUS_UPDATE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lui_Controller/ui_LaunchScreen/a;->a(Ljava/lang/String;I)V

    .line 213
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v1, v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 217
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->f()V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Z)V

    .line 230
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b(Z)V

    goto :goto_0

    .line 235
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->i()V

    .line 236
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b(Z)V

    goto :goto_0

    .line 248
    :pswitch_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 249
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    .line 251
    iget-object v2, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v2, v2, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v2}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 252
    const-string v3, "previousTimeShowLaunchScreenVideo"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 254
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xc10

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 255
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->o()V

    .line 256
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->n()V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x2906
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 217
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public d(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 268
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 269
    new-instance v1, LGeneralFunction/g/b;

    invoke-direct {v1}, LGeneralFunction/g/b;-><init>()V

    sget-object v2, Lui_Controller/a/c;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, LGeneralFunction/g/b;->a(Ljava/io/InputStream;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 272
    const-string v1, "haveUnzipSample"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    new-instance v0, Ljava/io/File;

    sget-object v1, Lui_Controller/a/c;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/io/File;

    sget-object v1, Lui_Controller/a/c;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/io/File;

    sget-object v1, Lui_Controller/a/c;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CV60_Photo_1.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CV60_Photo_2.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CV60_Photo_3.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CV60_Video.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CV60_Edit_1.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CV60_Edit_2.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CV60_Edit_3.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->j()V

    .line 298
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    iget-object v0, v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 305
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/a;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(I)V

    goto/16 :goto_0

    .line 264
    nop

    :sswitch_data_0
    .sparse-switch
        0x5002 -> :sswitch_0
        0x501a -> :sswitch_1
    .end sparse-switch
.end method
