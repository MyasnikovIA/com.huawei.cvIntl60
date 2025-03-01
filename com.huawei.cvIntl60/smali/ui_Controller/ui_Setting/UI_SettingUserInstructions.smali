.class public Lui_Controller/ui_Setting/UI_SettingUserInstructions;
.super LGeneralFunction/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;,
        Lui_Controller/ui_Setting/UI_SettingUserInstructions$a;
    }
.end annotation


# instance fields
.field protected b:Lui_Controller/ui_StartMode/UI_ModeMain;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/ImageView;

.field private f:[Landroid/widget/ImageView;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/view/OrientationEventListener;

.field private r:I

.field private s:Landroid/content/Context;

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, LGeneralFunction/a/a;-><init>()V

    .line 46
    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 56
    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->i:Landroid/widget/TextView;

    .line 57
    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->j:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->k:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->l:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->m:Landroid/widget/TextView;

    .line 62
    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->n:Landroid/widget/TextView;

    .line 64
    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->o:Landroid/widget/ImageButton;

    .line 65
    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->p:Landroid/widget/ImageButton;

    .line 67
    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->q:Landroid/view/OrientationEventListener;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->r:I

    .line 70
    iput-object p0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->s:Landroid/content/Context;

    .line 72
    iput v1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->t:I

    .line 73
    iput v1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->u:I

    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Setting/UI_SettingUserInstructions;I)I
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->r:I

    return p1
.end method

.method static synthetic a(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic b(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d()V

    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const-wide v8, 0x3feccccccccccccdL    # 0.9

    const/4 v6, 0x0

    .line 116
    iget v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->t:I

    iget v1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->u:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 117
    div-int/lit8 v0, v0, 0x15

    int-to-float v0, v0

    invoke-static {p0, v0}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v1

    .line 118
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d:Ljava/util/ArrayList;

    .line 121
    const v0, 0x7f040054

    invoke-virtual {v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 122
    const v0, 0x7f100105

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->i:Landroid/widget/TextView;

    .line 123
    new-instance v0, LGeneralFunction/c;

    invoke-direct {v0, v1}, LGeneralFunction/c;-><init>(I)V

    int-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v0, v4}, LGeneralFunction/c;->f(I)LGeneralFunction/c;

    move-result-object v0

    .line 124
    iget-object v4, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, LGeneralFunction/c;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 125
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    const v0, 0x7f040055

    invoke-virtual {v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 128
    const v0, 0x7f100107

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->j:Landroid/widget/TextView;

    .line 129
    new-instance v0, LGeneralFunction/c;

    invoke-direct {v0, v1}, LGeneralFunction/c;-><init>(I)V

    int-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v0, v4}, LGeneralFunction/c;->n(I)LGeneralFunction/c;

    move-result-object v0

    .line 130
    iget-object v4, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, LGeneralFunction/c;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    const v0, 0x7f040056

    invoke-virtual {v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 134
    const v0, 0x7f100109

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->k:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->k:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 136
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const v0, 0x7f040057

    invoke-virtual {v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 139
    const v0, 0x7f10010b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->l:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->l:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 141
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->f:[Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f040053

    invoke-virtual {v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->g:Landroid/view/ViewGroup;

    .line 145
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->g:Landroid/view/ViewGroup;

    const v2, 0x7f100101

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->h:Landroid/view/ViewGroup;

    .line 146
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->g:Landroid/view/ViewGroup;

    const v2, 0x7f1000fe

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c:Landroid/support/v4/view/ViewPager;

    .line 148
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 149
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->e:Landroid/widget/ImageView;

    .line 150
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->e:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0x28

    const/16 v5, 0x14

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->f:[Landroid/widget/ImageView;

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->e:Landroid/widget/ImageView;

    aput-object v3, v2, v0

    .line 153
    if-nez v0, :cond_0

    .line 154
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020189

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 158
    :goto_1
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->h:Landroid/view/ViewGroup;

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->f:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020188

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 160
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->setContentView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lui_Controller/ui_Setting/UI_SettingUserInstructions$a;

    invoke-direct {v2, p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions$a;-><init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 163
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;

    invoke-direct {v2, p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;-><init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 165
    const v0, 0x7f1000ff

    invoke-virtual {p0, v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->o:Landroid/widget/ImageButton;

    .line 166
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->o:Landroid/widget/ImageButton;

    new-instance v2, Lui_Controller/ui_Setting/UI_SettingUserInstructions$1;

    invoke-direct {v2, p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions$1;-><init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v0, 0x7f100103

    invoke-virtual {p0, v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->p:Landroid/widget/ImageButton;

    .line 174
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->p:Landroid/widget/ImageButton;

    new-instance v2, Lui_Controller/ui_Setting/UI_SettingUserInstructions$2;

    invoke-direct {v2, p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions$2;-><init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f100100

    invoke-virtual {p0, v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->m:Landroid/widget/TextView;

    .line 181
    new-instance v0, LGeneralFunction/c;

    invoke-direct {v0, v1}, LGeneralFunction/c;-><init>(I)V

    int-to-double v2, v1

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v0, v2}, LGeneralFunction/c;->d(I)LGeneralFunction/c;

    move-result-object v0

    .line 182
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, LGeneralFunction/c;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 183
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->m:Landroid/widget/TextView;

    new-instance v2, Lui_Controller/ui_Setting/UI_SettingUserInstructions$3;

    invoke-direct {v2, p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions$3;-><init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v0, 0x7f100102

    invoke-virtual {p0, v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->n:Landroid/widget/TextView;

    .line 193
    new-instance v0, LGeneralFunction/c;

    invoke-direct {v0, v1}, LGeneralFunction/c;-><init>(I)V

    int-to-double v2, v1

    const-wide v4, 0x3fee666666666666L    # 0.95

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, LGeneralFunction/c;->g(I)LGeneralFunction/c;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, LGeneralFunction/c;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 195
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->n:Landroid/widget/TextView;

    new-instance v1, Lui_Controller/ui_Setting/UI_SettingUserInstructions$4;

    invoke-direct {v1, p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions$4;-><init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method static synthetic c(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->f:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x100

    invoke-virtual {v1, v2, p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 215
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 216
    return-void

    .line 212
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x400

    invoke-virtual {v1, v2, p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic e(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 383
    new-instance v0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$5;

    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->s:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lui_Controller/ui_Setting/UI_SettingUserInstructions$5;-><init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;Landroid/content/Context;)V

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->q:Landroid/view/OrientationEventListener;

    .line 406
    return-void
.end method

.method static synthetic f(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->o:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic h(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->p:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic i(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->r:I

    return v0
.end method


# virtual methods
.method public a(La/c/a;J)V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, p1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const-string v0, "UserInstructions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendUiMsg error!! MsgEx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, La/c/a;->b()Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 339
    new-instance v1, La/c/a;

    invoke-direct {v1, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 340
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 343
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v0, v0, Lui_Controller/b/j;->d:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 345
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v4, v0, Lui_Controller/b/j;->d:Z

    goto :goto_0

    .line 351
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 353
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lui_Controller/b/j;->d:Z

    goto :goto_0

    .line 359
    :sswitch_2
    const-string v0, "usb_permission"

    invoke-virtual {v1, v0}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "UserInstructions"

    const-string v1, "has permission, need to switch to live view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v4, v0, Lui_Controller/b/j;->d:Z

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x100

    invoke-virtual {v1, v2, p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 364
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto :goto_0

    .line 370
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, La/c/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v3, "AppMode"

    invoke-virtual {v1, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 372
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto :goto_0

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f02 -> :sswitch_0
        0x2f0b -> :sswitch_3
        0x4804 -> :sswitch_1
        0x4805 -> :sswitch_2
    .end sparse-switch
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 410
    invoke-static {p0, p1}, LGeneralFunction/d;->a(Landroid/app/Activity;I)V

    .line 411
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 321
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 322
    invoke-static {}, LGeneralFunction/o;->a()V

    .line 323
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "UserInstructions"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lui_Controller/ui_StartMode/UI_ModeMain;

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 81
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->v()V

    .line 82
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x1020

    invoke-virtual {v0, v1, p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->requestWindowFeature(I)Z

    .line 86
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->t:I

    .line 89
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->u:I

    .line 91
    invoke-direct {p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->e()V

    .line 92
    invoke-direct {p0}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c()V

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, LGeneralFunction/a/a;->onPause()V

    .line 107
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->q:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 97
    invoke-super {p0}, LGeneralFunction/a/a;->onResume()V

    .line 98
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->q:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 99
    new-instance v0, La/c/a;

    const/16 v1, 0x2f02

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 100
    const-string v1, "mode"

    const/16 v2, 0x1020

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 101
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->a(La/c/a;J)V

    .line 102
    return-void
.end method
