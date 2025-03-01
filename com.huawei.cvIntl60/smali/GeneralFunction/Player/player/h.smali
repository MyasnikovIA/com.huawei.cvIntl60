.class public LGeneralFunction/Player/player/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final C:Ljava/lang/String;


# instance fields
.field public A:[F

.field public B:Z

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field private P:F

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:F

.field private V:F

.field private W:F

.field private X:F

.field private Y:F

.field private Z:F

.field public a:I

.field private aA:F

.field private aB:F

.field private aC:F

.field private aD:F

.field private aE:F

.field private aF:Landroid/content/Context;

.field private aG:Landroid/animation/ValueAnimator;

.field private aa:F

.field private ab:F

.field private ac:F

.field private ad:F

.field private ae:F

.field private af:F

.field private ag:F

.field private ah:F

.field private ai:F

.field private aj:F

.field private ak:F

.field private al:F

.field private am:F

.field private an:F

.field private ao:F

.field private ap:F

.field private aq:F

.field private ar:F

.field private as:F

.field private at:F

.field private au:F

.field private av:F

.field private aw:F

.field private ax:F

.field private ay:F

.field private az:F

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public q:F

.field public r:F

.field public s:I

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:Z

.field public z:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, LGeneralFunction/Player/player/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/player/h;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x43c80000    # 400.0f

    const v4, 0x446d8000    # 950.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, 0x4432c000    # 715.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->D:F

    .line 17
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->E:F

    .line 19
    const/high16 v0, 0x44660000    # 920.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->F:F

    .line 20
    const/high16 v0, 0x44660000    # 920.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->G:F

    .line 21
    const v0, 0x44228000    # 650.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->H:F

    .line 23
    const/high16 v0, 0x44820000    # 1040.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->I:F

    .line 24
    const/high16 v0, 0x44820000    # 1040.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->J:F

    .line 26
    const v0, 0x44802000    # 1025.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->K:F

    .line 27
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->L:F

    .line 28
    const v0, 0x43fc8000    # 505.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->M:F

    .line 30
    const v0, 0x442c8000    # 690.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->N:F

    .line 32
    const v0, 0x44598000    # 870.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->O:F

    .line 33
    const v0, 0x44598000    # 870.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->P:F

    .line 34
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->Q:F

    .line 36
    iput v4, p0, LGeneralFunction/Player/player/h;->R:F

    .line 37
    iput v4, p0, LGeneralFunction/Player/player/h;->S:F

    .line 39
    iput v4, p0, LGeneralFunction/Player/player/h;->T:F

    .line 40
    const/high16 v0, 0x439b0000    # 310.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->U:F

    .line 41
    const/high16 v0, 0x43f00000    # 480.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->V:F

    .line 46
    const/high16 v0, -0x3cc40000    # -188.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->W:F

    .line 47
    iput v3, p0, LGeneralFunction/Player/player/h;->X:F

    .line 48
    iput v3, p0, LGeneralFunction/Player/player/h;->Y:F

    .line 49
    iput v3, p0, LGeneralFunction/Player/player/h;->Z:F

    .line 50
    iput v3, p0, LGeneralFunction/Player/player/h;->aa:F

    .line 51
    const/high16 v0, -0x3db80000    # -50.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->ab:F

    .line 54
    const/high16 v0, 0x44af0000    # 1400.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->ac:F

    .line 55
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->ad:F

    .line 56
    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->ae:F

    .line 57
    iput v5, p0, LGeneralFunction/Player/player/h;->af:F

    .line 59
    iput v2, p0, LGeneralFunction/Player/player/h;->ag:F

    .line 60
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->ah:F

    .line 65
    const/high16 v0, 0x44af0000    # 1400.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->ai:F

    .line 66
    const v0, 0x44098000    # 550.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->aj:F

    .line 67
    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->ak:F

    .line 68
    const/high16 v0, 0x43a00000    # 320.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->al:F

    .line 69
    iput v5, p0, LGeneralFunction/Player/player/h;->am:F

    .line 70
    const/high16 v0, 0x43f00000    # 480.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->an:F

    .line 71
    iput v4, p0, LGeneralFunction/Player/player/h;->ao:F

    .line 72
    iput v5, p0, LGeneralFunction/Player/player/h;->ap:F

    .line 75
    const/high16 v0, 0x42d40000    # 106.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->aq:F

    .line 76
    const/high16 v0, 0x42ec0000    # 118.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->ar:F

    .line 79
    const/high16 v0, 0x42aa0000    # 85.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->as:F

    .line 80
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->at:F

    .line 81
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->au:F

    .line 82
    const/high16 v0, 0x42aa0000    # 85.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->av:F

    .line 83
    const/high16 v0, 0x43110000    # 145.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->aw:F

    .line 85
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->ax:F

    .line 86
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->ay:F

    .line 87
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->az:F

    .line 88
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, LGeneralFunction/Player/player/h;->aA:F

    .line 94
    const v0, 0x453b8000    # 3000.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->aB:F

    .line 95
    const v0, 0x453b8000    # 3000.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->aC:F

    .line 96
    const v0, 0x459c4000    # 5000.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->aD:F

    .line 97
    const v0, 0x461c4000    # 10000.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->aE:F

    .line 127
    iput v1, p0, LGeneralFunction/Player/player/h;->a:I

    .line 128
    iput v1, p0, LGeneralFunction/Player/player/h;->b:I

    .line 130
    iget v0, p0, LGeneralFunction/Player/player/h;->aC:F

    iput v0, p0, LGeneralFunction/Player/player/h;->c:F

    .line 131
    iget v0, p0, LGeneralFunction/Player/player/h;->ay:F

    iput v0, p0, LGeneralFunction/Player/player/h;->d:F

    .line 132
    iget v0, p0, LGeneralFunction/Player/player/h;->at:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 133
    iget v0, p0, LGeneralFunction/Player/player/h;->at:F

    iput v0, p0, LGeneralFunction/Player/player/h;->f:F

    .line 135
    iget v0, p0, LGeneralFunction/Player/player/h;->aj:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 137
    iget v0, p0, LGeneralFunction/Player/player/h;->F:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 138
    iget v0, p0, LGeneralFunction/Player/player/h;->O:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    .line 140
    iget v0, p0, LGeneralFunction/Player/player/h;->X:F

    iput v0, p0, LGeneralFunction/Player/player/h;->j:F

    .line 141
    iget v0, p0, LGeneralFunction/Player/player/h;->ad:F

    iput v0, p0, LGeneralFunction/Player/player/h;->k:F

    .line 143
    iget v0, p0, LGeneralFunction/Player/player/h;->aj:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 144
    iput v1, p0, LGeneralFunction/Player/player/h;->m:I

    .line 145
    iput-boolean v1, p0, LGeneralFunction/Player/player/h;->n:Z

    .line 146
    iput v1, p0, LGeneralFunction/Player/player/h;->o:I

    .line 147
    iput v1, p0, LGeneralFunction/Player/player/h;->p:I

    .line 148
    iput v2, p0, LGeneralFunction/Player/player/h;->q:F

    .line 149
    iput v2, p0, LGeneralFunction/Player/player/h;->r:F

    .line 151
    iput v1, p0, LGeneralFunction/Player/player/h;->s:I

    .line 153
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->t:F

    .line 155
    iput v2, p0, LGeneralFunction/Player/player/h;->u:F

    .line 156
    iput v2, p0, LGeneralFunction/Player/player/h;->v:F

    .line 157
    iput v3, p0, LGeneralFunction/Player/player/h;->w:F

    .line 158
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->x:F

    .line 161
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, LGeneralFunction/Player/player/h;->z:[F

    .line 162
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, LGeneralFunction/Player/player/h;->A:[F

    .line 163
    iput-boolean v1, p0, LGeneralFunction/Player/player/h;->B:Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/Player/player/h;->aF:Landroid/content/Context;

    return-void
.end method

.method private a(FFFF)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 887
    const-string v0, "fovY"

    new-array v1, v8, [F

    iget v2, p0, LGeneralFunction/Player/player/h;->e:F

    aput v2, v1, v6

    aput p1, v1, v7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 888
    const-string v1, "focalLength"

    new-array v2, v8, [F

    iget v3, p0, LGeneralFunction/Player/player/h;->l:F

    aput v3, v2, v6

    aput p2, v2, v7

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 889
    const-string v2, "xAxis"

    new-array v3, v8, [F

    iget v4, p0, LGeneralFunction/Player/player/h;->q:F

    aput v4, v3, v6

    aput p3, v3, v7

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 890
    const-string v3, "yAxis"

    new-array v4, v8, [F

    iget v5, p0, LGeneralFunction/Player/player/h;->r:F

    aput v5, v4, v6

    aput p4, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 895
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v6

    aput-object v3, v4, v7

    aput-object v0, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 896
    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 897
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 898
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 899
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 901
    new-instance v2, LGeneralFunction/Player/player/h$3;

    invoke-direct {v2, p0}, LGeneralFunction/Player/player/h$3;-><init>(LGeneralFunction/Player/player/h;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 910
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 911
    new-instance v0, LGeneralFunction/Player/player/h$4;

    invoke-direct {v0, p0}, LGeneralFunction/Player/player/h$4;-><init>(LGeneralFunction/Player/player/h;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 919
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 920
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 169
    sget-object v0, LGeneralFunction/Player/player/h;->C:Ljava/lang/String;

    invoke-static {v0, p0, p1}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/high16 v1, 0x41c80000    # 25.0f

    .line 625
    iget v0, p0, LGeneralFunction/Player/player/h;->a:I

    packed-switch v0, :pswitch_data_0

    .line 654
    :goto_0
    :pswitch_0
    return-void

    .line 628
    :pswitch_1
    iput v1, p0, LGeneralFunction/Player/player/h;->t:F

    goto :goto_0

    .line 633
    :pswitch_2
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, LGeneralFunction/Player/player/h;->t:F

    goto :goto_0

    .line 638
    :pswitch_3
    iput v1, p0, LGeneralFunction/Player/player/h;->t:F

    goto :goto_0

    .line 643
    :pswitch_4
    iput v1, p0, LGeneralFunction/Player/player/h;->t:F

    goto :goto_0

    .line 648
    :pswitch_5
    iput v1, p0, LGeneralFunction/Player/player/h;->t:F

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, LGeneralFunction/Player/player/h;->a:I

    return v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 233
    iput p1, p0, LGeneralFunction/Player/player/h;->l:F

    .line 237
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 239
    iget v0, p0, LGeneralFunction/Player/player/h;->j:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 243
    iget v0, p0, LGeneralFunction/Player/player/h;->h:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0
.end method

.method public a(FF)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 930
    invoke-virtual {p0}, LGeneralFunction/Player/player/h;->e()V

    .line 932
    const-string v0, "vx"

    new-array v1, v5, [F

    aput p1, v1, v3

    aput v6, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 933
    const-string v1, "vy"

    new-array v2, v5, [F

    aput p2, v2, v3

    aput v6, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 935
    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/player/h;->aG:Landroid/animation/ValueAnimator;

    .line 936
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 938
    iget-object v1, p0, LGeneralFunction/Player/player/h;->aG:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 940
    iget-object v0, p0, LGeneralFunction/Player/player/h;->aG:Landroid/animation/ValueAnimator;

    new-instance v1, LGeneralFunction/Player/player/h$5;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/h$5;-><init>(LGeneralFunction/Player/player/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 977
    iget-object v0, p0, LGeneralFunction/Player/player/h;->aG:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 978
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 177
    iget v0, p0, LGeneralFunction/Player/player/h;->a:I

    if-ne v0, p1, :cond_0

    .line 179
    const-string v0, "already same type"

    const/4 v1, 0x2

    invoke-static {v0, v1}, LGeneralFunction/Player/player/h;->a(Ljava/lang/String;I)V

    .line 194
    :goto_0
    return-void

    .line 182
    :cond_0
    iget v0, p0, LGeneralFunction/Player/player/h;->a:I

    if-nez v0, :cond_1

    .line 184
    iput p1, p0, LGeneralFunction/Player/player/h;->a:I

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/h;->a(Z)V

    .line 186
    invoke-direct {p0}, LGeneralFunction/Player/player/h;->f()V

    goto :goto_0

    .line 190
    :cond_1
    iput p1, p0, LGeneralFunction/Player/player/h;->a:I

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/h;->a(Z)V

    .line 192
    invoke-direct {p0}, LGeneralFunction/Player/player/h;->f()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, LGeneralFunction/Player/player/h;->aF:Landroid/content/Context;

    .line 175
    return-void
.end method

.method public a(Z)V
    .locals 12

    .prologue
    const-wide v10, 0x4032800000000000L    # 18.5

    const-wide v8, 0x3ffe666666666666L    # 1.9

    const/4 v1, 0x0

    const/high16 v7, 0x43160000    # 150.0f

    const/4 v6, 0x0

    .line 358
    iget-object v0, p0, LGeneralFunction/Player/player/h;->aF:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 359
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 361
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 371
    :goto_0
    iget v2, p0, LGeneralFunction/Player/player/h;->m:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 373
    invoke-virtual {p0}, LGeneralFunction/Player/player/h;->a()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FORMAT_LIVE parameter not handle view type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LGeneralFunction/Player/player/h;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/h;->a(Ljava/lang/String;I)V

    .line 377
    :cond_0
    iget v0, p0, LGeneralFunction/Player/player/h;->az:F

    iput v0, p0, LGeneralFunction/Player/player/h;->d:F

    .line 378
    iget v0, p0, LGeneralFunction/Player/player/h;->aD:F

    iput v0, p0, LGeneralFunction/Player/player/h;->c:F

    .line 379
    iput v6, p0, LGeneralFunction/Player/player/h;->q:F

    .line 380
    invoke-virtual {p0, v6}, LGeneralFunction/Player/player/h;->b(F)V

    .line 381
    iget v0, p0, LGeneralFunction/Player/player/h;->av:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 383
    iget v0, p0, LGeneralFunction/Player/player/h;->al:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 384
    iget v0, p0, LGeneralFunction/Player/player/h;->al:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 385
    iget v0, p0, LGeneralFunction/Player/player/h;->aa:F

    iput v0, p0, LGeneralFunction/Player/player/h;->j:F

    .line 386
    iget v0, p0, LGeneralFunction/Player/player/h;->af:F

    iput v0, p0, LGeneralFunction/Player/player/h;->k:F

    .line 387
    iget v0, p0, LGeneralFunction/Player/player/h;->K:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 388
    iget v0, p0, LGeneralFunction/Player/player/h;->T:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    .line 621
    :goto_1
    return-void

    .line 364
    :pswitch_1
    const/4 v0, 0x1

    .line 365
    goto :goto_0

    .line 390
    :cond_1
    iget v2, p0, LGeneralFunction/Player/player/h;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 392
    invoke-virtual {p0}, LGeneralFunction/Player/player/h;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_1

    .line 394
    :pswitch_3
    iget v0, p0, LGeneralFunction/Player/player/h;->ay:F

    iput v0, p0, LGeneralFunction/Player/player/h;->d:F

    .line 395
    iget v0, p0, LGeneralFunction/Player/player/h;->aC:F

    iput v0, p0, LGeneralFunction/Player/player/h;->c:F

    .line 396
    iput v6, p0, LGeneralFunction/Player/player/h;->q:F

    .line 397
    invoke-virtual {p0, v6}, LGeneralFunction/Player/player/h;->b(F)V

    .line 398
    iget v0, p0, LGeneralFunction/Player/player/h;->at:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 400
    iget v0, p0, LGeneralFunction/Player/player/h;->aj:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 401
    iget v0, p0, LGeneralFunction/Player/player/h;->aj:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 402
    iget v0, p0, LGeneralFunction/Player/player/h;->X:F

    iput v0, p0, LGeneralFunction/Player/player/h;->j:F

    .line 403
    iget v0, p0, LGeneralFunction/Player/player/h;->ad:F

    iput v0, p0, LGeneralFunction/Player/player/h;->k:F

    .line 404
    iget v0, p0, LGeneralFunction/Player/player/h;->H:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 405
    iget v0, p0, LGeneralFunction/Player/player/h;->Q:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_1

    .line 409
    :pswitch_4
    iget v0, p0, LGeneralFunction/Player/player/h;->az:F

    iput v0, p0, LGeneralFunction/Player/player/h;->d:F

    .line 410
    iget v0, p0, LGeneralFunction/Player/player/h;->aD:F

    iput v0, p0, LGeneralFunction/Player/player/h;->c:F

    .line 411
    iput v6, p0, LGeneralFunction/Player/player/h;->q:F

    .line 412
    invoke-virtual {p0, v6}, LGeneralFunction/Player/player/h;->b(F)V

    .line 413
    iget v0, p0, LGeneralFunction/Player/player/h;->aq:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 415
    iget v0, p0, LGeneralFunction/Player/player/h;->am:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 416
    iget v0, p0, LGeneralFunction/Player/player/h;->am:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 417
    iget v0, p0, LGeneralFunction/Player/player/h;->ab:F

    iput v0, p0, LGeneralFunction/Player/player/h;->j:F

    .line 418
    iget v0, p0, LGeneralFunction/Player/player/h;->ag:F

    iput v0, p0, LGeneralFunction/Player/player/h;->k:F

    .line 419
    iget v0, p0, LGeneralFunction/Player/player/h;->L:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 420
    iget v0, p0, LGeneralFunction/Player/player/h;->U:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_1

    .line 425
    :pswitch_5
    iget v0, p0, LGeneralFunction/Player/player/h;->aA:F

    iput v0, p0, LGeneralFunction/Player/player/h;->d:F

    .line 426
    iget v0, p0, LGeneralFunction/Player/player/h;->aE:F

    iput v0, p0, LGeneralFunction/Player/player/h;->c:F

    .line 427
    iput v6, p0, LGeneralFunction/Player/player/h;->q:F

    .line 428
    invoke-virtual {p0, v6}, LGeneralFunction/Player/player/h;->b(F)V

    .line 429
    iget v0, p0, LGeneralFunction/Player/player/h;->ar:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 431
    iget v0, p0, LGeneralFunction/Player/player/h;->an:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 432
    iget v0, p0, LGeneralFunction/Player/player/h;->an:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 433
    iget v0, p0, LGeneralFunction/Player/player/h;->Z:F

    iput v0, p0, LGeneralFunction/Player/player/h;->j:F

    .line 434
    iget v0, p0, LGeneralFunction/Player/player/h;->ah:F

    iput v0, p0, LGeneralFunction/Player/player/h;->k:F

    .line 435
    iget v0, p0, LGeneralFunction/Player/player/h;->M:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 436
    iget v0, p0, LGeneralFunction/Player/player/h;->V:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto/16 :goto_1

    .line 440
    :pswitch_6
    iget v0, p0, LGeneralFunction/Player/player/h;->az:F

    iput v0, p0, LGeneralFunction/Player/player/h;->d:F

    .line 441
    iget v0, p0, LGeneralFunction/Player/player/h;->aD:F

    iput v0, p0, LGeneralFunction/Player/player/h;->c:F

    .line 442
    iput v6, p0, LGeneralFunction/Player/player/h;->q:F

    .line 443
    invoke-virtual {p0, v6}, LGeneralFunction/Player/player/h;->b(F)V

    .line 444
    iget v0, p0, LGeneralFunction/Player/player/h;->aq:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 446
    iget v0, p0, LGeneralFunction/Player/player/h;->am:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 447
    iget v0, p0, LGeneralFunction/Player/player/h;->am:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 448
    iget v0, p0, LGeneralFunction/Player/player/h;->ab:F

    iput v0, p0, LGeneralFunction/Player/player/h;->j:F

    .line 449
    iget v0, p0, LGeneralFunction/Player/player/h;->ag:F

    iput v0, p0, LGeneralFunction/Player/player/h;->k:F

    .line 450
    iget v0, p0, LGeneralFunction/Player/player/h;->L:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 451
    iget v0, p0, LGeneralFunction/Player/player/h;->U:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto/16 :goto_1

    .line 462
    :cond_2
    invoke-virtual {p0}, LGeneralFunction/Player/player/h;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :pswitch_7
    goto/16 :goto_1

    .line 464
    :pswitch_8
    iget v1, p0, LGeneralFunction/Player/player/h;->ay:F

    iput v1, p0, LGeneralFunction/Player/player/h;->d:F

    .line 465
    iget v1, p0, LGeneralFunction/Player/player/h;->aC:F

    iput v1, p0, LGeneralFunction/Player/player/h;->c:F

    .line 468
    iget v1, p0, LGeneralFunction/Player/player/h;->aj:F

    .line 470
    iget v2, p0, LGeneralFunction/Player/player/h;->aj:F

    iput v2, p0, LGeneralFunction/Player/player/h;->g:F

    .line 471
    iget v2, p0, LGeneralFunction/Player/player/h;->X:F

    iput v2, p0, LGeneralFunction/Player/player/h;->j:F

    .line 472
    iget v2, p0, LGeneralFunction/Player/player/h;->ad:F

    iput v2, p0, LGeneralFunction/Player/player/h;->k:F

    .line 473
    iget v2, p0, LGeneralFunction/Player/player/h;->at:F

    .line 475
    if-eqz v0, :cond_3

    .line 476
    iget v0, p0, LGeneralFunction/Player/player/h;->F:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 477
    iget v0, p0, LGeneralFunction/Player/player/h;->O:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    .line 483
    :goto_2
    if-eqz p1, :cond_4

    .line 485
    invoke-direct {p0, v2, v1, v6, v6}, LGeneralFunction/Player/player/h;->a(FFFF)V

    goto/16 :goto_1

    .line 479
    :cond_3
    iget v0, p0, LGeneralFunction/Player/player/h;->G:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 480
    iget v0, p0, LGeneralFunction/Player/player/h;->P:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_2

    .line 489
    :cond_4
    iput v6, p0, LGeneralFunction/Player/player/h;->q:F

    .line 490
    invoke-virtual {p0, v6}, LGeneralFunction/Player/player/h;->b(F)V

    .line 491
    iput v2, p0, LGeneralFunction/Player/player/h;->e:F

    .line 492
    iput v1, p0, LGeneralFunction/Player/player/h;->l:F

    goto/16 :goto_1

    .line 498
    :pswitch_9
    iget v2, p0, LGeneralFunction/Player/player/h;->az:F

    iput v2, p0, LGeneralFunction/Player/player/h;->d:F

    .line 499
    iget v2, p0, LGeneralFunction/Player/player/h;->aD:F

    iput v2, p0, LGeneralFunction/Player/player/h;->c:F

    .line 502
    iget v2, p0, LGeneralFunction/Player/player/h;->ak:F

    .line 504
    iget v3, p0, LGeneralFunction/Player/player/h;->ak:F

    iput v3, p0, LGeneralFunction/Player/player/h;->g:F

    .line 505
    iget v3, p0, LGeneralFunction/Player/player/h;->Y:F

    iput v3, p0, LGeneralFunction/Player/player/h;->j:F

    .line 506
    iget v3, p0, LGeneralFunction/Player/player/h;->ae:F

    iput v3, p0, LGeneralFunction/Player/player/h;->k:F

    .line 507
    iget v3, p0, LGeneralFunction/Player/player/h;->au:F

    .line 509
    if-eqz v0, :cond_5

    .line 510
    iget v0, p0, LGeneralFunction/Player/player/h;->I:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 511
    iget v0, p0, LGeneralFunction/Player/player/h;->R:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    .line 528
    :goto_3
    if-eqz p1, :cond_8

    .line 530
    invoke-direct {p0, v3, v2, v6, v6}, LGeneralFunction/Player/player/h;->a(FFFF)V

    goto/16 :goto_1

    .line 513
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lSurfaceHeight"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, LGeneralFunction/Player/player/h;->p:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/h;->a(Ljava/lang/String;I)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lSurfaceWidth"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, LGeneralFunction/Player/player/h;->o:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/h;->a(Ljava/lang/String;I)V

    .line 516
    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit8 v0, v0, 0x9

    int-to-double v0, v0

    iget v4, p0, LGeneralFunction/Player/player/h;->p:I

    int-to-double v4, v4

    div-double/2addr v4, v10

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_6

    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit16 v0, v0, 0x87

    iget v1, p0, LGeneralFunction/Player/player/h;->p:I

    div-int/lit16 v1, v1, 0x10f

    if-eq v0, v1, :cond_6

    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit8 v0, v0, 0x1

    iget v1, p0, LGeneralFunction/Player/player/h;->p:I

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_6

    iget v0, p0, LGeneralFunction/Player/player/h;->p:I

    int-to-float v0, v0

    iget v1, p0, LGeneralFunction/Player/player/h;->o:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_7

    .line 518
    :cond_6
    iget v0, p0, LGeneralFunction/Player/player/h;->J:F

    add-float/2addr v0, v7

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 519
    iget v0, p0, LGeneralFunction/Player/player/h;->S:F

    add-float/2addr v0, v7

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_3

    .line 523
    :cond_7
    iget v0, p0, LGeneralFunction/Player/player/h;->J:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 524
    iget v0, p0, LGeneralFunction/Player/player/h;->S:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_3

    .line 534
    :cond_8
    iput v6, p0, LGeneralFunction/Player/player/h;->q:F

    .line 535
    invoke-virtual {p0, v6}, LGeneralFunction/Player/player/h;->b(F)V

    .line 536
    iput v3, p0, LGeneralFunction/Player/player/h;->e:F

    .line 537
    iput v2, p0, LGeneralFunction/Player/player/h;->l:F

    goto/16 :goto_1

    .line 543
    :pswitch_a
    iget v0, p0, LGeneralFunction/Player/player/h;->aA:F

    iput v0, p0, LGeneralFunction/Player/player/h;->d:F

    .line 544
    iget v0, p0, LGeneralFunction/Player/player/h;->aE:F

    iput v0, p0, LGeneralFunction/Player/player/h;->c:F

    .line 546
    const/high16 v0, -0x3d4e0000    # -89.0f

    .line 547
    iget v1, p0, LGeneralFunction/Player/player/h;->an:F

    .line 549
    iget v2, p0, LGeneralFunction/Player/player/h;->an:F

    iput v2, p0, LGeneralFunction/Player/player/h;->g:F

    .line 550
    iget v2, p0, LGeneralFunction/Player/player/h;->Z:F

    iput v2, p0, LGeneralFunction/Player/player/h;->j:F

    .line 551
    iget v2, p0, LGeneralFunction/Player/player/h;->ah:F

    iput v2, p0, LGeneralFunction/Player/player/h;->k:F

    .line 552
    iget v2, p0, LGeneralFunction/Player/player/h;->M:F

    iput v2, p0, LGeneralFunction/Player/player/h;->h:F

    .line 553
    iget v2, p0, LGeneralFunction/Player/player/h;->V:F

    iput v2, p0, LGeneralFunction/Player/player/h;->i:F

    .line 555
    iget v2, p0, LGeneralFunction/Player/player/h;->aw:F

    .line 557
    if-eqz p1, :cond_9

    .line 559
    invoke-direct {p0, v2, v1, v6, v0}, LGeneralFunction/Player/player/h;->a(FFFF)V

    goto/16 :goto_1

    .line 563
    :cond_9
    iput v6, p0, LGeneralFunction/Player/player/h;->q:F

    .line 564
    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/h;->b(F)V

    .line 565
    iput v2, p0, LGeneralFunction/Player/player/h;->e:F

    .line 566
    iput v1, p0, LGeneralFunction/Player/player/h;->l:F

    goto/16 :goto_1

    .line 571
    :pswitch_b
    iget v1, p0, LGeneralFunction/Player/player/h;->az:F

    iput v1, p0, LGeneralFunction/Player/player/h;->d:F

    .line 572
    iget v1, p0, LGeneralFunction/Player/player/h;->aD:F

    iput v1, p0, LGeneralFunction/Player/player/h;->c:F

    .line 575
    iget v1, p0, LGeneralFunction/Player/player/h;->Y:F

    iput v1, p0, LGeneralFunction/Player/player/h;->j:F

    .line 576
    iget v1, p0, LGeneralFunction/Player/player/h;->ae:F

    iput v1, p0, LGeneralFunction/Player/player/h;->k:F

    .line 577
    iget v1, p0, LGeneralFunction/Player/player/h;->au:F

    .line 579
    if-eqz v0, :cond_a

    .line 580
    iget v0, p0, LGeneralFunction/Player/player/h;->ao:F

    .line 581
    iget v2, p0, LGeneralFunction/Player/player/h;->ao:F

    iput v2, p0, LGeneralFunction/Player/player/h;->g:F

    .line 582
    iget v2, p0, LGeneralFunction/Player/player/h;->I:F

    iput v2, p0, LGeneralFunction/Player/player/h;->h:F

    .line 583
    iget v2, p0, LGeneralFunction/Player/player/h;->R:F

    iput v2, p0, LGeneralFunction/Player/player/h;->i:F

    .line 605
    :goto_4
    if-eqz p1, :cond_d

    .line 607
    invoke-direct {p0, v1, v0, v6, v6}, LGeneralFunction/Player/player/h;->a(FFFF)V

    goto/16 :goto_1

    .line 589
    :cond_a
    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit8 v0, v0, 0x9

    int-to-double v2, v0

    iget v0, p0, LGeneralFunction/Player/player/h;->p:I

    int-to-double v4, v0

    div-double/2addr v4, v10

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_b

    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit16 v0, v0, 0x87

    iget v2, p0, LGeneralFunction/Player/player/h;->p:I

    div-int/lit16 v2, v2, 0x10f

    if-eq v0, v2, :cond_b

    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit8 v0, v0, 0x1

    iget v2, p0, LGeneralFunction/Player/player/h;->p:I

    div-int/lit8 v2, v2, 0x2

    if-eq v0, v2, :cond_b

    iget v0, p0, LGeneralFunction/Player/player/h;->p:I

    int-to-float v0, v0

    iget v2, p0, LGeneralFunction/Player/player/h;->o:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    cmpl-double v0, v2, v8

    if-lez v0, :cond_c

    .line 591
    :cond_b
    iget v0, p0, LGeneralFunction/Player/player/h;->ao:F

    add-float/2addr v0, v7

    .line 592
    iget v2, p0, LGeneralFunction/Player/player/h;->ao:F

    add-float/2addr v2, v7

    iput v2, p0, LGeneralFunction/Player/player/h;->g:F

    .line 593
    iget v2, p0, LGeneralFunction/Player/player/h;->J:F

    add-float/2addr v2, v7

    iput v2, p0, LGeneralFunction/Player/player/h;->h:F

    .line 594
    iget v2, p0, LGeneralFunction/Player/player/h;->S:F

    add-float/2addr v2, v7

    iput v2, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_4

    .line 598
    :cond_c
    iget v0, p0, LGeneralFunction/Player/player/h;->ao:F

    .line 599
    iget v2, p0, LGeneralFunction/Player/player/h;->ao:F

    iput v2, p0, LGeneralFunction/Player/player/h;->g:F

    .line 600
    iget v2, p0, LGeneralFunction/Player/player/h;->J:F

    iput v2, p0, LGeneralFunction/Player/player/h;->h:F

    .line 601
    iget v2, p0, LGeneralFunction/Player/player/h;->S:F

    iput v2, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_4

    .line 611
    :cond_d
    iput v6, p0, LGeneralFunction/Player/player/h;->q:F

    .line 612
    invoke-virtual {p0, v6}, LGeneralFunction/Player/player/h;->b(F)V

    .line 613
    iput v1, p0, LGeneralFunction/Player/player/h;->e:F

    .line 614
    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto/16 :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 392
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 462
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .prologue
    .line 222
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->i:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, LGeneralFunction/Player/player/h;->i:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget v0, p0, LGeneralFunction/Player/player/h;->k:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0
.end method

.method public b(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x42b20000    # 89.0f

    const/high16 v1, -0x3d4e0000    # -89.0f

    .line 342
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 344
    iput v1, p0, LGeneralFunction/Player/player/h;->r:F

    .line 354
    :goto_0
    return-void

    .line 346
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 348
    iput v2, p0, LGeneralFunction/Player/player/h;->r:F

    goto :goto_0

    .line 352
    :cond_1
    iput p1, p0, LGeneralFunction/Player/player/h;->r:F

    goto :goto_0
.end method

.method public b(IZ)V
    .locals 2

    .prologue
    .line 201
    iput p1, p0, LGeneralFunction/Player/player/h;->b:I

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/h;->a(Z)V

    .line 203
    invoke-direct {p0}, LGeneralFunction/Player/player/h;->f()V

    .line 205
    invoke-virtual {p0}, LGeneralFunction/Player/player/h;->c()V

    .line 206
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 208
    iget v0, p0, LGeneralFunction/Player/player/h;->j:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 212
    iget v0, p0, LGeneralFunction/Player/player/h;->h:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0
.end method

.method public b(Z)V
    .locals 10

    .prologue
    const-wide v8, 0x3ffe666666666666L    # 1.9

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/high16 v6, 0x43160000    # 150.0f

    .line 657
    const-string v0, "setRotationFefault"

    invoke-static {v0, v7}, LGeneralFunction/Player/player/h;->a(Ljava/lang/String;I)V

    .line 658
    iget v0, p0, LGeneralFunction/Player/player/h;->a:I

    packed-switch v0, :pswitch_data_0

    .line 844
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 661
    :pswitch_1
    iget v0, p0, LGeneralFunction/Player/player/h;->as:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    goto :goto_0

    .line 666
    :pswitch_2
    iget v0, p0, LGeneralFunction/Player/player/h;->at:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 667
    if-eqz p1, :cond_2

    .line 669
    iget v0, p0, LGeneralFunction/Player/player/h;->F:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 670
    iget v0, p0, LGeneralFunction/Player/player/h;->b:I

    if-ne v0, v1, :cond_1

    .line 672
    iget v0, p0, LGeneralFunction/Player/player/h;->H:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 673
    iget v0, p0, LGeneralFunction/Player/player/h;->Q:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    .line 687
    :goto_1
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 689
    iget v0, p0, LGeneralFunction/Player/player/h;->i:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0

    .line 677
    :cond_1
    iget v0, p0, LGeneralFunction/Player/player/h;->O:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_1

    .line 684
    :cond_2
    iget v0, p0, LGeneralFunction/Player/player/h;->G:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 685
    iget v0, p0, LGeneralFunction/Player/player/h;->P:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_1

    .line 695
    :pswitch_3
    iget v0, p0, LGeneralFunction/Player/player/h;->b:I

    if-ne v0, v1, :cond_5

    .line 697
    iget v0, p0, LGeneralFunction/Player/player/h;->L:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 698
    iget v0, p0, LGeneralFunction/Player/player/h;->am:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 699
    iget v0, p0, LGeneralFunction/Player/player/h;->ag:F

    iput v0, p0, LGeneralFunction/Player/player/h;->k:F

    .line 700
    iget v0, p0, LGeneralFunction/Player/player/h;->U:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    .line 701
    iget v0, p0, LGeneralFunction/Player/player/h;->am:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 702
    iget v0, p0, LGeneralFunction/Player/player/h;->aq:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 741
    :cond_3
    :goto_2
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 743
    iget v0, p0, LGeneralFunction/Player/player/h;->i:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 745
    :cond_4
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->k:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 747
    iget v0, p0, LGeneralFunction/Player/player/h;->k:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0

    .line 707
    :cond_5
    iget v0, p0, LGeneralFunction/Player/player/h;->m:I

    if-eq v0, v7, :cond_3

    .line 709
    if-eqz p1, :cond_6

    .line 710
    iget v0, p0, LGeneralFunction/Player/player/h;->I:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 711
    iget v0, p0, LGeneralFunction/Player/player/h;->R:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_2

    .line 716
    :cond_6
    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit8 v0, v0, 0x9

    int-to-double v0, v0

    iget v2, p0, LGeneralFunction/Player/player/h;->p:I

    int-to-double v2, v2

    const-wide v4, 0x4032800000000000L    # 18.5

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_7

    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit16 v0, v0, 0x87

    iget v1, p0, LGeneralFunction/Player/player/h;->p:I

    div-int/lit16 v1, v1, 0x10f

    if-eq v0, v1, :cond_7

    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit8 v0, v0, 0x1

    iget v1, p0, LGeneralFunction/Player/player/h;->p:I

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_7

    iget v0, p0, LGeneralFunction/Player/player/h;->p:I

    int-to-float v0, v0

    iget v1, p0, LGeneralFunction/Player/player/h;->o:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_8

    .line 718
    :cond_7
    iget v0, p0, LGeneralFunction/Player/player/h;->J:F

    add-float/2addr v0, v6

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 719
    iget v0, p0, LGeneralFunction/Player/player/h;->S:F

    add-float/2addr v0, v6

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    .line 726
    :goto_3
    iget v0, p0, LGeneralFunction/Player/player/h;->m:I

    if-ne v0, v7, :cond_9

    .line 728
    iget v0, p0, LGeneralFunction/Player/player/h;->av:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 735
    :goto_4
    iget v0, p0, LGeneralFunction/Player/player/h;->Y:F

    iput v0, p0, LGeneralFunction/Player/player/h;->j:F

    .line 736
    iget v0, p0, LGeneralFunction/Player/player/h;->ae:F

    iput v0, p0, LGeneralFunction/Player/player/h;->k:F

    goto :goto_2

    .line 723
    :cond_8
    iget v0, p0, LGeneralFunction/Player/player/h;->J:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 724
    iget v0, p0, LGeneralFunction/Player/player/h;->S:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_3

    .line 732
    :cond_9
    iget v0, p0, LGeneralFunction/Player/player/h;->au:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    goto :goto_4

    .line 753
    :pswitch_4
    iget v0, p0, LGeneralFunction/Player/player/h;->aA:F

    iput v0, p0, LGeneralFunction/Player/player/h;->d:F

    .line 754
    iget v0, p0, LGeneralFunction/Player/player/h;->aE:F

    iput v0, p0, LGeneralFunction/Player/player/h;->c:F

    .line 755
    iget v0, p0, LGeneralFunction/Player/player/h;->Z:F

    iput v0, p0, LGeneralFunction/Player/player/h;->j:F

    .line 757
    iget v0, p0, LGeneralFunction/Player/player/h;->b:I

    if-ne v0, v1, :cond_b

    .line 759
    iget v0, p0, LGeneralFunction/Player/player/h;->L:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 760
    iget v0, p0, LGeneralFunction/Player/player/h;->am:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 761
    iput v2, p0, LGeneralFunction/Player/player/h;->q:F

    .line 762
    invoke-virtual {p0, v2}, LGeneralFunction/Player/player/h;->b(F)V

    .line 763
    iget v0, p0, LGeneralFunction/Player/player/h;->ar:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 777
    :goto_5
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 779
    iget v0, p0, LGeneralFunction/Player/player/h;->i:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 781
    :cond_a
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->k:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 783
    iget v0, p0, LGeneralFunction/Player/player/h;->k:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto/16 :goto_0

    .line 767
    :cond_b
    iget v0, p0, LGeneralFunction/Player/player/h;->aw:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 768
    iget v0, p0, LGeneralFunction/Player/player/h;->M:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 769
    iget v0, p0, LGeneralFunction/Player/player/h;->V:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    .line 770
    iget v0, p0, LGeneralFunction/Player/player/h;->an:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 771
    iget v0, p0, LGeneralFunction/Player/player/h;->ah:F

    iput v0, p0, LGeneralFunction/Player/player/h;->k:F

    .line 772
    iget v0, p0, LGeneralFunction/Player/player/h;->an:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 773
    iput v2, p0, LGeneralFunction/Player/player/h;->q:F

    .line 774
    const/high16 v0, -0x3d4e0000    # -89.0f

    invoke-virtual {p0, v0}, LGeneralFunction/Player/player/h;->b(F)V

    goto :goto_5

    .line 789
    :pswitch_5
    iget v0, p0, LGeneralFunction/Player/player/h;->b:I

    if-ne v0, v1, :cond_d

    .line 791
    iget v0, p0, LGeneralFunction/Player/player/h;->L:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 792
    iget v0, p0, LGeneralFunction/Player/player/h;->am:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 793
    iget v0, p0, LGeneralFunction/Player/player/h;->ag:F

    iput v0, p0, LGeneralFunction/Player/player/h;->k:F

    .line 794
    iget v0, p0, LGeneralFunction/Player/player/h;->U:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    .line 795
    iget v0, p0, LGeneralFunction/Player/player/h;->am:F

    iput v0, p0, LGeneralFunction/Player/player/h;->g:F

    .line 796
    iget v0, p0, LGeneralFunction/Player/player/h;->aq:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    .line 831
    :goto_6
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 833
    iget v0, p0, LGeneralFunction/Player/player/h;->i:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    .line 835
    :cond_c
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->k:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 837
    iget v0, p0, LGeneralFunction/Player/player/h;->k:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto/16 :goto_0

    .line 800
    :cond_d
    if-eqz p1, :cond_e

    .line 801
    iget v0, p0, LGeneralFunction/Player/player/h;->I:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 802
    iget v0, p0, LGeneralFunction/Player/player/h;->R:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_6

    .line 807
    :cond_e
    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit8 v0, v0, 0x9

    int-to-double v0, v0

    iget v2, p0, LGeneralFunction/Player/player/h;->p:I

    int-to-double v2, v2

    const-wide v4, 0x4032800000000000L    # 18.5

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_f

    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit16 v0, v0, 0x87

    iget v1, p0, LGeneralFunction/Player/player/h;->p:I

    div-int/lit16 v1, v1, 0x10f

    if-eq v0, v1, :cond_f

    iget v0, p0, LGeneralFunction/Player/player/h;->o:I

    div-int/lit8 v0, v0, 0x1

    iget v1, p0, LGeneralFunction/Player/player/h;->p:I

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_f

    iget v0, p0, LGeneralFunction/Player/player/h;->p:I

    int-to-float v0, v0

    iget v1, p0, LGeneralFunction/Player/player/h;->o:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_10

    .line 810
    :cond_f
    iget v0, p0, LGeneralFunction/Player/player/h;->J:F

    add-float/2addr v0, v6

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 811
    iget v0, p0, LGeneralFunction/Player/player/h;->S:F

    add-float/2addr v0, v6

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    .line 820
    :goto_7
    iget v0, p0, LGeneralFunction/Player/player/h;->m:I

    if-ne v0, v7, :cond_11

    .line 822
    iget v0, p0, LGeneralFunction/Player/player/h;->av:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    goto :goto_6

    .line 815
    :cond_10
    iget v0, p0, LGeneralFunction/Player/player/h;->J:F

    iput v0, p0, LGeneralFunction/Player/player/h;->h:F

    .line 816
    iget v0, p0, LGeneralFunction/Player/player/h;->S:F

    iput v0, p0, LGeneralFunction/Player/player/h;->i:F

    goto :goto_7

    .line 826
    :cond_11
    iget v0, p0, LGeneralFunction/Player/player/h;->au:F

    iput v0, p0, LGeneralFunction/Player/player/h;->e:F

    goto :goto_6

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 254
    iget v0, p0, LGeneralFunction/Player/player/h;->a:I

    packed-switch v0, :pswitch_data_0

    .line 298
    :goto_0
    :pswitch_0
    return-void

    .line 256
    :pswitch_1
    iget v0, p0, LGeneralFunction/Player/player/h;->ai:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0

    .line 259
    :pswitch_2
    iget v0, p0, LGeneralFunction/Player/player/h;->aj:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0

    .line 262
    :pswitch_3
    iget v0, p0, LGeneralFunction/Player/player/h;->b:I

    if-ne v0, v1, :cond_0

    .line 264
    iget v0, p0, LGeneralFunction/Player/player/h;->am:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0

    .line 268
    :cond_0
    iget v0, p0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 270
    iget v0, p0, LGeneralFunction/Player/player/h;->al:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0

    .line 274
    :cond_1
    iget v0, p0, LGeneralFunction/Player/player/h;->ak:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0

    .line 280
    :pswitch_4
    iget v0, p0, LGeneralFunction/Player/player/h;->an:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0

    .line 285
    :pswitch_5
    iget v0, p0, LGeneralFunction/Player/player/h;->b:I

    if-ne v0, v1, :cond_2

    .line 287
    iget v0, p0, LGeneralFunction/Player/player/h;->ap:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0

    .line 291
    :cond_2
    iget v0, p0, LGeneralFunction/Player/player/h;->ao:F

    iput v0, p0, LGeneralFunction/Player/player/h;->l:F

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 848
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 850
    const-string v0, "focalLength"

    new-array v1, v2, [F

    iget v2, p0, LGeneralFunction/Player/player/h;->l:F

    aput v2, v1, v3

    iget v2, p0, LGeneralFunction/Player/player/h;->i:F

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 862
    :goto_0
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 863
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 864
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 866
    new-instance v1, LGeneralFunction/Player/player/h$1;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/h$1;-><init>(LGeneralFunction/Player/player/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 873
    new-instance v1, LGeneralFunction/Player/player/h$2;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/h$2;-><init>(LGeneralFunction/Player/player/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 882
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 884
    :goto_1
    return-void

    .line 852
    :cond_0
    iget v0, p0, LGeneralFunction/Player/player/h;->l:F

    iget v1, p0, LGeneralFunction/Player/player/h;->k:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 854
    const-string v0, "focalLength"

    new-array v1, v2, [F

    iget v2, p0, LGeneralFunction/Player/player/h;->l:F

    aput v2, v1, v3

    iget v2, p0, LGeneralFunction/Player/player/h;->k:F

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_1
    iput-boolean v3, p0, LGeneralFunction/Player/player/h;->B:Z

    goto :goto_1
.end method

.method public e()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, LGeneralFunction/Player/player/h;->aG:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, LGeneralFunction/Player/player/h;->aG:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 928
    :cond_0
    return-void
.end method
