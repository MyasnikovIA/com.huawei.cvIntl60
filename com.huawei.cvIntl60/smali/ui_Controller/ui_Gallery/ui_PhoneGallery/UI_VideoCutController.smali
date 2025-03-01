.class public Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;
.super LGeneralFunction/a/a;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/LinearLayout;

.field private I:LGeneralFunction/i/a/a$a;

.field private J:LGeneralFunction/i/a/a$b;

.field private K:Landroid/view/View$OnTouchListener;

.field private L:Landroid/view/View$OnClickListener;

.field protected b:Lui_Controller/ui_StartMode/UI_ModeMain;

.field protected c:Lui_Controller/b/b;

.field protected d:Lui_Controller/b/e;

.field protected e:Z

.field protected f:Z

.field protected g:LGeneralFunction/f/a/c;

.field protected h:LGeneralFunction/Player/player/SphericalVideoPlayer;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/view/OrientationEventListener;

.field private n:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

.field private o:J

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/FrameLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/FrameLayout;

.field private x:LGeneralFunction/i/a/a;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, LGeneralFunction/a/a;-><init>()V

    .line 49
    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->i:I

    .line 50
    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->j:I

    .line 51
    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->k:I

    .line 52
    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->l:I

    .line 54
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->m:Landroid/view/OrientationEventListener;

    .line 56
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->n:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

    .line 57
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 58
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    .line 59
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    .line 60
    iput-boolean v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e:Z

    .line 61
    iput-boolean v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->f:Z

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->o:J

    .line 292
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->p:Landroid/widget/ImageButton;

    .line 293
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->q:Landroid/widget/TextView;

    .line 294
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->r:Landroid/widget/TextView;

    .line 295
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->s:Landroid/widget/ImageButton;

    .line 296
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->t:Landroid/widget/FrameLayout;

    .line 297
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->u:Landroid/widget/TextView;

    .line 299
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 301
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->v:Landroid/widget/ImageButton;

    .line 302
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->w:Landroid/widget/FrameLayout;

    .line 303
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->x:LGeneralFunction/i/a/a;

    .line 304
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->y:Landroid/widget/TextView;

    .line 305
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->z:Landroid/widget/TextView;

    .line 306
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->A:Landroid/widget/TextView;

    .line 308
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->B:Landroid/widget/LinearLayout;

    .line 309
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->C:Landroid/widget/LinearLayout;

    .line 311
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->D:Landroid/widget/LinearLayout;

    .line 312
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->E:Landroid/widget/Button;

    .line 314
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->F:Landroid/widget/LinearLayout;

    .line 315
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->G:Landroid/widget/ImageView;

    .line 317
    iput-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->H:Landroid/widget/LinearLayout;

    .line 609
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$3;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$3;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->I:LGeneralFunction/i/a/a$a;

    .line 633
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$4;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$4;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->J:LGeneralFunction/i/a/a$b;

    .line 800
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$6;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$6;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->K:Landroid/view/View$OnTouchListener;

    .line 840
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$7;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->L:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private A()V
    .locals 1

    .prologue
    .line 883
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;

    invoke-direct {v0, p0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$8;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;Landroid/content/Context;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->m:Landroid/view/OrientationEventListener;

    .line 920
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->l:I

    return p1
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->x:LGeneralFunction/i/a/a;

    return-object p1
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->w:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 68
    const-string v0, "UI_VideoCutController"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)LGeneralFunction/i/a/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->x:LGeneralFunction/i/a/a;

    return-object v0
.end method

.method static synthetic c(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)LGeneralFunction/i/a/a$a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->I:LGeneralFunction/i/a/a$a;

    return-object v0
.end method

.method static synthetic d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)LGeneralFunction/i/a/a$b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->J:LGeneralFunction/i/a/a$b;

    return-object v0
.end method

.method static synthetic e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->l:I

    return v0
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 332
    const v0, 0x7f1003d6

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, LGeneralFunction/Player/player/SphericalVideoPlayer;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 333
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    new-instance v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$1;

    invoke-direct {v1, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$1;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)V

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setPlayerStatusListener(LGeneralFunction/Player/player/SphericalVideoPlayer$f;)V

    .line 343
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e()V

    .line 344
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v2, v0, Lui_Controller/b/e;->F:I

    .line 345
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v2, v0, Lui_Controller/b/e;->G:I

    .line 346
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 376
    const v0, 0x7f1003dd

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->C:Landroid/widget/LinearLayout;

    .line 377
    const v0, 0x7f1003e1

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->w:Landroid/widget/FrameLayout;

    .line 378
    const v0, 0x7f1003de

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->v:Landroid/widget/ImageButton;

    .line 379
    const v0, 0x7f1003df

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->z:Landroid/widget/TextView;

    .line 380
    const v0, 0x7f1003e0

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->A:Landroid/widget/TextView;

    .line 381
    const v0, 0x7f1003e2

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->y:Landroid/widget/TextView;

    .line 383
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->v:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    return-void
.end method

.method private x()V
    .locals 3

    .prologue
    .line 676
    const v0, 0x7f1003d7

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->B:Landroid/widget/LinearLayout;

    .line 677
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->B:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 678
    const v0, 0x7f1003d8

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->p:Landroid/widget/ImageButton;

    .line 679
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->p:Landroid/widget/ImageButton;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 680
    const v0, 0x7f1003db

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->s:Landroid/widget/ImageButton;

    .line 681
    const v0, 0x7f1003dc

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->u:Landroid/widget/TextView;

    .line 684
    const v0, 0x7f1003d9

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->q:Landroid/widget/TextView;

    .line 685
    const v0, 0x7f1003da

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->r:Landroid/widget/TextView;

    .line 687
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->j:I

    div-int/lit8 v0, v0, 0x17

    int-to-float v0, v0

    invoke-static {p0, v0}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v0

    .line 695
    :goto_0
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->q:Landroid/widget/TextView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 696
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->r:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 698
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->q:Landroid/widget/TextView;

    const v1, 0x7f0a014f

    invoke-virtual {p0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 700
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 703
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->s:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    return-void

    .line 693
    :cond_0
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->j:I

    div-int/lit8 v0, v0, 0x2c

    int-to-float v0, v0

    invoke-static {p0, v0}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 709
    const v0, 0x7f1003e6

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->D:Landroid/widget/LinearLayout;

    .line 710
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->D:Landroid/widget/LinearLayout;

    new-instance v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$5;

    invoke-direct {v1, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$5;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 718
    const v0, 0x7f1003e9

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->E:Landroid/widget/Button;

    .line 719
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->E:Landroid/widget/Button;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 769
    const v0, 0x7f1003e3

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->F:Landroid/widget/LinearLayout;

    .line 770
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    const v0, 0x7f1003e4

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->G:Landroid/widget/ImageView;

    .line 774
    const v0, 0x7f1003ea

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->H:Landroid/widget/LinearLayout;

    .line 775
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 776
    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, p1}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    .line 82
    :goto_0
    return-void

    .line 80
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

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(La/c/a;J)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, p1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    .line 95
    :goto_0
    return-void

    .line 93
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

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->n:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

    invoke-virtual {v0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->b(Landroid/os/Message;)V

    .line 290
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 928
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    new-instance v0, LGeneralFunction/s/a;

    invoke-direct {v0}, LGeneralFunction/s/a;-><init>()V

    .line 932
    new-instance v1, LGeneralFunction/s/b;

    invoke-direct {v1}, LGeneralFunction/s/b;-><init>()V

    .line 933
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LGeneralFunction/s/b;->a:Ljava/lang/String;

    .line 934
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iget-object v2, v2, Lui_Controller/b/h;->c:Ljava/lang/String;

    iput-object v2, v1, LGeneralFunction/s/b;->b:Ljava/lang/String;

    .line 935
    invoke-virtual {v0, p1, v1}, LGeneralFunction/s/a;->a(Ljava/lang/String;LGeneralFunction/s/b;)I

    move-result v0

    .line 936
    if-eqz v0, :cond_0

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMetaDataInfo fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    const-string v0, "Original File Not Exist!"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    const v3, 0x7f0a009d

    .line 472
    if-eqz p1, :cond_0

    .line 473
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->s:Landroid/widget/ImageButton;

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 474
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 483
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->s:Landroid/widget/ImageButton;

    const v1, 0x7f020165

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 479
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(IJ)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, p1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(IJ)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v0, "UI_SendAidMsg error!!"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(La/c/a;J)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, p1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(La/c/a;J)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v0, "UI_SendAidMsg error!!"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 148
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

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    .line 149
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->n:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

    invoke-virtual {v0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Landroid/os/Message;)V

    .line 150
    return-void
.end method

.method protected b(Z)V
    .locals 2

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 726
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 732
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 266
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput-boolean v2, v0, Lui_Controller/b/e;->x:Z

    .line 267
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 269
    iput-boolean v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e:Z

    .line 270
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 272
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0xd20

    if-ne v0, v1, :cond_2

    .line 274
    const v0, 0x8000

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    .line 282
    :cond_0
    :goto_0
    const/16 v0, 0x2104

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    .line 284
    :cond_1
    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    invoke-virtual {v0}, LGeneralFunction/f/a/c;->a()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    goto :goto_0
.end method

.method protected c(I)V
    .locals 3

    .prologue
    .line 487
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->i:I

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 488
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->i:I

    iget v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->j:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 489
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v2, :cond_0

    .line 491
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getWidth()I

    move-result v1

    .line 492
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getHeight()I

    move-result v0

    .line 495
    :cond_0
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->B:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->C:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 497
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 499
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    mul-int/lit16 v2, v1, 0x8c

    div-int/lit16 v2, v2, 0x640

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 501
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    mul-int/lit16 v1, v1, 0xd2

    div-int/lit16 v1, v1, 0x640

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 505
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    :cond_1
    :goto_0
    return-void

    .line 509
    :cond_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    mul-int/lit16 v2, v0, 0x8c

    div-int/lit16 v2, v2, 0x640

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 511
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    mul-int/lit16 v0, v0, 0xd2

    div-int/lit16 v0, v0, 0x640

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 515
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 784
    if-eqz p1, :cond_0

    .line 786
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 788
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lui_Controller/b/e;->z:Z

    .line 796
    :goto_0
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->F:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 794
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput-boolean v2, v0, Lui_Controller/b/e;->z:Z

    goto :goto_0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->v()V

    .line 322
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->w()V

    .line 323
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->x()V

    .line 324
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->y()V

    .line 325
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->z()V

    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d(I)V

    .line 327
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->k:I

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c(I)V

    .line 328
    return-void
.end method

.method protected d(I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 522
    packed-switch p1, :pswitch_data_0

    .line 547
    :goto_0
    return-void

    .line 525
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->v:Landroid/widget/ImageButton;

    const v1, 0x7f02016c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 526
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 536
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->v:Landroid/widget/ImageButton;

    const v1, 0x7f02016d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 537
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 350
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->f()V

    .line 351
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Z)V

    .line 352
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setEnable(Z)V

    .line 353
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setPlayerMode(I)V

    .line 354
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setViewType(I)V

    .line 355
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    invoke-virtual {v1, v2}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setVideoFilePath(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setInteractiveMode(I)V

    .line 357
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->g()I

    .line 358
    return-void
.end method

.method protected e(I)V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->seekTo(I)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    .line 567
    :cond_0
    return-void
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 924
    invoke-static {p0, p1}, LGeneralFunction/d;->a(Landroid/app/Activity;I)V

    .line 925
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b()V

    .line 372
    :cond_0
    return-void
.end method

.method protected h()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 388
    .line 389
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->F:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->G:I

    if-gez v0, :cond_1

    .line 390
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    const/4 v1, 0x0

    iput v1, v0, Lui_Controller/b/e;->F:I

    .line 391
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lui_Controller/b/e;->G:I

    .line 393
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->x:LGeneralFunction/i/a/a;

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->x:LGeneralFunction/i/a/a;

    iget-boolean v8, v0, LGeneralFunction/i/a/a;->a:Z

    .line 398
    :goto_0
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->l()V

    .line 399
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 400
    new-instance v0, LGeneralFunction/i/a/a;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->w:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 404
    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v4, v1, 0x1

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v6, v1, Lui_Controller/b/e;->F:I

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v7, v1, Lui_Controller/b/e;->G:I

    const/4 v9, 0x2

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v9}, LGeneralFunction/i/a/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZIIIIZI)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->x:LGeneralFunction/i/a/a;

    .line 411
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->x:LGeneralFunction/i/a/a;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->I:LGeneralFunction/i/a/a$a;

    invoke-virtual {v0, v1}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a$a;)V

    .line 412
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->x:LGeneralFunction/i/a/a;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->J:LGeneralFunction/i/a/a$b;

    invoke-virtual {v0, v1}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a$b;)V

    .line 414
    :cond_2
    return-void

    :cond_3
    move v8, v3

    goto :goto_0
.end method

.method protected i()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->x:LGeneralFunction/i/a/a;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 421
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 422
    new-instance v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;

    invoke-direct {v2, p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 454
    :cond_0
    return-void
.end method

.method protected j()V
    .locals 6

    .prologue
    const/high16 v2, 0x44800000    # 1024.0f

    const/high16 v1, 0x42c80000    # 100.0f

    .line 457
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->k()F

    move-result v0

    .line 458
    div-float/2addr v0, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 459
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->r:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    return-void
.end method

.method protected k()F
    .locals 4

    .prologue
    .line 463
    iget-wide v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 465
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    invoke-virtual {v1, v2}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->o:J

    .line 468
    :cond_0
    iget-wide v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->o:J

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->G:I

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->F:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-float v0, v0

    return v0
.end method

.method protected l()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 551
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->F:I

    .line 552
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->G:I

    .line 553
    sub-int v4, v3, v2

    .line 554
    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->z:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%02d"

    new-array v8, v0, [Ljava/lang/Object;

    div-int/lit8 v9, v2, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%02d"

    new-array v8, v0, [Ljava/lang/Object;

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->A:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%02d"

    new-array v7, v0, [Ljava/lang/Object;

    div-int/lit8 v8, v3, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d"

    new-array v7, v0, [Ljava/lang/Object;

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->y:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%02d"

    new-array v6, v0, [Ljava/lang/Object;

    div-int/lit8 v7, v4, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%02d"

    new-array v6, v0, [Ljava/lang/Object;

    rem-int/lit8 v7, v4, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    if-le v2, v4, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Z)V

    .line 559
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->j()V

    .line 560
    return-void

    :cond_0
    move v0, v1

    .line 558
    goto :goto_0
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->start()V

    .line 571
    return-void
.end method

.method protected n()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->pause()V

    .line 575
    return-void
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->s()V

    .line 580
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->k()I

    .line 581
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->i()V

    .line 582
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    const v0, 0x8000

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 191
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    .line 193
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->v()V

    .line 196
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 198
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->i:I

    .line 199
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->j:I

    .line 200
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 202
    invoke-virtual {v1, v2, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(II)V

    .line 204
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 206
    const-string v0, "ui_phonegallery_land"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    .line 212
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c(I)V

    .line 213
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->i()V

    .line 215
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->k:I

    .line 217
    new-instance v0, La/c/a;

    const/16 v1, 0x2f06

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 218
    const-string v1, "mode"

    const/16 v2, 0xd00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 219
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(La/c/a;J)V

    .line 221
    invoke-static {}, LGeneralFunction/o;->a()V

    .line 222
    return-void

    .line 210
    :cond_1
    const-string v0, "ui_phonegallery_port"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v2, 0x7f04008c

    .line 155
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const-string v0, "onCreate"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    .line 157
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lui_Controller/ui_StartMode/UI_ModeMain;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 158
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->v()V

    .line 161
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 163
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->i:I

    .line 164
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->j:I

    .line 166
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->j:I

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->i:I

    if-le v0, v1, :cond_0

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->k:I

    .line 169
    invoke-virtual {p0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->setContentView(I)V

    .line 178
    :goto_0
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->n:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

    .line 179
    new-instance v0, LGeneralFunction/f/a/c;

    invoke-direct {v0}, LGeneralFunction/f/a/c;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    .line 181
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c:Lui_Controller/b/b;

    .line 182
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    .line 183
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xd10

    invoke-virtual {v0, v1, p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 185
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->A()V

    .line 187
    const/16 v0, 0x2f01

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(IJ)V

    .line 188
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->k:I

    .line 174
    invoke-virtual {p0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 258
    invoke-super {p0}, LGeneralFunction/a/a;->onDestroy()V

    .line 259
    new-instance v0, La/c/a;

    const/16 v1, 0x2f05

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 260
    const-string v1, "mode"

    const/16 v2, 0xd00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 261
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(La/c/a;J)V

    .line 262
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 239
    invoke-super {p0}, LGeneralFunction/a/a;->onPause()V

    .line 240
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0xd20

    if-ne v0, v1, :cond_0

    .line 241
    const v0, 0x8000

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->m:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 243
    new-instance v0, La/c/a;

    const/16 v1, 0x2f03

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 244
    const-string v1, "mode"

    const/16 v2, 0xd00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 245
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(La/c/a;J)V

    .line 246
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 226
    invoke-super {p0}, LGeneralFunction/a/a;->onResume()V

    .line 227
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->m:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 228
    new-instance v0, La/c/a;

    const/16 v1, 0x2f02

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 229
    const-string v1, "mode"

    const/16 v2, 0xd00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 230
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(La/c/a;J)V

    .line 231
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const/16 v0, 0x2104

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    .line 235
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 250
    invoke-super {p0}, LGeneralFunction/a/a;->onStop()V

    .line 251
    new-instance v0, La/c/a;

    const/16 v1, 0x2f04

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 252
    const-string v1, "mode"

    const/16 v2, 0xd00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 253
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(La/c/a;J)V

    .line 254
    return-void
.end method

.method protected p()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 586
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 587
    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->C:I

    packed-switch v0, :pswitch_data_0

    .line 607
    :goto_0
    return-void

    .line 601
    :pswitch_0
    const/16 v0, 0x2104

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    goto :goto_0

    .line 604
    :pswitch_1
    const/16 v0, 0x2100

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(I)V

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected r()I
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 736
    .line 738
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->k()F

    move-result v2

    float-to-long v2, v2

    const-wide/32 v6, 0x3200000

    add-long/2addr v6, v2

    .line 739
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->d:I

    packed-switch v2, :pswitch_data_0

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error database select mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    move-wide v2, v4

    .line 751
    :goto_0
    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 753
    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 755
    const/4 v0, 0x1

    .line 763
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dlAvailableSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ApproximateFileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->k()F

    move-result v2

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v8}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMemoryFull: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", database mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v8}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Ljava/lang/String;I)V

    .line 765
    return v0

    .line 742
    :pswitch_0
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->ab:Ljava/lang/String;

    invoke-static {v2, v1}, LGeneralFunction/d;->a(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0

    .line 745
    :pswitch_1
    sget-object v2, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-static {v2, v1}, LGeneralFunction/d;->a(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected s()V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->H:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 781
    return-void
.end method

.method protected t()Z
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 874
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    const/4 v0, 0x1

    .line 878
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected u()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 948
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    .line 949
    packed-switch v0, :pswitch_data_0

    .line 958
    :goto_0
    return-void

    .line 952
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v1, v0, Lui_Controller/b/e;->g:I

    goto :goto_0

    .line 955
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iput v1, v0, Lui_Controller/b/e;->h:I

    goto :goto_0

    .line 949
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
