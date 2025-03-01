.class public Lui_Controller/ui_Gallery/ui_PhoneGallery/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;


# direct methods
.method public constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    .line 38
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 33
    const-string v0, "UI_NormalPicMakingHandler"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(Z)V

    .line 285
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/32 v8, 0xfffffff

    const/4 v6, 0x3

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v3, La/c/a;

    invoke-direct {v3, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 218
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 230
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 56
    :sswitch_1
    const-string v0, "ACTIVITY_RESUME"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    .line 57
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    .line 60
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v0, v0, Lui_Controller/b/j;->d:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 62
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->d:Z

    goto :goto_0

    .line 66
    :sswitch_2
    const-string v0, "ACTIVITY_PAUSE"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    goto :goto_0

    .line 72
    :sswitch_3
    const-string v0, "ACTIVITY_STOP"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v0, "ACTIVITY_DESTROY"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->m()V

    goto :goto_0

    .line 79
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v2, v0, Lui_Controller/b/h;->a:I

    goto :goto_0

    .line 83
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ulBrowseIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ulBrowseSingleIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    .line 85
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->e()V

    .line 87
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->l()V

    .line 88
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v8, v9}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 93
    :sswitch_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->z:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->e:Z

    .line 96
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 98
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v1, v0, Lui_Controller/b/j;->d:Z

    goto/16 :goto_0

    .line 105
    :sswitch_8
    const-string v0, "usb_permission"

    invoke-virtual {v3, v0}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "has permission, need to switch to live view"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->d:Z

    .line 108
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2100

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 114
    :sswitch_9
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0091

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f00

    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 119
    :sswitch_a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->h()V

    goto/16 :goto_0

    .line 122
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(I)V

    goto/16 :goto_0

    .line 125
    :sswitch_c
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(I)V

    goto/16 :goto_0

    .line 128
    :sswitch_d
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(I)V

    goto/16 :goto_0

    .line 131
    :sswitch_e
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(I)V

    goto/16 :goto_0

    .line 134
    :sswitch_f
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(I)V

    goto/16 :goto_0

    .line 137
    :sswitch_10
    sget-object v0, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LGeneralFunction/d;->a(Ljava/lang/String;I)J

    move-result-wide v4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dlAvailableSize: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    .line 139
    const-wide/32 v6, 0x3300000

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 140
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b(Z)V

    .line 141
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(Z)V

    .line 142
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0x200000

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    const/16 v1, 0x5004

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b(I)V

    goto/16 :goto_0

    .line 149
    :sswitch_11
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b(Z)V

    .line 150
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xf10

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto/16 :goto_0

    .line 155
    :sswitch_12
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->z:Z

    if-nez v0, :cond_0

    .line 157
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v3}, La/c/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v5, "AppMode"

    invoke-virtual {v3, v5}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v3, v5, v4}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 159
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 160
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v8, v9}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 161
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iput v1, v0, Lui_Controller/b/e;->d:I

    goto/16 :goto_0

    .line 167
    :sswitch_13
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->k()V

    .line 168
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(I)V

    .line 169
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    const-class v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-boolean v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->g:Z

    if-eqz v3, :cond_2

    .line 172
    const-string v3, "mode"

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iput-boolean v2, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->g:Z

    .line 174
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    new-instance v4, LGeneralFunction/a;

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a010b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x7d0

    invoke-direct {v4, v5, v1, v6, v7}, LGeneralFunction/a;-><init>(Landroid/content/Context;ZLjava/lang/String;I)V

    iput-object v4, v3, Lui_Controller/b/e;->q:LGeneralFunction/a;

    .line 180
    :goto_1
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x400

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v1, v3, v4, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 181
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 182
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v8, v9}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 178
    :cond_2
    const-string v1, "mode"

    const/16 v3, 0x420

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 188
    :sswitch_14
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->k()V

    .line 189
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    const-class v4, Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v4, 0x100

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v3, v4, v5, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 191
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 192
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v8, v9}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 193
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iput v1, v0, Lui_Controller/b/e;->d:I

    goto/16 :goto_0

    .line 199
    :sswitch_15
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c()V

    goto/16 :goto_0

    .line 213
    :sswitch_16
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d()V

    goto/16 :goto_0

    .line 221
    :sswitch_17
    invoke-virtual {p0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->b(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 224
    :sswitch_18
    invoke-virtual {p0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->c(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x2100 -> :sswitch_14
        0x2104 -> :sswitch_13
        0x2b21 -> :sswitch_a
        0x2b22 -> :sswitch_10
        0x2b23 -> :sswitch_c
        0x2b24 -> :sswitch_d
        0x2b25 -> :sswitch_e
        0x2b28 -> :sswitch_11
        0x2b29 -> :sswitch_15
        0x2b2a -> :sswitch_b
        0x2b2b -> :sswitch_f
        0x2f01 -> :sswitch_6
        0x2f02 -> :sswitch_1
        0x2f03 -> :sswitch_2
        0x2f04 -> :sswitch_3
        0x2f05 -> :sswitch_4
        0x2f07 -> :sswitch_5
        0x2f0a -> :sswitch_9
        0x2f0b -> :sswitch_12
        0x2f0e -> :sswitch_0
        0x2f0f -> :sswitch_0
        0x2f10 -> :sswitch_0
        0x2f11 -> :sswitch_16
        0x4804 -> :sswitch_7
        0x4805 -> :sswitch_8
    .end sparse-switch

    .line 218
    :sswitch_data_1
    .sparse-switch
        0xf10 -> :sswitch_17
        0xf20 -> :sswitch_18
    .end sparse-switch
.end method

.method public b(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI_NormalPicMakingMainPhoto handleMessage: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    .line 236
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 240
    :sswitch_0
    invoke-direct {p0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Z)V

    .line 241
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Z)V

    goto :goto_0

    .line 244
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-boolean v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->i:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Z)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->g()V

    .line 249
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    const/16 v1, 0x2104

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(IJ)V

    goto :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x2b26 -> :sswitch_0
        0x8000 -> :sswitch_1
    .end sparse-switch
.end method

.method public c(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI_NormalPicMakingSave handleMessage: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    .line 260
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 280
    :goto_0
    return-void

    .line 264
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->g()V

    .line 265
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j()V

    .line 266
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(Z)V

    .line 267
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    const/16 v1, 0x2104

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(IJ)V

    goto :goto_0

    .line 270
    :sswitch_1
    const-string v0, "Normal pic is saving, block back key"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 274
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xf10

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 275
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(Z)V

    .line 276
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    iput-boolean v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->h:Z

    goto :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b27 -> :sswitch_0
        0x2b2c -> :sswitch_2
        0x8000 -> :sswitch_1
    .end sparse-switch
.end method
