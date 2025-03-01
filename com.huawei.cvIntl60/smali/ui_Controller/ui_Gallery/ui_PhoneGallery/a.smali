.class public Lui_Controller/ui_Gallery/ui_PhoneGallery/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    .line 49
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->b:Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->c:J

    .line 59
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    .line 60
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI_GifMakingHandler"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c(Z)V

    .line 531
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 29

    .prologue
    .line 73
    new-instance v2, La/c/a;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 74
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 322
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 77
    :sswitch_1
    const-string v2, "ACTIVITY_RESUME"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v2, v2, Lui_Controller/b/j;->d:Z

    if-eqz v2, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lui_Controller/b/j;->d:Z

    .line 85
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->i()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->k()V

    goto :goto_0

    .line 89
    :sswitch_2
    const-string v2, "ACTIVITY_PAUSE"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    goto :goto_0

    .line 95
    :sswitch_3
    const-string v2, "ACTIVITY_STOP"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 98
    :sswitch_4
    const-string v2, "ACTIVITY_DESTROY"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 101
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    const/4 v3, 0x0

    iput v3, v2, Lui_Controller/b/h;->a:I

    goto :goto_0

    .line 105
    :sswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ulBrowseIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ulBrowseSingleIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput v3, v2, Lui_Controller/b/e;->C:I

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    const/4 v3, 0x1

    iput v3, v2, Lui_Controller/b/e;->E:I

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput v3, v2, Lui_Controller/b/e;->F:I

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->e()V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 115
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget-boolean v2, v2, Lui_Controller/b/e;->z:Z

    if-nez v2, :cond_0

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lui_Controller/b/j;->e:Z

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lui_Controller/b/j;->d:Z

    goto/16 :goto_0

    .line 127
    :sswitch_8
    const-string v3, "usb_permission"

    invoke-virtual {v2, v3}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const-string v2, "has permission, need to switch to live view"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lui_Controller/b/j;->d:Z

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x2100

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 136
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0157

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00f5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0091

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f00

    invoke-static/range {v2 .. v8}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 141
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->o()V

    goto/16 :goto_0

    .line 144
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d(I)V

    goto/16 :goto_0

    .line 147
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d(I)V

    goto/16 :goto_0

    .line 150
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d(I)V

    goto/16 :goto_0

    .line 153
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d(I)V

    goto/16 :goto_0

    .line 156
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d(I)V

    goto/16 :goto_0

    .line 159
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b(Z)V

    goto/16 :goto_0

    .line 164
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget-boolean v2, v2, Lui_Controller/b/e;->z:Z

    if-nez v2, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->f()V

    .line 168
    new-instance v2, La/c/a;

    const/16 v3, 0x2b10

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    .line 169
    const-string v3, "nextActivity"

    const/16 v4, 0x100

    invoke-virtual {v2, v3, v4}, La/c/a;->a(Ljava/lang/String;I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v3, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(La/c/a;)V

    goto/16 :goto_0

    .line 176
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0xe40

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->g()I

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->f()V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d(I)V

    .line 182
    new-instance v2, La/c/a;

    const/16 v3, 0x2b10

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    .line 183
    const-string v3, "nextActivity"

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, La/c/a;->a(Ljava/lang/String;I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v3, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(La/c/a;)V

    goto/16 :goto_0

    .line 189
    :sswitch_13
    const-string v3, "nextActivity"

    invoke-virtual {v2, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_0

    .line 201
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->t()V

    goto/16 :goto_0

    .line 196
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->s()V

    goto/16 :goto_0

    .line 208
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v2, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(La/c/a;J)V

    goto/16 :goto_0

    .line 214
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0xe40

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->g()I

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->f()V

    .line 218
    new-instance v2, La/c/a;

    const/16 v3, 0x2b10

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    .line 219
    const-string v3, "nextActivity"

    const/16 v4, 0x100

    invoke-virtual {v2, v3, v4}, La/c/a;->a(Ljava/lang/String;I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v3, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(La/c/a;)V

    goto/16 :goto_0

    .line 224
    :sswitch_17
    const-string v3, "GifGenerateStatus"

    invoke-virtual {v2, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->b:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    iget v3, v3, LGeneralFunction/Player/player/h;->a:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 231
    const/16 v10, 0x1c2

    .line 232
    const/16 v11, 0x1c2

    .line 240
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->c()I

    move-result v18

    .line 242
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 243
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x6

    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->c:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->c:J

    move-wide/from16 v16, v0

    add-int/lit8 v18, v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v3 .. v28}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->x()I

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v4, v4, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c:Lui_Controller/b/b;

    iget-object v5, v5, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v5}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-static {v3, v2}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v4, 0x2104

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lui_Controller/b/e;->A:Z

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iput-object v2, v3, Lui_Controller/b/e;->B:Ljava/lang/String;

    goto/16 :goto_0

    .line 236
    :cond_3
    const/16 v10, 0x258

    .line 237
    const/16 v11, 0x12c

    goto/16 :goto_1

    .line 256
    :cond_4
    const-string v3, "GifGenerateStatus"

    invoke-virtual {v2, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 258
    const-string v2, "GifGenerateStatus: GET_GIF_GENERATOR_FAIL"

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v2

    const/16 v3, 0xe40

    if-eq v2, v3, :cond_0

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-boolean v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->g:Z

    if-eqz v2, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0xe10

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 269
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c(I)V

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 272
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 274
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 276
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-boolean v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->h:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 277
    const-string v2, "GIF fail by card removed"

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->j:Z

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v3, 0x2104

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto/16 :goto_0

    .line 267
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0xe11

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    goto :goto_2

    .line 282
    :cond_7
    const-string v3, "GifGenerateStatus"

    invoke-virtual {v2, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-boolean v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->g:Z

    if-eqz v2, :cond_8

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0xe10

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 289
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c(I)V

    goto/16 :goto_0

    .line 287
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0xe11

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    goto :goto_3

    .line 293
    :cond_9
    const-string v2, "Generate Start"

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 308
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c()V

    goto/16 :goto_0

    .line 314
    :sswitch_19
    invoke-virtual/range {p0 .. p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->b(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 315
    :sswitch_1a
    invoke-virtual/range {p0 .. p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->c(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 316
    :sswitch_1b
    invoke-virtual/range {p0 .. p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->d(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 317
    :sswitch_1c
    invoke-virtual/range {p0 .. p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->e(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x2100 -> :sswitch_16
        0x2104 -> :sswitch_12
        0x2b02 -> :sswitch_a
        0x2b05 -> :sswitch_c
        0x2b06 -> :sswitch_d
        0x2b07 -> :sswitch_e
        0x2b0b -> :sswitch_17
        0x2b0d -> :sswitch_10
        0x2b0e -> :sswitch_b
        0x2b0f -> :sswitch_f
        0x2b10 -> :sswitch_13
        0x2f01 -> :sswitch_6
        0x2f02 -> :sswitch_1
        0x2f03 -> :sswitch_2
        0x2f04 -> :sswitch_3
        0x2f05 -> :sswitch_4
        0x2f07 -> :sswitch_5
        0x2f0a -> :sswitch_9
        0x2f0b -> :sswitch_11
        0x2f0e -> :sswitch_0
        0x2f0f -> :sswitch_0
        0x2f10 -> :sswitch_0
        0x2f11 -> :sswitch_18
        0x4804 -> :sswitch_7
        0x4805 -> :sswitch_8
    .end sparse-switch

    .line 312
    :sswitch_data_1
    .sparse-switch
        0xe10 -> :sswitch_1a
        0xe11 -> :sswitch_19
        0xe20 -> :sswitch_1b
        0xe30 -> :sswitch_1c
    .end sparse-switch

    .line 192
    :sswitch_data_2
    .sparse-switch
        0x100 -> :sswitch_14
        0x400 -> :sswitch_15
    .end sparse-switch
.end method

.method public b(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 326
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI_GifMakingMainVideo handleMessage: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 330
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 331
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 421
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 335
    :sswitch_1
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 336
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->q()V

    .line 337
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l()V

    .line 338
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Z)V

    .line 350
    :cond_1
    :goto_1
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Z)V

    goto :goto_0

    .line 340
    :cond_2
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 341
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c(I)V

    .line 343
    invoke-direct {p0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Z)V

    .line 344
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->f()V

    goto :goto_1

    .line 347
    :cond_3
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 348
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->setPlayerStatusListener(LGeneralFunction/Player/GifGenerate/GifGenerate$d;)V

    goto :goto_1

    .line 355
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xe20

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 356
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n:I

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    .line 357
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n:I

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->G:I

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v0, v2

    .line 358
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getDuration()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 359
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getDuration()I

    move-result v0

    .line 360
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrePlay lVideoStartTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lVideoEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 361
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v1, v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(III)V

    .line 362
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c(I)V

    .line 363
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n()V

    goto/16 :goto_0

    .line 366
    :sswitch_3
    sget-object v0, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v3}, LGeneralFunction/d;->a(Ljava/lang/String;I)J

    move-result-wide v0

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dlAvailableSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 368
    const-wide/32 v2, 0x3700000

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 369
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b(Z)V

    goto/16 :goto_0

    .line 372
    :cond_5
    invoke-direct {p0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Z)V

    .line 373
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xe30

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 374
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n:I

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    .line 375
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n:I

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->G:I

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v0, v2

    .line 376
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getDuration()I

    move-result v2

    if-le v0, v2, :cond_6

    .line 377
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getDuration()I

    move-result v0

    .line 379
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generator lVideoStartTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lVideoEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->c:J

    .line 381
    iget-wide v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "gif"

    invoke-static {v2, v3}, LGeneralFunction/g/a;->a(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lui_Controller/a/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LGeneralFunction/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->b:Ljava/lang/String;

    .line 383
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->k:I

    invoke-virtual {v2, v3, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Ljava/lang/String;I)V

    .line 384
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v1, v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(III)V

    .line 385
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n()V

    goto/16 :goto_0

    .line 392
    :sswitch_4
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    const-string v2, "SelectPointer"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lui_Controller/b/e;->E:I

    .line 393
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->E:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 396
    :pswitch_0
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    const-string v2, "Index"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lui_Controller/b/e;->F:I

    .line 397
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->e(I)V

    .line 399
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->G:I

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    sub-int/2addr v0, v1

    if-le v0, v7, :cond_0

    .line 400
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lui_Controller/b/e;->G:I

    .line 401
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->m:LGeneralFunction/i/a/a;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->G:I

    invoke-virtual {v0, v1}, LGeneralFunction/i/a/a;->b(I)V

    goto/16 :goto_0

    .line 405
    :pswitch_1
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    const-string v2, "Index"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lui_Controller/b/e;->G:I

    .line 407
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->G:I

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    sub-int/2addr v0, v1

    if-le v0, v7, :cond_0

    .line 408
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->G:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Lui_Controller/b/e;->F:I

    .line 409
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->m:LGeneralFunction/i/a/a;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    invoke-virtual {v0, v1}, LGeneralFunction/i/a/a;->a(I)V

    .line 410
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->e(I)V

    goto/16 :goto_0

    .line 418
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2104

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto/16 :goto_0

    .line 331
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b03 -> :sswitch_2
        0x2b04 -> :sswitch_3
        0x2b08 -> :sswitch_4
        0x2b09 -> :sswitch_0
        0x2b0c -> :sswitch_1
        0x8000 -> :sswitch_5
    .end sparse-switch

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/32 v8, 0xfffffff

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI_GifMakingMainPhoto handleMessage: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 427
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 428
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 432
    :sswitch_0
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-boolean v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->i:Z

    if-eqz v1, :cond_1

    .line 434
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iput-boolean v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->i:Z

    goto :goto_0

    .line 438
    :cond_1
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 439
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->h()V

    .line 440
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Z)V

    .line 441
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v8, v9}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 453
    :cond_2
    :goto_1
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Z)V

    goto :goto_0

    .line 443
    :cond_3
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 444
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c(I)V

    .line 446
    invoke-direct {p0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Z)V

    .line 447
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->g()V

    goto :goto_1

    .line 450
    :cond_4
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 451
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->setPlayerStatusListener(LGeneralFunction/Player/GifGenerate/GifGenerate$d;)V

    goto :goto_1

    .line 458
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->p()V

    .line 459
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n()V

    goto :goto_0

    .line 462
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xe20

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 463
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(I)V

    .line 464
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c(I)V

    .line 465
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n()V

    goto/16 :goto_0

    .line 468
    :sswitch_3
    sget-object v0, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v3}, LGeneralFunction/d;->a(Ljava/lang/String;I)J

    move-result-wide v0

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dlAvailableSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Ljava/lang/String;I)V

    .line 470
    const-wide/32 v2, 0x3700000

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 471
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b(Z)V

    goto/16 :goto_0

    .line 474
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v8, v9}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 475
    invoke-direct {p0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a(Z)V

    .line 476
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xe30

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->c:J

    .line 478
    iget-wide v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "gif"

    invoke-static {v0, v1}, LGeneralFunction/g/a;->a(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->b:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->k:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(Ljava/lang/String;I)V

    .line 481
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->l:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(I)V

    .line 482
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n()V

    goto/16 :goto_0

    .line 486
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/16 v1, 0x2104

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(IJ)V

    goto/16 :goto_0

    .line 428
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b00 -> :sswitch_1
        0x2b03 -> :sswitch_2
        0x2b04 -> :sswitch_3
        0x2b0c -> :sswitch_0
        0x8000 -> :sswitch_4
    .end sparse-switch
.end method

.method public d(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 495
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 496
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 500
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d()V

    .line 501
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->c(I)V

    .line 502
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->n()V

    goto :goto_0

    .line 506
    :sswitch_1
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d()V

    goto :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x2b03 -> :sswitch_0
        0x2b0c -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 516
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 517
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 521
    :pswitch_0
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/a;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->d()V

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x2b0c
        :pswitch_0
    .end packed-switch
.end method
