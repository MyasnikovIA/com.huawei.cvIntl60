.class public LGeneralFunction/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:LGeneralFunction/h/a;

.field private d:Lui_Controller/ui_StartMode/UI_ModeMain;

.field private e:LGeneralFunction/e/d;

.field private f:LGeneralFunction/e/d;

.field private g:I


# direct methods
.method public constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, LGeneralFunction/h/b;->a:Landroid/os/HandlerThread;

    .line 34
    iput-object v0, p0, LGeneralFunction/h/b;->b:Landroid/os/Handler;

    .line 35
    iput-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    .line 36
    iput-object v0, p0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 37
    iput-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    .line 38
    iput-object v0, p0, LGeneralFunction/h/b;->f:LGeneralFunction/e/d;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/h/b;->g:I

    .line 49
    iput-object p1, p0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 50
    return-void
.end method

.method static synthetic a(LGeneralFunction/h/b;)LGeneralFunction/h/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    return-object v0
.end method

.method private a(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 210
    new-instance v0, LGeneralFunction/h/b$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LGeneralFunction/h/b$1;-><init>(LGeneralFunction/h/b;Landroid/os/Looper;)V

    .line 313
    return-object v0
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->a()V

    .line 319
    iget-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->b()V

    .line 320
    iget-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->c()V

    .line 321
    iget-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v0, v0, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v0, p1, p2}, LGeneralFunction/e/e;->a(II)V

    .line 322
    iget-object v0, p0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->x()I

    .line 323
    iget-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v0, v0, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_0
    const-string v0, "Delete Update"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/h/b;->a(Ljava/lang/String;I)V

    .line 336
    iget-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->a()V

    .line 337
    iget-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->b()V

    .line 338
    iget-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->c()V

    .line 339
    return-void

    .line 325
    :pswitch_0
    iget-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    iget-object v1, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v1, v1, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v2, v2, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    iget-object v1, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v1, v1, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v2, v2, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    iget-object v1, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v1, v1, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v2, v2, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {p2, v0}, LGeneralFunction/g/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 364
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 366
    :cond_0
    invoke-static {p2}, LGeneralFunction/g/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, LGeneralFunction/h/b;->a(Ljava/lang/String;I)V

    .line 369
    iget-object v1, p0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0, v1}, LGeneralFunction/g/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 371
    :cond_1
    return-void
.end method

.method static synthetic a(LGeneralFunction/h/b;II)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, LGeneralFunction/h/b;->a(II)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/h/b;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, LGeneralFunction/h/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/h/b;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, LGeneralFunction/h/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 44
    const-string v0, "UI_FileControl"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method static synthetic b(LGeneralFunction/h/b;)LGeneralFunction/e/d;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    return-object v0
.end method

.method static synthetic c(LGeneralFunction/h/b;)Lui_Controller/ui_StartMode/UI_ModeMain;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    return-object v0
.end method


# virtual methods
.method public a(La/c/a;J)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p1}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, LGeneralFunction/h/b;->a(Landroid/os/Message;J)V

    .line 78
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 29

    .prologue
    .line 375
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 464
    :goto_0
    :sswitch_0
    return-void

    .line 384
    :sswitch_1
    const-string v2, "MSG_REMOTE_EVENT_CAPTURE_DONE2"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, LGeneralFunction/h/b;->a(Ljava/lang/String;I)V

    .line 392
    move-object/from16 v0, p0

    iget v2, v0, LGeneralFunction/h/b;->g:I

    if-nez v2, :cond_0

    .line 393
    const-string v2, "[CaptureDBG] NeedDLMainPicNum = 0, Start download the new captured pic"

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, LGeneralFunction/h/b;->a(Ljava/lang/String;I)V

    .line 394
    new-instance v2, La/c/a;

    const/16 v3, 0x4821

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    .line 395
    const-string v3, "IsMiddleData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, La/c/a;->a(Ljava/lang/String;I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 398
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, LGeneralFunction/h/b;->g:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, LGeneralFunction/h/b;->g:I

    goto :goto_0

    .line 405
    :sswitch_2
    new-instance v2, La/c/a;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 406
    const/4 v8, 0x0

    .line 408
    invoke-static {}, LGeneralFunction/m/a;->x()I

    move-result v10

    .line 409
    invoke-static {}, LGeneralFunction/m/a;->y()I

    move-result v11

    .line 410
    const/4 v12, 0x0

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v3, v3, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->c()I

    move-result v3

    add-int/lit8 v18, v3, 0x1

    .line 412
    const/16 v19, 0x0

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storage_path"

    invoke-virtual {v2, v4}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "storage_name"

    invoke-virtual {v2, v4}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 415
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LGeneralFunction/d;->c(Ljava/lang/String;)I

    move-result v9

    .line 419
    invoke-static {}, LGeneralFunction/m/a;->a()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v3, v3, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    const-string v4, "storage_name"

    invoke-virtual {v2, v4}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "storage_path"

    invoke-virtual {v2, v5}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v12, v12

    const-string v14, "current_time"

    .line 422
    invoke-virtual {v2, v14}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v14

    const-string v16, "current_time"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v16

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x0

    .line 421
    invoke-virtual/range {v3 .. v28}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V

    .line 432
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    invoke-virtual {v2}, LGeneralFunction/e/d;->a()V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->x()I

    .line 436
    invoke-static {}, LGeneralFunction/m/a;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v3, v3, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v4, v4, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    invoke-virtual {v2, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 446
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, LGeneralFunction/h/b;->g:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, LGeneralFunction/h/b;->g:I

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CaptureDBG] NeedDLMainPicNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, LGeneralFunction/h/b;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, LGeneralFunction/h/b;->a(Ljava/lang/String;I)V

    .line 448
    move-object/from16 v0, p0

    iget v2, v0, LGeneralFunction/h/b;->g:I

    if-lez v2, :cond_3

    .line 449
    new-instance v2, La/c/a;

    const/16 v3, 0x4821

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    .line 450
    const-string v3, "IsMiddleData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, La/c/a;->a(Ljava/lang/String;I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 427
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v3, v3, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    const-string v4, "storage_name"

    invoke-virtual {v2, v4}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "storage_path"

    invoke-virtual {v2, v5}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v12, v12

    const-string v14, "current_time"

    .line 428
    invoke-virtual {v2, v14}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v14

    const-string v16, "current_time"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v16

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    .line 427
    invoke-virtual/range {v3 .. v26}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZ)V

    goto/16 :goto_1

    .line 442
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v3, v3, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget-object v4, v4, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v2, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    goto/16 :goto_2

    .line 454
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x221a

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x4604 -> :sswitch_1
        0x460d -> :sswitch_0
        0x4709 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/os/Message;J)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget v1, v0, LGeneralFunction/h/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LGeneralFunction/h/a;->b:I

    .line 88
    iget-object v0, p0, LGeneralFunction/h/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lui_Controller/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const-string v0, "UI_ExcuteAction no get data"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/h/b;->a(Ljava/lang/String;I)V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, La/c/a;

    const/16 v1, 0x3002

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 166
    const-string v1, "ActionList"

    new-instance v2, La/c/a$a;

    invoke-direct {v2, p1}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    .line 167
    iget-object v1, p0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->d(La/c/a;)V

    goto :goto_0
.end method

.method public a(Lui_Controller/b/b;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, LGeneralFunction/h/a;

    invoke-direct {v0}, LGeneralFunction/h/a;-><init>()V

    iput-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    .line 55
    iget-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    const/4 v1, 0x0

    iput v1, v0, LGeneralFunction/h/a;->b:I

    .line 56
    iget-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, LGeneralFunction/h/a;->d:Ljava/util/concurrent/BlockingQueue;

    .line 57
    iget-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iput-object p1, v0, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FileControlServer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LGeneralFunction/h/b;->a:Landroid/os/HandlerThread;

    .line 59
    iget-object v0, p0, LGeneralFunction/h/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    iget-object v0, p0, LGeneralFunction/h/b;->a:Landroid/os/HandlerThread;

    invoke-direct {p0, v0}, LGeneralFunction/h/b;->a(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/h/b;->b:Landroid/os/Handler;

    .line 61
    iget-object v0, p1, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iput-object v0, p0, LGeneralFunction/h/b;->e:LGeneralFunction/e/d;

    .line 62
    iget-object v0, p1, Lui_Controller/b/b;->a:Lui_Controller/ui_Gallery/a/a;

    iget-object v0, v0, Lui_Controller/ui_Gallery/a/a;->a:LGeneralFunction/e/d;

    iput-object v0, p0, LGeneralFunction/h/b;->f:LGeneralFunction/e/d;

    .line 63
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    iget v0, v0, LGeneralFunction/h/a;->b:I

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 172
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, LGeneralFunction/h/b;->c:LGeneralFunction/h/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, LGeneralFunction/h/a;->c:Z

    .line 138
    iget-object v0, p0, LGeneralFunction/h/b;->d:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x3003

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->d(La/c/a;)V

    .line 139
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/h/b;->g:I

    .line 149
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, LGeneralFunction/h/b;->g:I

    return v0
.end method
