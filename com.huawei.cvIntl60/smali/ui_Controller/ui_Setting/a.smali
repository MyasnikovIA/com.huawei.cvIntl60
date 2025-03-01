.class public Lui_Controller/ui_Setting/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_Setting/UI_SettingMenuController;


# direct methods
.method public constructor <init>(Lui_Controller/ui_Setting/UI_SettingMenuController;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 52
    iput-object p1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 53
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 687
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/4 v1, 0x0

    iput-object v1, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->f:Landroid/os/PowerManager$WakeLock;

    .line 689
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 46
    const-string v0, "UI_SettingMenuHandler"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 693
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 694
    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 695
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->a()V

    .line 697
    :cond_0
    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const v2, 0x2000000a

    const-string v3, "Lexiconda"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->f:Landroid/os/PowerManager$WakeLock;

    .line 698
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 699
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    .line 65
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-virtual {p0, p1}, Lui_Controller/ui_Setting/a;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x810
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/16 v6, 0x2f07

    const/4 v8, 0x2

    const v9, 0x7f0a0091

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v4, La/c/a;

    invoke-direct {v4, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 538
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 81
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0134

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Please select SD card and DCIM folder"

    iget-object v5, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 83
    invoke-virtual {v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 88
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "CaptureSetting"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput-boolean v1, v0, Lui_Controller/b/f;->X:Z

    .line 92
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput-boolean v2, v0, Lui_Controller/b/f;->X:Z

    goto :goto_1

    .line 97
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v0, v0, Lui_Controller/b/j;->d:Z

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 99
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->d:Z

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ak:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->t:Z

    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ak:I

    .line 105
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x2429

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    .line 107
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x480c

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 112
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x480d

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 115
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->t:Z

    if-nez v0, :cond_4

    .line 116
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x480b

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 119
    :cond_4
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->a()V

    goto/16 :goto_0

    .line 128
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->X:Z

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2100

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 131
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x210c

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 135
    :sswitch_6
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->q:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->e:Z

    .line 137
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 139
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v1, v0, Lui_Controller/b/j;->d:Z

    goto/16 :goto_0

    .line 146
    :sswitch_7
    const-string v0, "usb_permission"

    invoke-virtual {v4, v0}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "has permission, need to switch to live view"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 148
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->d:Z

    .line 149
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2100

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 155
    :sswitch_8
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f00

    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 159
    :sswitch_9
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v2, v0, Lui_Controller/b/h;->a:I

    .line 160
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-boolean v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->g:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iput-boolean v2, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->g:Z

    goto/16 :goto_0

    .line 165
    :sswitch_a
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->q:Z

    if-nez v0, :cond_0

    .line 166
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v4}, La/c/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v3, "AppMode"

    invoke-virtual {v4, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0, v3, v4, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 168
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 169
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 173
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v0, v0, Lui_Controller/b/j;->f:Z

    if-nez v0, :cond_6

    .line 174
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x2100

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(IJ)V

    goto/16 :goto_0

    .line 177
    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-class v3, Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x100

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1, v3, v4, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 179
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 180
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 183
    :sswitch_c
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-class v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x400

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1, v3, v4, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 185
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 186
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 189
    :sswitch_d
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(LGeneralFunction/a/a;)V

    .line 190
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 191
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 194
    :sswitch_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    :try_start_0
    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v0, "Intent settings fail"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 202
    :sswitch_f
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->i()V

    goto/16 :goto_0

    .line 205
    :sswitch_10
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 209
    :sswitch_11
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iput-boolean v2, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->g:Z

    .line 210
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(ZLjava/lang/String;)V

    .line 211
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->k()V

    .line 213
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    const-string v1, "currentMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    const-string v1, "pipMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->j()V

    .line 218
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->c()V

    .line 219
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->d()Lui_Controller/ui_Setting/UI_SettingMenuController$d;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b()V

    .line 221
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x241e

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 226
    :sswitch_12
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :sswitch_13
    invoke-static {v1}, LGeneralFunction/m/a;->c(Z)V

    .line 231
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x2104

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(IJ)V

    goto/16 :goto_0

    .line 234
    :sswitch_14
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x12e

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI_SettingControl.GetCaptureType(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, LGeneralFunction/m/a;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 236
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x100

    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 237
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x220b

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(IJ)V

    goto/16 :goto_0

    .line 242
    :sswitch_15
    const-string v0, "MSG_REMOTE_USB_CORE_DETACH"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 243
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(Z)V

    .line 244
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v1}, La/c/d;->b()Z

    move-result v1

    iput-boolean v1, v0, Lui_Controller/b/f;->ac:Z

    .line 245
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput-boolean v2, v0, Lui_Controller/b/f;->t:Z

    .line 246
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(ZLjava/lang/String;)V

    .line 247
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->m()V

    .line 248
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->e()V

    .line 249
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-boolean v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->g:Z

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 251
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iput-boolean v2, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->g:Z

    .line 253
    :cond_7
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->a()V

    goto/16 :goto_0

    .line 257
    :sswitch_16
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 258
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0171

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0172

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 259
    invoke-virtual {v6}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v6}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 258
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 263
    :sswitch_17
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n()V

    goto/16 :goto_0

    .line 266
    :sswitch_18
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 267
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0171

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0173

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 268
    invoke-virtual {v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput v2, v0, Lui_Controller/b/f;->T:I

    .line 270
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput v2, v0, Lui_Controller/b/f;->U:I

    .line 271
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->i()V

    goto/16 :goto_0

    .line 275
    :sswitch_19
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0137

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 277
    invoke-virtual {v6}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0093

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    move v2, v1

    .line 276
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 281
    :sswitch_1a
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->l()I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v3}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "hotaApkSize"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(II)V

    goto/16 :goto_0

    .line 284
    :sswitch_1b
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->a()V

    .line 285
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Z)V

    .line 286
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v2, v0, Lui_Controller/b/f;->q:Z

    .line 287
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 288
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a014e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a014c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 289
    invoke-virtual {v6}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    move v2, v1

    .line 288
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 293
    :sswitch_1c
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->a()V

    .line 294
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Z)V

    .line 295
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v2, v0, Lui_Controller/b/f;->q:Z

    .line 296
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x241f

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    goto/16 :goto_0

    .line 299
    :sswitch_1d
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "hotaOptimization"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a004e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 301
    invoke-virtual {v6}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 302
    invoke-virtual {v6}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v6}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0094

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_3

    .line 300
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 307
    :sswitch_1e
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->b()V

    .line 308
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput-boolean v2, v0, Lui_Controller/b/f;->t:Z

    .line 310
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->q()V

    .line 311
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n0%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(ZLjava/lang/String;)V

    .line 312
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x5001

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(I)V

    goto/16 :goto_0

    .line 318
    :sswitch_1f
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ak:I

    .line 319
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v3, v3, Lui_Controller/b/k;->af:Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Ljava/io/FileInputStream;)V

    .line 320
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(ZLjava/lang/String;)V

    .line 321
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 322
    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 321
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->a()V

    goto/16 :goto_0

    .line 328
    :sswitch_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start send FW, lCurrentDataPartId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v3, Lui_Controller/b/k;->ak:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 329
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ak:I

    if-le v0, v1, :cond_9

    .line 330
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 331
    const-string v0, "Already start sending FW, ignore start sending msg"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 334
    :cond_8
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x242a

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    goto/16 :goto_0

    .line 338
    :cond_9
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ai:I

    .line 340
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    new-instance v1, La/c/a;

    const/16 v2, 0x4818

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, La/c/d;->a(La/c/a;)V

    goto/16 :goto_0

    .line 345
    :sswitch_21
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 346
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FPUPDATE.DAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x242c

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    goto/16 :goto_0

    .line 349
    :cond_a
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 350
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4877

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 352
    :cond_b
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 355
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(ZLjava/lang/String;)V

    .line 356
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ak:I

    .line 357
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 358
    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->a()V

    goto/16 :goto_0

    .line 366
    :sswitch_22
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ah:I

    new-array v3, v0, [B

    .line 368
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ak:I

    if-nez v0, :cond_c

    .line 369
    const-string v0, "Send FW interrupted!"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 373
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filesize ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), SendDataSize ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ai:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 374
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ag:I

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ai:I

    if-gt v0, v1, :cond_e

    .line 375
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->u:Z

    if-eqz v0, :cond_d

    .line 377
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x501d

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(I)V

    .line 378
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x5017

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(I)V

    goto/16 :goto_0

    .line 381
    :cond_d
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x5005

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(I)V

    goto/16 :goto_0

    .line 385
    :cond_e
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ag:I

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ai:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ah:I

    if-lt v0, v1, :cond_f

    .line 386
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ah:I

    move v1, v0

    .line 391
    :goto_2
    :try_start_1
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->af:Ljava/io/FileInputStream;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    :goto_3
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v4, v0, Lui_Controller/b/k;->ai:I

    add-int/2addr v4, v1

    iput v4, v0, Lui_Controller/b/k;->ai:I

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileSize "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v4, v4, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v4, v4, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v4, v4, Lui_Controller/b/k;->ag:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " lCurrentSendDataSize "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v4, v4, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v4, v4, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v4, v4, Lui_Controller/b/k;->ai:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 399
    new-instance v0, La/a/a/c;

    invoke-direct {v0}, La/a/a/c;-><init>()V

    .line 400
    iput-object v3, v0, La/a/a/c;->f:[B

    .line 401
    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v3, Lui_Controller/b/k;->aj:I

    iput v3, v0, La/a/a/c;->e:I

    .line 402
    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v4, v3, Lui_Controller/b/k;->ak:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lui_Controller/b/k;->ak:I

    iput v4, v0, La/a/a/c;->b:I

    .line 403
    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v3, Lui_Controller/b/k;->ag:I

    iput v3, v0, La/a/a/c;->d:I

    .line 404
    iput v1, v0, La/a/a/c;->c:I

    .line 405
    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v1, v1, Lui_Controller/b/k;->al:[B

    iput-object v1, v0, La/a/a/c;->a:[B

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send FW Data - TotalPart: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, La/a/a/c;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", PartID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, La/a/a/c;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", TotalSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, La/a/a/c;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", TransferSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, La/a/a/c;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 408
    iget v1, v0, La/a/a/c;->b:I

    mul-int/lit8 v1, v1, 0x50

    iget v2, v0, La/a/a/c;->e:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Ljava/lang/String;)V

    .line 412
    new-instance v1, La/c/a;

    const/16 v2, 0x4860

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    .line 413
    const-string v2, "FWImage"

    new-instance v3, La/c/a$a;

    invoke-direct {v3, v0}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    .line 414
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 388
    :cond_f
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ag:I

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ai:I

    sub-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_2

    .line 392
    :catch_1
    move-exception v0

    .line 393
    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v5, 0x242a

    invoke-virtual {v4, v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    .line 394
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 420
    :sswitch_23
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 421
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x242c

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    goto/16 :goto_0

    .line 423
    :cond_10
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 426
    const-string v0, "*****Send FW data ERROR*****"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 427
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x242a

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    goto/16 :goto_0

    .line 433
    :sswitch_24
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ak:I

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ak:I

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->aj:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x55

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :sswitch_25
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x242e

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    goto/16 :goto_0

    .line 449
    :sswitch_26
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4819

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 450
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v1, v1, Lui_Controller/b/k;->af:Ljava/io/FileInputStream;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Ljava/io/FileInputStream;)V

    goto/16 :goto_0

    .line 455
    :sswitch_27
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 457
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput-boolean v1, v0, Lui_Controller/b/f;->t:Z

    .line 458
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->u:Z

    if-nez v0, :cond_11

    .line 459
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x5017

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(I)V

    .line 461
    :cond_11
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x481a

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 463
    :cond_12
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_13

    .line 464
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4878

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 466
    :cond_13
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 469
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(ZLjava/lang/String;)V

    .line 470
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ak:I

    .line 471
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a007a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 472
    invoke-virtual {v7}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0076

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "result"

    invoke-virtual {v4, v7}, La/c/a;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 473
    invoke-virtual {v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 471
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 475
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->a()V

    goto/16 :goto_0

    .line 481
    :sswitch_28
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a007c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n100%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ak:I

    .line 485
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x242f

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(IJ)V

    .line 486
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->a()V

    goto/16 :goto_0

    .line 488
    :cond_14
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_15

    .line 489
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4879

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 491
    :cond_15
    const-string v0, "result"

    invoke-virtual {v4, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 494
    const-string v0, "FW update fail!"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 496
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ak:I

    .line 497
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(ZLjava/lang/String;)V

    .line 498
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 499
    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0078

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 500
    invoke-virtual {v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 498
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 502
    invoke-direct {p0}, Lui_Controller/ui_Setting/a;->a()V

    goto/16 :goto_0

    .line 508
    :sswitch_29
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(ZLjava/lang/String;)V

    .line 509
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 510
    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0072

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 511
    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move v7, v1

    .line 509
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 519
    :sswitch_2a
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->g()V

    goto/16 :goto_0

    .line 525
    :sswitch_2b
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput-boolean v2, v0, Lui_Controller/b/f;->ad:Z

    goto/16 :goto_0

    .line 530
    :sswitch_2c
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->f()V

    goto/16 :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x2100 -> :sswitch_b
        0x2101 -> :sswitch_d
        0x2104 -> :sswitch_c
        0x2114 -> :sswitch_e
        0x2230 -> :sswitch_14
        0x2400 -> :sswitch_f
        0x2404 -> :sswitch_11
        0x2412 -> :sswitch_13
        0x2415 -> :sswitch_16
        0x2416 -> :sswitch_17
        0x2418 -> :sswitch_18
        0x241a -> :sswitch_1a
        0x241b -> :sswitch_1b
        0x241e -> :sswitch_12
        0x241f -> :sswitch_19
        0x2424 -> :sswitch_1c
        0x2426 -> :sswitch_1d
        0x2429 -> :sswitch_1e
        0x242a -> :sswitch_1f
        0x242b -> :sswitch_20
        0x242c -> :sswitch_22
        0x242d -> :sswitch_24
        0x242e -> :sswitch_26
        0x242f -> :sswitch_29
        0x2f00 -> :sswitch_10
        0x2f01 -> :sswitch_2
        0x2f02 -> :sswitch_3
        0x2f03 -> :sswitch_4
        0x2f04 -> :sswitch_0
        0x2f05 -> :sswitch_0
        0x2f06 -> :sswitch_0
        0x2f07 -> :sswitch_9
        0x2f08 -> :sswitch_1
        0x2f0a -> :sswitch_8
        0x2f0b -> :sswitch_a
        0x2f0e -> :sswitch_2a
        0x2f0f -> :sswitch_2b
        0x2f10 -> :sswitch_2b
        0x2f11 -> :sswitch_2c
        0x4803 -> :sswitch_15
        0x4804 -> :sswitch_6
        0x4805 -> :sswitch_7
        0x4856 -> :sswitch_25
        0x485b -> :sswitch_25
        0x4860 -> :sswitch_23
        0x4877 -> :sswitch_21
        0x4878 -> :sswitch_27
        0x4879 -> :sswitch_28
        0x8000 -> :sswitch_5
    .end sparse-switch

    .line 259
    :array_0
    .array-data 4
        0x2418
        0x2416
    .end array-data

    .line 277
    :array_1
    .array-data 4
        0x2f07
        0x2114
    .end array-data

    .line 289
    :array_2
    .array-data 4
        0x2f07
        0x241d
    .end array-data

    .line 302
    :array_3
    .array-data 4
        0x2421
        0x2422
    .end array-data
.end method

.method public c(Landroid/os/Message;)V
    .locals 13

    .prologue
    const/16 v12, 0x242d

    const/16 v5, 0x242a

    const/4 v11, -0x1

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 542
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 545
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v1, 0x242b

    invoke-virtual {v0, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    goto :goto_0

    .line 549
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0, v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    goto :goto_0

    .line 555
    :sswitch_1
    const-string v0, "MSG_AID_SETUP_CAMERA_UPGRADE_COMPUTE_CHECKSUM"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 556
    const-wide/16 v4, 0x0

    .line 557
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ag:I

    div-int/lit8 v0, v0, 0x14

    .line 559
    const/4 v9, 0x4

    .line 560
    new-array v10, v0, [B

    .line 561
    const/4 v1, 0x0

    .line 563
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "FPUPDATE.DAT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :try_start_1
    invoke-virtual {v3, v10}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v2

    move v7, v2

    move v8, v6

    move-wide v0, v4

    .line 565
    :goto_1
    if-eq v7, v11, :cond_4

    :try_start_2
    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, v2, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v2, v2, Lui_Controller/b/k;->ak:I

    if-eqz v2, :cond_4

    move v2, v6

    .line 566
    :goto_2
    if-ge v2, v7, :cond_2

    .line 567
    aget-byte v4, v10, v2

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 569
    :cond_2
    invoke-virtual {v3, v10}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 570
    add-int/lit8 v4, v8, 0x1

    .line 571
    if-eq v2, v11, :cond_e

    if-ne v4, v9, :cond_e

    .line 572
    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v4, v4, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v4, v4, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v4, v4, Lui_Controller/b/k;->ak:I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a()I

    move-result v4

    if-eqz v4, :cond_7

    .line 573
    :cond_3
    const-string v2, "MSG_AID_SETUP_CAMERA_UPGRADE_COMPUTE_CHECKSUM interrupted"

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 584
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 587
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 593
    :cond_5
    :goto_4
    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, v2, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v2, v2, Lui_Controller/b/k;->ak:I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a()I

    move-result v2

    if-eqz v2, :cond_8

    .line 594
    :cond_6
    const-string v0, "MSG_AID_SETUP_CAMERA_UPGRADE_COMPUTE_CHECKSUM interrupted"

    invoke-direct {p0, v0, v6}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 576
    :cond_7
    :try_start_4
    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const/16 v5, 0x242d

    invoke-virtual {v4, v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    .line 577
    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v4, v4, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v4, v4, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v5, v4, Lui_Controller/b/k;->ak:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lui_Controller/b/k;->ak:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    move v7, v2

    move v8, v6

    .line 578
    goto :goto_1

    .line 581
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    .line 582
    :goto_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-wide v0, v4

    goto :goto_3

    .line 588
    :catch_1
    move-exception v2

    .line 589
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 598
    :cond_8
    const-wide/16 v2, 0x100

    rem-long/2addr v0, v2

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v3, Lui_Controller/b/k;->ag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Checksum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 601
    new-instance v2, La/c/a;

    const/16 v3, 0x4856

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    .line 602
    const-string v3, "data_size"

    iget-object v4, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v4, v4, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v4, v4, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v4, v4, Lui_Controller/b/k;->ag:I

    invoke-virtual {v2, v3, v4}, La/c/a;->a(Ljava/lang/String;I)V

    .line 603
    const-string v3, "check_sum"

    long-to-int v0, v0

    invoke-virtual {v2, v3, v0}, La/c/a;->a(Ljava/lang/String;I)V

    .line 604
    const-string v0, "file_name"

    const-string v1, "FPUPDATE.DAT"

    invoke-virtual {v2, v0, v1}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 610
    :sswitch_2
    const-string v0, "MSG_AID_SETUP_CAMERA_UPGRADE_COMPUTE_SHA256"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 611
    const-string v3, ""

    .line 612
    const/4 v2, 0x0

    .line 614
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lui_Controller/a/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "FPUPDATE.DAT"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 615
    :try_start_6
    invoke-static {v1}, LGeneralFunction/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v2

    .line 616
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sha256 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    .line 620
    :goto_6
    if-eqz v1, :cond_9

    .line 623
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 629
    :cond_9
    :goto_7
    const-string v0, "ff888b254326589da152e8a58fa31f32579041d0e9bf75eb32f235b7d0689f44"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 630
    const-string v0, "Invalid FW data, SHA256 check NG!"

    invoke-direct {p0, v0, v6}, Lui_Controller/ui_Setting/a;->a(Ljava/lang/String;I)V

    .line 631
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0, v5}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    goto/16 :goto_0

    .line 617
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 618
    :goto_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v2, v3

    goto :goto_6

    .line 624
    :catch_3
    move-exception v0

    .line 625
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 635
    :cond_a
    new-instance v0, La/c/a;

    const/16 v1, 0x485b

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 636
    const-string v1, "sha256"

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 643
    :sswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 646
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->aj:I

    add-int/lit8 v6, v0, 0xe

    .line 647
    iget-object v0, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->u:Z

    if-eqz v0, :cond_c

    .line 648
    const/16 v0, 0xe

    .line 653
    :goto_9
    if-ge v1, v0, :cond_0

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 655
    iget-object v7, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v7}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a()I

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v7, v7, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v7, v7, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v7, v7, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iget-boolean v7, v7, Lui_Controller/b/f;->t:Z

    if-eqz v7, :cond_0

    .line 658
    :cond_b
    iget-object v7, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v7, v7, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v7, v7, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v7, v7, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v7, v7, Lui_Controller/b/k;->ak:I

    if-eqz v7, :cond_0

    .line 661
    iget-object v7, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v7, v7, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v7, v7, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v7, v7, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v7, v7, Lui_Controller/b/k;->ak:I

    if-gt v7, v6, :cond_0

    .line 664
    sub-long v8, v4, v2

    const-wide/16 v10, 0x7d0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_d

    .line 665
    add-int/lit8 v1, v1, 0x1

    .line 667
    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2, v12}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(I)V

    .line 668
    iget-object v2, p0, Lui_Controller/ui_Setting/a;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, v2, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v2, Lui_Controller/b/k;->ak:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lui_Controller/b/k;->ak:I

    move-wide v2, v4

    goto :goto_9

    .line 651
    :cond_c
    const/16 v0, 0x9

    goto :goto_9

    .line 672
    :cond_d
    const-wide/16 v4, 0x14

    :try_start_9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_9

    .line 673
    :catch_4
    move-exception v4

    .line 674
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 617
    :catch_5
    move-exception v0

    goto/16 :goto_8

    :catch_6
    move-exception v0

    move-object v3, v2

    goto/16 :goto_8

    .line 581
    :catch_7
    move-exception v0

    move-object v2, v0

    goto/16 :goto_5

    :catch_8
    move-exception v2

    move-wide v4, v0

    goto/16 :goto_5

    :cond_e
    move v7, v2

    move v8, v4

    goto/16 :goto_1

    .line 542
    nop

    :sswitch_data_0
    .sparse-switch
        0x5001 -> :sswitch_0
        0x5005 -> :sswitch_1
        0x5017 -> :sswitch_3
        0x501d -> :sswitch_2
    .end sparse-switch
.end method
