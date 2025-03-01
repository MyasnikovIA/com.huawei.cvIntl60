.class public LGeneralFunction/Player/player/e;
.super Landroid/widget/MediaController;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/ImageButton;

.field private B:Landroid/widget/ImageButton;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/LinearLayout;

.field private G:Z

.field private H:Z

.field private I:J

.field private J:Z

.field private K:Landroid/os/Handler;

.field private L:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final M:Ljava/lang/Runnable;

.field private N:Landroid/view/View$OnClickListener;

.field private O:Landroid/view/View$OnClickListener;

.field public a:I

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/StringBuilder;

.field private h:Ljava/util/Formatter;

.field private i:Landroid/content/Context;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:LGeneralFunction/Player/player/SphericalVideoPlayer;

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Landroid/widget/ImageButton;

.field private z:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, LGeneralFunction/Player/player/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/player/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LGeneralFunction/Player/player/SphericalVideoPlayer;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 47
    iput v2, p0, LGeneralFunction/Player/player/e;->a:I

    .line 48
    iput-object v1, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    .line 49
    iput-object v1, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    .line 56
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->k:Z

    .line 57
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->l:Z

    .line 58
    iput v2, p0, LGeneralFunction/Player/player/e;->m:I

    .line 59
    iput v2, p0, LGeneralFunction/Player/player/e;->n:I

    .line 61
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->p:Z

    .line 62
    const/4 v0, 0x3

    iput v0, p0, LGeneralFunction/Player/player/e;->q:I

    .line 63
    iput v2, p0, LGeneralFunction/Player/player/e;->r:I

    .line 64
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->s:Z

    .line 65
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->t:Z

    .line 66
    iput v2, p0, LGeneralFunction/Player/player/e;->u:I

    .line 67
    iput v2, p0, LGeneralFunction/Player/player/e;->v:I

    .line 68
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->w:Z

    .line 69
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->x:Z

    .line 70
    iput-object v1, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    .line 71
    iput-object v1, p0, LGeneralFunction/Player/player/e;->z:Landroid/widget/ImageButton;

    .line 72
    iput-object v1, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    .line 73
    iput-object v1, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    .line 74
    iput-object v1, p0, LGeneralFunction/Player/player/e;->C:Landroid/widget/LinearLayout;

    .line 75
    iput-object v1, p0, LGeneralFunction/Player/player/e;->D:Landroid/widget/LinearLayout;

    .line 76
    iput-object v1, p0, LGeneralFunction/Player/player/e;->E:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, p0, LGeneralFunction/Player/player/e;->F:Landroid/widget/LinearLayout;

    .line 79
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->G:Z

    .line 80
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->H:Z

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LGeneralFunction/Player/player/e;->I:J

    .line 82
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->J:Z

    .line 280
    new-instance v0, LGeneralFunction/Player/player/e$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LGeneralFunction/Player/player/e$1;-><init>(LGeneralFunction/Player/player/e;Landroid/os/Looper;)V

    iput-object v0, p0, LGeneralFunction/Player/player/e;->K:Landroid/os/Handler;

    .line 331
    new-instance v0, LGeneralFunction/Player/player/e$2;

    invoke-direct {v0, p0}, LGeneralFunction/Player/player/e$2;-><init>(LGeneralFunction/Player/player/e;)V

    iput-object v0, p0, LGeneralFunction/Player/player/e;->L:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 376
    new-instance v0, LGeneralFunction/Player/player/e$3;

    invoke-direct {v0, p0}, LGeneralFunction/Player/player/e$3;-><init>(LGeneralFunction/Player/player/e;)V

    iput-object v0, p0, LGeneralFunction/Player/player/e;->M:Ljava/lang/Runnable;

    .line 454
    new-instance v0, LGeneralFunction/Player/player/e$4;

    invoke-direct {v0, p0}, LGeneralFunction/Player/player/e$4;-><init>(LGeneralFunction/Player/player/e;)V

    iput-object v0, p0, LGeneralFunction/Player/player/e;->N:Landroid/view/View$OnClickListener;

    .line 710
    new-instance v0, LGeneralFunction/Player/player/e$5;

    invoke-direct {v0, p0}, LGeneralFunction/Player/player/e$5;-><init>(LGeneralFunction/Player/player/e;)V

    iput-object v0, p0, LGeneralFunction/Player/player/e;->O:Landroid/view/View$OnClickListener;

    .line 96
    iput-object p1, p0, LGeneralFunction/Player/player/e;->i:Landroid/content/Context;

    .line 97
    iput-object p2, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 99
    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/e;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, LGeneralFunction/Player/player/e;->u:I

    return p1
.end method

.method static synthetic a(LGeneralFunction/Player/player/e;J)J
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, LGeneralFunction/Player/player/e;->I:J

    return-wide p1
.end method

.method static synthetic a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    return-object v0
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 268
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 269
    iput p1, v0, Landroid/os/Message;->what:I

    .line 270
    if-lez p2, :cond_0

    .line 272
    iget-object v1, p0, LGeneralFunction/Player/player/e;->K:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, LGeneralFunction/Player/player/e;->K:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic a(LGeneralFunction/Player/player/e;II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, LGeneralFunction/Player/player/e;->a(II)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/e;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, LGeneralFunction/Player/player/e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 178
    const v0, 0x7f1000c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    .line 179
    iget-object v0, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 181
    iget-object v0, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    iget-object v1, p0, LGeneralFunction/Player/player/e;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_0
    const v0, 0x7f1000c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    .line 185
    iget-object v0, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 188
    iget-object v1, p0, LGeneralFunction/Player/player/e;->L:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 195
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 197
    :cond_2
    invoke-virtual {p0}, LGeneralFunction/Player/player/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 198
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, LGeneralFunction/Player/player/e;->m:I

    .line 199
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, LGeneralFunction/Player/player/e;->n:I

    .line 200
    iget-object v0, p0, LGeneralFunction/Player/player/e;->i:Landroid/content/Context;

    iget v1, p0, LGeneralFunction/Player/player/e;->m:I

    iget v2, p0, LGeneralFunction/Player/player/e;->n:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x26

    int-to-float v1, v1

    invoke-static {v0, v1}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v1

    .line 202
    const v0, 0x7f1000c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->e:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, LGeneralFunction/Player/player/e;->e:Landroid/widget/TextView;

    int-to-float v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 204
    const v0, 0x7f1000c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->f:Landroid/widget/TextView;

    .line 205
    iget-object v0, p0, LGeneralFunction/Player/player/e;->f:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/player/e;->g:Ljava/lang/StringBuilder;

    .line 207
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, LGeneralFunction/Player/player/e;->g:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, LGeneralFunction/Player/player/e;->h:Ljava/util/Formatter;

    .line 209
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/e;->b(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 86
    sget-object v0, LGeneralFunction/Player/player/e;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/e;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, LGeneralFunction/Player/player/e;->H:Z

    return p1
.end method

.method static synthetic b(LGeneralFunction/Player/player/e;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, LGeneralFunction/Player/player/e;->I:J

    return-wide v0
.end method

.method static synthetic b(LGeneralFunction/Player/player/e;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/e;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 565
    const v0, 0x7f1000c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    .line 566
    const v0, 0x7f1000c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->z:Landroid/widget/ImageButton;

    .line 567
    const v0, 0x7f1000cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    .line 568
    const v0, 0x7f1000cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    .line 570
    const v0, 0x7f1000c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->C:Landroid/widget/LinearLayout;

    .line 571
    const v0, 0x7f1000c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->D:Landroid/widget/LinearLayout;

    .line 572
    const v0, 0x7f1000ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->E:Landroid/widget/LinearLayout;

    .line 573
    const v0, 0x7f1000cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/Player/player/e;->F:Landroid/widget/LinearLayout;

    .line 575
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 576
    iget-object v0, p0, LGeneralFunction/Player/player/e;->z:Landroid/widget/ImageButton;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 577
    iget-object v0, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 578
    iget-object v0, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 580
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    iget-object v1, p0, LGeneralFunction/Player/player/e;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v0, p0, LGeneralFunction/Player/player/e;->z:Landroid/widget/ImageButton;

    iget-object v1, p0, LGeneralFunction/Player/player/e;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v0, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    iget-object v1, p0, LGeneralFunction/Player/player/e;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v0, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    iget-object v1, p0, LGeneralFunction/Player/player/e;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v0, p0, LGeneralFunction/Player/player/e;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, LGeneralFunction/Player/player/e;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    iget-object v0, p0, LGeneralFunction/Player/player/e;->D:Landroid/widget/LinearLayout;

    iget-object v1, p0, LGeneralFunction/Player/player/e;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v0, p0, LGeneralFunction/Player/player/e;->E:Landroid/widget/LinearLayout;

    iget-object v1, p0, LGeneralFunction/Player/player/e;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, LGeneralFunction/Player/player/e;->F:Landroid/widget/LinearLayout;

    iget-object v1, p0, LGeneralFunction/Player/player/e;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    return-void
.end method

.method static synthetic b(LGeneralFunction/Player/player/e;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, LGeneralFunction/Player/player/e;->G:Z

    return p1
.end method

.method private c(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 441
    div-int/lit16 v0, p1, 0x3e8

    .line 442
    rem-int/lit8 v1, v0, 0x3c

    .line 443
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 444
    div-int/lit16 v0, v0, 0xe10

    .line 446
    iget-object v3, p0, LGeneralFunction/Player/player/e;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 447
    if-lez v0, :cond_0

    .line 448
    iget-object v3, p0, LGeneralFunction/Player/player/e;->h:Ljava/util/Formatter;

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/e;->h:Ljava/util/Formatter;

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(LGeneralFunction/Player/player/e;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, LGeneralFunction/Player/player/e;->H:Z

    return v0
.end method

.method static synthetic c(LGeneralFunction/Player/player/e;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, LGeneralFunction/Player/player/e;->k:Z

    return p1
.end method

.method static synthetic d(LGeneralFunction/Player/player/e;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, LGeneralFunction/Player/player/e;->u:I

    return v0
.end method

.method private d(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 644
    iget v0, p0, LGeneralFunction/Player/player/e;->r:I

    packed-switch v0, :pswitch_data_0

    .line 671
    :goto_0
    return-void

    .line 647
    :pswitch_0
    invoke-direct {p0, v1}, LGeneralFunction/Player/player/e;->setAdditionalButtonVRLock(Z)V

    goto :goto_0

    .line 650
    :pswitch_1
    invoke-direct {p0, v1}, LGeneralFunction/Player/player/e;->setAdditionalButtonVRLock(Z)V

    .line 651
    if-eqz p1, :cond_0

    .line 652
    iget-object v0, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 654
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 657
    :pswitch_2
    invoke-direct {p0, v1}, LGeneralFunction/Player/player/e;->setAdditionalButtonVRLock(Z)V

    .line 658
    if-eqz p1, :cond_1

    .line 659
    iget-object v0, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 661
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 664
    :pswitch_3
    if-eqz p1, :cond_2

    .line 665
    iget-object v0, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 668
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/e;->setAdditionalButtonVRLock(Z)V

    goto :goto_0

    .line 667
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic d(LGeneralFunction/Player/player/e;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, LGeneralFunction/Player/player/e;->x:Z

    return p1
.end method

.method static synthetic e(LGeneralFunction/Player/player/e;)I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, LGeneralFunction/Player/player/e;->g()I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, LGeneralFunction/Player/player/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget v1, p0, LGeneralFunction/Player/player/e;->n:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 144
    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method

.method static synthetic e(LGeneralFunction/Player/player/e;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/e;->e(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 2

    .prologue
    .line 681
    iget v0, p0, LGeneralFunction/Player/player/e;->q:I

    packed-switch v0, :pswitch_data_0

    .line 708
    :goto_0
    :pswitch_0
    return-void

    .line 684
    :pswitch_1
    if-eqz p1, :cond_0

    .line 685
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 687
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 690
    :pswitch_2
    if-eqz p1, :cond_1

    .line 691
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 693
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 696
    :pswitch_3
    if-eqz p1, :cond_2

    .line 697
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 699
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 702
    :pswitch_4
    if-eqz p1, :cond_3

    .line 703
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 705
    :cond_3
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic f(LGeneralFunction/Player/player/e;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, LGeneralFunction/Player/player/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 151
    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void
.end method

.method static synthetic f(LGeneralFunction/Player/player/e;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/e;->d(Z)V

    return-void
.end method

.method private g()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 388
    .line 389
    iget-object v0, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LGeneralFunction/Player/player/e;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    .line 437
    :goto_0
    return v0

    .line 392
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getCurrentPosition()I

    move-result v2

    .line 393
    iget-object v0, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getDuration()I

    move-result v0

    .line 394
    if-le v2, v0, :cond_2

    move v2, v0

    .line 397
    :cond_2
    if-nez v0, :cond_3

    move v0, v1

    .line 402
    :cond_3
    iget-boolean v4, p0, LGeneralFunction/Player/player/e;->w:Z

    if-eqz v4, :cond_4

    .line 403
    int-to-long v4, v2

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long/2addr v4, v6

    .line 404
    iget-object v1, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 405
    iput-boolean v3, p0, LGeneralFunction/Player/player/e;->w:Z

    .line 406
    iget-object v1, p0, LGeneralFunction/Player/player/e;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, LGeneralFunction/Player/player/e;->f:Landroid/widget/TextView;

    invoke-direct {p0, v2}, LGeneralFunction/Player/player/e;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iput v2, p0, LGeneralFunction/Player/player/e;->u:I

    move v0, v2

    .line 409
    goto :goto_0

    .line 411
    :cond_4
    iget v3, p0, LGeneralFunction/Player/player/e;->v:I

    if-lez v3, :cond_5

    .line 412
    iget v0, p0, LGeneralFunction/Player/player/e;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LGeneralFunction/Player/player/e;->v:I

    move v0, v2

    .line 413
    goto :goto_0

    .line 415
    :cond_5
    iget-boolean v3, p0, LGeneralFunction/Player/player/e;->t:Z

    if-eqz v3, :cond_a

    .line 416
    iget v3, p0, LGeneralFunction/Player/player/e;->u:I

    if-le v3, v2, :cond_6

    .line 417
    iget v0, p0, LGeneralFunction/Player/player/e;->u:I

    goto :goto_0

    .line 419
    :cond_6
    iget-object v3, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_8

    .line 420
    if-lez v0, :cond_7

    .line 422
    int-to-long v4, v2

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long/2addr v4, v6

    .line 423
    iget-boolean v3, p0, LGeneralFunction/Player/player/e;->l:Z

    if-ne v3, v1, :cond_7

    iget-boolean v3, p0, LGeneralFunction/Player/player/e;->G:Z

    if-nez v3, :cond_7

    .line 424
    iget-object v3, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 427
    :cond_7
    iget-object v3, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getBufferPercentage()I

    move-result v3

    .line 428
    iget-boolean v4, p0, LGeneralFunction/Player/player/e;->l:Z

    if-ne v4, v1, :cond_8

    .line 429
    iget-object v1, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 432
    :cond_8
    iget-object v1, p0, LGeneralFunction/Player/player/e;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 433
    iget-object v1, p0, LGeneralFunction/Player/player/e;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_9
    iget-object v0, p0, LGeneralFunction/Player/player/e;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 435
    iget-object v0, p0, LGeneralFunction/Player/player/e;->f:Landroid/widget/TextView;

    invoke-direct {p0, v2}, LGeneralFunction/Player/player/e;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    move v0, v2

    .line 437
    goto/16 :goto_0
.end method

.method static synthetic g(LGeneralFunction/Player/player/e;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic h(LGeneralFunction/Player/player/e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LGeneralFunction/Player/player/e;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, LGeneralFunction/Player/player/e;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->o()V

    .line 545
    iget-boolean v0, p0, LGeneralFunction/Player/player/e;->l:Z

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 549
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic i(LGeneralFunction/Player/player/e;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LGeneralFunction/Player/player/e;->M:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(LGeneralFunction/Player/player/e;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, LGeneralFunction/Player/player/e;->h()V

    return-void
.end method

.method static synthetic k(LGeneralFunction/Player/player/e;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, LGeneralFunction/Player/player/e;->k:Z

    return v0
.end method

.method static synthetic l(LGeneralFunction/Player/player/e;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, LGeneralFunction/Player/player/e;->p:Z

    return v0
.end method

.method static synthetic m(LGeneralFunction/Player/player/e;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, LGeneralFunction/Player/player/e;->l:Z

    return v0
.end method

.method static synthetic n(LGeneralFunction/Player/player/e;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, LGeneralFunction/Player/player/e;->x:Z

    return v0
.end method

.method static synthetic o(LGeneralFunction/Player/player/e;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private setAdditionalButtonVRLock(Z)V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 610
    if-eqz p1, :cond_0

    .line 612
    iget-object v0, p0, LGeneralFunction/Player/player/e;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 613
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 614
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 615
    iget-object v0, p0, LGeneralFunction/Player/player/e;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 616
    iget-object v0, p0, LGeneralFunction/Player/player/e;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 617
    iget-object v0, p0, LGeneralFunction/Player/player/e;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 618
    iget-object v0, p0, LGeneralFunction/Player/player/e;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 619
    iget-object v0, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 620
    iget-object v0, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 634
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/e;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 625
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 626
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 627
    iget-object v0, p0, LGeneralFunction/Player/player/e;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 628
    iget-object v0, p0, LGeneralFunction/Player/player/e;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, LGeneralFunction/Player/player/e;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 630
    iget-object v0, p0, LGeneralFunction/Player/player/e;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 631
    iget-object v0, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 632
    iget-object v0, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 473
    iget-boolean v0, p0, LGeneralFunction/Player/player/e;->l:Z

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/Player/player/e;->l:Z

    .line 475
    iput v1, p0, LGeneralFunction/Player/player/e;->v:I

    .line 480
    :goto_0
    invoke-direct {p0}, LGeneralFunction/Player/player/e;->h()V

    .line 481
    return-void

    .line 477
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/e;->l:Z

    .line 478
    iput v1, p0, LGeneralFunction/Player/player/e;->v:I

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 484
    iput p1, p0, LGeneralFunction/Player/player/e;->v:I

    .line 485
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .prologue
    .line 638
    iput p1, p0, LGeneralFunction/Player/player/e;->r:I

    .line 639
    invoke-direct {p0, p2}, LGeneralFunction/Player/player/e;->d(Z)V

    .line 640
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, LGeneralFunction/Player/player/e;->J:Z

    .line 138
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 504
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/player/e;->a(II)V

    .line 506
    iget-object v0, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 509
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, LGeneralFunction/Player/player/e;->u:I

    .line 510
    iput-boolean v1, p0, LGeneralFunction/Player/player/e;->l:Z

    .line 511
    iput-boolean v1, p0, LGeneralFunction/Player/player/e;->k:Z

    .line 512
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 516
    if-nez p1, :cond_3

    .line 517
    iget-object v0, p0, LGeneralFunction/Player/player/e;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 521
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getDuration()I

    move-result v0

    .line 522
    if-le p1, v0, :cond_0

    move p1, v0

    .line 525
    :cond_0
    iget-object v1, p0, LGeneralFunction/Player/player/e;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, LGeneralFunction/Player/player/e;->f:Landroid/widget/TextView;

    invoke-direct {p0, p1}, LGeneralFunction/Player/player/e;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    :cond_1
    iget-object v1, p0, LGeneralFunction/Player/player/e;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 530
    iget-object v1, p0, LGeneralFunction/Player/player/e;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    :cond_2
    invoke-direct {p0}, LGeneralFunction/Player/player/e;->g()I

    .line 533
    return-void

    .line 519
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/e;->w:Z

    goto :goto_0
.end method

.method public b(IZ)V
    .locals 0

    .prologue
    .line 675
    iput p1, p0, LGeneralFunction/Player/player/e;->q:I

    .line 676
    invoke-direct {p0, p2}, LGeneralFunction/Player/player/e;->e(Z)V

    .line 677
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 487
    iput-boolean p1, p0, LGeneralFunction/Player/player/e;->t:Z

    .line 488
    if-nez p1, :cond_0

    .line 490
    const/4 v0, -0x1

    iput v0, p0, LGeneralFunction/Player/player/e;->u:I

    .line 492
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, LGeneralFunction/Player/player/e;->y:Landroid/widget/ImageButton;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 594
    iget-object v0, p0, LGeneralFunction/Player/player/e;->z:Landroid/widget/ImageButton;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 595
    iget-object v0, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 596
    iget-object v0, p0, LGeneralFunction/Player/player/e;->B:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 598
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 496
    if-eqz p1, :cond_0

    .line 497
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/player/e;->a(II)V

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/player/e;->a(II)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 602
    iget-object v0, p0, LGeneralFunction/Player/player/e;->A:Landroid/widget/ImageButton;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 603
    iput-boolean v2, p0, LGeneralFunction/Player/player/e;->x:Z

    .line 604
    invoke-direct {p0, v2}, LGeneralFunction/Player/player/e;->e(Z)V

    .line 605
    invoke-direct {p0, v2}, LGeneralFunction/Player/player/e;->d(Z)V

    .line 606
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 215
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 216
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    .line 217
    :goto_0
    const/16 v3, 0x4f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_3

    .line 220
    :cond_0
    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v2, 0x5

    .line 223
    invoke-virtual {v1, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->c(I)V

    .line 224
    iget-object v1, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, LGeneralFunction/Player/player/e;->c:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 263
    :cond_1
    :goto_1
    return v0

    .line 216
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 229
    :cond_3
    const/16 v3, 0x7e

    if-ne v2, v3, :cond_4

    .line 230
    if-eqz v1, :cond_1

    iget-object v1, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    iget-object v1, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->start()V

    .line 232
    invoke-direct {p0}, LGeneralFunction/Player/player/e;->h()V

    .line 233
    invoke-virtual {p0}, LGeneralFunction/Player/player/e;->show()V

    goto :goto_1

    .line 236
    :cond_4
    const/16 v3, 0x56

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_6

    .line 238
    :cond_5
    if-eqz v1, :cond_1

    iget-object v1, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->pause()V

    .line 240
    invoke-direct {p0}, LGeneralFunction/Player/player/e;->h()V

    .line 241
    invoke-virtual {p0}, LGeneralFunction/Player/player/e;->show()V

    goto :goto_1

    .line 244
    :cond_6
    const/16 v3, 0x19

    if-eq v2, v3, :cond_7

    const/16 v3, 0x18

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa4

    if-eq v2, v3, :cond_7

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_8

    .line 249
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/MediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 250
    :cond_8
    if-ne v2, v4, :cond_9

    .line 251
    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, LGeneralFunction/Player/player/e;->o:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 254
    invoke-virtual {v1, v4}, LGeneralFunction/Player/player/SphericalVideoPlayer;->c(I)V

    goto :goto_1

    .line 257
    :cond_9
    const/16 v1, 0x52

    if-eq v2, v1, :cond_1

    .line 262
    invoke-virtual {p0}, LGeneralFunction/Player/player/e;->show()V

    .line 263
    invoke-super {p0, p1}, Landroid/widget/MediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public getMediaControllerShowingStatus()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, LGeneralFunction/Player/player/e;->p:Z

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, LGeneralFunction/Player/player/e;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/e;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/e;->c(Z)V

    .line 118
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 119
    return-void
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, LGeneralFunction/Player/player/e;->i:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 170
    const v1, 0x7f040024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/player/e;->j:Landroid/view/View;

    .line 172
    iget-object v0, p0, LGeneralFunction/Player/player/e;->j:Landroid/view/View;

    invoke-direct {p0, v0}, LGeneralFunction/Player/player/e;->a(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, LGeneralFunction/Player/player/e;->j:Landroid/view/View;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Landroid/widget/MediaController;->onMeasure(II)V

    .line 157
    invoke-virtual {p0}, LGeneralFunction/Player/player/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 158
    iget-boolean v1, p0, LGeneralFunction/Player/player/e;->J:Z

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v0, :cond_0

    .line 160
    invoke-direct {p0}, LGeneralFunction/Player/player/e;->f()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, LGeneralFunction/Player/player/e;->e()V

    goto :goto_0
.end method

.method public setControllerHide(Z)V
    .locals 1

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0}, LGeneralFunction/Player/player/e;->hide()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/Player/player/e;->p:Z

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, LGeneralFunction/Player/player/e;->show()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/e;->p:Z

    goto :goto_0
.end method

.method public setMediaControllerShowingStatus(Z)V
    .locals 0

    .prologue
    .line 556
    iput-boolean p1, p0, LGeneralFunction/Player/player/e;->p:Z

    .line 557
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 103
    iget v0, p0, LGeneralFunction/Player/player/e;->a:I

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/e;->show(I)V

    .line 104
    return-void
.end method

.method public show(I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, LGeneralFunction/Player/player/e;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/e;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/e;->c(Z)V

    .line 110
    iget-object v0, p0, LGeneralFunction/Player/player/e;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/e;->post(Ljava/lang/Runnable;)Z

    .line 111
    iget v0, p0, LGeneralFunction/Player/player/e;->a:I

    invoke-super {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 112
    return-void
.end method
