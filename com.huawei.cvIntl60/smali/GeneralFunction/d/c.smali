.class public LGeneralFunction/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_StartMode/UI_ModeMain;

.field private b:LGeneralFunction/d/b;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 34
    iput-object v0, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    .line 36
    iput-object v0, p0, LGeneralFunction/d/c;->c:Ljava/lang/String;

    .line 45
    iput-object p1, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 46
    new-instance v0, LGeneralFunction/d/b;

    invoke-direct {v0}, LGeneralFunction/d/b;-><init>()V

    iput-object v0, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    .line 47
    invoke-direct {p0}, LGeneralFunction/d/c;->b()V

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/FileOutputStream;
    .locals 4

    .prologue
    .line 585
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 590
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 595
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 614
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 619
    :goto_1
    return-object v0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 602
    :cond_2
    if-eqz p3, :cond_1

    .line 603
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 605
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 606
    :catch_1
    move-exception v0

    .line 607
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 615
    :catch_2
    move-exception v0

    .line 616
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 40
    const-string v0, "UI_ConnectionController"

    invoke-static {v0, p0, p1}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 544
    :try_start_0
    iget-object v1, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 545
    new-instance v4, Ljava/util/zip/ZipFile;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 546
    const-string v1, "classes.dex"

    invoke-virtual {v4, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 547
    const-wide/16 v2, 0x0

    .line 548
    if-eqz v1, :cond_0

    .line 550
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    .line 552
    :cond_0
    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 554
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 556
    iget-object v1, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    iget-object v1, v1, LGeneralFunction/d/b;->a:LGeneralFunction/d/a;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, LGeneralFunction/d/a;->b:Ljava/lang/String;

    .line 557
    iget-object v1, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    iget-object v1, v1, LGeneralFunction/d/b;->a:LGeneralFunction/d/a;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v2, v1, LGeneralFunction/d/a;->c:Ljava/lang/String;

    .line 558
    iget-object v1, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    iget-object v1, v1, LGeneralFunction/d/b;->a:LGeneralFunction/d/a;

    iget-object v2, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v1, LGeneralFunction/d/a;->d:Ljava/lang/String;

    .line 559
    iget-object v1, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    iget-object v1, v1, LGeneralFunction/d/b;->a:LGeneralFunction/d/a;

    iget-object v2, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v1, LGeneralFunction/d/a;->a:I

    .line 562
    const-string v1, ""

    .line 563
    iget-object v2, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    iget-object v2, v2, LGeneralFunction/d/b;->a:LGeneralFunction/d/a;

    iget-object v2, v2, LGeneralFunction/d/a;->b:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 564
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    iget-object v0, v0, LGeneralFunction/d/b;->a:LGeneralFunction/d/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    iget-object v3, v3, LGeneralFunction/d/b;->a:LGeneralFunction/d/a;

    iget-object v3, v3, LGeneralFunction/d/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LGeneralFunction/d/a;->e:Ljava/lang/String;

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    iget-object v1, v1, LGeneralFunction/d/b;->a:LGeneralFunction/d/a;

    iget-object v1, v1, LGeneralFunction/d/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " || lAppCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/d/c;->b:LGeneralFunction/d/b;

    iget-object v1, v1, LGeneralFunction/d/b;->a:LGeneralFunction/d/a;

    iget v1, v1, LGeneralFunction/d/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 581
    :goto_1
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 573
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 574
    const-string v0, "getPackageInfo NameNotFoundException"

    invoke-static {v0, v6}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 576
    :catch_1
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const-string v0, "getPackageInfo IOException"

    invoke-static {v0, v6}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, LGeneralFunction/d/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/os/Message;)Z
    .locals 10

    .prologue
    const/16 v2, 0x222d

    const/4 v1, 0x2

    const-wide/16 v4, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 58
    .line 59
    new-instance v3, La/c/a;

    invoke-direct {v3, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 533
    :cond_0
    :goto_0
    :sswitch_0
    return v8

    .line 63
    :sswitch_1
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "[UsbRemote] USB Core init fail!"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 67
    :cond_1
    const-string v0, "[UsbRemote] USB Core init success"

    invoke-static {v0, v1}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 73
    :sswitch_2
    const-string v0, "[UsbRemote] USB deinit done"

    invoke-static {v0, v1}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 78
    :sswitch_3
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "[UsbRemote] USB Core reset fail!"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 85
    :sswitch_4
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const-string v0, "[UsbRemote] Start communication fail"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 89
    :cond_2
    const-string v0, "[UsbRemote] Start communication..."

    invoke-static {v0, v1}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 95
    :sswitch_5
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    const-string v0, "[UsbRemote] Close communication fail"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 99
    :cond_3
    const-string v0, "[UsbRemote] Close communication..."

    invoke-static {v0, v1}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 105
    :sswitch_6
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    const-string v0, "[UsbRemote] reset camera fail!"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4870

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto :goto_0

    .line 116
    :sswitch_7
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    const-string v0, "[UsbRemote] start live view fail!"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 120
    :cond_5
    const-string v0, "[UsbRemote] start live view success"

    invoke-static {v0, v1}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 122
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4871

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 128
    :sswitch_8
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    const-string v0, "[UsbRemote] stop live view fail!"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 132
    :cond_6
    const-string v0, "[UsbRemote] stop live view success"

    invoke-static {v0, v1}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 134
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x222c

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 135
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4872

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 141
    :sswitch_9
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    const-string v0, "[UsbRemote] start recording fail!"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x460f

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 146
    :cond_7
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 148
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4873

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 153
    :sswitch_a
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 154
    const-string v0, "[UsbRemote] stop recording fail!"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 157
    :cond_8
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 159
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4874

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 164
    :sswitch_b
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    const-string v0, "[UsbRemote] take picture fail!"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 168
    :cond_9
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 170
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4875

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 175
    :sswitch_c
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 176
    const-string v0, "[UsbRemote] enter fw upgrade mode fail!"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 177
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x242a

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 181
    :cond_a
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4877

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 186
    :sswitch_d
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 187
    const-string v0, "[UsbRemote] examine FW binary fail"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 188
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x242a

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 192
    :cond_b
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4878

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 197
    :sswitch_e
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 198
    const-string v0, "[UsbRemote] start update camera fw fail"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 202
    :cond_c
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4879

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 207
    :sswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UsbRemote] Clear camera picture buffer result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v3, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 212
    :sswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UsbRemote] Camera remained picture number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "remained_pic_num"

    invoke-virtual {v3, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 221
    :sswitch_11
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 222
    const-string v0, "[UsbRemote] get frame fail!"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 229
    :sswitch_12
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_d

    .line 230
    new-instance v0, La/c/a;

    const/16 v1, 0x4821

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 231
    const-string v1, "IsMiddleData"

    invoke-virtual {v0, v1, v8}, La/c/a;->a(Ljava/lang/String;I)V

    .line 232
    iget-object v1, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 234
    :cond_d
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const-string v0, "PictureData"

    invoke-virtual {v3, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/d;

    .line 237
    iget-object v1, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    iget v4, v1, LGeneralFunction/c/d;->a:I

    .line 238
    const-string v1, "CurrentTime"

    invoke-virtual {v3, v1}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v6

    .line 239
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 240
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PIC_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 243
    iget-object v1, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    invoke-static {v1}, LGeneralFunction/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_REMOTE_USB_CMD_READ_GET_PICTURE szSdPath: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-static {v2, v6}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 247
    invoke-static {}, LGeneralFunction/m/a;->a()I

    move-result v2

    if-ne v2, v9, :cond_e

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.huawei.cvIntl60/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DCIM/CV60/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LGeneralFunction/d/c;->c:Ljava/lang/String;

    .line 258
    invoke-direct {p0, v1, v5, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 259
    if-nez v6, :cond_f

    .line 260
    const-string v1, "[UsbRemote] create saving file fail"

    invoke-static {v1, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 261
    iget-object v0, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v0}, LGeneralFunction/c/d;->d()V

    goto/16 :goto_0

    .line 253
    :cond_e
    sget-object v1, Lui_Controller/a/c;->c:Ljava/lang/String;

    goto :goto_1

    .line 266
    :cond_f
    if-eqz v4, :cond_10

    .line 268
    :try_start_0
    iget-object v2, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v2}, LGeneralFunction/c/d;->a()[B

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    :cond_10
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 282
    :goto_3
    iget-object v0, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v0}, LGeneralFunction/c/d;->d()V

    .line 284
    const-string v0, "IsDataEnd"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 285
    new-instance v0, La/c/a;

    const/16 v1, 0x4821

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 286
    const-string v1, "IsMiddleData"

    invoke-virtual {v0, v1, v9}, La/c/a;->a(Ljava/lang/String;I)V

    .line 287
    const-string v1, "CurrentTime"

    const-string v2, "CurrentTime"

    invoke-virtual {v3, v2}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, La/c/a;->a(Ljava/lang/String;J)V

    .line 288
    iget-object v1, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 269
    :catch_0
    move-exception v2

    .line 270
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 271
    :catch_1
    move-exception v2

    .line 272
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 277
    :catch_2
    move-exception v2

    .line 278
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 279
    :catch_3
    move-exception v2

    .line 280
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 291
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/d/c;->c:Ljava/lang/String;

    .line 292
    new-instance v0, La/c/a;

    const/16 v2, 0x4709

    invoke-direct {v0, v2}, La/c/a;-><init>(I)V

    .line 293
    const-string v2, "storage_name"

    invoke-virtual {v0, v2, v5}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "storage_path"

    invoke-virtual {v0, v2, v1}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "file_size"

    invoke-virtual {v0, v1, v4}, La/c/a;->a(Ljava/lang/String;I)V

    .line 296
    const-string v1, "current_time"

    const-string v2, "CurrentTime"

    invoke-virtual {v3, v2}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, La/c/a;->a(Ljava/lang/String;J)V

    .line 297
    iget-object v1, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 304
    :sswitch_13
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_12

    .line 305
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4822

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 307
    :cond_12
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const-string v0, "ThumbnailData"

    invoke-virtual {v3, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/d;

    .line 309
    iget-object v1, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    iget v1, v1, LGeneralFunction/c/d;->a:I

    .line 311
    const-string v2, "QuickView.jpg"

    .line 312
    sget-object v3, Lui_Controller/a/c;->f:Ljava/lang/String;

    .line 313
    const-string v4, "[CaptureDBG] Get thumb"

    invoke-static {v4, v9}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 315
    invoke-direct {p0, v3, v2, v9}, LGeneralFunction/d/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 316
    if-nez v2, :cond_13

    .line 317
    const-string v1, "[UsbRemote] create saving file fail"

    invoke-static {v1, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 318
    iget-object v0, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v0}, LGeneralFunction/c/d;->d()V

    goto/16 :goto_0

    .line 324
    :cond_13
    :try_start_2
    iget-object v3, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v3}, LGeneralFunction/c/d;->a()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 331
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 337
    :goto_5
    iget-object v0, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v0}, LGeneralFunction/c/d;->d()V

    .line 339
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4604

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 325
    :catch_4
    move-exception v1

    .line 326
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 327
    :catch_5
    move-exception v1

    .line 328
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 332
    :catch_6
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 334
    :catch_7
    move-exception v1

    .line 335
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 345
    :sswitch_14
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 346
    const-string v0, "[UsbRemote] get fw version fail"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 347
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x221d

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 350
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UsbRemote] FWVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fw_version"

    invoke-virtual {v3, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 356
    :sswitch_15
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UsbRemote] SCSI Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scsi_version"

    invoke-virtual {v3, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 367
    :sswitch_16
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 368
    const-string v0, "[UsbRemote] get photo resolution fail"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 371
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UsbRemote] Get photo resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo_resolution"

    invoke-virtual {v3, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 445
    :sswitch_17
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 446
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x460e

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 448
    :cond_16
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_17

    .line 450
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4873

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 453
    :cond_17
    const-string v0, "[UsbRemote] check start recording status: fail"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 454
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x460f

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 460
    :sswitch_18
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    .line 461
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x462f

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 463
    :cond_18
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_19

    .line 465
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4874

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 468
    :cond_19
    const-string v0, "[UsbRemote] check stop recording status: fail"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 475
    :sswitch_19
    const-string v0, "play_shutter_sound"

    invoke-virtual {v3, v0}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 476
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x2219

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 478
    :cond_1a
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 480
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4822

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 482
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4875

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 484
    :cond_1b
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_1c

    .line 486
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4875

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto/16 :goto_0

    .line 488
    :cond_1c
    const-string v0, "result"

    invoke-virtual {v3, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 489
    const-string v0, "[CaptureDBG] Camera capture done"

    invoke-static {v0, v9}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    .line 490
    iget-object v0, p0, LGeneralFunction/d/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2206

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 493
    :cond_1d
    const-string v0, "[UsbRemote] check take picture status: fail"

    invoke-static {v0, v8}, LGeneralFunction/d/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x4800 -> :sswitch_1
        0x4801 -> :sswitch_2
        0x4802 -> :sswitch_3
        0x480a -> :sswitch_4
        0x480b -> :sswitch_5
        0x4810 -> :sswitch_6
        0x4811 -> :sswitch_7
        0x4812 -> :sswitch_8
        0x4813 -> :sswitch_9
        0x4814 -> :sswitch_a
        0x4815 -> :sswitch_b
        0x4817 -> :sswitch_0
        0x4818 -> :sswitch_c
        0x4819 -> :sswitch_d
        0x481a -> :sswitch_e
        0x481b -> :sswitch_f
        0x4820 -> :sswitch_11
        0x4821 -> :sswitch_12
        0x4822 -> :sswitch_13
        0x4830 -> :sswitch_14
        0x4831 -> :sswitch_0
        0x4833 -> :sswitch_10
        0x4834 -> :sswitch_15
        0x4840 -> :sswitch_16
        0x4841 -> :sswitch_0
        0x4842 -> :sswitch_0
        0x4843 -> :sswitch_0
        0x4844 -> :sswitch_0
        0x4845 -> :sswitch_0
        0x4847 -> :sswitch_0
        0x4850 -> :sswitch_0
        0x4851 -> :sswitch_0
        0x4852 -> :sswitch_0
        0x4853 -> :sswitch_0
        0x4854 -> :sswitch_0
        0x4855 -> :sswitch_0
        0x4856 -> :sswitch_0
        0x485b -> :sswitch_0
        0x4860 -> :sswitch_0
        0x4870 -> :sswitch_0
        0x4871 -> :sswitch_0
        0x4873 -> :sswitch_17
        0x4874 -> :sswitch_18
        0x4875 -> :sswitch_19
        0x4877 -> :sswitch_0
        0x4878 -> :sswitch_0
        0x4879 -> :sswitch_0
        0x48f0 -> :sswitch_0
        0x48f1 -> :sswitch_0
        0x48f2 -> :sswitch_0
        0x48f3 -> :sswitch_0
    .end sparse-switch
.end method
