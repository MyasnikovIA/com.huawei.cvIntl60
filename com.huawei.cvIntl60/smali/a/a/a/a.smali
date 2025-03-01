.class public La/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a$a;
    }
.end annotation


# static fields
.field private static a:La/b/a/b;

.field private static b:Landroid/content/Context;


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:LGeneralFunction/c/a;

.field private j:Z

.field private k:Landroid/os/HandlerThread;

.field private l:Landroid/os/Handler;

.field private m:La/a/a/a$a;

.field private n:La/b/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, La/a/a/a;->a:La/b/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v0, p0, La/a/a/a;->c:I

    .line 83
    iput v0, p0, La/a/a/a;->d:I

    .line 84
    iput v0, p0, La/a/a/a;->e:I

    .line 85
    iput-boolean v0, p0, La/a/a/a;->f:Z

    .line 86
    iput-boolean v0, p0, La/a/a/a;->g:Z

    .line 87
    iput v0, p0, La/a/a/a;->h:I

    .line 89
    iput-object v1, p0, La/a/a/a;->i:LGeneralFunction/c/a;

    .line 91
    iput-boolean v0, p0, La/a/a/a;->j:Z

    .line 92
    iput-object v1, p0, La/a/a/a;->k:Landroid/os/HandlerThread;

    .line 93
    iput-object v1, p0, La/a/a/a;->l:Landroid/os/Handler;

    .line 94
    iput-object v1, p0, La/a/a/a;->m:La/a/a/a$a;

    .line 392
    new-instance v0, La/a/a/a$1;

    invoke-direct {v0, p0}, La/a/a/a$1;-><init>(La/a/a/a;)V

    iput-object v0, p0, La/a/a/a;->n:La/b/a/b$a;

    .line 105
    sput-object p1, La/a/a/a;->b:Landroid/content/Context;

    .line 106
    new-instance v0, La/b/a/b;

    sget-object v1, La/a/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, La/a/a/a;->a:La/b/a/b;

    .line 112
    return-void
.end method

.method static synthetic a(La/a/a/a;B)I
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, La/a/a/a;->b(B)I

    move-result v0

    return v0
.end method

.method static synthetic a(La/a/a/a;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, La/a/a/a;->e:I

    return p1
.end method

.method static synthetic a(La/a/a/a;Z)I
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, La/a/a/a;->a(Z)I

    move-result v0

    return v0
.end method

.method private a(Z)I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 431
    const/16 v2, 0x10

    new-array v4, v2, [B

    .line 435
    sget-object v2, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v2}, La/b/a/b;->g()V

    .line 438
    const/16 v2, 0x7a

    aput-byte v2, v4, v1

    .line 439
    aput-byte v1, v4, v3

    .line 440
    const/4 v2, 0x2

    aput-byte v3, v4, v2

    .line 442
    if-eqz p1, :cond_0

    move v2, v3

    .line 457
    :goto_0
    if-eqz v2, :cond_3

    .line 458
    sget-object v5, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v5, v4}, La/b/a/b;->a([B)I

    move-result v5

    .line 459
    if-ltz v5, :cond_5

    .line 460
    sget-object v5, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v5, v1}, La/b/a/b;->a(I)B

    move-result v5

    .line 461
    if-ne v5, v3, :cond_2

    .line 462
    add-int/lit8 v2, v2, 0x1

    .line 485
    :goto_1
    const/16 v5, 0xc8

    if-lt v2, v5, :cond_7

    .line 491
    :goto_2
    return v0

    .line 447
    :cond_0
    sget-object v2, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v2}, La/b/a/b;->n()I

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    const-string v2, "[UsbCoreMsg] Send reset fail, try restart connection"

    invoke-static {v2, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 449
    sget-object v2, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v2}, La/b/a/b;->m()I

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    const-string v2, "[UsbCoreMsg] restart connection fail"

    invoke-static {v2, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    goto :goto_2

    .line 454
    :cond_1
    const/16 v2, 0x8

    aput-byte v1, v4, v2

    move v2, v3

    goto :goto_0

    .line 464
    :cond_2
    if-nez v5, :cond_4

    .line 465
    sget-object v0, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->c()V

    .line 466
    const/4 v0, 0x4

    invoke-direct {p0, v0}, La/a/a/a;->a(I)V

    :cond_3
    move v0, v1

    .line 491
    goto :goto_2

    .line 470
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] open communication fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    goto :goto_2

    .line 475
    :cond_5
    invoke-virtual {p0}, La/a/a/a;->a()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UsbCoreMsg] Send open communication fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " . Try no."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UsbCoreMsg] Send reset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v6}, La/b/a/b;->n()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 481
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] usb not connected, CoreStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, La/a/a/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 488
    :cond_7
    const/16 v5, 0x64

    invoke-direct {p0, v5}, La/a/a/a;->b(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(La/a/a/a;LGeneralFunction/c/a;)LGeneralFunction/c/a;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, La/a/a/a;->i:LGeneralFunction/c/a;

    return-object p1
.end method

.method static synthetic a(La/a/a/a;)La/a/a/a$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, La/a/a/a;->m:La/a/a/a$a;

    return-object v0
.end method

.method private a(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 535
    new-instance v0, La/a/a/a$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La/a/a/a$2;-><init>(La/a/a/a;Landroid/os/Looper;)V

    .line 2260
    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 123
    iput p1, p0, La/a/a/a;->c:I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USBCoreStatus change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 125
    return-void
.end method

.method static synthetic a(La/a/a/a;La/a/a/d;B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, La/a/a/a;->a(La/a/a/d;B)V

    return-void
.end method

.method private a(La/a/a/d;B)V
    .locals 4

    .prologue
    const/16 v1, 0x780

    const/16 v3, 0x500

    const/16 v2, 0x280

    .line 363
    packed-switch p2, :pswitch_data_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UsbCoreMsg] Unknown resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", use default setting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 385
    iput v3, p1, La/a/a/d;->c:I

    .line 386
    iput v2, p1, La/a/a/d;->d:I

    .line 390
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iput v1, p1, La/a/a/d;->c:I

    .line 367
    const/16 v0, 0x3c0

    iput v0, p1, La/a/a/d;->d:I

    goto :goto_0

    .line 372
    :pswitch_1
    iput v3, p1, La/a/a/d;->c:I

    .line 373
    iput v2, p1, La/a/a/d;->d:I

    goto :goto_0

    .line 378
    :pswitch_2
    const/16 v0, 0xf00

    iput v0, p1, La/a/a/d;->c:I

    .line 379
    iput v1, p1, La/a/a/d;->d:I

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0, p1}, La/a/a/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(B)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 496
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 497
    const-string v1, "Camera go into power save mode. Send open communication first"

    invoke-static {v1, v0}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 498
    invoke-direct {p0}, La/a/a/a;->i()I

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v0

    .line 502
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(La/a/a/a;La/a/a/b;)Z
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, La/a/a/a;->a(La/a/a/b;)Z

    move-result v0

    return v0
.end method

.method private a(La/a/a/b;)Z
    .locals 5

    .prologue
    const/16 v4, 0x3c

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    iget-byte v2, p1, La/a/a/b;->b:B

    if-lt v2, v0, :cond_0

    iget-byte v2, p1, La/a/a/b;->b:B

    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid month setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p1, La/a/a/b;->b:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 336
    :cond_1
    :goto_0
    return v0

    .line 316
    :cond_2
    iget-byte v2, p1, La/a/a/b;->c:B

    if-lt v2, v0, :cond_3

    iget-byte v2, p1, La/a/a/b;->c:B

    const/16 v3, 0x1f

    if-le v2, v3, :cond_4

    .line 317
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid day setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p1, La/a/a/b;->c:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 318
    goto :goto_0

    .line 320
    :cond_4
    iget-byte v2, p1, La/a/a/b;->d:B

    if-ltz v2, :cond_5

    iget-byte v2, p1, La/a/a/b;->d:B

    const/16 v3, 0x17

    if-le v2, v3, :cond_6

    .line 321
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid hour setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p1, La/a/a/b;->d:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 322
    goto :goto_0

    .line 324
    :cond_6
    iget-byte v2, p1, La/a/a/b;->e:B

    if-ltz v2, :cond_7

    iget-byte v2, p1, La/a/a/b;->e:B

    if-le v2, v4, :cond_8

    .line 325
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid minute setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p1, La/a/a/b;->e:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 326
    goto :goto_0

    .line 328
    :cond_8
    iget-byte v2, p1, La/a/a/b;->f:B

    if-ltz v2, :cond_9

    iget-byte v2, p1, La/a/a/b;->f:B

    if-le v2, v4, :cond_a

    .line 329
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid second setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p1, La/a/a/b;->f:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 330
    goto/16 :goto_0

    .line 332
    :cond_a
    iget v2, p1, La/a/a/b;->h:I

    if-ltz v2, :cond_b

    iget v2, p1, La/a/a/b;->h:I

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_1

    .line 333
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid millisecond setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, La/a/a/b;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 334
    goto/16 :goto_0
.end method

.method private b(B)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 510
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 530
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 515
    goto :goto_0

    .line 518
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 521
    :pswitch_3
    const-string v2, "Camera go into power save mode. Send open communication first"

    invoke-static {v2, v0}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 522
    invoke-direct {p0}, La/a/a/a;->i()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 523
    goto :goto_0

    .line 526
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 286
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(La/a/a/a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, La/a/a/a;->g()V

    return-void
.end method

.method static synthetic b(La/a/a/a;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, La/a/a/a;->a(I)V

    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 280
    const-string v0, "USBCore"

    invoke-static {v0, p0, p1}, La/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    return-void
.end method

.method static synthetic b(La/a/a/a;B)Z
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, La/a/a/a;->a(B)Z

    move-result v0

    return v0
.end method

.method static synthetic b(La/a/a/a;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, La/a/a/a;->f:Z

    return p1
.end method

.method static synthetic c(La/a/a/a;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, La/a/a/a;->d:I

    return p1
.end method

.method static synthetic c(La/a/a/a;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, La/a/a/a;->j:Z

    return v0
.end method

.method static synthetic c(La/a/a/a;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, La/a/a/a;->g:Z

    return p1
.end method

.method private c(I)[B
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private d(I)I
    .locals 5

    .prologue
    const/16 v2, 0xe1

    const/16 v4, 0x87

    const/16 v3, 0x2d

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 341
    if-ne p1, v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    if-gt v4, p1, :cond_2

    if-lt p1, v2, :cond_0

    .line 347
    :cond_2
    if-gt v2, p1, :cond_3

    const/16 v2, 0x13b

    if-ge p1, v2, :cond_3

    .line 348
    const/4 v0, 0x1

    goto :goto_0

    .line 350
    :cond_3
    const/16 v2, 0x13b

    if-le v2, p1, :cond_4

    if-ge p1, v3, :cond_5

    .line 351
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 353
    :cond_5
    if-gt v3, p1, :cond_6

    if-ge p1, v4, :cond_6

    .line 354
    const/4 v0, 0x3

    goto :goto_0

    .line 357
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] Invalid orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, La/a/a/a;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 358
    goto :goto_0
.end method

.method static synthetic d(La/a/a/a;)I
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, La/a/a/a;->i()I

    move-result v0

    return v0
.end method

.method static synthetic d(La/a/a/a;I)[B
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, La/a/a/a;->c(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(La/a/a/a;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, La/a/a/a;->h:I

    return p1
.end method

.method static synthetic e(La/a/a/a;)LGeneralFunction/c/a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, La/a/a/a;->i:LGeneralFunction/c/a;

    return-object v0
.end method

.method static synthetic f(La/a/a/a;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, La/a/a/a;->h:I

    return v0
.end method

.method static synthetic f(La/a/a/a;I)I
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, La/a/a/a;->d(I)I

    move-result v0

    return v0
.end method

.method static synthetic f()La/b/a/b;
    .locals 1

    .prologue
    .line 19
    sget-object v0, La/a/a/a;->a:La/b/a/b;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    iput v0, p0, La/a/a/a;->d:I

    .line 130
    iput v0, p0, La/a/a/a;->h:I

    .line 131
    iput-boolean v0, p0, La/a/a/a;->f:Z

    .line 132
    iput-boolean v0, p0, La/a/a/a;->g:Z

    .line 133
    return-void
.end method

.method static synthetic g(La/a/a/a;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, La/a/a/a;->f:Z

    return v0
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, La/a/a/a;->k:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a;->j:Z

    .line 300
    iput-object v1, p0, La/a/a/a;->l:Landroid/os/Handler;

    .line 301
    iget-object v0, p0, La/a/a/a;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 302
    :goto_0
    iget-object v0, p0, La/a/a/a;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/16 v0, 0xa

    invoke-direct {p0, v0}, La/a/a/a;->b(I)V

    goto :goto_0

    .line 305
    :cond_0
    iput-object v1, p0, La/a/a/a;->k:Landroid/os/HandlerThread;

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a;->j:Z

    .line 308
    :cond_1
    return-void
.end method

.method static synthetic h(La/a/a/a;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, La/a/a/a;->g:Z

    return v0
.end method

.method private i()I
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/a/a/a;->a(Z)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, La/a/a/a;->c:I

    return v0
.end method

.method public a(ILandroid/os/Bundle;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 242
    invoke-virtual {p0}, La/a/a/a;->a()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 243
    const-string v2, "Connect before send command"

    invoke-static {v2, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 273
    :goto_0
    return v0

    .line 247
    :cond_0
    iget-object v2, p0, La/a/a/a;->l:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 248
    const-string v2, "UsbCoreMainHandler is null"

    invoke-static {v2, v1}, La/a/a/a;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 252
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 253
    iput p1, v2, Landroid/os/Message;->what:I

    .line 254
    invoke-virtual {v2, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 256
    iget v3, p0, La/a/a/a;->e:I

    if-eqz v3, :cond_3

    .line 257
    iget v3, p0, La/a/a/a;->e:I

    const/16 v4, 0x480b

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/os/Message;->what:I

    const/16 v4, 0x4830

    if-eq v3, v4, :cond_2

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send USB cmd failed because the communication is closing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, La/a/a/a;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 261
    :cond_2
    iget v0, p0, La/a/a/a;->e:I

    if-ne v0, p1, :cond_3

    const/16 v0, 0x4820

    if-ne p1, v0, :cond_3

    .line 262
    const-string v0, "Warning: skip duplicated get frame"

    invoke-static {v0, v5}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 263
    const/4 v0, 0x5

    goto :goto_0

    .line 271
    :cond_3
    iput p1, p0, La/a/a/a;->e:I

    .line 272
    iget-object v0, p0, La/a/a/a;->l:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    .line 273
    goto :goto_0
.end method

.method public a(La/a/a/a$a;)I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 154
    const/4 v1, -0x1

    .line 156
    invoke-virtual {p0}, La/a/a/a;->a()I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, La/a/a/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 219
    :goto_0
    return v0

    .line 160
    :cond_0
    invoke-virtual {p0}, La/a/a/a;->a()I

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init fail, check status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, La/a/a/a;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 162
    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0, v4}, La/a/a/a;->a(I)V

    .line 166
    if-nez p1, :cond_2

    .line 167
    const-string v2, "Initialize with null callbacks"

    invoke-static {v2, v0}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 168
    invoke-direct {p0, v0}, La/a/a/a;->a(I)V

    move v0, v1

    .line 169
    goto :goto_0

    .line 172
    :cond_2
    sget-object v2, La/a/a/a;->a:La/b/a/b;

    iget-object v3, p0, La/a/a/a;->n:La/b/a/b$a;

    invoke-virtual {v2, v3}, La/b/a/b;->a(La/b/a/b$a;)V

    .line 173
    iput-object p1, p0, La/a/a/a;->m:La/a/a/a$a;

    .line 174
    iput v4, p0, La/a/a/a;->d:I

    .line 177
    sget-object v2, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v2}, La/b/a/b;->j()I

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    const-string v2, "Init USB fail!"

    invoke-static {v2, v0}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 179
    invoke-direct {p0, v0}, La/a/a/a;->a(I)V

    move v0, v1

    .line 180
    goto :goto_0

    .line 184
    :cond_3
    :goto_1
    iget v2, p0, La/a/a/a;->d:I

    if-ne v2, v4, :cond_4

    .line 185
    const/16 v2, 0xc8

    invoke-direct {p0, v2}, La/a/a/a;->b(I)V

    goto :goto_1

    .line 187
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, La/a/a/a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 188
    iget v2, p0, La/a/a/a;->d:I

    if-eq v2, v5, :cond_5

    .line 189
    invoke-direct {p0, v0}, La/a/a/a;->a(I)V

    move v0, v1

    .line 190
    goto :goto_0

    .line 192
    :cond_5
    const/4 v2, 0x2

    invoke-direct {p0, v2}, La/a/a/a;->a(I)V

    .line 195
    sget-object v2, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v2}, La/b/a/b;->h()I

    move-result v2

    if-eqz v2, :cond_6

    .line 196
    const-string v2, "Find target if&eps fail!"

    invoke-static {v2, v0}, La/a/a/a;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 197
    goto/16 :goto_0

    .line 201
    :cond_6
    sget-object v2, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v2}, La/b/a/b;->l()I

    move-result v2

    if-eqz v2, :cond_7

    .line 202
    const-string v2, "Create connection fail!"

    invoke-static {v2, v0}, La/a/a/a;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 203
    goto/16 :goto_0

    .line 206
    :cond_7
    iget-object v1, p0, La/a/a/a;->i:LGeneralFunction/c/a;

    if-eqz v1, :cond_8

    .line 207
    iget-object v1, p0, La/a/a/a;->i:LGeneralFunction/c/a;

    invoke-virtual {v1}, LGeneralFunction/c/a;->b()V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, La/a/a/a;->i:LGeneralFunction/c/a;

    .line 210
    :cond_8
    iget-object v1, p0, La/a/a/a;->k:Landroid/os/HandlerThread;

    if-eqz v1, :cond_9

    .line 211
    invoke-direct {p0}, La/a/a/a;->h()V

    .line 213
    :cond_9
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UsbCoreMainThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, La/a/a/a;->k:Landroid/os/HandlerThread;

    .line 214
    iget-object v1, p0, La/a/a/a;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 215
    iget-object v1, p0, La/a/a/a;->k:Landroid/os/HandlerThread;

    invoke-direct {p0, v1}, La/a/a/a;->a(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, La/a/a/a;->l:Landroid/os/Handler;

    .line 217
    invoke-direct {p0, v5}, La/a/a/a;->a(I)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init done "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, La/a/a/a;->b(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 137
    sget-object v1, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v1}, La/b/a/b;->i()I

    move-result v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckUSBPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, La/a/a/a;->b(Ljava/lang/String;I)V

    .line 139
    if-nez v1, :cond_0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 147
    sget-object v0, La/a/a/a;->a:La/b/a/b;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->e()V

    .line 150
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, La/a/a/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    sget-object v0, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->k()I

    .line 229
    invoke-direct {p0}, La/a/a/a;->h()V

    .line 231
    invoke-direct {p0}, La/a/a/a;->g()V

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/a/a/a;->a(I)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 237
    sget-object v0, La/a/a/a;->a:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->n()I

    move-result v0

    return v0
.end method
