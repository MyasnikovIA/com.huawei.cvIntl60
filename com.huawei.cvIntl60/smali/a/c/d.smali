.class public La/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field private f:La/c/c;

.field private g:La/c/d$a;

.field private h:La/a/a/a;

.field private i:I

.field private final j:I

.field private k:La/a/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;La/c/d$a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, La/c/d;->a:Landroid/content/Context;

    .line 33
    iput-object v0, p0, La/c/d;->b:Landroid/os/HandlerThread;

    .line 34
    iput-object v0, p0, La/c/d;->c:Landroid/os/Handler;

    .line 35
    iput-object v0, p0, La/c/d;->d:Landroid/os/HandlerThread;

    .line 36
    iput-object v0, p0, La/c/d;->e:Landroid/os/Handler;

    .line 37
    iput-object v0, p0, La/c/d;->f:La/c/c;

    .line 38
    iput-object v0, p0, La/c/d;->g:La/c/d$a;

    .line 40
    iput-object v0, p0, La/c/d;->h:La/a/a/a;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, La/c/d;->i:I

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, La/c/d;->j:I

    .line 409
    new-instance v0, La/c/d$3;

    invoke-direct {v0, p0}, La/c/d$3;-><init>(La/c/d;)V

    iput-object v0, p0, La/c/d;->k:La/a/a/a$a;

    .line 60
    iput-object p1, p0, La/c/d;->a:Landroid/content/Context;

    .line 61
    iput-object p2, p0, La/c/d;->g:La/c/d$a;

    .line 62
    return-void
.end method

.method static synthetic a(La/c/d;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, La/c/d;->i:I

    return p1
.end method

.method static synthetic a(La/c/d;)La/c/c;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, La/c/d;->f:La/c/c;

    return-object v0
.end method

.method private a(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 140
    new-instance v0, La/c/d$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La/c/d$1;-><init>(La/c/d;Landroid/os/Looper;)V

    .line 150
    return-object v0
.end method

.method static synthetic a(La/c/d;La/c/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, La/c/d;->b(La/c/a;)V

    return-void
.end method

.method static synthetic a(La/c/d;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, La/c/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 51
    const-string v0, "UI_RemoteControl"

    invoke-static {v0, p1, p2}, La/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method static synthetic a(La/c/d;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, La/c/d;->a(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, La/c/d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Not Granted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, La/c/d;->a(Ljava/lang/String;I)V

    .line 202
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Granted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, La/c/d;->a(Ljava/lang/String;I)V

    .line 206
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(La/c/d;)La/a/a/a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, La/c/d;->h:La/a/a/a;

    return-object v0
.end method

.method private b(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 160
    new-instance v0, La/c/d$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La/c/d$2;-><init>(La/c/d;Landroid/os/Looper;)V

    .line 179
    return-object v0
.end method

.method private b(La/c/a;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, La/c/d;->g:La/c/d$a;

    invoke-interface {v0, p1}, La/c/d$a;->a(La/c/a;)V

    .line 196
    return-void
.end method

.method static synthetic b(La/c/d;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, La/c/d;->c(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 188
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0x4104 -> :sswitch_0
        0x4406 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic c(La/c/d;)I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, La/c/d;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La/c/d;->i:I

    return v0
.end method

.method private c(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/16 v6, 0x4820

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 249
    new-instance v2, La/c/a;

    invoke-direct {v2, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 251
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Remote USB Msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, La/c/d;->a(Ljava/lang/String;I)V

    .line 406
    :goto_0
    return v0

    .line 254
    :sswitch_0
    iget-object v0, p0, La/c/d;->h:La/a/a/a;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, La/a/a/a;

    iget-object v3, p0, La/c/d;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, La/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/c/d;->h:La/a/a/a;

    .line 257
    :cond_0
    iget-object v0, p0, La/c/d;->h:La/a/a/a;

    iget-object v3, p0, La/c/d;->k:La/a/a/a$a;

    invoke-virtual {v0, v3}, La/a/a/a;->a(La/a/a/a$a;)I

    move-result v0

    .line 258
    if-nez v0, :cond_1

    .line 259
    iget-object v3, p0, La/c/d;->f:La/c/c;

    iput v1, v3, La/c/c;->c:I

    .line 260
    new-instance v3, La/c/a;

    const/16 v4, 0x480a

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    invoke-virtual {p0, v3}, La/c/d;->a(La/c/a;)V

    .line 262
    :cond_1
    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, La/c/a;->a(Ljava/lang/String;I)V

    .line 263
    invoke-direct {p0, v2}, La/c/d;->b(La/c/a;)V

    :cond_2
    :goto_1
    move v0, v1

    .line 406
    goto :goto_0

    .line 268
    :sswitch_1
    iget-object v3, p0, La/c/d;->f:La/c/c;

    iput v0, v3, La/c/c;->c:I

    .line 269
    iget-object v3, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v3}, La/a/a/a;->d()V

    .line 270
    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, La/c/a;->a(Ljava/lang/String;I)V

    .line 271
    invoke-direct {p0, v2}, La/c/d;->b(La/c/a;)V

    goto :goto_1

    .line 276
    :sswitch_2
    iget-object v0, p0, La/c/d;->h:La/a/a/a;

    if-nez v0, :cond_3

    .line 277
    new-instance v0, La/a/a/a;

    iget-object v3, p0, La/c/d;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, La/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/c/d;->h:La/a/a/a;

    .line 279
    :cond_3
    const-string v0, "usb_permission"

    iget-object v3, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v3}, La/a/a/a;->b()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, La/c/a;->a(Ljava/lang/String;Z)V

    .line 280
    invoke-direct {p0, v2}, La/c/d;->b(La/c/a;)V

    goto :goto_1

    .line 285
    :sswitch_3
    const-string v0, "result"

    iget-object v3, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v3}, La/a/a/a;->e()I

    move-result v3

    invoke-virtual {v2, v0, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 286
    invoke-direct {p0, v2}, La/c/d;->b(La/c/a;)V

    goto :goto_1

    .line 350
    :sswitch_4
    iget-object v2, p0, La/c/d;->h:La/a/a/a;

    if-nez v2, :cond_4

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive msg but objUsbCore is null!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, La/c/d;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 355
    :cond_4
    iget-object v2, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    .line 356
    const-string v2, "USB core status is not connected. send cmd fail"

    invoke-direct {p0, v2, v0}, La/c/d;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 360
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x4811

    if-ne v2, v3, :cond_6

    iget-object v2, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    if-lt v2, v5, :cond_6

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Live view already start, send get frame. CoreStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v3}, La/a/a/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, La/c/d;->a(Ljava/lang/String;I)V

    .line 362
    new-instance v0, La/c/a;

    invoke-direct {v0, v6}, La/c/a;-><init>(I)V

    invoke-virtual {p0, v0}, La/c/d;->a(La/c/a;)V

    goto/16 :goto_1

    .line 366
    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_7

    iget-object v2, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    iget-object v2, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_7

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable live view first. CoreStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v3}, La/a/a/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, La/c/d;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 371
    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x4815

    if-ne v2, v3, :cond_8

    iget-object v2, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    if-lt v2, v4, :cond_8

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore this capture cmd. CoreStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v3}, La/a/a/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, La/c/d;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 376
    :cond_8
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x4813

    if-ne v2, v3, :cond_9

    iget-object v2, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    if-lt v2, v4, :cond_9

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore this record cmd. Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v3}, La/a/a/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, La/c/d;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 381
    :cond_9
    iget-object v2, p0, La/c/d;->h:La/a/a/a;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, La/a/a/a;->a(ILandroid/os/Bundle;)I

    move-result v2

    .line 382
    if-ne v2, v1, :cond_a

    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x480c

    if-eq v0, v2, :cond_2

    .line 388
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 389
    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 391
    const-wide/16 v2, 0x5

    invoke-virtual {p0, v0, v2, v3}, La/c/d;->a(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 394
    :cond_a
    if-ne v2, v5, :cond_2

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip USB Msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, La/c/d;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 251
    nop

    :sswitch_data_0
    .sparse-switch
        0x4800 -> :sswitch_0
        0x4801 -> :sswitch_1
        0x4802 -> :sswitch_3
        0x4805 -> :sswitch_2
        0x480a -> :sswitch_4
        0x480b -> :sswitch_4
        0x480c -> :sswitch_4
        0x480d -> :sswitch_4
        0x4810 -> :sswitch_4
        0x4811 -> :sswitch_4
        0x4812 -> :sswitch_4
        0x4813 -> :sswitch_4
        0x4814 -> :sswitch_4
        0x4815 -> :sswitch_4
        0x4817 -> :sswitch_4
        0x4818 -> :sswitch_4
        0x4819 -> :sswitch_4
        0x481a -> :sswitch_4
        0x481b -> :sswitch_4
        0x4820 -> :sswitch_4
        0x4821 -> :sswitch_4
        0x4822 -> :sswitch_4
        0x4830 -> :sswitch_4
        0x4831 -> :sswitch_4
        0x4832 -> :sswitch_4
        0x4833 -> :sswitch_4
        0x4834 -> :sswitch_4
        0x4840 -> :sswitch_4
        0x4841 -> :sswitch_4
        0x4842 -> :sswitch_4
        0x4843 -> :sswitch_4
        0x4844 -> :sswitch_4
        0x4845 -> :sswitch_4
        0x4847 -> :sswitch_4
        0x4848 -> :sswitch_4
        0x4849 -> :sswitch_4
        0x484a -> :sswitch_4
        0x4850 -> :sswitch_4
        0x4851 -> :sswitch_4
        0x4852 -> :sswitch_4
        0x4853 -> :sswitch_4
        0x4854 -> :sswitch_4
        0x4855 -> :sswitch_4
        0x4856 -> :sswitch_4
        0x4857 -> :sswitch_4
        0x4858 -> :sswitch_4
        0x4859 -> :sswitch_4
        0x485a -> :sswitch_4
        0x485b -> :sswitch_4
        0x4860 -> :sswitch_4
        0x4870 -> :sswitch_4
        0x4871 -> :sswitch_4
        0x4872 -> :sswitch_4
        0x4873 -> :sswitch_4
        0x4874 -> :sswitch_4
        0x4875 -> :sswitch_4
        0x4877 -> :sswitch_4
        0x4878 -> :sswitch_4
        0x4879 -> :sswitch_4
        0x48f0 -> :sswitch_4
        0x48f1 -> :sswitch_4
        0x48f2 -> :sswitch_4
        0x48f3 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic d(La/c/d;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, La/c/d;->i:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 66
    new-instance v0, La/c/c;

    invoke-direct {v0}, La/c/c;-><init>()V

    iput-object v0, p0, La/c/d;->f:La/c/c;

    .line 67
    iget-object v0, p0, La/c/d;->f:La/c/c;

    iput v2, v0, La/c/c;->d:I

    .line 68
    iget-object v0, p0, La/c/d;->f:La/c/c;

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, La/c/c;->e:Ljava/util/concurrent/BlockingQueue;

    .line 69
    iget-object v0, p0, La/c/d;->f:La/c/c;

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, La/c/c;->f:Ljava/util/concurrent/BlockingQueue;

    .line 70
    iget-object v0, p0, La/c/d;->f:La/c/c;

    iput v2, v0, La/c/c;->a:I

    .line 71
    iget-object v0, p0, La/c/d;->f:La/c/c;

    iput v2, v0, La/c/c;->b:I

    .line 72
    iget-object v0, p0, La/c/d;->f:La/c/c;

    iput v2, v0, La/c/c;->c:I

    .line 73
    iget-object v0, p0, La/c/d;->f:La/c/c;

    iput-boolean v2, v0, La/c/c;->g:Z

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteControlServer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/c/d;->b:Landroid/os/HandlerThread;

    .line 75
    iget-object v0, p0, La/c/d;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    iget-object v0, p0, La/c/d;->b:Landroid/os/HandlerThread;

    invoke-direct {p0, v0}, La/c/d;->b(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, La/c/d;->c:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteInterruptServer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/c/d;->d:Landroid/os/HandlerThread;

    .line 79
    iget-object v0, p0, La/c/d;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    iget-object v0, p0, La/c/d;->d:Landroid/os/HandlerThread;

    invoke-direct {p0, v0}, La/c/d;->a(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, La/c/d;->e:Landroid/os/Handler;

    .line 82
    const-string v0, "Library Version : 0.0D"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, La/c/d;->a(Ljava/lang/String;I)V

    .line 83
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0}, La/c/d;->a(Ljava/lang/String;)Z

    .line 84
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0}, La/c/d;->a(Ljava/lang/String;)Z

    .line 85
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v0}, La/c/d;->a(Ljava/lang/String;)Z

    .line 86
    return-void
.end method

.method public a(La/c/a;)V
    .locals 2

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, La/c/d;->a(La/c/a;J)V

    .line 101
    return-void
.end method

.method public a(La/c/a;J)V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p1}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, La/c/d;->a(Landroid/os/Message;J)V

    .line 106
    return-void
.end method

.method public a(Landroid/os/Message;J)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0, p1}, La/c/d;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, La/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, La/c/d;->f:La/c/c;

    iget v1, v0, La/c/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, La/c/c;->d:I

    .line 122
    iget-object v0, p0, La/c/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 215
    iget-object v1, p0, La/c/d;->f:La/c/c;

    iget v1, v1, La/c/c;->c:I

    if-lt v1, v0, :cond_0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 231
    iget-object v1, p0, La/c/d;->h:La/a/a/a;

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    iget-object v1, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v1}, La/a/a/a;->a()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 235
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, La/c/d;->h:La/a/a/a;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, La/c/d;->h:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->c()V

    .line 245
    :cond_0
    return-void
.end method
