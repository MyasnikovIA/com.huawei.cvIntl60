.class public Lui_Controller/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/util/Timer;

.field public B:Landroid/graphics/Bitmap;

.field public C:Landroid/graphics/BitmapFactory$Options;

.field public D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public final E:LGeneralFunction/j;

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final G:LGeneralFunction/j;

.field public H:LGeneralFunction/e/a;

.field public I:Lui_Controller/b/l;

.field public J:Lui_Controller/b/m;

.field public K:Z

.field public L:Z

.field public M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public N:J

.field public O:J

.field public P:J

.field public Q:J

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public X:J

.field public Y:I

.field public Z:Z

.field public a:I

.field public aA:J

.field public aB:I

.field public aC:J

.field public aD:J

.field public aE:D

.field public aF:Z

.field public aG:J

.field public aH:Ljava/lang/String;

.field public aI:Landroid/graphics/Bitmap;

.field public aJ:Z

.field public aK:Z

.field public aL:LGeneralFunction/l/a;

.field public aM:Z

.field public aN:I

.field public aO:I

.field public aP:I

.field public aQ:Ljava/lang/String;

.field public aR:Ljava/lang/String;

.field public aS:Ljava/lang/String;

.field public aT:I

.field public aa:Z

.field public ab:Landroid/animation/ObjectAnimator;

.field public ac:I

.field public ad:Z

.field public ae:I

.field public af:Ljava/io/FileInputStream;

.field public ag:I

.field public ah:I

.field public ai:I

.field public aj:I

.field public ak:I

.field public al:[B

.field public am:LGeneralFunction/r/b;

.field public an:LGeneralFunction/r/a;

.field public ao:LGeneralFunction/n;

.field public ap:Landroid/view/OrientationEventListener;

.field public aq:Landroid/content/BroadcastReceiver;

.field public ar:I

.field public as:Z

.field public at:Z

.field public au:Z

.field public av:LGeneralFunction/Player/player/h;

.field public aw:J

.field public ax:Ljava/lang/String;

.field public ay:J

.field public az:J

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:[I

.field public q:I

.field public r:Z

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x120

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v2, p0, Lui_Controller/b/k;->v:I

    .line 53
    iput-boolean v2, p0, Lui_Controller/b/k;->w:Z

    .line 54
    iput-boolean v2, p0, Lui_Controller/b/k;->x:Z

    .line 55
    iput-boolean v2, p0, Lui_Controller/b/k;->y:Z

    .line 57
    iput-wide v4, p0, Lui_Controller/b/k;->z:J

    .line 59
    iput-object v3, p0, Lui_Controller/b/k;->A:Ljava/util/Timer;

    .line 60
    iput-object v3, p0, Lui_Controller/b/k;->B:Landroid/graphics/Bitmap;

    .line 61
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lui_Controller/b/k;->C:Landroid/graphics/BitmapFactory$Options;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/b/k;->D:Ljava/util/ArrayList;

    .line 64
    new-instance v0, LGeneralFunction/j;

    invoke-direct {v0}, LGeneralFunction/j;-><init>()V

    iput-object v0, p0, Lui_Controller/b/k;->E:LGeneralFunction/j;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/b/k;->F:Ljava/util/ArrayList;

    .line 66
    new-instance v0, LGeneralFunction/j;

    invoke-direct {v0}, LGeneralFunction/j;-><init>()V

    iput-object v0, p0, Lui_Controller/b/k;->G:LGeneralFunction/j;

    .line 68
    iput-object v3, p0, Lui_Controller/b/k;->H:LGeneralFunction/e/a;

    .line 69
    iput-object v3, p0, Lui_Controller/b/k;->I:Lui_Controller/b/l;

    .line 70
    iput-object v3, p0, Lui_Controller/b/k;->J:Lui_Controller/b/m;

    .line 73
    iput-boolean v2, p0, Lui_Controller/b/k;->K:Z

    .line 74
    iput-boolean v2, p0, Lui_Controller/b/k;->L:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/b/k;->M:Ljava/util/ArrayList;

    .line 76
    iput-wide v4, p0, Lui_Controller/b/k;->N:J

    .line 77
    iput-wide v4, p0, Lui_Controller/b/k;->O:J

    .line 78
    iput-wide v4, p0, Lui_Controller/b/k;->P:J

    .line 79
    iput-wide v4, p0, Lui_Controller/b/k;->Q:J

    .line 82
    iput v2, p0, Lui_Controller/b/k;->R:I

    .line 85
    iput v2, p0, Lui_Controller/b/k;->S:I

    .line 86
    iput v2, p0, Lui_Controller/b/k;->T:I

    .line 87
    iput v2, p0, Lui_Controller/b/k;->U:I

    .line 88
    iput v2, p0, Lui_Controller/b/k;->V:I

    .line 89
    iput-object v3, p0, Lui_Controller/b/k;->W:Ljava/util/ArrayList;

    .line 90
    iput-wide v4, p0, Lui_Controller/b/k;->X:J

    .line 91
    const/16 v0, 0xa

    iput v0, p0, Lui_Controller/b/k;->Y:I

    .line 92
    iput-boolean v2, p0, Lui_Controller/b/k;->Z:Z

    .line 93
    iput-boolean v2, p0, Lui_Controller/b/k;->aa:Z

    .line 94
    iput-object v3, p0, Lui_Controller/b/k;->ab:Landroid/animation/ObjectAnimator;

    .line 95
    iput v2, p0, Lui_Controller/b/k;->ac:I

    .line 96
    iput-boolean v2, p0, Lui_Controller/b/k;->ad:Z

    .line 97
    iput v2, p0, Lui_Controller/b/k;->ae:I

    .line 99
    iput-object v3, p0, Lui_Controller/b/k;->af:Ljava/io/FileInputStream;

    .line 100
    iput v2, p0, Lui_Controller/b/k;->ag:I

    .line 101
    const v0, 0xfc00

    iput v0, p0, Lui_Controller/b/k;->ah:I

    .line 102
    iput v2, p0, Lui_Controller/b/k;->ai:I

    .line 103
    iput v2, p0, Lui_Controller/b/k;->aj:I

    .line 104
    iput v2, p0, Lui_Controller/b/k;->ak:I

    .line 105
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lui_Controller/b/k;->al:[B

    .line 106
    iput-object v3, p0, Lui_Controller/b/k;->am:LGeneralFunction/r/b;

    .line 107
    iput-object v3, p0, Lui_Controller/b/k;->an:LGeneralFunction/r/a;

    .line 108
    iput-object v3, p0, Lui_Controller/b/k;->ao:LGeneralFunction/n;

    .line 109
    iput-object v3, p0, Lui_Controller/b/k;->ap:Landroid/view/OrientationEventListener;

    .line 110
    iput-object v3, p0, Lui_Controller/b/k;->aq:Landroid/content/BroadcastReceiver;

    .line 111
    const/16 v0, 0x64

    iput v0, p0, Lui_Controller/b/k;->ar:I

    .line 112
    iput-boolean v2, p0, Lui_Controller/b/k;->as:Z

    .line 113
    iput-boolean v2, p0, Lui_Controller/b/k;->at:Z

    .line 114
    iput-boolean v2, p0, Lui_Controller/b/k;->au:Z

    .line 116
    iput-object v3, p0, Lui_Controller/b/k;->av:LGeneralFunction/Player/player/h;

    .line 118
    iput-wide v4, p0, Lui_Controller/b/k;->aw:J

    .line 119
    iput-object v3, p0, Lui_Controller/b/k;->ax:Ljava/lang/String;

    .line 120
    iput-wide v4, p0, Lui_Controller/b/k;->ay:J

    .line 121
    iput-wide v4, p0, Lui_Controller/b/k;->az:J

    .line 122
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lui_Controller/b/k;->aA:J

    .line 124
    iput-wide v4, p0, Lui_Controller/b/k;->aC:J

    .line 125
    iput-wide v4, p0, Lui_Controller/b/k;->aD:J

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lui_Controller/b/k;->aE:D

    .line 128
    iput-boolean v2, p0, Lui_Controller/b/k;->aF:Z

    .line 130
    iput-wide v4, p0, Lui_Controller/b/k;->aG:J

    .line 131
    iput-object v3, p0, Lui_Controller/b/k;->aH:Ljava/lang/String;

    .line 132
    iput-object v3, p0, Lui_Controller/b/k;->aI:Landroid/graphics/Bitmap;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/b/k;->aJ:Z

    .line 135
    iput-boolean v2, p0, Lui_Controller/b/k;->aK:Z

    .line 137
    iput-object v3, p0, Lui_Controller/b/k;->aL:LGeneralFunction/l/a;

    .line 139
    iput-boolean v2, p0, Lui_Controller/b/k;->aM:Z

    .line 141
    iput v2, p0, Lui_Controller/b/k;->aN:I

    .line 143
    iput v2, p0, Lui_Controller/b/k;->aO:I

    .line 144
    iput v2, p0, Lui_Controller/b/k;->aP:I

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lui_Controller/b/k;->aQ:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lui_Controller/b/k;->aR:Ljava/lang/String;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lui_Controller/b/k;->aS:Ljava/lang/String;

    .line 150
    iput v2, p0, Lui_Controller/b/k;->aT:I

    .line 154
    iput v2, p0, Lui_Controller/b/k;->a:I

    .line 155
    const/16 v0, 0x100

    iput v0, p0, Lui_Controller/b/k;->b:I

    .line 156
    iput v6, p0, Lui_Controller/b/k;->c:I

    .line 157
    iput v6, p0, Lui_Controller/b/k;->d:I

    .line 158
    iput v2, p0, Lui_Controller/b/k;->e:I

    .line 159
    iput v2, p0, Lui_Controller/b/k;->f:I

    .line 160
    iput v2, p0, Lui_Controller/b/k;->g:I

    .line 161
    iput v2, p0, Lui_Controller/b/k;->h:I

    .line 162
    iput v2, p0, Lui_Controller/b/k;->i:I

    .line 163
    sget-object v0, Lui_Controller/a/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lui_Controller/b/k;->j:Ljava/lang/String;

    .line 165
    iput-boolean v2, p0, Lui_Controller/b/k;->k:Z

    .line 166
    iput-boolean v2, p0, Lui_Controller/b/k;->l:Z

    .line 167
    iput-boolean v2, p0, Lui_Controller/b/k;->m:Z

    .line 168
    iput-boolean v2, p0, Lui_Controller/b/k;->n:Z

    .line 169
    iput-boolean v2, p0, Lui_Controller/b/k;->o:Z

    .line 170
    const/16 v0, 0xe

    new-array v0, v0, [I

    iput-object v0, p0, Lui_Controller/b/k;->p:[I

    .line 173
    iput v2, p0, Lui_Controller/b/k;->q:I

    .line 174
    iput-boolean v2, p0, Lui_Controller/b/k;->r:Z

    .line 175
    const/4 v0, 0x4

    iput v0, p0, Lui_Controller/b/k;->s:I

    .line 177
    new-instance v0, Lui_Controller/b/l;

    invoke-direct {v0}, Lui_Controller/b/l;-><init>()V

    iput-object v0, p0, Lui_Controller/b/k;->I:Lui_Controller/b/l;

    .line 178
    new-instance v0, Lui_Controller/b/m;

    invoke-direct {v0}, Lui_Controller/b/m;-><init>()V

    iput-object v0, p0, Lui_Controller/b/k;->J:Lui_Controller/b/m;

    .line 181
    iput v2, p0, Lui_Controller/b/k;->t:I

    .line 183
    invoke-virtual {p0}, Lui_Controller/b/k;->a()V

    .line 184
    return-void

    .line 105
    nop

    :array_0
    .array-data 1
        0x46t
        0x50t
        0x55t
        0x50t
        0x44t
        0x41t
        0x54t
        0x45t
        0x2et
        0x44t
        0x41t
        0x54t
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 214
    move v0, v1

    :goto_0
    iget-object v2, p0, Lui_Controller/b/k;->p:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 216
    iget-object v2, p0, Lui_Controller/b/k;->p:[I

    aput v1, v2, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method
