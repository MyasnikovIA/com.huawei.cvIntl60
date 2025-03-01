.class public LGeneralFunction/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_StartMode/UI_ModeMain;

.field private b:LGeneralFunction/j/a;

.field private c:J

.field private d:LThirdParty/a/a$a;

.field private e:LThirdParty/Rtmp/a$a;

.field private f:LThirdParty/b/b$a;


# direct methods
.method public constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 58
    iput-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LGeneralFunction/j/b;->c:J

    .line 605
    new-instance v0, LGeneralFunction/j/b$4;

    invoke-direct {v0, p0}, LGeneralFunction/j/b$4;-><init>(LGeneralFunction/j/b;)V

    iput-object v0, p0, LGeneralFunction/j/b;->d:LThirdParty/a/a$a;

    .line 647
    new-instance v0, LGeneralFunction/j/b$5;

    invoke-direct {v0, p0}, LGeneralFunction/j/b$5;-><init>(LGeneralFunction/j/b;)V

    iput-object v0, p0, LGeneralFunction/j/b;->e:LThirdParty/Rtmp/a$a;

    .line 735
    new-instance v0, LGeneralFunction/j/b$6;

    invoke-direct {v0, p0}, LGeneralFunction/j/b$6;-><init>(LGeneralFunction/j/b;)V

    iput-object v0, p0, LGeneralFunction/j/b;->f:LThirdParty/b/b$a;

    .line 68
    iput-object p1, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 69
    new-instance v0, LGeneralFunction/j/a;

    invoke-direct {v0}, LGeneralFunction/j/a;-><init>()V

    iput-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    .line 70
    iget-object v0, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lcom/facebook/k;->a(Landroid/content/Context;)V

    .line 71
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    invoke-static {}, Lcom/facebook/d$a;->a()Lcom/facebook/d;

    move-result-object v1

    iput-object v1, v0, LGeneralFunction/j/a;->f:Lcom/facebook/d;

    .line 72
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    new-instance v1, LThirdParty/a/a;

    iget-object v2, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {v1, v2}, LThirdParty/a/a;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v1, v0, LGeneralFunction/j/a;->i:LThirdParty/a/a;

    .line 73
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v0, v0, LGeneralFunction/j/a;->i:LThirdParty/a/a;

    iget-object v1, p0, LGeneralFunction/j/b;->d:LThirdParty/a/a$a;

    invoke-virtual {v0, v1}, LThirdParty/a/a;->a(LThirdParty/a/a$a;)V

    .line 75
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/j/b;->e:LThirdParty/Rtmp/a$a;

    invoke-virtual {v0, v1}, LThirdParty/Rtmp/a;->a(LThirdParty/Rtmp/a$a;)V

    .line 76
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/j/b;->f:LThirdParty/b/b$a;

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(LThirdParty/b/b$a;)V

    .line 78
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(Landroid/app/Activity;)V

    .line 81
    invoke-direct {p0}, LGeneralFunction/j/b;->k()V

    .line 82
    invoke-direct {p0}, LGeneralFunction/j/b;->l()V

    .line 83
    return-void
.end method

.method static synthetic a(LGeneralFunction/j/b;J)J
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, LGeneralFunction/j/b;->c:J

    return-wide p1
.end method

.method static synthetic a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    return-object v0
.end method

.method static synthetic a(LGeneralFunction/j/b;Lcom/facebook/p;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, LGeneralFunction/j/b;->a(Lcom/facebook/p;)V

    return-void
.end method

.method private a(Lcom/facebook/p;)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 578
    invoke-virtual {p1}, Lcom/facebook/p;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/p;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    .line 581
    invoke-virtual {p1}, Lcom/facebook/p;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    .line 582
    new-instance v0, La/c/a;

    const/16 v1, 0x2aa1

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 583
    const-string v1, "httpStatusCode"

    invoke-virtual {p1}, Lcom/facebook/p;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 584
    iget-object v1, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 603
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 591
    :try_start_0
    iget-object v1, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    const-string v2, "stream_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LGeneralFunction/j/a;->c:Ljava/lang/String;

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LiveStreamingURL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v2, v2, LGeneralFunction/j/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    .line 593
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LGeneralFunction/j/b;->d(Ljava/lang/String;)V

    .line 595
    new-instance v0, La/c/a;

    const/16 v1, 0x2a52

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 596
    const-string v1, "rtmpURL"

    iget-object v2, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v2, v2, LGeneralFunction/j/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Landroid/os/Message;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 407
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(LGeneralFunction/j/b;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, LGeneralFunction/j/b;->j()V

    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 63
    const-string v0, "UI_LiveStreamingController"

    invoke-static {v0, p0, p1}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method static synthetic c(LGeneralFunction/j/b;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, LGeneralFunction/j/b;->m()V

    return-void
.end method

.method static synthetic d(LGeneralFunction/j/b;)J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, LGeneralFunction/j/b;->c:J

    return-wide v0
.end method

.method static synthetic e(LGeneralFunction/j/b;)LGeneralFunction/j/a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    return-object v0
.end method

.method private i()Lcom/facebook/d;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v0, v0, LGeneralFunction/j/a;->f:Lcom/facebook/d;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 501
    const-string v0, "[DBG] saveAccount"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    .line 505
    iget-object v0, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 506
    const-string v1, "googleAccountName"

    invoke-virtual {p0}, LGeneralFunction/j/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 507
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 515
    const-string v0, "loadAccount"

    invoke-static {v0, v3}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    .line 516
    iget-object v0, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "googleAccountName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LGeneralFunction/j/b;->a(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, LGeneralFunction/j/b;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GoogleAccountName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v1, v1, LGeneralFunction/j/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LGeneralFunction/j/b;->a(Z)V

    .line 529
    :goto_0
    return-void

    .line 525
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GoogleAccountName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v1, v1, LGeneralFunction/j/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    .line 526
    invoke-virtual {p0}, LGeneralFunction/j/b;->g()LThirdParty/a/a;

    move-result-object v0

    invoke-virtual {p0}, LGeneralFunction/j/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LThirdParty/a/a;->a(Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LGeneralFunction/j/b;->a(Z)V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 533
    invoke-static {}, LGeneralFunction/j/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-static {}, Lcom/facebook/Profile;->a()Lcom/facebook/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Profile;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LGeneralFunction/j/b;->b(Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lcom/facebook/Profile;->a()Lcom/facebook/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Profile;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LGeneralFunction/j/b;->c(Ljava/lang/String;)V

    .line 543
    :goto_0
    return-void

    .line 540
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, LGeneralFunction/j/b;->b(Ljava/lang/String;)V

    .line 541
    const-string v0, ""

    invoke-virtual {p0, v0}, LGeneralFunction/j/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 570
    invoke-virtual {p0}, LGeneralFunction/j/b;->g()LThirdParty/a/a;

    move-result-object v0

    invoke-virtual {p0}, LGeneralFunction/j/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LThirdParty/a/a;->a(Ljava/lang/String;)V

    .line 571
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(Landroid/app/Activity;)V

    .line 572
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    invoke-virtual {p0}, LGeneralFunction/j/b;->g()LThirdParty/a/a;

    move-result-object v1

    iget-object v1, v1, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;)V

    .line 573
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(I)V

    .line 574
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, LGeneralFunction/j/b;->g()LThirdParty/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LThirdParty/a/a;->a(IILandroid/content/Intent;)V

    .line 480
    invoke-direct {p0}, LGeneralFunction/j/b;->i()Lcom/facebook/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/d;->a(IILandroid/content/Intent;)Z

    .line 481
    return-void
.end method

.method public a(LGeneralFunction/c/d;J)V
    .locals 4

    .prologue
    .line 485
    new-instance v0, La/c/a;

    const/16 v1, 0x2002

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 486
    const-string v1, "streamAudioData"

    new-instance v2, La/c/a$a;

    invoke-direct {v2, p1}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    .line 487
    const-string v1, "streamAudioPts"

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 488
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v1

    invoke-virtual {v0}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, LThirdParty/Rtmp/a;->a(Landroid/os/Message;)V

    .line 489
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iput-object p1, v0, LGeneralFunction/j/a;->g:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGoogleAccountName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    .line 425
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iput-boolean p1, v0, LGeneralFunction/j/a;->j:Z

    .line 426
    return-void
.end method

.method public a(Landroid/os/Message;)Z
    .locals 12

    .prologue
    const/16 v7, 0x2003

    const/4 v4, 0x2

    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x1

    .line 87
    .line 88
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 402
    :cond_0
    :goto_0
    return v11

    .line 94
    :sswitch_0
    const-string v0, "publish_actions"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/facebook/login/f;->a()Lcom/facebook/login/f;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/a;->d:Lcom/facebook/login/a;

    invoke-virtual {v1, v2}, Lcom/facebook/login/f;->a(Lcom/facebook/login/a;)Lcom/facebook/login/f;

    .line 96
    invoke-static {}, Lcom/facebook/login/f;->a()Lcom/facebook/login/f;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/login/f;->a(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 97
    invoke-static {}, Lcom/facebook/login/f;->a()Lcom/facebook/login/f;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v1, v1, LGeneralFunction/j/a;->f:Lcom/facebook/d;

    new-instance v2, LGeneralFunction/j/b$1;

    invoke-direct {v2, p0}, LGeneralFunction/j/b$1;-><init>(LGeneralFunction/j/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/f;->a(Lcom/facebook/d;Lcom/facebook/f;)V

    goto :goto_0

    .line 151
    :sswitch_1
    invoke-static {}, Lcom/facebook/login/f;->a()Lcom/facebook/login/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/f;->b()V

    .line 152
    iget-object v0, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2a51

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 158
    :sswitch_2
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LGeneralFunction/j/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/live_videos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    const-string v1, "liveStreamDescription"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v1, "description"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "save_vod"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    const-string v0, "is_spherical"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 171
    :try_start_0
    const-string v0, "value"

    const-string v4, "EVERYONE"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_1
    const-string v0, "privacy"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v4, Lcom/facebook/q;->b:Lcom/facebook/q;

    new-instance v5, LGeneralFunction/j/b$2;

    invoke-direct {v5, p0}, LGeneralFunction/j/b$2;-><init>(LGeneralFunction/j/b;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    .line 197
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/n;

    goto/16 :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 203
    :sswitch_3
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v0, v0, LGeneralFunction/j/a;->i:LThirdParty/a/a;

    invoke-virtual {v0}, LThirdParty/a/a;->a()V

    goto/16 :goto_0

    .line 208
    :sswitch_4
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v0, v0, LGeneralFunction/j/a;->i:LThirdParty/a/a;

    invoke-virtual {v0}, LThirdParty/a/a;->b()V

    goto/16 :goto_0

    .line 213
    :sswitch_5
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iput-boolean v11, v0, LGeneralFunction/j/a;->m:Z

    .line 214
    const/16 v0, 0x1002

    iput v0, p1, Landroid/os/Message;->what:I

    .line 215
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 216
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v1

    invoke-virtual {v0}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, LThirdParty/b/b;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 222
    :sswitch_6
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iput-boolean v6, v0, LGeneralFunction/j/a;->m:Z

    .line 223
    const/16 v0, 0x1001

    iput v0, p1, Landroid/os/Message;->what:I

    .line 224
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 225
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v1

    invoke-virtual {v0}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, LThirdParty/b/b;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 230
    :sswitch_7
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iput-boolean v6, v0, LGeneralFunction/j/a;->m:Z

    .line 231
    const/16 v0, 0x1003

    iput v0, p1, Landroid/os/Message;->what:I

    .line 232
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 233
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v1

    invoke-virtual {v0}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, LThirdParty/b/b;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 238
    :sswitch_8
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 239
    iget-object v1, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iput v6, v1, LGeneralFunction/j/a;->k:I

    .line 240
    iget-object v1, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    const-string v2, "StreamingType"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, LGeneralFunction/j/a;->l:I

    .line 241
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget v0, v0, LGeneralFunction/j/a;->l:I

    if-ne v0, v6, :cond_1

    .line 243
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-boolean v0, v0, LGeneralFunction/j/a;->m:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(I)V

    goto/16 :goto_0

    .line 255
    :cond_1
    const-string v0, "ERROR START_EVENT StreamingType!!!"

    invoke-static {v0, v11}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 261
    :sswitch_9
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    invoke-virtual {v0}, LThirdParty/Rtmp/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget v0, v0, LGeneralFunction/j/a;->l:I

    if-ne v0, v6, :cond_2

    .line 264
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(I)V

    .line 265
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    invoke-virtual {v0, v7}, LThirdParty/Rtmp/a;->a(I)V

    goto/16 :goto_0

    .line 267
    :cond_2
    const-string v0, "ERROR END_EVENT StreamingType!!!"

    invoke-static {v0, v11}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2a59

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 278
    :sswitch_a
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    invoke-virtual {v0}, LThirdParty/Rtmp/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LGeneralFunction/j/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 283
    const-string v0, "end_live_video"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v4, Lcom/facebook/q;->b:Lcom/facebook/q;

    new-instance v5, LGeneralFunction/j/b$3;

    invoke-direct {v5, p0}, LGeneralFunction/j/b$3;-><init>(LGeneralFunction/j/b;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    .line 299
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/n;

    .line 301
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget v0, v0, LGeneralFunction/j/a;->l:I

    if-ne v0, v6, :cond_4

    .line 303
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    invoke-virtual {v0, v7}, LThirdParty/Rtmp/a;->a(I)V

    goto/16 :goto_0

    .line 307
    :cond_4
    const-string v0, "ERROR END_EVENT StreamingType!!!"

    invoke-static {v0, v11}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 312
    :cond_5
    iget-object v0, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2a5c

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 318
    :sswitch_b
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    const/16 v1, 0x1007

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(I)V

    goto/16 :goto_0

    .line 323
    :sswitch_c
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    const/16 v1, 0x1008

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(I)V

    goto/16 :goto_0

    .line 328
    :sswitch_d
    const/16 v0, 0x1006

    iput v0, p1, Landroid/os/Message;->what:I

    .line 329
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 330
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v1

    invoke-virtual {v0}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, LThirdParty/b/b;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 335
    :sswitch_e
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    invoke-virtual {p0}, LGeneralFunction/j/b;->h()Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v1

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;)V

    goto/16 :goto_0

    .line 340
    :sswitch_f
    new-instance v9, La/c/a;

    invoke-direct {v9, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 341
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iput v4, v0, LGeneralFunction/j/a;->k:I

    .line 342
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    const-string v1, "StreamingType"

    invoke-virtual {v9, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, LGeneralFunction/j/a;->l:I

    .line 343
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget v0, v0, LGeneralFunction/j/a;->l:I

    if-ne v0, v6, :cond_6

    .line 345
    const-string v0, "STREAMING_TYPE_LIVEVIEW"

    invoke-static {v0, v4}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    .line 346
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    invoke-virtual {v0}, LThirdParty/Rtmp/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    const-string v1, "Width"

    .line 349
    invoke-virtual {v9, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Height"

    .line 350
    invoke-virtual {v9, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    const-string v3, "AudioSampleRate"

    .line 351
    invoke-virtual {v9, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    const-string v4, "SpsPpsBuffer"

    .line 352
    invoke-virtual {v9, v4}, La/c/a;->e(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "SpsPpsSize"

    .line 353
    invoke-virtual {v9, v5}, La/c/a;->b(Ljava/lang/String;)I

    move-result v5

    const-string v6, "VideoFps"

    .line 354
    invoke-virtual {v9, v6}, La/c/a;->b(Ljava/lang/String;)I

    move-result v6

    const-string v7, "VideoBitrate"

    .line 355
    invoke-virtual {v9, v7}, La/c/a;->b(Ljava/lang/String;)I

    move-result v7

    const-string v8, "VideoGOP"

    .line 356
    invoke-virtual {v9, v8}, La/c/a;->b(Ljava/lang/String;)I

    move-result v8

    .line 348
    invoke-virtual/range {v0 .. v8}, LThirdParty/Rtmp/a;->a(III[BIIII)V

    .line 357
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    const-string v1, "Width"

    invoke-virtual {v9, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Height"

    invoke-virtual {v9, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    const-string v3, "AudioSampleRate"

    invoke-virtual {v9, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    const-string v4, "SpsPpsBuffer"

    invoke-virtual {v9, v4}, La/c/a;->e(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "SpsPpsSize"

    invoke-virtual {v9, v5}, La/c/a;->b(Ljava/lang/String;)I

    move-result v5

    const-string v6, "VideoFps"

    invoke-virtual {v9, v6}, La/c/a;->b(Ljava/lang/String;)I

    move-result v6

    const-string v7, "VideoBitrate"

    invoke-virtual {v9, v7}, La/c/a;->b(Ljava/lang/String;)I

    move-result v7

    const-string v8, "VideoGOP"

    invoke-virtual {v9, v8}, La/c/a;->b(Ljava/lang/String;)I

    move-result v8

    const-string v10, "rtmpURL"

    invoke-virtual {v9, v10}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, LThirdParty/Rtmp/a;->a(III[BIIIILjava/lang/String;)V

    .line 358
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, LThirdParty/Rtmp/a;->a(I)V

    goto/16 :goto_0

    .line 363
    :cond_6
    const-string v0, "ERROR START_LIVE_VIDEOS StreamingType!!!"

    invoke-static {v0, v11}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 369
    :sswitch_10
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget v0, v0, LGeneralFunction/j/a;->l:I

    if-ne v0, v6, :cond_7

    .line 371
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    invoke-virtual {v0, v7}, LThirdParty/Rtmp/a;->a(I)V

    goto/16 :goto_0

    .line 375
    :cond_7
    const-string v0, "ERROR END_LIVE_VIDEOS StreamingType!!!"

    invoke-static {v0, v11}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 381
    :sswitch_11
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget v0, v0, LGeneralFunction/j/a;->k:I

    if-ne v0, v6, :cond_8

    .line 383
    iget-object v0, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2a09

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 385
    :cond_8
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget v0, v0, LGeneralFunction/j/a;->k:I

    if-ne v0, v4, :cond_9

    .line 387
    iget-object v0, p0, LGeneralFunction/j/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2a0d

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 391
    :cond_9
    const-string v0, "ERROR FILE_STREAMING_TO_THE_END StreamingSns!!!"

    invoke-static {v0, v11}, LGeneralFunction/j/b;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a00 -> :sswitch_0
        0x2a01 -> :sswitch_1
        0x2a02 -> :sswitch_2
        0x2a03 -> :sswitch_3
        0x2a04 -> :sswitch_4
        0x2a05 -> :sswitch_5
        0x2a06 -> :sswitch_6
        0x2a07 -> :sswitch_7
        0x2a08 -> :sswitch_8
        0x2a09 -> :sswitch_9
        0x2a0a -> :sswitch_d
        0x2a0b -> :sswitch_e
        0x2a0c -> :sswitch_f
        0x2a0d -> :sswitch_10
        0x2a10 -> :sswitch_b
        0x2a11 -> :sswitch_c
        0x2a15 -> :sswitch_a
        0x2af0 -> :sswitch_11
    .end sparse-switch
.end method

.method public b(LGeneralFunction/c/d;J)V
    .locals 4

    .prologue
    .line 493
    new-instance v0, La/c/a;

    const/16 v1, 0x2001

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 494
    const-string v1, "streamVideoData"

    new-instance v2, La/c/a$a;

    invoke-direct {v2, p1}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    .line 495
    const-string v1, "streamVideoPts"

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 496
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v1

    invoke-virtual {v0}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, LThirdParty/Rtmp/a;->a(Landroid/os/Message;)V

    .line 497
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iput-object p1, v0, LGeneralFunction/j/a;->h:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-boolean v0, v0, LGeneralFunction/j/a;->j:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v0, v0, LGeneralFunction/j/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iput-object p1, v0, LGeneralFunction/j/a;->b:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v0, v0, LGeneralFunction/j/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iput-object p1, v0, LGeneralFunction/j/a;->e:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v0, v0, LGeneralFunction/j/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v0, v0, LGeneralFunction/j/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()LThirdParty/a/a;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v0, v0, LGeneralFunction/j/a;->i:LThirdParty/a/a;

    return-object v0
.end method

.method public h()Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, LGeneralFunction/j/b;->b:LGeneralFunction/j/a;

    iget-object v0, v0, LGeneralFunction/j/a;->i:LThirdParty/a/a;

    iget-object v0, v0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    return-object v0
.end method
