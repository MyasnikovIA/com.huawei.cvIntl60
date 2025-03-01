.class public Lui_Controller/ui_Liveview/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Integer;

.field private b:Lui_Controller/ui_Liveview/UI_LiveViewController;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 55
    iput-boolean v1, p0, Lui_Controller/ui_Liveview/b;->c:Z

    .line 56
    iput-boolean v1, p0, Lui_Controller/ui_Liveview/b;->d:Z

    .line 57
    iput-boolean v1, p0, Lui_Controller/ui_Liveview/b;->e:Z

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Liveview/b;->a:Ljava/lang/Integer;

    .line 65
    iput-object p1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 66
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 2284
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ar:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 2285
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2286
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->l()V

    .line 2287
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->af()V

    .line 2300
    :cond_0
    :goto_0
    return-void

    .line 2290
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->at:Z

    if-nez v0, :cond_0

    .line 2291
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lui_Controller/b/k;->at:Z

    .line 2292
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->j()V

    goto :goto_0

    .line 2298
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2216

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 60
    const-string v0, "UI_LiveViewHandler"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 2362
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->k()I

    .line 2363
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->l()I

    .line 2364
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 2420
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 2421
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 2422
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 2423
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a005f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 2424
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    move v7, v1

    .line 2421
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2426
    return-void
.end method

.method private d()V
    .locals 10

    .prologue
    const v9, 0x7f0a0051

    const v8, 0x7f0a0050

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2430
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ae:I

    if-nez v0, :cond_1

    .line 2432
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->h()LGeneralFunction/j/b;

    invoke-static {}, LGeneralFunction/j/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2434
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 2435
    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v4, v4, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 2436
    invoke-virtual {v4}, Lui_Controller/ui_StartMode/UI_ModeMain;->h()LGeneralFunction/j/b;

    move-result-object v4

    invoke-virtual {v4}, LGeneralFunction/j/b;->d()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 2437
    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    move v7, v1

    .line 2434
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    .line 2459
    :goto_0
    return-void

    .line 2442
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2a00

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 2446
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->h()LGeneralFunction/j/b;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/j/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 2447
    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->C()Lui_Controller/ui_Liveview/a;

    move-result-object v0

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->h()LGeneralFunction/j/b;

    move-result-object v3

    invoke-virtual {v3}, LGeneralFunction/j/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2448
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 2449
    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0162

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v4, v4, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 2450
    invoke-virtual {v4}, Lui_Controller/ui_StartMode/UI_ModeMain;->h()LGeneralFunction/j/b;

    move-result-object v4

    invoke-virtual {v4}, LGeneralFunction/j/b;->c()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 2451
    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v7, [I

    fill-array-data v6, :array_1

    move v7, v1

    .line 2448
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    goto :goto_0

    .line 2456
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2a03

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 2437
    :array_0
    .array-data 4
        0x2a01
        0x2a16
    .end array-data

    .line 2451
    :array_1
    .array-data 4
        0x2a04
        0x2a17
    .end array-data
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    const v9, 0x7f0a0091

    const/4 v8, 0x2

    const/4 v10, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 74
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1246
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1288
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 76
    :sswitch_1
    const-string v0, "MSG_REMOTE_EVENT_DISCONNECTION"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2288

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 80
    :sswitch_2
    const-string v0, "MSG_REMOTE_EVENT_POWER_OFF"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 83
    :sswitch_3
    const-string v0, "MSG_REMOTE_EVENT_LOW_BATTERY"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 84
    invoke-static {v2}, LGeneralFunction/m/a;->C(I)V

    goto :goto_0

    .line 87
    :sswitch_4
    const-string v0, "MSG_REMOTE_EVENT_MEMORY_FULL"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 90
    :sswitch_5
    const-string v3, "MSG_REMOTE_EVENT_CAMERA_OVERHEAT"

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 91
    const-string v3, "value"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    iget-boolean v3, p0, Lui_Controller/ui_Liveview/b;->c:Z

    if-nez v3, :cond_1

    .line 93
    iput-boolean v1, p0, Lui_Controller/ui_Liveview/b;->c:Z

    .line 94
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 95
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a006e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 96
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    .line 94
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 99
    :cond_1
    const-string v3, "value"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v8, :cond_2

    iget-boolean v3, p0, Lui_Controller/ui_Liveview/b;->e:Z

    if-nez v3, :cond_2

    .line 101
    iput-boolean v1, p0, Lui_Controller/ui_Liveview/b;->e:Z

    .line 102
    const-string v0, "Camera overheat, auto power off"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 103
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 104
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a006f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 105
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    .line 103
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4817

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    .line 108
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2225

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 110
    :cond_2
    const-string v3, "value"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v10, :cond_3

    iget-boolean v3, p0, Lui_Controller/ui_Liveview/b;->d:Z

    if-nez v3, :cond_3

    .line 112
    const-string v0, "Camera cold"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 113
    iput-boolean v1, p0, Lui_Controller/ui_Liveview/b;->d:Z

    .line 114
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 115
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a006c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 116
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    .line 114
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 120
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown thermal status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 125
    :sswitch_6
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ar:I

    const/16 v3, 0xa

    if-gt v0, v3, :cond_4

    .line 126
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2216

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 130
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 132
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    .line 133
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLjava/lang/String;)V

    .line 134
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L()V

    .line 136
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->W()V

    goto/16 :goto_0

    .line 140
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->af()V

    .line 142
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 144
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4834

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 146
    new-instance v0, La/c/a;

    const/16 v1, 0x4830

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 147
    const-string v1, "app_version"

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 155
    :sswitch_7
    const-string v0, "MSG_REMOTE_USB_CORE_DETACH"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 156
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 157
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(Z)V

    .line 158
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->R()V

    .line 159
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ar:I

    const/16 v3, 0xa

    if-gt v0, v3, :cond_c

    .line 160
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    .line 167
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->W()V

    .line 168
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v2, v0, Lui_Controller/b/k;->at:Z

    .line 169
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->y:Z

    .line 170
    iput-boolean v2, p0, Lui_Controller/ui_Liveview/b;->c:Z

    .line 171
    iput-boolean v2, p0, Lui_Controller/ui_Liveview/b;->d:Z

    .line 172
    iput-boolean v2, p0, Lui_Controller/ui_Liveview/b;->e:Z

    .line 173
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v3, 0x0

    iput-object v3, v0, Lui_Controller/b/k;->av:LGeneralFunction/Player/player/h;

    .line 174
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f()I

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->e:LGeneralFunction/d/c;

    invoke-virtual {v0}, LGeneralFunction/d/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete un-complete file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->e:LGeneralFunction/d/c;

    invoke-virtual {v3}, LGeneralFunction/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 177
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->e:LGeneralFunction/d/c;

    invoke-virtual {v3}, LGeneralFunction/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 179
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->e()V

    .line 181
    :cond_7
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a()V

    .line 182
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ak:I

    if-eqz v0, :cond_8

    .line 183
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a007b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 184
    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0075

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 185
    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f07

    move v4, v1

    move v5, v1

    .line 183
    invoke-static/range {v3 .. v9}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ak:I

    .line 189
    :cond_8
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->Z:Z

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->aa:Z

    .line 192
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->ab:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 194
    :cond_9
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x120

    if-ne v0, v1, :cond_d

    .line 196
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 197
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IZ)V

    .line 198
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220c

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 199
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J()V

    .line 231
    :cond_a
    :goto_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 232
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Z)V

    .line 236
    :cond_b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ar:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 164
    :cond_c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLjava/lang/String;)V

    .line 165
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    goto/16 :goto_1

    .line 201
    :cond_d
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_e

    .line 203
    const-string v0, "[USB_DETACH] ui_ModeDef.UI_MODE_VIEW_RECORDING"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 204
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v1, 0x4

    iput v1, v0, Lui_Controller/b/k;->S:I

    .line 205
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2257

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_2

    .line 207
    :cond_e
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x131

    if-ne v0, v1, :cond_f

    .line 209
    const-string v0, "[USB_DETACH] ui_ModeDef.UI_MODE_VIEW_RECORDING_STOP"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 210
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->x:Z

    if-eqz v0, :cond_a

    .line 211
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ac()V

    goto/16 :goto_2

    .line 214
    :cond_f
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_10

    .line 216
    invoke-direct {p0}, Lui_Controller/ui_Liveview/b;->b()V

    .line 217
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2256

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_2

    .line 219
    :cond_10
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x150

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 220
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x160

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 221
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x1a0

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 222
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x1b0

    if-ne v0, v1, :cond_12

    .line 224
    :cond_11
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2259

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_2

    .line 227
    :cond_12
    invoke-direct {p0}, Lui_Controller/ui_Liveview/b;->b()V

    .line 228
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ae()V

    goto/16 :goto_2

    .line 245
    :sswitch_8
    const-string v0, "MSG_UI_VIEW_USB_CONNECTION_ERROR!"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 249
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    goto/16 :goto_0

    .line 257
    :sswitch_9
    const-string v0, "MSG_REMOTE_USB_CORE_ATTACH"

    invoke-direct {p0, v0, v8}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 258
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->e:Z

    .line 259
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v2, v0, Lui_Controller/b/k;->at:Z

    .line 260
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 261
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v1, v0, Lui_Controller/b/j;->d:Z

    .line 262
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 263
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 265
    :cond_13
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->T()V

    goto/16 :goto_0

    .line 274
    :sswitch_a
    const-string v1, "usb_permission"

    invoke-virtual {v0, v1}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 275
    const-string v0, "has permission, need init usb"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 276
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->d:Z

    .line 277
    invoke-direct {p0}, Lui_Controller/ui_Liveview/b;->a()V

    goto/16 :goto_0

    .line 280
    :cond_14
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 281
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L()V

    goto/16 :goto_0

    .line 287
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f00

    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 294
    :sswitch_c
    const-string v1, "thermal_status"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    new-instance v1, La/c/a;

    const/16 v2, 0x4612

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    .line 296
    const-string v2, "value"

    const-string v3, "thermal_status"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, La/c/a;->a(Ljava/lang/String;I)V

    .line 297
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    goto/16 :goto_0

    .line 303
    :sswitch_d
    const-string v3, "result"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_15

    .line 304
    const-string v0, "Get camera FW version fail"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 305
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const-string v0, "USB disconnected, get fw version fail"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 307
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLjava/lang/String;)V

    .line 308
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    goto/16 :goto_0

    .line 313
    :cond_15
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g()Z

    move-result v3

    if-nez v3, :cond_16

    .line 314
    const-string v0, "APP onPaused, do not continue, send close communication instead"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 315
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x480b

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 319
    :cond_16
    const-string v3, "fw_version"

    invoke-virtual {v0, v3}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput-object v0, v3, Lui_Controller/b/h;->c:Ljava/lang/String;

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera FW version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Target FW version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "v1.3B00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bIsForceFWUpgrade: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v4, v4, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-boolean v4, v4, Lui_Controller/ui_StartMode/UI_ModeMain;->g:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v8}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 352
    const-string v3, "v1.3B00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_19

    .line 353
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v2, v3, Lui_Controller/b/f;->r:Z

    .line 354
    const-string v3, "v1.3C00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_18

    .line 355
    const-string v0, "Camera is test FW"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 479
    :cond_17
    :goto_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2223

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 358
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to update App ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") to latest version: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "v1.3B00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 359
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-boolean v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->h:Z

    if-eqz v0, :cond_17

    .line 360
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0175

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 361
    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0176

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 362
    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f07

    move v4, v1

    move v5, v1

    .line 360
    invoke-static/range {v3 .. v9}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    .line 365
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 366
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :cond_19
    const-string v3, "v1.3B00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_25

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to update camera ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to latest version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "v1.3B00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 373
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-boolean v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->g:Z

    if-eqz v3, :cond_17

    .line 375
    const-string v3, "v0.2000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1a

    .line 376
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 377
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v3, La/c/a;

    const/16 v4, 0x4817

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 378
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 379
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a017e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 380
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    .line 378
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 384
    :cond_1a
    const-string v3, "v0.2300"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1b

    .line 385
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 386
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v3, La/c/a;

    const/16 v4, 0x4817

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 387
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 388
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0179

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 389
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    .line 387
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 393
    :cond_1b
    const-string v3, "v0.2B00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1c

    .line 394
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 395
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v3, La/c/a;

    const/16 v4, 0x4817

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 396
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 397
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a017a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 398
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    .line 396
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 402
    :cond_1c
    const-string v3, "v0.2D00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1d

    .line 403
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 404
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v3, La/c/a;

    const/16 v4, 0x4817

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 405
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 406
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a017b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 407
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    .line 405
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 411
    :cond_1d
    const-string v3, "v0.3700"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1e

    .line 412
    const-string v3, "v1.3B00"

    const-string v4, "v0.3700"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 413
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 414
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v3, La/c/a;

    const/16 v4, 0x4817

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 415
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 416
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a017c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 417
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    .line 415
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 422
    :cond_1e
    const-string v3, "v0.4300"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1f

    .line 423
    const-string v3, "v1.3B00"

    const-string v4, "v0.4300"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 424
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 425
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v3, La/c/a;

    const/16 v4, 0x4817

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 426
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 427
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a017d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 428
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    .line 426
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 433
    :cond_1f
    const-string v3, "v1.0900"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_20

    .line 434
    const-string v3, "v1.3B00"

    const-string v4, "v1.0900"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 435
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v1, v0, Lui_Controller/b/f;->r:Z

    .line 436
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 437
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 438
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 439
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2427

    .line 437
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 444
    :cond_20
    const-string v3, "v1.3A00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_21

    .line 445
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v1, v0, Lui_Controller/b/f;->r:Z

    .line 446
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 447
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 448
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 449
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2427

    .line 447
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 453
    :cond_21
    const-string v3, "v1.2900"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Domestic last version checked: camera ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 456
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v2, v0, Lui_Controller/b/f;->r:Z

    .line 457
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2223

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 461
    :cond_22
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLjava/lang/String;)V

    .line 462
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v1, v3, Lui_Controller/b/f;->r:Z

    .line 463
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    new-instance v4, La/c/a;

    const/16 v5, 0x228f

    invoke-direct {v4, v5}, La/c/a;-><init>(I)V

    invoke-virtual {v3, v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    .line 464
    const-string v3, "v1.0A00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_23

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v0, v0, Lui_Controller/b/j;->e:Z

    if-eqz v0, :cond_24

    :cond_23
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 465
    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "fwUpdateLater"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 466
    :cond_24
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 467
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 468
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 469
    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0094

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 467
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 476
    :cond_25
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v2, v0, Lui_Controller/b/f;->r:Z

    goto/16 :goto_3

    .line 485
    :sswitch_e
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x120

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f()I

    move-result v0

    if-nez v0, :cond_26

    .line 486
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x481b

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 488
    :cond_26
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x221c

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 494
    :sswitch_f
    new-instance v0, La/c/a;

    const/16 v1, 0x4857

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING PhotoResolutionType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, LGeneralFunction/m/a;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING VideoResolutionType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, LGeneralFunction/m/a;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING EvbValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, LGeneralFunction/m/a;->n()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING WbValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, LGeneralFunction/m/a;->k()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING FilterValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, LGeneralFunction/m/a;->l()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 500
    const-string v1, "photo_resolution"

    invoke-static {}, LGeneralFunction/m/a;->c()I

    move-result v3

    invoke-static {v3}, La/c/b;->e(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 501
    const-string v1, "video_resolution"

    invoke-static {}, LGeneralFunction/m/a;->b()I

    move-result v3

    invoke-static {v3}, La/c/b;->f(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 502
    const-string v1, "evb"

    invoke-static {}, LGeneralFunction/m/a;->n()I

    move-result v3

    invoke-static {v3}, La/c/b;->b(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 503
    const-string v1, "white_balance"

    invoke-static {}, LGeneralFunction/m/a;->o()I

    move-result v3

    invoke-static {v3}, La/c/b;->c(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 504
    const-string v1, "filter"

    invoke-static {}, LGeneralFunction/m/a;->p()I

    move-result v3

    invoke-static {v3}, La/c/b;->d(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 505
    const-string v1, "logo_type"

    invoke-static {}, LGeneralFunction/m/a;->i()I

    move-result v3

    invoke-static {v3}, La/c/b;->h(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 506
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v1

    const/16 v3, 0x150

    if-eq v1, v3, :cond_27

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v1

    const/16 v3, 0x1a0

    if-ne v1, v3, :cond_28

    .line 507
    :cond_27
    const-string v1, "bitrate"

    invoke-static {}, LGeneralFunction/m/a;->m()I

    move-result v3

    invoke-static {v3}, La/c/b;->i(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 517
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING Bitrate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "bitrate"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 519
    new-instance v1, La/a/a/b;

    invoke-direct {v1}, La/a/a/b;-><init>()V

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 521
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 522
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 523
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, La/a/a/b;->a:I

    .line 524
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 525
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v1, La/a/a/b;->b:B

    .line 526
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 527
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v1, La/a/a/b;->c:B

    .line 528
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 529
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v1, La/a/a/b;->d:B

    .line 530
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "mm"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 531
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v1, La/a/a/b;->e:B

    .line 532
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 533
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v1, La/a/a/b;->f:B

    .line 534
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "SSS"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 535
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, La/a/a/b;->h:I

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set DateTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, La/a/a/b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v1, La/a/a/b;->b:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v1, La/a/a/b;->c:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v1, La/a/a/b;->d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v1, La/a/a/b;->e:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v1, La/a/a/b;->f:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 538
    const-string v2, "DateTime"

    new-instance v3, La/c/a$a;

    invoke-direct {v3, v1}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    .line 539
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 510
    :cond_28
    invoke-static {}, LGeneralFunction/m/a;->d()I

    move-result v1

    if-nez v1, :cond_29

    .line 511
    const-string v1, "bitrate"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 514
    :cond_29
    const-string v1, "bitrate"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 544
    :sswitch_10
    const-string v1, "result"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->v:I

    .line 547
    new-instance v0, La/c/a;

    const/16 v1, 0x4811

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 548
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v1

    const/16 v2, 0x150

    if-eq v1, v2, :cond_2a

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v1

    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_2b

    .line 549
    :cond_2a
    const-string v1, "resolution"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 554
    :goto_5
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 552
    :cond_2b
    const-string v1, "resolution"

    invoke-static {}, LGeneralFunction/m/a;->d()I

    move-result v2

    invoke-static {v2}, La/c/b;->g(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto :goto_5

    .line 560
    :sswitch_11
    const-string v3, "result"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2d

    .line 562
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v3, La/c/a;

    const/16 v4, 0x4820

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 563
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L()V

    .line 564
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLjava/lang/String;)V

    .line 565
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->v:I

    .line 566
    invoke-static {}, LGeneralFunction/m/a;->d()I

    move-result v0

    if-nez v0, :cond_2c

    .line 568
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "showLiveViewModeToast"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Ljava/lang/String;Z)V

    .line 571
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 572
    const-string v1, "showLiveViewModeToast"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 577
    :cond_2c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 578
    const-string v2, "showLiveViewModeToast"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 580
    :cond_2d
    const-string v3, "result"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_2f

    .line 581
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->v:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2e

    .line 582
    const-string v0, "Over 1000 times check start live view status get busy. Connection error."

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 583
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x221d

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    .line 584
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->v:I

    goto/16 :goto_0

    .line 588
    :cond_2e
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4871

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    .line 589
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v0, Lui_Controller/b/k;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lui_Controller/b/k;->v:I

    goto/16 :goto_0

    .line 591
    :cond_2f
    const-string v1, "result"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_30

    .line 592
    const-string v0, "[UsbRemote] preparing live view"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 593
    :cond_30
    const-string v1, "result"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_31

    .line 594
    const-string v0, "[UsbRemote] skip start live view checking"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 596
    :cond_31
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 597
    const-string v0, "[UsbRemote] check start live view status: fail"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 598
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x221d

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    .line 599
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->v:I

    goto/16 :goto_0

    .line 605
    :sswitch_12
    const-string v3, "result"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_32

    .line 606
    const-string v0, "MSG_REMOTE_USB_CMD_CHECK_STOP_LIVEVIEW_STATUS success"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 608
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x221c

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 609
    :cond_32
    const-string v3, "result"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_33

    .line 611
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4872

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 612
    :cond_33
    const-string v1, "result"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_34

    .line 613
    const-string v0, "[UsbRemote] skip stop live view checking"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 615
    :cond_34
    const-string v0, "[UsbRemote] check stop live view status: fail"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 616
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x221d

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 623
    :sswitch_13
    new-instance v0, LGeneralFunction/p;

    invoke-direct {v0}, LGeneralFunction/p;-><init>()V

    .line 624
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v4, v4, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v4}, LGeneralFunction/e/e;->c()I

    move-result v4

    invoke-virtual {v3, v4, v2}, LGeneralFunction/e/d;->h(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LGeneralFunction/p;->a(Ljava/lang/String;)I

    move-result v0

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add CroppedArea tag result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 626
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->c()I

    move-result v3

    invoke-virtual {v1, v3, v2}, LGeneralFunction/e/d;->h(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ah()Z

    goto/16 :goto_0

    .line 632
    :sswitch_14
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v2, 0x120

    if-ne v0, v2, :cond_35

    .line 633
    const-string v0, "new capture, no need to enable leave button"

    invoke-direct {p0, v0, v8}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 639
    :goto_6
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g()Z

    move-result v0

    if-nez v0, :cond_36

    .line 640
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v2, 0x120

    if-eq v0, v2, :cond_0

    .line 641
    const-string v0, "[CaptureDBG] Download complete and capture done, close communication"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 642
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x480b

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 636
    :cond_35
    const-string v0, "all main pic downloaded, enable leave button"

    invoke-direct {p0, v0, v8}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 637
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J()V

    goto :goto_6

    .line 646
    :cond_36
    const-string v0, "[CaptureDBG] Download complete, init live view"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 647
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->l()V

    goto/16 :goto_0

    .line 653
    :sswitch_15
    invoke-virtual {v0}, La/c/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 654
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 657
    :sswitch_16
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->D()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 661
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    .line 662
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iput-boolean v1, v0, Lui_Controller/b/j;->e:Z

    .line 663
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ah()Z

    .line 665
    :cond_37
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->E()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v3, 0x110

    if-ne v0, v3, :cond_38

    .line 666
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 669
    :cond_38
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-eq v0, v1, :cond_39

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-ne v0, v8, :cond_0

    .line 671
    :cond_39
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2260

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 676
    :sswitch_17
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 677
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLandroid/graphics/Bitmap;)V

    .line 678
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->aJ:Z

    .line 680
    :cond_3a
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ah()Z

    goto/16 :goto_0

    .line 683
    :sswitch_18
    const-string v3, "LiveViewFrame"

    invoke-virtual {v0, v3}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/d;

    .line 685
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v3, v3, Lui_Controller/b/k;->I:Lui_Controller/b/l;

    iget-boolean v3, v3, Lui_Controller/b/l;->l:Z

    if-eqz v3, :cond_3c

    .line 686
    iget-object v0, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v0}, LGeneralFunction/c/d;->d()V

    .line 760
    :cond_3b
    :goto_7
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->j:Lui_Controller/b/o;

    iget-boolean v0, v0, Lui_Controller/b/o;->c:Z

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->j:Lui_Controller/b/o;

    iput-boolean v1, v0, Lui_Controller/b/o;->c:Z

    goto/16 :goto_0

    .line 688
    :cond_3c
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v4, v3, Lui_Controller/b/k;->R:I

    iget-object v5, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    iget v5, v5, LGeneralFunction/c/d;->a:I

    add-int/2addr v4, v5

    iput v4, v3, Lui_Controller/b/k;->R:I

    .line 689
    iget-object v3, v0, La/a/a/d;->b:Ljava/lang/String;

    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 691
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->k()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 693
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->E()Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->D()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 694
    :cond_3d
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v4, 0x222a

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 697
    :cond_3e
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/a/a/d;)V

    .line 699
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->M()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v3, Lui_Controller/b/k;->d:I

    const/16 v4, 0x131

    if-eq v3, v4, :cond_3f

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v3, Lui_Controller/b/k;->d:I

    const/16 v4, 0x130

    if-eq v3, v4, :cond_3f

    .line 703
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v4, 0x2221

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 706
    :cond_3f
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v3

    const/16 v4, 0x130

    if-ne v3, v4, :cond_42

    .line 708
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v3, v3, Lui_Controller/b/k;->am:LGeneralFunction/r/b;

    if-eqz v3, :cond_0

    .line 711
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v4, v3, Lui_Controller/b/k;->az:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_40

    iget-object v3, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v3}, LGeneralFunction/c/d;->a()[B

    move-result-object v3

    invoke-static {v3}, LGeneralFunction/e;->b([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    :cond_40
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v4, v3, Lui_Controller/b/k;->az:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_41

    .line 716
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v4, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    iget-wide v4, v4, LGeneralFunction/c/d;->b:J

    const-wide/16 v6, 0xa6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lui_Controller/b/k;->ay:J

    .line 717
    iget-object v3, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    iget v3, v3, LGeneralFunction/c/d;->a:I

    new-array v3, v3, [B

    .line 718
    iget-object v4, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v4}, LGeneralFunction/c/d;->a()[B

    move-result-object v4

    iget-object v5, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    iget v5, v5, LGeneralFunction/c/d;->a:I

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 719
    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v4, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a([B)V

    .line 720
    invoke-static {}, LGeneralFunction/m/a;->a()I

    move-result v3

    if-ne v3, v1, :cond_43

    .line 722
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v4, v4, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v4, v4, Lui_Controller/b/e;->ab:Ljava/lang/String;

    invoke-static {v4, v2}, LGeneralFunction/d;->a(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-double v4, v4

    iput-wide v4, v3, Lui_Controller/b/k;->aE:D

    .line 728
    :goto_8
    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->m(Z)Z

    .line 731
    :cond_41
    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(La/a/a/d;)V

    .line 732
    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v4, v2, Lui_Controller/b/k;->az:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Lui_Controller/b/k;->az:J

    .line 739
    :cond_42
    :goto_9
    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->C()Lui_Controller/ui_Liveview/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lui_Controller/ui_Liveview/a;->a(La/a/a/d;)V

    goto/16 :goto_7

    .line 726
    :cond_43
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    sget-object v4, Lui_Controller/a/c;->a:Ljava/lang/String;

    invoke-static {v4, v2}, LGeneralFunction/d;->a(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-double v4, v4

    iput-wide v4, v3, Lui_Controller/b/k;->aE:D

    goto :goto_8

    .line 737
    :cond_44
    iget-object v2, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v2}, LGeneralFunction/c/d;->d()V

    goto :goto_9

    .line 740
    :cond_45
    iget-object v3, v0, La/a/a/d;->b:Ljava/lang/String;

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknow liveview frame type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, La/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 766
    :sswitch_19
    const-string v3, "MSG_UI_VIEW_360_DECODER_STATUS_CHANGE"

    invoke-direct {p0, v3, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 767
    const-string v3, "sphericalVideoPlayerStatus"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 769
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v3, Lui_Controller/b/k;->d:I

    const/16 v4, 0x131

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v3, Lui_Controller/b/k;->d:I

    const/16 v4, 0x130

    if-eq v3, v4, :cond_0

    .line 775
    if-ne v0, v1, :cond_4d

    .line 776
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->a:Ljava/lang/Integer;

    .line 777
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 779
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Liveview/b;->a:Ljava/lang/Integer;

    .line 780
    const-string v0, "MSG_UI_VIEW_360_DECODER_STATUS_CHANGE STAND_BY"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 781
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v8, v0, Lui_Controller/b/k;->q:I

    .line 782
    invoke-static {}, LGeneralFunction/m/a;->g()I

    move-result v0

    if-nez v0, :cond_46

    .line 784
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->U:I

    if-nez v0, :cond_49

    .line 785
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setIsShowThumbNail(Z)V

    .line 790
    :cond_46
    :goto_a
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v8}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setPlayerMode(I)V

    .line 792
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->q:I

    if-nez v0, :cond_4a

    .line 793
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setViewType(I)V

    .line 794
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setInteractiveMode(I)V

    .line 804
    :cond_47
    :goto_b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->av:LGeneralFunction/Player/player/h;

    if-eqz v0, :cond_48

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter.playerFormat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v2, v2, Lui_Controller/b/k;->av:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter.focalLength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v2, v2, Lui_Controller/b/k;->av:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->l:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter.xAxis: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v2, v2, Lui_Controller/b/k;->av:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->q:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter.yAxis: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v2, v2, Lui_Controller/b/k;->av:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->r:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 810
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v2, v2, Lui_Controller/b/k;->av:LGeneralFunction/Player/player/h;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setSphericalParameter(LGeneralFunction/Player/player/h;)V

    .line 813
    :cond_48
    invoke-static {}, LGeneralFunction/m/a;->d()I

    move-result v0

    if-ne v0, v1, :cond_4c

    .line 814
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/16 v1, 0x780

    const/16 v2, 0x3c0

    invoke-virtual {v0, v1, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(II)V

    .line 821
    :goto_c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->g()I

    .line 822
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x120

    if-eq v0, v1, :cond_0

    .line 823
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J()V

    goto/16 :goto_0

    .line 787
    :cond_49
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setIsShowThumbNail(Z)V

    goto/16 :goto_a

    .line 795
    :cond_4a
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->q:I

    if-ne v0, v1, :cond_4b

    .line 796
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setViewType(I)V

    .line 797
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v10}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setInteractiveMode(I)V

    goto/16 :goto_b

    .line 798
    :cond_4b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->q:I

    if-ne v0, v8, :cond_47

    .line 799
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v10}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setViewType(I)V

    .line 800
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setInteractiveMode(I)V

    goto/16 :goto_b

    .line 818
    :cond_4c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/16 v1, 0x500

    const/16 v2, 0x280

    invoke-virtual {v0, v1, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(II)V

    goto :goto_c

    .line 827
    :cond_4d
    if-nez v0, :cond_4e

    .line 828
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Liveview/b;->a:Ljava/lang/Integer;

    .line 831
    const-string v0, "MSG_UI_VIEW_360_DECODER_STATUS_CHANGE NOT_READY"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 832
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->p()V

    goto/16 :goto_0

    .line 833
    :cond_4e
    if-ne v0, v8, :cond_4f

    .line 834
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Liveview/b;->a:Ljava/lang/Integer;

    .line 836
    const-string v0, "MSG_UI_VIEW_360_DECODER_STATUS_CHANGE PLAY_READY"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 839
    :cond_4f
    if-ne v0, v10, :cond_50

    .line 840
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Liveview/b;->a:Ljava/lang/Integer;

    .line 843
    const-string v0, "MSG_UI_VIEW_360_DECODER_STATUS_CHANGE PLAY_COMPLETE"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 844
    :cond_50
    const/4 v1, 0x4

    if-ne v0, v1, :cond_51

    .line 845
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Liveview/b;->a:Ljava/lang/Integer;

    .line 848
    const-string v0, "MSG_UI_VIEW_360_DECODER_STATUS_CHANGE STOP"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 849
    :cond_51
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 850
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Liveview/b;->a:Ljava/lang/Integer;

    .line 853
    const-string v0, "MSG_UI_VIEW_360_DECODER_STATUS_CHANGE DESTROY"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 861
    :sswitch_1a
    const-string v0, "*****Capture or recording event time out*****"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 862
    invoke-static {v8}, LGeneralFunction/g;->a(I)V

    .line 863
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2288

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 866
    :sswitch_1b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->U()V

    goto/16 :goto_0

    .line 869
    :sswitch_1c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->s()V

    .line 870
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V

    .line 871
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 872
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0182

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2104

    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 873
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v10, v0, Lui_Controller/b/h;->a:I

    goto/16 :goto_0

    .line 876
    :sswitch_1d
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 877
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v2, v0, Lui_Controller/b/h;->a:I

    .line 879
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->aj()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 880
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->o()V

    .line 881
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_53

    .line 882
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_52

    .line 883
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 885
    :cond_52
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v3, 0x0

    iput-object v3, v0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    .line 887
    :cond_53
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 888
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    .line 889
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v3, v3, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLandroid/graphics/Bitmap;)V

    .line 891
    :cond_54
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->k()I

    .line 892
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->i()V

    .line 900
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v3, 0x480b

    invoke-direct {v1, v3}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 901
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v2, v0, Lui_Controller/b/k;->at:Z

    .line 902
    iput-boolean v2, p0, Lui_Controller/ui_Liveview/b;->c:Z

    .line 903
    iput-boolean v2, p0, Lui_Controller/ui_Liveview/b;->d:Z

    .line 904
    iput-boolean v2, p0, Lui_Controller/ui_Liveview/b;->e:Z

    .line 905
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->j()V

    .line 907
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x131

    iput v1, v0, Lui_Controller/b/k;->d:I

    .line 909
    new-instance v0, La/c/a;

    const/16 v1, 0x221f

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 910
    const-string v1, "nextActivity"

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 911
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    goto/16 :goto_0

    .line 895
    :cond_55
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2104

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 916
    :sswitch_1e
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_56

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 917
    invoke-virtual {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v3

    if-ne v3, v1, :cond_59

    .line 919
    :cond_56
    const-string v1, "OK free done"

    invoke-direct {p0, v1, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 921
    const-string v1, "nextActivity"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x400

    if-ne v1, v3, :cond_58

    .line 923
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-boolean v1, v1, Lui_Controller/b/j;->f:Z

    if-nez v1, :cond_57

    .line 925
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;J)V

    goto/16 :goto_0

    .line 928
    :cond_57
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->f:Z

    .line 929
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-class v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 930
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x400

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v2, v3, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 932
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 936
    :cond_58
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->f:Z

    .line 937
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-class v3, Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 938
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x800

    iget-object v4, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v3, v4, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 939
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 940
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 945
    :cond_59
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;J)V

    goto/16 :goto_0

    .line 950
    :sswitch_1f
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 951
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v2, v0, Lui_Controller/b/h;->a:I

    .line 953
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->aj()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 954
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->o()V

    .line 955
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5b

    .line 956
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 957
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 959
    :cond_5a
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v3, 0x0

    iput-object v3, v0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    .line 961
    :cond_5b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 962
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    .line 963
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v3, v3, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLandroid/graphics/Bitmap;)V

    .line 965
    :cond_5c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->k()I

    .line 966
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->i()V

    .line 973
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v3, 0x480b

    invoke-direct {v1, v3}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 974
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v2, v0, Lui_Controller/b/k;->at:Z

    .line 975
    iput-boolean v2, p0, Lui_Controller/ui_Liveview/b;->c:Z

    .line 976
    iput-boolean v2, p0, Lui_Controller/ui_Liveview/b;->d:Z

    .line 977
    iput-boolean v2, p0, Lui_Controller/ui_Liveview/b;->e:Z

    .line 978
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->j()V

    .line 980
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x130

    iput v1, v0, Lui_Controller/b/k;->d:I

    .line 982
    new-instance v0, La/c/a;

    const/16 v1, 0x221f

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 983
    const-string v1, "nextActivity"

    const/16 v2, 0x810

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 984
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    goto/16 :goto_0

    .line 969
    :cond_5d
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2106

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 987
    :sswitch_20
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->f:Z

    .line 988
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(LGeneralFunction/a/a;)V

    .line 989
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 990
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 993
    :sswitch_21
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5e

    .line 994
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220d

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 995
    :cond_5e
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(I)V

    goto/16 :goto_0

    .line 1000
    :sswitch_22
    const-string v0, "MSG_UI_VIEW_EVENT_TIME_OUT_STOP"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1001
    invoke-static {v8}, LGeneralFunction/g;->a(I)V

    goto/16 :goto_0

    .line 1004
    :sswitch_23
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v2, v0, Lui_Controller/b/h;->a:I

    .line 1005
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_5f

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 1006
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x150

    if-eq v0, v1, :cond_5f

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 1007
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x1a0

    if-eq v0, v1, :cond_5f

    .line 1008
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1010
    :cond_5f
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 1011
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 1015
    :sswitch_24
    const-string v0, "MSG_UI_LIVE_STREAMING_FACEBOOK_LOGIN_DONE"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1016
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_60

    .line 1018
    const-string v0, "USB detached, ignore facebook login done"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1021
    :cond_60
    invoke-direct {p0}, Lui_Controller/ui_Liveview/b;->d()V

    goto/16 :goto_0

    .line 1026
    :sswitch_25
    const-string v0, "MSG_UI_LIVE_STREAMING_FACEBOOK_LOGIN_FAIL"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1027
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x110

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1028
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(Z)V

    goto/16 :goto_0

    .line 1033
    :sswitch_26
    const-string v0, "MSG_UI_LIVE_STREAMING_GOOGLE_LOGIN_DONE"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1034
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_61

    .line 1036
    const-string v0, "USB detached, ignore youtube login done"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1039
    :cond_61
    invoke-direct {p0}, Lui_Controller/ui_Liveview/b;->d()V

    goto/16 :goto_0

    .line 1044
    :sswitch_27
    const-string v0, "MSG_UI_LIVE_STREAMING_GOOGLE_LOGIN_FAIL"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1045
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x110

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1046
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(Z)V

    goto/16 :goto_0

    .line 1051
    :sswitch_28
    const-string v0, "MSG_UI_SYSTEM_ACTIVITY_INIT"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1055
    invoke-static {}, LGeneralFunction/m/a;->v()V

    .line 1058
    invoke-static {}, LGeneralFunction/n;->a()LGeneralFunction/n;

    move-result-object v0

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, LGeneralFunction/n;->a(Landroid/content/Context;)V

    .line 1059
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v0, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 1060
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-ne v0, v1, :cond_62

    .line 1072
    :goto_d
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->T:I

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->h(I)V

    goto/16 :goto_0

    .line 1064
    :cond_62
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-nez v0, :cond_63

    .line 1066
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(III)V

    goto :goto_d

    .line 1070
    :cond_63
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v8, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(III)V

    goto :goto_d

    .line 1078
    :sswitch_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UI_SYSTEM_ACTIVITY_RESUME:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1079
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2f02

    if-ne v0, v3, :cond_64

    .line 1081
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->h()V

    .line 1082
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v3, 0x501b

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(I)V

    .line 1085
    :cond_64
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v3, 0x1a0

    if-eq v0, v3, :cond_65

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 1086
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v3, 0x150

    if-ne v0, v3, :cond_66

    .line 1088
    :cond_65
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->al()V

    .line 1091
    :cond_66
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v3, 0x131

    if-ne v0, v3, :cond_67

    .line 1093
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->au:Z

    .line 1111
    :goto_e
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->h()LGeneralFunction/j/b;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/j/b;->g()LThirdParty/a/a;

    move-result-object v0

    invoke-virtual {v0}, LThirdParty/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    const-string v0, "Google account not exist"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1113
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->h()LGeneralFunction/j/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LGeneralFunction/j/b;->a(Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->h()LGeneralFunction/j/b;

    move-result-object v0

    invoke-virtual {v0, v2}, LGeneralFunction/j/b;->a(Z)V

    goto/16 :goto_0

    .line 1096
    :cond_67
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v0, v0, Lui_Controller/b/j;->d:Z

    if-eqz v0, :cond_6a

    .line 1097
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->d:Z

    .line 1098
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 1099
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->v()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1100
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->e(Z)V

    .line 1102
    :cond_68
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->y()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1103
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Z)V

    .line 1104
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(Z)V

    .line 1109
    :cond_69
    :goto_f
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->T()V

    goto :goto_e

    .line 1107
    :cond_6a
    invoke-direct {p0}, Lui_Controller/ui_Liveview/b;->a()V

    goto :goto_f

    .line 1118
    :sswitch_2a
    const-string v0, "MSG_UI_SYSTEM_ACTIVITY_PAUSE"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1119
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ak()V

    .line 1120
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->j()V

    .line 1121
    invoke-static {v1}, LGeneralFunction/m/a;->a(Z)V

    .line 1122
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v3, 0x110

    if-ne v0, v3, :cond_71

    .line 1124
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->Z:Z

    if-eqz v0, :cond_6b

    .line 1126
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->aa:Z

    .line 1127
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->ab:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1130
    :cond_6b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1131
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f()I

    move-result v0

    if-nez v0, :cond_6c

    .line 1132
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v3, La/c/a;

    const/16 v4, 0x480b

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 1134
    :cond_6c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ak:I

    .line 1137
    :cond_6d
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->am:LGeneralFunction/r/b;

    if-eqz v0, :cond_6e

    .line 1139
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ak()V

    .line 1140
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->R()V

    .line 1141
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZI)V

    .line 1142
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->r()V

    .line 1143
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V

    .line 1144
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->l(Z)V

    .line 1166
    :cond_6e
    :goto_10
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1169
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x120

    if-eq v0, v1, :cond_6f

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 1170
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f()I

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 1171
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x150

    if-eq v0, v1, :cond_6f

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 1172
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x160

    if-eq v0, v1, :cond_6f

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 1173
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x1a0

    if-eq v0, v1, :cond_6f

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 1174
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x1b0

    if-eq v0, v1, :cond_6f

    .line 1176
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v3, 0x480b

    invoke-direct {v1, v3}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 1178
    :cond_6f
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->ak:I

    .line 1181
    :cond_70
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->o()V

    goto/16 :goto_0

    .line 1147
    :cond_71
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v3, 0x130

    if-ne v0, v3, :cond_72

    .line 1149
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v8, v0, Lui_Controller/b/k;->S:I

    .line 1150
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->y:Z

    .line 1151
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224a

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_10

    .line 1153
    :cond_72
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v3, 0x131

    if-ne v0, v3, :cond_73

    .line 1155
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v2, v0, Lui_Controller/b/k;->au:Z

    .line 1156
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->y:Z

    .line 1157
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->x:Z

    if-eqz v0, :cond_6e

    .line 1158
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ac()V

    goto/16 :goto_10

    .line 1161
    :cond_73
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_6e

    .line 1163
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2256

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_10

    .line 1184
    :sswitch_2b
    const-string v0, "ACTIVITY_STOP"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1187
    :sswitch_2c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1188
    const-string v0, "Send Close communication at onDestroy"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1189
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x480b

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 1191
    :cond_74
    const-string v0, "AAA_ACTIVITY_DESTROY"

    invoke-direct {p0, v0, v10}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1207
    :sswitch_2d
    invoke-static {}, LGeneralFunction/m/a;->t()Z

    move-result v0

    if-nez v0, :cond_75

    .line 1209
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->i()V

    goto/16 :goto_0

    .line 1213
    :cond_75
    invoke-static {v1}, LGeneralFunction/m/a;->b(Z)V

    goto/16 :goto_0

    .line 1219
    :sswitch_2e
    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v3}, La/c/d;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1221
    const-string v3, "isMemoryFull"

    invoke-virtual {v0, v3}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1223
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-eq v0, v8, :cond_76

    .line 1224
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->n(Z)V

    goto/16 :goto_0

    .line 1227
    :cond_76
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->n(Z)V

    goto/16 :goto_0

    .line 1232
    :cond_77
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->T:I

    if-eq v0, v8, :cond_0

    .line 1233
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->n(Z)V

    goto/16 :goto_0

    .line 1240
    :sswitch_2f
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->j()I

    goto/16 :goto_0

    .line 1248
    :sswitch_30
    invoke-virtual {p0, p1}, Lui_Controller/ui_Liveview/b;->b(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1251
    :sswitch_31
    invoke-virtual {p0, p1}, Lui_Controller/ui_Liveview/b;->c(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1254
    :sswitch_32
    invoke-virtual {p0, p1}, Lui_Controller/ui_Liveview/b;->d(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1257
    :sswitch_33
    invoke-virtual {p0, p1}, Lui_Controller/ui_Liveview/b;->e(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1260
    :sswitch_34
    invoke-virtual {p0, p1}, Lui_Controller/ui_Liveview/b;->f(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1263
    :sswitch_35
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->C()Lui_Controller/ui_Liveview/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui_Controller/ui_Liveview/a;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1266
    :sswitch_36
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->C()Lui_Controller/ui_Liveview/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui_Controller/ui_Liveview/a;->b(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1269
    :sswitch_37
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->C()Lui_Controller/ui_Liveview/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui_Controller/ui_Liveview/a;->c(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1272
    :sswitch_38
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->C()Lui_Controller/ui_Liveview/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui_Controller/ui_Liveview/a;->d(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1275
    :sswitch_39
    invoke-virtual {p0, p1}, Lui_Controller/ui_Liveview/b;->g(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1278
    :sswitch_3a
    invoke-virtual {p0, p1}, Lui_Controller/ui_Liveview/b;->h(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1281
    :sswitch_3b
    invoke-virtual {p0, p1}, Lui_Controller/ui_Liveview/b;->i(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x2101 -> :sswitch_20
        0x2104 -> :sswitch_1d
        0x2106 -> :sswitch_1f
        0x2200 -> :sswitch_21
        0x220b -> :sswitch_0
        0x220c -> :sswitch_22
        0x220e -> :sswitch_19
        0x221a -> :sswitch_14
        0x221c -> :sswitch_f
        0x221d -> :sswitch_8
        0x221e -> :sswitch_29
        0x221f -> :sswitch_1e
        0x2221 -> :sswitch_17
        0x2222 -> :sswitch_15
        0x2223 -> :sswitch_e
        0x2228 -> :sswitch_2e
        0x222a -> :sswitch_16
        0x222c -> :sswitch_2f
        0x222d -> :sswitch_2f
        0x2288 -> :sswitch_1c
        0x2a50 -> :sswitch_24
        0x2a53 -> :sswitch_26
        0x2aa0 -> :sswitch_25
        0x2aa2 -> :sswitch_27
        0x2f01 -> :sswitch_28
        0x2f02 -> :sswitch_29
        0x2f03 -> :sswitch_2a
        0x2f04 -> :sswitch_2b
        0x2f05 -> :sswitch_2c
        0x2f06 -> :sswitch_0
        0x2f07 -> :sswitch_23
        0x2f0a -> :sswitch_b
        0x2f0e -> :sswitch_0
        0x2f0f -> :sswitch_0
        0x2f10 -> :sswitch_0
        0x2f11 -> :sswitch_2d
        0x4601 -> :sswitch_2
        0x4607 -> :sswitch_3
        0x4608 -> :sswitch_4
        0x4612 -> :sswitch_5
        0x4700 -> :sswitch_18
        0x4703 -> :sswitch_1
        0x4709 -> :sswitch_13
        0x4800 -> :sswitch_6
        0x4803 -> :sswitch_7
        0x4804 -> :sswitch_9
        0x4805 -> :sswitch_a
        0x4820 -> :sswitch_c
        0x4821 -> :sswitch_c
        0x4830 -> :sswitch_d
        0x4857 -> :sswitch_10
        0x4871 -> :sswitch_11
        0x4872 -> :sswitch_12
        0xf002 -> :sswitch_1a
        0xf003 -> :sswitch_1b
    .end sparse-switch

    .line 1246
    :sswitch_data_1
    .sparse-switch
        0x110 -> :sswitch_30
        0x120 -> :sswitch_31
        0x130 -> :sswitch_32
        0x131 -> :sswitch_33
        0x140 -> :sswitch_34
        0x150 -> :sswitch_35
        0x160 -> :sswitch_36
        0x170 -> :sswitch_39
        0x180 -> :sswitch_3a
        0x190 -> :sswitch_3b
        0x1a0 -> :sswitch_37
        0x1b0 -> :sswitch_38
    .end sparse-switch

    .line 469
    :array_0
    .array-data 4
        0x2428
        0x2427
    .end array-data
.end method

.method public b(Landroid/os/Message;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0xfffffff

    const-wide/16 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 1293
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 1299
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1840
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1304
    :sswitch_1
    const-string v0, "MSG_UI_SYSTEM_ACTIVITY_NEW_INTENT"

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1306
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->c()I

    move-result v2

    invoke-virtual {v0, v2, v7}, LGeneralFunction/e/d;->g(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1307
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->q()V

    .line 1308
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v2, 0x501c

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(I)V

    .line 1310
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    .line 1311
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_6

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onNewIntent] liveviewSphericalVideoPlayer != null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1314
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1316
    invoke-static {}, LGeneralFunction/m/a;->g()I

    move-result v0

    if-nez v0, :cond_2

    .line 1318
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->U:I

    if-nez v0, :cond_3

    .line 1319
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v7}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setIsShowThumbNail(Z)V

    .line 1323
    :cond_2
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v8}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setPlayerMode(I)V

    .line 1324
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setViewType(I)V

    .line 1325
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setInteractiveMode(I)V

    .line 1326
    invoke-static {}, LGeneralFunction/m/a;->d()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1327
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/16 v1, 0x780

    const/16 v2, 0x3c0

    invoke-virtual {v0, v1, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(II)V

    .line 1333
    :goto_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->g()I

    goto/16 :goto_0

    .line 1321
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setIsShowThumbNail(Z)V

    goto :goto_1

    .line 1331
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/16 v1, 0x500

    const/16 v2, 0x280

    invoke-virtual {v0, v1, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(II)V

    goto :goto_2

    .line 1335
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->p()V

    goto/16 :goto_0

    .line 1342
    :cond_6
    const-string v0, "[onNewIntent] liveviewSphericalVideoPlayer == null"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1343
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->p()V

    goto/16 :goto_0

    .line 1349
    :sswitch_2
    const-string v1, "result"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 1350
    const-string v0, "Set camera date time fail"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1354
    :cond_7
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4847

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 1359
    :sswitch_3
    const-string v1, "DateTime"

    invoke-virtual {v0, v1}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/b;

    check-cast v0, La/a/a/b;

    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CameraDateTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, La/a/a/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, La/a/a/b;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, La/a/a/b;->c:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, La/a/a/b;->d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, La/a/a/b;->e:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v0, v0, La/a/a/b;->f:B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1365
    :sswitch_4
    const-string v1, "result"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    const-string v0, "Get camera all setting fail"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1373
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->Z:Z

    if-eqz v0, :cond_8

    .line 1374
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->aa:Z

    .line 1375
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->ab:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1376
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 1378
    :cond_8
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->Z()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->F()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1380
    :cond_9
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 1382
    :cond_a
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1384
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(Z)V

    .line 1385
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 1388
    :cond_b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2104

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 1391
    :sswitch_6
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 1392
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v7, v0, Lui_Controller/b/h;->a:I

    .line 1393
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 1396
    :sswitch_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1397
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->finish()V

    goto/16 :goto_0

    .line 1401
    :sswitch_8
    const-string v0, "MSG_REMOTE_EVENT_RECORDING_START_OK"

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1403
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x130

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1404
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v2, 0x127

    iput v2, v0, Lui_Controller/b/k;->c:I

    .line 1409
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(I)V

    .line 1410
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->k:Z

    .line 1415
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220c

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1419
    :sswitch_9
    const-string v0, "MSG_REMOTE_EVENT_RECORDING_START_FAIL"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1420
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(I)V

    .line 1421
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220a

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 1422
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220c

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1426
    :sswitch_a
    const-string v0, "MSG_REMOTE_EVENT_CAPTURE_DONE2"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1430
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4301

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 1433
    :sswitch_c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4302

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 1436
    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "objMsgEx.getIntData(value1): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value1"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1437
    const-string v1, "value1"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, LGeneralFunction/m/a;->D(I)V

    .line 1438
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const-string v2, "value2"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lui_Controller/b/k;->e:I

    .line 1439
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2233

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1442
    :sswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "objMsgEx.getIntData(value1): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value1"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1443
    const-string v1, "value1"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, LGeneralFunction/m/a;->E(I)V

    .line 1444
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const-string v2, "value2"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lui_Controller/b/k;->f:I

    .line 1446
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->d:I

    const/16 v1, 0x131

    if-ne v0, v1, :cond_c

    .line 1447
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2101

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1448
    :cond_c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->d:I

    const/16 v1, 0x132

    if-ne v0, v1, :cond_d

    .line 1449
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x210c

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1451
    :cond_d
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(I)V

    .line 1453
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->o:Z

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v7, v0, Lui_Controller/b/k;->o:Z

    .line 1455
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x228d

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1460
    :sswitch_f
    const-string v1, "CameraStatus"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ulDscStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1462
    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/16 v1, 0xb

    if-ne v0, v1, :cond_f

    .line 1463
    :cond_e
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 1464
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2246

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1465
    :cond_f
    const/4 v1, 0x7

    if-eq v0, v1, :cond_10

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 1466
    :cond_10
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 1467
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224e

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1468
    :cond_11
    const/16 v1, 0x9

    if-ne v0, v1, :cond_12

    .line 1469
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x130

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1470
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4264

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 1471
    :cond_12
    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    .line 1472
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x140

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto/16 :goto_0

    .line 1474
    :cond_13
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2232

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1478
    :sswitch_10
    const-string v0, "MSG_UI_VIEW_GET_THUMBNAIL_IMAGE"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1479
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4822

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 1482
    :sswitch_11
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4232

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 1485
    :sswitch_12
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 1486
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    const/16 v1, 0x151

    iput v1, v0, Lui_Controller/b/h;->a:I

    goto/16 :goto_0

    .line 1489
    :sswitch_13
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x131

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1490
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2101

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1493
    :sswitch_14
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x132

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1494
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x210c

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1497
    :sswitch_15
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x12f

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1498
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x210a

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1501
    :sswitch_16
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x130

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1502
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2106

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1505
    :sswitch_17
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x133

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1506
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x210b

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1510
    :sswitch_18
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 1511
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x501e

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(I)V

    goto/16 :goto_0

    .line 1515
    :sswitch_19
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->N()V

    goto/16 :goto_0

    .line 1519
    :sswitch_1a
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->Q()V

    goto/16 :goto_0

    .line 1523
    :sswitch_1b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 1524
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x501e

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(I)V

    goto/16 :goto_0

    .line 1528
    :sswitch_1c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->O()V

    goto/16 :goto_0

    .line 1532
    :sswitch_1d
    const-string v2, "avgPingTime"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 1533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UI_VIEW_CHECK_AVG_PING_TIME_DONE, ping result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1534
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1535
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v7, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1539
    :cond_14
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, La/b/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1540
    invoke-direct {p0}, Lui_Controller/ui_Liveview/b;->c()V

    .line 1582
    :goto_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v7, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1543
    :cond_15
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, La/b/b/a;->b(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v8, :cond_16

    .line 1545
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1546
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1547
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a005d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1548
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0090

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0095

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move v2, v1

    .line 1545
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto :goto_3

    .line 1552
    :cond_16
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2a19

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_3

    .line 1588
    :sswitch_1e
    invoke-direct {p0}, Lui_Controller/ui_Liveview/b;->d()V

    goto/16 :goto_0

    .line 1594
    :sswitch_1f
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1595
    const-string v0, "USB detached, ignore start facebook"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1598
    :cond_17
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1599
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1600
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0054

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1601
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0090

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0095

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    move v2, v7

    move v7, v1

    .line 1598
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    goto/16 :goto_0

    .line 1608
    :sswitch_20
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1609
    const-string v0, "USB detached, ignore start youtube"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1612
    :cond_18
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1613
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1614
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0054

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1615
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0090

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0095

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    move v2, v7

    move v7, v1

    .line 1612
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    goto/16 :goto_0

    .line 1622
    :sswitch_21
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x1a0

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1623
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x225a

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 1628
    :sswitch_22
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x150

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1629
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2254

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 1634
    :sswitch_23
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1635
    const-string v0, "USB detached, ignore record msg"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1638
    :cond_19
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->M()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1639
    const-string v0, "Live view not ready, ignore record msg"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1642
    :cond_1a
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v1}, LGeneralFunction/d;->a(Landroid/content/Context;Z)Z

    .line 1643
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->al()V

    .line 1646
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x126

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1648
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ad()V

    goto/16 :goto_0

    .line 1651
    :sswitch_24
    const-string v2, "muxerInitResult"

    invoke-virtual {v0, v2}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1653
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->i(I)V

    .line 1654
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->Y()V

    .line 1655
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->k(Z)V

    .line 1656
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->I()V

    .line 1657
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->i(Z)V

    .line 1658
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->aa()V

    .line 1659
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4813

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 1663
    :cond_1b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ak()V

    .line 1664
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->k(Z)V

    .line 1665
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x120

    iput v1, v0, Lui_Controller/b/k;->c:I

    goto/16 :goto_0

    .line 1670
    :sswitch_25
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x140

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1671
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x123

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1672
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x422d

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 1673
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220b

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1676
    :sswitch_26
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1677
    const-string v0, "USB detached, ignore capture msg"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1680
    :cond_1c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->M()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1681
    const-string v0, "Live view not ready, ignore capture msg"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1684
    :cond_1d
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1685
    const-string v0, "All key disabled, ignore capture cmd"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1688
    :cond_1e
    const-string v0, "[CaptureDBG] Capture!"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1689
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->I()V

    .line 1690
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x120

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1691
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v7, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IZ)V

    .line 1692
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->k(Z)V

    .line 1693
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x121

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1694
    new-instance v0, La/c/a;

    const/16 v1, 0x4815

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 1695
    const-string v1, "orientation"

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v2, v2, Lui_Controller/b/k;->u:I

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1696
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 1699
    :sswitch_27
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->e()V

    .line 1700
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1703
    :cond_1f
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1704
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f()V

    goto/16 :goto_0

    .line 1707
    :sswitch_28
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->q:I

    if-nez v0, :cond_21

    .line 1708
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v1, v0, Lui_Controller/b/k;->q:I

    .line 1709
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setViewType(I)V

    .line 1710
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setInteractiveMode(I)V

    .line 1720
    :cond_20
    :goto_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 1711
    :cond_21
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->q:I

    if-ne v0, v1, :cond_22

    .line 1712
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v8, v0, Lui_Controller/b/k;->q:I

    .line 1713
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setViewType(I)V

    .line 1714
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setInteractiveMode(I)V

    goto :goto_5

    .line 1715
    :cond_22
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->q:I

    if-ne v0, v8, :cond_20

    .line 1716
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v7, v0, Lui_Controller/b/k;->q:I

    .line 1717
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setViewType(I)V

    .line 1718
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v7}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setInteractiveMode(I)V

    goto :goto_5

    .line 1724
    :sswitch_29
    invoke-static {}, LGeneralFunction/m/a;->s()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1725
    invoke-static {v7}, LGeneralFunction/m/a;->d(Z)V

    .line 1726
    invoke-static {v7}, La/c/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/m/a;->c(Ljava/lang/String;)I

    .line 1731
    :goto_6
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 1728
    :cond_23
    invoke-static {v1}, LGeneralFunction/m/a;->d(Z)V

    .line 1729
    invoke-static {v1}, La/c/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/m/a;->c(Ljava/lang/String;)I

    goto :goto_6

    .line 1736
    :sswitch_2a
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->t:I

    if-nez v0, :cond_24

    .line 1737
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v1, v0, Lui_Controller/b/k;->t:I

    .line 1741
    :goto_7
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 1739
    :cond_24
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v7, v0, Lui_Controller/b/k;->t:I

    goto :goto_7

    .line 1745
    :sswitch_2b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->V:I

    if-nez v0, :cond_25

    .line 1746
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x190

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1747
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->S()V

    .line 1748
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->h(Z)V

    .line 1749
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v1, v0, Lui_Controller/b/k;->V:I

    goto/16 :goto_0

    .line 1751
    :cond_25
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->h(Z)V

    .line 1752
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v7, v0, Lui_Controller/b/k;->V:I

    goto/16 :goto_0

    .line 1757
    :sswitch_2c
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1759
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    new-instance v2, La/c/a;

    const/16 v3, 0x4817

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v2}, La/c/d;->a(La/c/a;)V

    .line 1761
    :cond_26
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v2, ""

    invoke-virtual {v0, v7, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 1762
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    .line 1763
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J()V

    .line 1764
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x228e

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 1767
    :sswitch_2d
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 1768
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1769
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00d1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1770
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    .line 1768
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1772
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLjava/lang/String;)V

    .line 1773
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    const/16 v1, 0x40c

    iput v1, v0, Lui_Controller/b/h;->a:I

    goto/16 :goto_0

    .line 1777
    :sswitch_2e
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->n:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->r:Z

    if-eqz v0, :cond_0

    .line 1778
    :cond_27
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->o(Z)V

    goto/16 :goto_0

    .line 1783
    :sswitch_2f
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v7, v0, Lui_Controller/b/f;->o:Z

    .line 1784
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "apkUpdateLater"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1785
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->ag:Z

    if-nez v0, :cond_0

    .line 1787
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v1, v0, Lui_Controller/b/f;->ag:Z

    .line 1788
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "hotaOptimization"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1789
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1790
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1791
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a008f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0094

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_3

    move v2, v7

    .line 1789
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 1798
    :sswitch_30
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1799
    const-string v2, "apkUpdateLater"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1800
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v7, v0, Lui_Controller/b/f;->ag:Z

    goto/16 :goto_0

    .line 1805
    :sswitch_31
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v1, v0, Lui_Controller/b/f;->o:Z

    .line 1806
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, La/b/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, La/b/b/a;->b(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v8, :cond_28

    .line 1807
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1808
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a014d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1809
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a008b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a008d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_4

    move v2, v7

    .line 1807
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 1815
    :goto_8
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v7, v0, Lui_Controller/b/f;->ag:Z

    goto/16 :goto_0

    .line 1813
    :cond_28
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2106

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_8

    .line 1818
    :sswitch_32
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v7, v0, Lui_Controller/b/f;->o:Z

    .line 1819
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "hotaOptimization"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1820
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1821
    invoke-virtual {v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1822
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a008f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0094

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_5

    move v2, v7

    .line 1820
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 1827
    :sswitch_33
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v2, ""

    invoke-virtual {v0, v7, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 1828
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1829
    const-string v2, "fwUpdateLater"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1830
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2223

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 1835
    :sswitch_34
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v1, v0, Lui_Controller/b/f;->s:Z

    .line 1836
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2106

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 1299
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x2120 -> :sswitch_f
        0x2205 -> :sswitch_11
        0x220d -> :sswitch_27
        0x2216 -> :sswitch_2c
        0x2226 -> :sswitch_24
        0x2229 -> :sswitch_1d
        0x2232 -> :sswitch_b
        0x2233 -> :sswitch_c
        0x2234 -> :sswitch_10
        0x2244 -> :sswitch_15
        0x2245 -> :sswitch_16
        0x2246 -> :sswitch_23
        0x2247 -> :sswitch_26
        0x2248 -> :sswitch_17
        0x224b -> :sswitch_13
        0x224c -> :sswitch_14
        0x224e -> :sswitch_25
        0x2250 -> :sswitch_1b
        0x2252 -> :sswitch_28
        0x2253 -> :sswitch_29
        0x2254 -> :sswitch_22
        0x2255 -> :sswitch_2a
        0x2256 -> :sswitch_2b
        0x225a -> :sswitch_21
        0x225b -> :sswitch_18
        0x225e -> :sswitch_19
        0x225f -> :sswitch_1a
        0x2260 -> :sswitch_1c
        0x228d -> :sswitch_12
        0x228e -> :sswitch_2d
        0x228f -> :sswitch_2e
        0x2420 -> :sswitch_2f
        0x2421 -> :sswitch_30
        0x2422 -> :sswitch_31
        0x2426 -> :sswitch_32
        0x2427 -> :sswitch_34
        0x2428 -> :sswitch_33
        0x2a16 -> :sswitch_1f
        0x2a17 -> :sswitch_20
        0x2a19 -> :sswitch_1e
        0x2f00 -> :sswitch_7
        0x2f09 -> :sswitch_1
        0x2f0b -> :sswitch_0
        0x4301 -> :sswitch_d
        0x4302 -> :sswitch_e
        0x4604 -> :sswitch_a
        0x460e -> :sswitch_8
        0x460f -> :sswitch_9
        0x4845 -> :sswitch_3
        0x4847 -> :sswitch_4
        0x4855 -> :sswitch_2
        0x8000 -> :sswitch_5
    .end sparse-switch

    .line 1548
    :array_0
    .array-data 4
        0x2f07
        0x2a19
    .end array-data

    .line 1601
    :array_1
    .array-data 4
        0x2a18
        0x225a
    .end array-data

    .line 1615
    :array_2
    .array-data 4
        0x2a18
        0x2254
    .end array-data

    .line 1791
    :array_3
    .array-data 4
        0x2421
        0x2422
    .end array-data

    .line 1809
    :array_4
    .array-data 4
        0x2426
        0x2106
    .end array-data

    .line 1822
    :array_5
    .array-data 4
        0x2421
        0x2422
    .end array-data
.end method

.method public c(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v1, 0x3

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1843
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1845
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->i(I)V

    goto :goto_0

    .line 1849
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v4, v0, Lui_Controller/b/k;->aK:Z

    goto :goto_0

    .line 1852
    :sswitch_2
    const-string v0, "MSG_UI_VIEW_CAPTURE_DONE"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1853
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f()I

    move-result v0

    if-nez v0, :cond_1

    .line 1854
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J()V

    .line 1855
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->c()I

    move-result v2

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->h(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(Ljava/lang/String;)V

    .line 1858
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x120

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1859
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1860
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IZ)V

    .line 1861
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220c

    invoke-virtual {v0, v1, v6, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 1863
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1865
    const-string v0, "[CaptureDBG] Keep get frame"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1866
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4820

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    .line 1875
    :cond_2
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->aK:Z

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2216

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    .line 1879
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v3, v0, Lui_Controller/b/k;->aK:Z

    goto/16 :goto_0

    .line 1869
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CaptureDBG] Capture back with activity pause. UI_CheckNeedDownloadPicNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1870
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f()I

    move-result v0

    if-nez v0, :cond_2

    .line 1871
    const-string v0, "[CaptureDBG] Capture and download complete, close communication"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1872
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x480b

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto :goto_1

    .line 1884
    :sswitch_3
    const-string v0, "UI_LiveviewCapturing MSG_KEY_BACK"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1889
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->H()V

    goto/16 :goto_0

    .line 1843
    :sswitch_data_0
    .sparse-switch
        0x2206 -> :sswitch_2
        0x2216 -> :sswitch_1
        0x2219 -> :sswitch_0
        0x4822 -> :sswitch_4
        0x8000 -> :sswitch_3
    .end sparse-switch
.end method

.method public d(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/16 v8, 0x131

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 1897
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 1898
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2060
    :goto_0
    return-void

    .line 1900
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_REMOTE_GET_CURRENT_RECORDING_TIME value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1901
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const-string v2, "value"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lui_Controller/b/k;->h:I

    .line 1902
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->k:Z

    if-eqz v0, :cond_1

    .line 1903
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->h:I

    if-gtz v0, :cond_0

    .line 1904
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4264

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto :goto_0

    .line 1906
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(I)V

    goto :goto_0

    .line 1909
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x228b

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 1913
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(I)V

    goto :goto_0

    .line 1916
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_REMOTE_EVENT_PIV_DONE2 result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1917
    const-string v1, "result"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x11

    if-ne v0, v1, :cond_2

    .line 1919
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2208

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1921
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2207

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1925
    :sswitch_3
    const-string v0, "MSG_REMOTE_EVENT_STOP_RECORDING"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1926
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(I)V

    .line 1927
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(I)V

    goto/16 :goto_0

    .line 1930
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x127

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1931
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2234

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 1932
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220c

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1935
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x127

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1936
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220c

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 1937
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(I)V

    .line 1938
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 1941
    :sswitch_6
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x120

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1942
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1944
    invoke-static {}, LGeneralFunction/m/a;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1945
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v3, v0, Lui_Controller/b/k;->o:Z

    .line 1948
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2232

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 1949
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220c

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1953
    :sswitch_7
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 1954
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(I)V

    .line 1955
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x128

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 1956
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->h:I

    if-lez v0, :cond_4

    .line 1957
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x422a

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 1958
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220b

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1960
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2249

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1964
    :sswitch_8
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V

    .line 1965
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J()V

    .line 1966
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->i(Z)V

    .line 1967
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    goto/16 :goto_0

    .line 1975
    :sswitch_9
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v1, 0x6

    iput v1, v0, Lui_Controller/b/k;->S:I

    .line 1976
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224a

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 1981
    :sswitch_a
    const-string v0, "MSG_KEY_BACK stop recording"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 1982
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x8000

    if-ne v0, v1, :cond_6

    .line 1983
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v3, v0, Lui_Controller/b/k;->S:I

    .line 1989
    :cond_5
    :goto_1
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->S:I

    packed-switch v0, :pswitch_data_0

    .line 2005
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ak()V

    .line 2006
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4814

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 2007
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->R()V

    .line 2008
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IZ)V

    .line 2009
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->j(Z)V

    .line 2010
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZI)V

    .line 2011
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->r()V

    .line 2012
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto/16 :goto_0

    .line 1984
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2216

    if-ne v0, v1, :cond_5

    .line 1985
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v1, 0x3

    iput v1, v0, Lui_Controller/b/k;->S:I

    goto :goto_1

    .line 1991
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x480b

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 1992
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ak()V

    .line 1993
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->R()V

    .line 1994
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IZ)V

    .line 1995
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->j(Z)V

    .line 1996
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZI)V

    .line 1997
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->r()V

    .line 1998
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 1999
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V

    .line 2000
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ae()V

    .line 2001
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->k(Z)V

    .line 2002
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->i(I)V

    goto/16 :goto_0

    .line 2017
    :sswitch_c
    const-string v0, "*****MSG_UI_VIEW_KEY_RECORD_END_BY_USB_DETACH"

    invoke-direct {p0, v0, v6}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2018
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ak()V

    .line 2019
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->R()V

    .line 2020
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IZ)V

    .line 2021
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->j(Z)V

    .line 2022
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 2023
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V

    .line 2024
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ae()V

    .line 2025
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->i(I)V

    goto/16 :goto_0

    .line 2028
    :sswitch_d
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->h:I

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZI)V

    goto/16 :goto_0

    .line 2031
    :sswitch_e
    const-string v0, "MSG_UI_VIEW_GET_PIV_THUMBNAIL_IMAGE"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2032
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4822

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 2035
    :sswitch_f
    const-string v0, "MSG_UI_VIEW_GET_PICTURE_IMAGE"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2036
    new-instance v0, La/c/a;

    const/16 v1, 0x4821

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 2037
    const-string v1, "IsMiddleData"

    invoke-virtual {v0, v1, v6}, La/c/a;->a(Ljava/lang/String;I)V

    .line 2038
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 2041
    :sswitch_10
    const-string v0, "MSG_FILE_DOWNLOAD_PIV_QUICKVIE_DONE"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2042
    const-string v0, "update thumbnail and continue recording"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2043
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(I)V

    .line 2044
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 2047
    :sswitch_11
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v8, v0, Lui_Controller/b/k;->d:I

    .line 2048
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224a

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 2051
    :sswitch_12
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x132

    iput v1, v0, Lui_Controller/b/k;->d:I

    .line 2052
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224a

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 2056
    :sswitch_13
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->h:I

    invoke-virtual {v0, v6, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZI)V

    .line 2057
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224a

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 1898
    nop

    :sswitch_data_0
    .sparse-switch
        0x2207 -> :sswitch_4
        0x2208 -> :sswitch_5
        0x220a -> :sswitch_6
        0x2215 -> :sswitch_13
        0x2216 -> :sswitch_a
        0x2220 -> :sswitch_8
        0x2225 -> :sswitch_9
        0x2234 -> :sswitch_e
        0x2238 -> :sswitch_f
        0x2249 -> :sswitch_7
        0x224a -> :sswitch_b
        0x224b -> :sswitch_11
        0x224c -> :sswitch_12
        0x2257 -> :sswitch_c
        0x2279 -> :sswitch_d
        0x228b -> :sswitch_1
        0x3026 -> :sswitch_10
        0x4264 -> :sswitch_0
        0x4611 -> :sswitch_3
        0x462e -> :sswitch_2
        0x8000 -> :sswitch_a
    .end sparse-switch

    .line 1989
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2063
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 2064
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2133
    :cond_0
    :goto_0
    return-void

    .line 2066
    :sswitch_0
    const-string v0, "Receive MSG_KEY_BACK in UI_LiveviewStopRecording!"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 2069
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->S:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->S:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2071
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v5, v0, Lui_Controller/b/k;->S:I

    goto :goto_0

    .line 2075
    :sswitch_2
    const-string v0, "Receive MSG_UI_VIEW_KEY_RECORD_END in UI_LiveviewStopRecording!"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 2078
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*****lVideoTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->aB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2079
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V

    .line 2080
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ae()V

    .line 2081
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->i(I)V

    goto :goto_0

    .line 2084
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v3, v0, Lui_Controller/b/k;->x:Z

    .line 2085
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IZ)V

    .line 2086
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ah()Z

    .line 2087
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->c()I

    move-result v1

    invoke-virtual {v0, v1, v4}, LGeneralFunction/e/d;->h(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2088
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->c()I

    move-result v2

    invoke-virtual {v1, v2, v4}, LGeneralFunction/e/d;->h(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(Ljava/lang/String;)V

    .line 2089
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x501c

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(I)V

    .line 2090
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->S:I

    packed-switch v0, :pswitch_data_0

    .line 2116
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v4, v0, Lui_Controller/b/k;->S:I

    .line 2118
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ab()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2119
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ac()V

    .line 2121
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0, v4}, LGeneralFunction/d;->a(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 2093
    :pswitch_0
    const-string v0, "[lRecordStopCase] RECORD_STOP_NORMAL"

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 2096
    :pswitch_1
    const-string v0, "[lRecordStopCase] RECORD_STOP_BACK_KEY"

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2097
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2104

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_1

    .line 2100
    :pswitch_2
    const-string v0, "[lRecordStopCase] RECORD_STOP_HOME_KEY"

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 2103
    :pswitch_3
    const-string v0, "[lRecordStopCase] RECORD_STOP_PHONE_LOW_BATTERY"

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2104
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2216

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_1

    .line 2107
    :pswitch_4
    const-string v0, "[lRecordStopCase] RECORD_STOP_DISCONNECT_CAMERA"

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2108
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v4, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 2109
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZLjava/lang/String;)V

    .line 2110
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    goto :goto_1

    .line 2113
    :pswitch_5
    const-string v0, "[lRecordStopCase] RECORD_STOP_REMOVE_SD_CARD"

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 2125
    :sswitch_5
    const-string v0, "MSG_REMOTE_EVENT_RECORDING_DONE_2"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2126
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v3, v0, Lui_Controller/b/k;->y:Z

    .line 2127
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ac()V

    goto/16 :goto_0

    .line 2064
    :sswitch_data_0
    .sparse-switch
        0x2216 -> :sswitch_1
        0x2217 -> :sswitch_4
        0x224a -> :sswitch_2
        0x462f -> :sswitch_5
        0x4814 -> :sswitch_3
        0x8000 -> :sswitch_0
    .end sparse-switch

    .line 2090
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public f(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/16 v7, 0x40

    const/4 v1, 0x4

    const/16 v6, 0x220c

    const-wide/32 v2, 0xfffffff

    const-wide/16 v4, 0x0

    .line 2136
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2176
    :goto_0
    return-void

    .line 2139
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 2140
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x124

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 2141
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 2145
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(I)V

    .line 2146
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x422e

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 2147
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220b

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 2150
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 2151
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x120

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 2152
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 2153
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2234

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 2154
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 2157
    :sswitch_3
    const-string v0, "MSG_REMOTE_EVENT_CAPTURE_START"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2158
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 2159
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(I)V

    goto :goto_0

    .line 2162
    :sswitch_4
    const-string v0, "MSG_REMOTE_EVENT_CAPTURE_DONE2"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2163
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 2164
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(I)V

    .line 2165
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 2168
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x131

    iput v1, v0, Lui_Controller/b/k;->d:I

    .line 2169
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224f

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 2172
    :sswitch_6
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x132

    iput v1, v0, Lui_Controller/b/k;->d:I

    .line 2173
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224f

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 2136
    nop

    :sswitch_data_0
    .sparse-switch
        0x224b -> :sswitch_5
        0x224c -> :sswitch_6
        0x224f -> :sswitch_1
        0x228c -> :sswitch_0
        0x4604 -> :sswitch_4
        0x462b -> :sswitch_0
        0x462c -> :sswitch_3
        0x462d -> :sswitch_2
        0x8000 -> :sswitch_1
    .end sparse-switch
.end method

.method public g(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0xfffffff

    const/16 v2, 0x110

    const-wide/16 v4, 0x0

    const/16 v3, 0x100

    .line 2179
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2201
    :goto_0
    return-void

    .line 2183
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x12e

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 2184
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

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2185
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 2186
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x220b

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 2189
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v3, v0, Lui_Controller/b/k;->b:I

    .line 2190
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 2191
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 2192
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224b

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 2195
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v3, v0, Lui_Controller/b/k;->b:I

    .line 2196
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 2197
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 2198
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224c

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 2179
    :sswitch_data_0
    .sparse-switch
        0x2230 -> :sswitch_0
        0x224b -> :sswitch_1
        0x224c -> :sswitch_2
    .end sparse-switch
.end method

.method public h(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0xfffffff

    const-wide/16 v4, 0x0

    const/16 v2, 0x110

    const/16 v1, 0x100

    .line 2205
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2225
    :goto_0
    return-void

    .line 2208
    :sswitch_0
    new-instance v0, La/c/a;

    const/16 v1, 0x4852

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 2209
    const-string v1, "value"

    invoke-static {}, LGeneralFunction/m/a;->n()I

    move-result v2

    invoke-static {v2}, La/c/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto :goto_0

    .line 2213
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v1, v0, Lui_Controller/b/k;->b:I

    .line 2214
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 2215
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 2216
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224b

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 2219
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v1, v0, Lui_Controller/b/k;->b:I

    .line 2220
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 2221
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 2222
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x224c

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto :goto_0

    .line 2205
    nop

    :sswitch_data_0
    .sparse-switch
        0x2231 -> :sswitch_0
        0x224b -> :sswitch_1
        0x224c -> :sswitch_2
    .end sparse-switch
.end method

.method public i(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2229
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2280
    :goto_0
    :sswitch_0
    return-void

    .line 2231
    :sswitch_1
    const-string v0, "MSG_KEY_BACK hide effect tool menu"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/b;->a(Ljava/lang/String;I)V

    .line 2232
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2256

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_0

    .line 2235
    :sswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v2, v2, Lui_Controller/b/k;->aG:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2231

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_0

    .line 2240
    :cond_0
    new-instance v0, La/c/a;

    const/16 v1, 0x4852

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 2241
    const-string v1, "setting"

    invoke-static {}, LGeneralFunction/m/a;->n()I

    move-result v2

    invoke-static {v2}, La/c/b;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 2242
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 2243
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lui_Controller/b/k;->aG:J

    goto :goto_0

    .line 2249
    :sswitch_3
    new-instance v0, La/c/a;

    const/16 v1, 0x4853

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 2250
    const-string v1, "setting"

    invoke-static {}, LGeneralFunction/m/a;->o()I

    move-result v2

    invoke-static {v2}, La/c/b;->c(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 2251
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto :goto_0

    .line 2257
    :sswitch_4
    new-instance v0, La/c/a;

    const/16 v1, 0x4854

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 2258
    const-string v1, "setting"

    invoke-static {}, LGeneralFunction/m/a;->p()I

    move-result v2

    invoke-static {v2}, La/c/b;->d(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 2259
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 2265
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->V:I

    if-nez v0, :cond_1

    .line 2267
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x190

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 2268
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->h(Z)V

    .line 2269
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v4, v0, Lui_Controller/b/k;->V:I

    .line 2277
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 2273
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 2274
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->h(Z)V

    .line 2275
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v3, v0, Lui_Controller/b/k;->V:I

    goto :goto_1

    .line 2229
    nop

    :sswitch_data_0
    .sparse-switch
        0x2231 -> :sswitch_2
        0x2236 -> :sswitch_3
        0x2237 -> :sswitch_4
        0x2256 -> :sswitch_5
        0x4852 -> :sswitch_0
        0x4853 -> :sswitch_0
        0x4854 -> :sswitch_0
        0x8000 -> :sswitch_1
    .end sparse-switch
.end method

.method public j(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2368
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2416
    :goto_0
    :pswitch_0
    return-void

    .line 2371
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/k/a;->a(Landroid/content/Context;)LGeneralFunction/k/a;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ae:I

    invoke-virtual {v0, v1}, LGeneralFunction/k/a;->a(I)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2372
    new-instance v1, La/c/a;

    const/16 v2, 0x2229

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    .line 2373
    const-string v2, "avgPingTime"

    invoke-virtual {v1, v2, v0}, La/c/a;->a(Ljava/lang/String;I)V

    .line 2374
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    goto :goto_0

    .line 2379
    :pswitch_2
    invoke-static {}, LGeneralFunction/m/a;->a()I

    move-result v1

    if-nez v1, :cond_2

    .line 2380
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    sget-object v2, Lui_Controller/a/c;->a:Ljava/lang/String;

    invoke-static {v2, v0}, LGeneralFunction/d;->a(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, v1, Lui_Controller/b/k;->z:J

    .line 2390
    :cond_0
    :goto_1
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v2, v2, Lui_Controller/b/k;->z:J

    const-wide/32 v4, 0x3200000

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, v1, Lui_Controller/b/k;->aM:Z

    .line 2391
    new-instance v0, La/c/a;

    const/16 v1, 0x2228

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 2392
    const-string v1, "isMemoryFull"

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v2, v2, Lui_Controller/b/k;->aM:Z

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;Z)V

    .line 2393
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    goto :goto_0

    .line 2383
    :cond_2
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->ab:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 2384
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ai()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lui_Controller/b/e;->ab:Ljava/lang/String;

    .line 2386
    :cond_3
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->ab:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2387
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->ab:Ljava/lang/String;

    invoke-static {v2, v0}, LGeneralFunction/d;->a(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, v1, Lui_Controller/b/k;->z:J

    goto :goto_1

    .line 2398
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->G()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2399
    const/4 v0, 0x0

    .line 2400
    if-eqz v1, :cond_4

    .line 2402
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2403
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2410
    :cond_4
    iget-object v1, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 2411
    new-instance v1, La/c/a;

    const/16 v2, 0x2222

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    .line 2412
    invoke-virtual {v1, v0}, La/c/a;->a(Ljava/lang/Object;)V

    .line 2413
    iget-object v0, p0, Lui_Controller/ui_Liveview/b;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    goto/16 :goto_0

    .line 2368
    nop

    :pswitch_data_0
    .packed-switch 0x501b
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
