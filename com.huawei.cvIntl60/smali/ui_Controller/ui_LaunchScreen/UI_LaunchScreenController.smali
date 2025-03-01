.class public Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;
.super LGeneralFunction/a/a;
.source "SourceFile"


# instance fields
.field protected b:Lui_Controller/ui_StartMode/UI_ModeMain;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/LinearLayout;

.field protected e:LGeneralFunction/Player/player/SphericalVideoPlayer;

.field protected f:Landroid/graphics/Bitmap;

.field protected g:Landroid/widget/ImageView;

.field private h:I

.field private i:I

.field private j:I

.field private k:Lui_Controller/ui_LaunchScreen/a;

.field private l:Landroid/view/OrientationEventListener;

.field private m:Landroid/content/Context;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/webkit/WebView;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/Button;

.field private x:Lui_Controller/b/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, LGeneralFunction/a/a;-><init>()V

    .line 60
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 61
    iput v2, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->h:I

    .line 62
    iput v2, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->i:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->j:I

    .line 65
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->c:Landroid/widget/ImageView;

    .line 67
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->k:Lui_Controller/ui_LaunchScreen/a;

    .line 68
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->l:Landroid/view/OrientationEventListener;

    .line 69
    iput-object p0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->m:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->n:Landroid/widget/LinearLayout;

    .line 72
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->o:Landroid/webkit/WebView;

    .line 73
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->p:Landroid/widget/Button;

    .line 74
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->q:Landroid/widget/Button;

    .line 76
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->d:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 78
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->r:Ljava/util/ArrayList;

    .line 79
    iput v2, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->s:I

    .line 80
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->t:Landroid/widget/LinearLayout;

    .line 81
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->u:Landroid/widget/TextView;

    .line 82
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->v:Landroid/widget/TextView;

    .line 83
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->w:Landroid/widget/Button;

    .line 84
    iput-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->j:I

    return p1
.end method

.method static synthetic a(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 91
    const-string v0, "UI_LaunchScreenController"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->j:I

    return v0
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 220
    const-string v0, "ro.config.hw_notch_size"

    const-string v1, ""

    invoke-static {v0, v1}, LGeneralFunction/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->x:Lui_Controller/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui_Controller/b/d;->a(Z)V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNeedGap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    .line 228
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->x:Lui_Controller/b/d;

    invoke-virtual {v0, v3}, Lui_Controller/b/d;->a(Z)V

    goto :goto_0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 330
    iget v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->s:I

    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 334
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private t()V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 587
    const-string v1, "haveUnzipSample"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    const/16 v0, 0x5002

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b(I)V

    .line 591
    :cond_0
    const-string v0, "Send MSG_AID_SPLASH_USB_INIT"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    .line 592
    const/16 v0, 0x501a

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b(I)V

    .line 593
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 690
    new-instance v0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$9;

    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$9;-><init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;Landroid/content/Context;)V

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->l:Landroid/view/OrientationEventListener;

    .line 717
    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, p1}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendUiMsg error!! Msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(La/c/a;J)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, p1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendUiMsg error!! MsgEx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, La/c/a;->b()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->k:Lui_Controller/ui_LaunchScreen/a;

    invoke-virtual {v0, p1}, Lui_Controller/ui_LaunchScreen/a;->a(Landroid/os/Message;)V

    .line 288
    return-void
.end method

.method protected a(Z)V
    .locals 2

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->t:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->t:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(IJ)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, p1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(IJ)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v0, "UI_SendAidMsg error!!"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AidServer_Handler:0x"

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

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    .line 160
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->k:Lui_Controller/ui_LaunchScreen/a;

    invoke-virtual {v0, p1}, Lui_Controller/ui_LaunchScreen/a;->d(Landroid/os/Message;)V

    .line 161
    return-void
.end method

.method protected b(Z)V
    .locals 3

    .prologue
    .line 443
    if-eqz p1, :cond_1

    .line 445
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->f:Landroid/graphics/Bitmap;

    .line 446
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 453
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->f:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 291
    const v0, 0x7f100261

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->c:Landroid/widget/ImageView;

    .line 292
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->c:Landroid/widget/ImageView;

    const v1, 0x7f020331

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    return-void
.end method

.method protected c(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v2, 0x2

    .line 637
    if-eqz p1, :cond_0

    .line 639
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->n:Landroid/widget/LinearLayout;

    const-string v1, "translationX"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 640
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 641
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 642
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 657
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->n:Landroid/widget/LinearLayout;

    const-string v1, "translationX"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 647
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 648
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 649
    new-instance v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$6;

    invoke-direct {v1, p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$6;-><init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 639
    nop

    :array_0
    .array-data 4
        0x44c80000    # 1600.0f
        0x0
    .end array-data

    .line 646
    :array_1
    .array-data 4
        0x0
        0x44c80000    # 1600.0f
    .end array-data
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 298
    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->g:Landroid/widget/ImageView;

    .line 299
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->g:Landroid/widget/ImageView;

    const v1, 0x7f020331

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    const v0, 0x7f100265

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->t:Landroid/widget/LinearLayout;

    .line 302
    const v0, 0x7f100266

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->u:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f100267

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->v:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f100268

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->w:Landroid/widget/Button;

    .line 305
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->t:Landroid/widget/LinearLayout;

    new-instance v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$1;

    invoke-direct {v1, p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$1;-><init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 311
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->t:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->i:I

    div-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-static {p0, v0}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v0

    .line 313
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->u:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 314
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->u:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->w:Landroid/widget/Button;

    const v1, 0x7f02035d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 317
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->w:Landroid/widget/Button;

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->w:Landroid/widget/Button;

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 319
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->w:Landroid/widget/Button;

    new-instance v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$2;

    invoke-direct {v1, p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$2;-><init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->r:Ljava/util/ArrayList;

    .line 364
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->r:Ljava/util/ArrayList;

    sget-object v1, Lui_Controller/a/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->r:Ljava/util/ArrayList;

    sget-object v1, Lui_Controller/a/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->r:Ljava/util/ArrayList;

    sget-object v1, Lui_Controller/a/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    const v0, 0x7f100262

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->d:Landroid/widget/LinearLayout;

    .line 369
    const v0, 0x7f100263

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, LGeneralFunction/Player/player/SphericalVideoPlayer;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 370
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    new-instance v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$3;

    invoke-direct {v1, p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$3;-><init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setPlayerStatusListener(LGeneralFunction/Player/player/SphericalVideoPlayer$f;)V

    .line 381
    return-void
.end method

.method protected f()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->f()V

    .line 387
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Z)V

    .line 388
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setEnable(Z)V

    .line 389
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setVideoAutoPlay(Z)V

    .line 390
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(Z)V

    .line 391
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setPlayerMode(I)V

    .line 392
    iget v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->s:I

    if-ne v0, v3, :cond_0

    .line 394
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setViewType(I)V

    .line 400
    :goto_0
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->r:Ljava/util/ArrayList;

    iget v2, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->s:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setVideoFilePath(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setInteractiveMode(I)V

    .line 402
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->g()I

    .line 403
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setViewType(I)V

    goto :goto_0
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->k()I

    .line 409
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->i()V

    .line 410
    return-void
.end method

.method protected h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 413
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 414
    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 415
    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->pause()V

    .line 427
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->k()I

    .line 428
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->i()V

    .line 429
    iget v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->s:I

    .line 438
    :goto_0
    invoke-direct {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->s()V

    .line 439
    return-void

    .line 435
    :cond_0
    iget v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->s:I

    goto :goto_0
.end method

.method protected j()Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 463
    .line 464
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v1}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 466
    const-string v2, "previousTimeShowLaunchScreenVideo"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 468
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v2, v0

    .line 470
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 475
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 477
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    .line 481
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k()V
    .locals 5

    .prologue
    .line 488
    sget-object v1, Lui_Controller/a/c;->r:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 489
    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 490
    sget-object v0, Lui_Controller/a/c;->r:[Ljava/lang/String;

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 496
    :goto_1
    return-void

    .line 488
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_1
    invoke-direct {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->t()V

    goto :goto_1
.end method

.method protected l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "storeLocation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 500
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 501
    invoke-static {p0}, LGeneralFunction/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 502
    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    const-string v1, "storeLocation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 505
    invoke-static {v2}, LGeneralFunction/m/a;->a(I)V

    .line 508
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 512
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->o()V

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x1020

    invoke-virtual {v1, v2, p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 515
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 517
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 518
    const-string v1, "haveUserInstruction"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 519
    const-string v1, "apkUpdateLater"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 520
    const-string v1, "presentVersion"

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 522
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->finish()V

    .line 523
    return-void
.end method

.method protected n()V
    .locals 5

    .prologue
    const v4, 0x7f0a0189

    const/4 v3, 0x0

    .line 527
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 528
    const-string v1, "presentVersion"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 533
    const-string v1, "presentVersion"

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 534
    const-string v1, "apkUpdateLater"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 535
    const-string v1, "haveNewApkVersion"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 537
    :cond_0
    return-void
.end method

.method protected o()V
    .locals 4

    .prologue
    .line 541
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 542
    const-string v1, "haveUserInstruction"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const/16 v0, 0x2100

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(I)V

    .line 557
    :goto_0
    return-void

    .line 548
    :cond_0
    const/16 v0, 0x2104

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(I)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 554
    const-string v1, "apkInspectTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 555
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->m()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    const v0, 0x8000

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(IJ)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 684
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 685
    invoke-static {}, LGeneralFunction/o;->a()V

    .line 686
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x3

    .line 166
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lui_Controller/ui_StartMode/UI_ModeMain;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 168
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->v()V

    .line 169
    invoke-static {}, Lui_Controller/b/d;->a()Lui_Controller/b/d;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->x:Lui_Controller/b/d;

    .line 172
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 174
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->h:I

    .line 175
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->i:I

    .line 177
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 178
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c()LGeneralFunction/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip launch onCreate in special case:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c()LGeneralFunction/a/a;

    move-result-object v1

    invoke-virtual {v1}, LGeneralFunction/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    .line 182
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c()LGeneralFunction/a/a;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/a/a;->a()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 184
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->finish()V

    .line 216
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->o()V

    .line 189
    iput v2, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->j:I

    .line 190
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->setContentView(I)V

    .line 193
    new-instance v0, Lui_Controller/ui_LaunchScreen/a;

    invoke-direct {v0, p0}, Lui_Controller/ui_LaunchScreen/a;-><init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->k:Lui_Controller/ui_LaunchScreen/a;

    .line 194
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xc10

    invoke-virtual {v0, v1, p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 196
    invoke-direct {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->u()V

    .line 197
    const/16 v0, 0x2f01

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(IJ)V

    .line 199
    const-string v0, ""

    .line 200
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 202
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP ver. info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    .line 210
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 211
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 212
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 213
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    .line 215
    invoke-direct {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->r()V

    goto/16 :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 205
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 274
    invoke-super {p0}, LGeneralFunction/a/a;->onDestroy()V

    .line 275
    new-instance v0, La/c/a;

    const/16 v1, 0x2f05

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 276
    const-string v1, "mode"

    const/16 v2, 0xc00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 277
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(La/c/a;J)V

    .line 278
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onNewIntent(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 253
    invoke-super {p0}, LGeneralFunction/a/a;->onPause()V

    .line 254
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0xc20

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->pause()V

    .line 258
    :cond_0
    new-instance v0, La/c/a;

    const/16 v1, 0x2f03

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 259
    const-string v1, "mode"

    const/16 v2, 0xc00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 260
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(La/c/a;J)V

    .line 261
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->l:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 262
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9

    .prologue
    const v4, 0x7f0a0157

    const v8, 0x7f0a0091

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestPermissionsResult() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Ljava/lang/String;I)V

    .line 563
    array-length v0, p2

    if-eqz v0, :cond_2

    move v0, v2

    .line 564
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 565
    aget v3, p3, v0

    if-eqz v3, :cond_1

    .line 566
    aget-object v0, p2, v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a00f6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    .line 569
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0a008b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    move-object v0, p0

    .line 567
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 582
    :goto_1
    return-void

    .line 573
    :cond_0
    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a00f5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f00

    move-object v0, p0

    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 564
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_2
    invoke-direct {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->t()V

    goto :goto_1

    .line 569
    :array_0
    .array-data 4
        0x2f00
        0x2900
    .end array-data
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 240
    invoke-super {p0}, LGeneralFunction/a/a;->onResume()V

    .line 241
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0xc20

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->start()V

    .line 245
    :cond_0
    new-instance v0, La/c/a;

    const/16 v1, 0x2f02

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 246
    const-string v1, "mode"

    const/16 v2, 0xc00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 247
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(La/c/a;J)V

    .line 248
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->l:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 249
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 266
    invoke-super {p0}, LGeneralFunction/a/a;->onStop()V

    .line 267
    new-instance v0, La/c/a;

    const/16 v1, 0x2f04

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 268
    const-string v1, "mode"

    const/16 v2, 0xc00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 269
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(La/c/a;J)V

    .line 270
    return-void
.end method

.method protected p()V
    .locals 3

    .prologue
    const v2, 0x7f020069

    const/4 v1, 0x0

    .line 597
    const v0, 0x7f100269

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->n:Landroid/widget/LinearLayout;

    .line 598
    const v0, 0x7f10026a

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->o:Landroid/webkit/WebView;

    .line 599
    const v0, 0x7f10026b

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->p:Landroid/widget/Button;

    .line 600
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 601
    const v0, 0x7f10026c

    invoke-virtual {p0, v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->q:Landroid/widget/Button;

    .line 602
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 604
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->o:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 605
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 606
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 607
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 608
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 609
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 610
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 612
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->o:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->p:Landroid/widget/Button;

    new-instance v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$4;

    invoke-direct {v1, p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$4;-><init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->q:Landroid/widget/Button;

    new-instance v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$5;

    invoke-direct {v1, p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$5;-><init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    return-void
.end method

.method protected q()V
    .locals 3

    .prologue
    .line 660
    new-instance v0, LGeneralFunction/h$a;

    invoke-direct {v0, p0}, LGeneralFunction/h$a;-><init>(Landroid/content/Context;)V

    .line 661
    const v1, 0x7f0a0069

    new-instance v2, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$8;

    invoke-direct {v2, p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$8;-><init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V

    invoke-virtual {v0, v1, v2}, LGeneralFunction/h$a;->a(ILandroid/content/DialogInterface$OnClickListener;)LGeneralFunction/h$a;

    move-result-object v0

    const v1, 0x7f0a006a

    new-instance v2, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$7;

    invoke-direct {v2, p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$7;-><init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V

    .line 666
    invoke-virtual {v0, v1, v2}, LGeneralFunction/h$a;->b(ILandroid/content/DialogInterface$OnClickListener;)LGeneralFunction/h$a;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, LGeneralFunction/h$a;->a()LGeneralFunction/h;

    move-result-object v0

    invoke-virtual {p0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, LGeneralFunction/h;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 672
    return-void
.end method
