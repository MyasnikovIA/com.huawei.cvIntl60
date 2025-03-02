.class public Lui_Controller/ui_Gallery/ui_PhoneGallery/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;


# direct methods
.method public constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    .line 49
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    .line 46
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/ui_PhoneGallery/f;)Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 40
    const-string v0, "UI_VideoCutHandler"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/ui_PhoneGallery/f;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c(Z)V

    .line 466
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 31

    .prologue
    .line 54
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 58
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/16 v27, 0x1

    .line 59
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->c()I

    move-result v29

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 62
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v30

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 65
    new-instance v3, La/c/a;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 66
    const-string v4, "lStartTime"

    invoke-virtual {v3, v4}, La/c/a;->b(Ljava/lang/String;)I

    move-result v12

    .line 67
    const-string v4, "lEndTime"

    invoke-virtual {v3, v4}, La/c/a;->b(Ljava/lang/String;)I

    move-result v13

    .line 68
    const-string v4, "dlCurrentTime"

    invoke-virtual {v3, v4}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v14

    .line 70
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 74
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 75
    const/16 v2, 0x12

    invoke-virtual {v3, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 76
    const/16 v2, 0x13

    invoke-virtual {v3, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 83
    :goto_2
    const/4 v2, 0x0

    const-string v3, "/"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 84
    const-string v2, "/"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v3, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    const/4 v8, 0x1

    const/4 v9, 0x1

    sub-int v2, v13, v12

    int-to-long v12, v2

    add-int/lit8 v18, v29, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v28, 0x0

    move-wide/from16 v16, v14

    invoke-virtual/range {v3 .. v28}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->x()I

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    move-object/from16 v0, v30

    invoke-static {v2, v0}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget v3, v3, Lui_Controller/b/b;->c:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v5, v5, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v6, v6, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v6, v6, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v2, v3, v4, v5, v6}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 93
    if-eqz v27, :cond_1

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    .line 97
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v4}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v4}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    add-int/lit8 v4, v29, 0x1

    invoke-virtual {v3, v4}, LGeneralFunction/e/d;->u(I)I

    move-result v3

    iput v3, v2, Lui_Controller/b/e;->s:I

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->u()V

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    invoke-static {v2}, LGeneralFunction/g/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    invoke-static {v3, v2}, LGeneralFunction/g/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v3, 0x2b47

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    goto/16 :goto_0

    .line 58
    :cond_0
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 77
    :catch_0
    move-exception v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 79
    const/4 v10, 0x0

    .line 80
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 96
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    goto :goto_3

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x5014
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/16 v10, 0x400

    const-wide/32 v8, 0xfffffff

    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 189
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 197
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 117
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ulBrowseIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ulBrowseSingleIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    .line 119
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v6, v0, Lui_Controller/b/e;->C:I

    .line 120
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v7, v0, Lui_Controller/b/e;->E:I

    .line 121
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v6, v0, Lui_Controller/b/e;->F:I

    .line 122
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d()V

    .line 123
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v8, v9}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto :goto_0

    .line 127
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->z:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v2, v0, Lui_Controller/b/e;->C:I

    .line 130
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->o()V

    .line 131
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v1, 0x2b48

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    goto :goto_0

    .line 137
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const-class v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-boolean v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e:Z

    if-eqz v1, :cond_1

    .line 140
    const-string v1, "mode"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iput-boolean v6, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e:Z

    .line 142
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    new-instance v2, LGeneralFunction/a;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a010b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7d0

    invoke-direct {v2, v3, v7, v4, v5}, LGeneralFunction/a;-><init>(Landroid/content/Context;ZLjava/lang/String;I)V

    iput-object v2, v1, Lui_Controller/b/e;->q:LGeneralFunction/a;

    .line 148
    :goto_1
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v1, v10, v2, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 149
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 150
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v8, v9}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 146
    :cond_1
    const-string v1, "mode"

    const/16 v2, 0x420

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 155
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const-class v2, Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x100

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v1, v2, v3, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 157
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 158
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v8, v9}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 159
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v7, v0, Lui_Controller/b/e;->d:I

    goto/16 :goto_0

    .line 164
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->q()V

    goto/16 :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v1, 0x2b48

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    goto/16 :goto_0

    .line 185
    :sswitch_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c()V

    goto/16 :goto_0

    .line 191
    :sswitch_7
    invoke-virtual {p0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 192
    :sswitch_8
    invoke-virtual {p0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->d(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x2100 -> :sswitch_4
        0x2104 -> :sswitch_3
        0x2b48 -> :sswitch_5
        0x2f01 -> :sswitch_1
        0x2f0b -> :sswitch_2
        0x2f0e -> :sswitch_0
        0x2f0f -> :sswitch_0
        0x2f10 -> :sswitch_0
        0x2f11 -> :sswitch_6
    .end sparse-switch

    .line 189
    :sswitch_data_1
    .sparse-switch
        0xd10 -> :sswitch_7
        0xd20 -> :sswitch_8
    .end sparse-switch
.end method

.method public c(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI_MakingVideoMain handleMessage: 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    .line 203
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 204
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 207
    :sswitch_0
    const-string v0, "ACTIVITY_RESUME"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    .line 208
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    .line 211
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v0, v0, Lui_Controller/b/j;->d:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 213
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->d:Z

    .line 216
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->f()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 217
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g()V

    goto :goto_0

    .line 220
    :sswitch_1
    const-string v0, "ACTIVITY_PAUSE"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    .line 221
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iput-boolean v1, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->f:Z

    .line 223
    invoke-direct {p0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Z)V

    .line 224
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    invoke-virtual {v0}, LGeneralFunction/f/a/c;->a()V

    .line 225
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/4 v1, 0x0

    iput-object v1, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    .line 226
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 228
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    goto :goto_0

    .line 233
    :sswitch_2
    const-string v0, "ACTIVITY_STOP"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 236
    :sswitch_3
    const-string v0, "ACTIVITY_DESTROY"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 239
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v2, v0, Lui_Controller/b/h;->a:I

    goto/16 :goto_0

    .line 243
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->z:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->e:Z

    .line 246
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 248
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v1, v0, Lui_Controller/b/j;->d:Z

    goto/16 :goto_0

    .line 255
    :sswitch_6
    const-string v3, "usb_permission"

    invoke-virtual {v0, v3}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "has permission, need to switch to live view"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    .line 257
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->d:Z

    .line 258
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v7, v0, Lui_Controller/b/e;->C:I

    .line 259
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->o()V

    .line 260
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v1, 0x2b48

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    goto/16 :goto_0

    .line 266
    :sswitch_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0091

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f00

    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 271
    :sswitch_8
    const-string v2, "360PlayerStatus"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 272
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->n()V

    .line 273
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e(I)V

    .line 274
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h()V

    goto/16 :goto_0

    .line 276
    :cond_3
    const-string v2, "360PlayerStatus"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 278
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->C:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->C:I

    if-eq v0, v7, :cond_0

    .line 284
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e()V

    goto/16 :goto_0

    .line 289
    :cond_4
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 297
    :sswitch_9
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    const-string v2, "SelectPointer"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lui_Controller/b/e;->E:I

    .line 298
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->E:I

    packed-switch v1, :pswitch_data_0

    .line 308
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->l()V

    goto/16 :goto_0

    .line 301
    :pswitch_0
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    const-string v2, "Index"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lui_Controller/b/e;->F:I

    .line 302
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e(I)V

    goto :goto_1

    .line 305
    :pswitch_1
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    const-string v2, "Index"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lui_Controller/b/e;->G:I

    goto :goto_1

    .line 312
    :sswitch_a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xd20

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 313
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v5, v0, Lui_Controller/b/e;->C:I

    .line 314
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d(I)V

    .line 315
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v1, 0x2b44

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    .line 316
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->m()V

    goto/16 :goto_0

    .line 320
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v4, v0, Lui_Controller/b/e;->C:I

    .line 321
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->o()V

    .line 322
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v1, 0x2b48

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    goto/16 :goto_0

    .line 326
    :sswitch_c
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b(Z)V

    goto/16 :goto_0

    .line 330
    :sswitch_d
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->r()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 334
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->r()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 335
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b(Z)V

    .line 336
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 340
    :cond_5
    invoke-direct {p0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Z)V

    .line 341
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v3, v0, Lui_Controller/b/e;->F:I

    .line 342
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v4, v0, Lui_Controller/b/e;->G:I

    .line 344
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a:Ljava/lang/String;

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 346
    const-string v0, "mp4"

    invoke-static {v6, v0}, LGeneralFunction/g/a;->a(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->d:I

    if-ne v1, v5, :cond_8

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget-object v5, v5, Lui_Controller/b/e;->ab:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/Android/data/com.huawei.cvIntl60/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "DCIM/CV60/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget-object v5, v5, Lui_Controller/b/e;->ab:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/Android/data/com.huawei.cvIntl60/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "DCIM/CV60/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 353
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 366
    :cond_6
    :goto_2
    const-string v0, "Cut video Start"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    .line 368
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    if-nez v0, :cond_7

    .line 369
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    new-instance v1, LGeneralFunction/f/a/c;

    invoke-direct {v1}, LGeneralFunction/f/a/c;-><init>()V

    iput-object v1, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    .line 370
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iput-boolean v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->f:Z

    .line 373
    :cond_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    new-instance v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;

    invoke-direct {v5, p0, v3, v4, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/f;IILjava/lang/Long;)V

    invoke-virtual/range {v0 .. v5}, LGeneralFunction/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;IILGeneralFunction/f/a/c$a;)V

    goto/16 :goto_0

    .line 360
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    .line 361
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 393
    :sswitch_e
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-boolean v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->f:Z

    if-eqz v0, :cond_a

    .line 394
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iput-boolean v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->f:Z

    .line 395
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 399
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 402
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addMetaDataInfo Start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    .line 403
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addMetaDataInfo End: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Ljava/lang/String;I)V

    .line 406
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 407
    const-string v1, "lStartTime"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    .line 408
    const-string v2, "lEndTime"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    .line 409
    const-string v3, "dlCurrentTime"

    invoke-virtual {v0, v3}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 411
    new-instance v0, La/c/a;

    const/16 v3, 0x5014

    invoke-direct {v0, v3}, La/c/a;-><init>(I)V

    .line 412
    const-string v3, "lStartTime"

    invoke-virtual {v0, v3, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 413
    const-string v1, "lEndTime"

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 414
    const-string v1, "dlCurrentTime"

    invoke-virtual {v0, v1, v4, v5}, La/c/a;->a(Ljava/lang/String;J)V

    .line 415
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b(La/c/a;)V

    goto/16 :goto_0

    .line 421
    :sswitch_f
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v4, v0, Lui_Controller/b/e;->C:I

    .line 422
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->o()V

    .line 423
    invoke-direct {p0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Z)V

    .line 424
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v1, 0x2b48

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    goto/16 :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x2389 -> :sswitch_8
        0x2b40 -> :sswitch_9
        0x2b41 -> :sswitch_9
        0x2b42 -> :sswitch_a
        0x2b43 -> :sswitch_d
        0x2b45 -> :sswitch_c
        0x2b46 -> :sswitch_e
        0x2b47 -> :sswitch_f
        0x2f02 -> :sswitch_0
        0x2f03 -> :sswitch_1
        0x2f04 -> :sswitch_2
        0x2f05 -> :sswitch_3
        0x2f07 -> :sswitch_4
        0x2f0a -> :sswitch_7
        0x4804 -> :sswitch_5
        0x4805 -> :sswitch_6
        0x8000 -> :sswitch_b
    .end sparse-switch

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(Landroid/os/Message;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x2b42

    const/4 v2, 0x1

    .line 433
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 434
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 437
    :sswitch_0
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 438
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    goto :goto_0

    .line 440
    :cond_1
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 441
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    goto :goto_0

    .line 446
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xd10

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 447
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v2, v0, Lui_Controller/b/e;->C:I

    .line 448
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->n()V

    .line 449
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->F:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e(I)V

    .line 450
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d(I)V

    goto :goto_0

    .line 453
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->G:I

    mul-int/lit16 v1, v1, 0x3e8

    if-le v0, v1, :cond_2

    .line 454
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    goto :goto_0

    .line 457
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const/16 v1, 0x2b44

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    goto :goto_0

    .line 434
    nop

    :sswitch_data_0
    .sparse-switch
        0x2389 -> :sswitch_0
        0x2b42 -> :sswitch_1
        0x2b44 -> :sswitch_2
        0x8000 -> :sswitch_1
    .end sparse-switch
.end method
