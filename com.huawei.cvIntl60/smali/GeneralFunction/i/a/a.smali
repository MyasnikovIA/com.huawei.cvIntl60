.class public LGeneralFunction/i/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/i/a/a$b;,
        LGeneralFunction/i/a/a$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:I

.field private D:I

.field public a:Z

.field private b:I

.field private c:I

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:F

.field private k:F

.field private l:Landroid/widget/Button;

.field private m:Landroid/view/ViewGroup;

.field private n:LGeneralFunction/i/a/a$a;

.field private o:LGeneralFunction/i/a/a$b;

.field private p:I

.field private q:I

.field private r:I

.field private s:F

.field private t:F

.field private u:I

.field private v:I

.field private w:F

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZIIIIZ)V
    .locals 10

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move v9, p5

    invoke-direct/range {v0 .. v9}, LGeneralFunction/i/a/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZIIIIZI)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZIIIIZI)V
    .locals 6

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const v0, 0x7f0200f9

    iput v0, p0, LGeneralFunction/i/a/a;->b:I

    .line 27
    const v0, 0x7f0200fa

    iput v0, p0, LGeneralFunction/i/a/a;->c:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/i/a/a;->e:Landroid/widget/LinearLayout;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/i/a/a;->f:Landroid/widget/TextView;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/i/a/a;->h:Landroid/widget/LinearLayout;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/i/a/a;->i:Landroid/widget/LinearLayout;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/i/a/a;->j:F

    .line 36
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/i/a/a;->k:F

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/i/a/a;->l:Landroid/widget/Button;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/i/a/a;->m:Landroid/view/ViewGroup;

    .line 44
    const/4 v0, 0x2

    iput v0, p0, LGeneralFunction/i/a/a;->p:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, LGeneralFunction/i/a/a;->q:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/i/a/a;->r:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/i/a/a;->s:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/i/a/a;->t:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/i/a/a;->u:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/i/a/a;->v:I

    .line 51
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, LGeneralFunction/i/a/a;->w:F

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, LGeneralFunction/i/a/a;->w:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, LGeneralFunction/i/a/a;->x:F

    .line 53
    iget v0, p0, LGeneralFunction/i/a/a;->w:F

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    iput v0, p0, LGeneralFunction/i/a/a;->y:F

    .line 54
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/i/a/a;->z:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/i/a/a;->A:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/i/a/a;->B:Z

    .line 57
    const/4 v0, 0x1

    iput v0, p0, LGeneralFunction/i/a/a;->C:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/i/a/a;->a:Z

    .line 60
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/i/a/a;->D:I

    .line 77
    iput-object p2, p0, LGeneralFunction/i/a/a;->m:Landroid/view/ViewGroup;

    .line 78
    iput p4, p0, LGeneralFunction/i/a/a;->p:I

    .line 79
    iput p5, p0, LGeneralFunction/i/a/a;->q:I

    .line 80
    iput p9, p0, LGeneralFunction/i/a/a;->C:I

    .line 82
    iget-object v0, p0, LGeneralFunction/i/a/a;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, LGeneralFunction/i/a/a;->u:I

    .line 83
    iget-object v0, p0, LGeneralFunction/i/a/a;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, LGeneralFunction/i/a/a;->v:I

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    const v1, 0x7f040067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 90
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, LGeneralFunction/i/a/a;->b:I

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 92
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 93
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 96
    const v0, 0x7f100149

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    .line 97
    iget v0, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v0, v0

    iget v4, p0, LGeneralFunction/i/a/a;->w:F

    mul-float/2addr v0, v4

    int-to-float v4, v2

    div-float/2addr v0, v4

    .line 98
    iget-object v4, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 99
    int-to-float v5, v3

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    iget v0, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v0, v0

    iget v5, p0, LGeneralFunction/i/a/a;->w:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    iget-object v0, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const v0, 0x7f10014a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/i/a/a;->e:Landroid/widget/LinearLayout;

    .line 106
    iget v0, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v0, v0

    iget v4, p0, LGeneralFunction/i/a/a;->w:F

    mul-float/2addr v0, v4

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 107
    iget-object v2, p0, LGeneralFunction/i/a/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 108
    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 109
    iget v0, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v0, v0

    iget v3, p0, LGeneralFunction/i/a/a;->w:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    iget-object v0, p0, LGeneralFunction/i/a/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iput-boolean p8, p0, LGeneralFunction/i/a/a;->a:Z

    .line 115
    const/4 v0, 0x1

    if-ne p8, v0, :cond_1

    .line 117
    iget-object v0, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    iget v3, p0, LGeneralFunction/i/a/a;->b:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 118
    iget-object v0, p0, LGeneralFunction/i/a/a;->e:Landroid/widget/LinearLayout;

    iget v3, p0, LGeneralFunction/i/a/a;->c:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 126
    :cond_0
    :goto_0
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, LGeneralFunction/i/a/a;->z:I

    .line 128
    iget v0, p0, LGeneralFunction/i/a/a;->z:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, LGeneralFunction/i/a/a;->z:I

    .line 131
    const v0, 0x7f10014b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LGeneralFunction/i/a/a;->f:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, LGeneralFunction/i/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 133
    iget v2, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v2, v2

    iget v3, p0, LGeneralFunction/i/a/a;->x:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    iget v2, p0, LGeneralFunction/i/a/a;->z:I

    mul-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    iget-object v0, p0, LGeneralFunction/i/a/a;->f:Landroid/widget/TextView;

    iget v2, p0, LGeneralFunction/i/a/a;->v:I

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-static {p1, v2}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    const v0, 0x7f10014c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 140
    iget v2, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v2, v2

    iget v3, p0, LGeneralFunction/i/a/a;->x:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 141
    iget v2, p0, LGeneralFunction/i/a/a;->z:I

    mul-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    iget-object v2, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    iget v3, p0, LGeneralFunction/i/a/a;->v:I

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    invoke-static {p1, v3}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    iget-boolean v2, p0, LGeneralFunction/i/a/a;->B:Z

    if-eqz v2, :cond_2

    .line 145
    iget-object v0, p0, LGeneralFunction/i/a/a;->f:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget v0, p0, LGeneralFunction/i/a/a;->z:I

    iput v0, p0, LGeneralFunction/i/a/a;->A:I

    .line 153
    :goto_1
    iget v0, p0, LGeneralFunction/i/a/a;->u:I

    iget v2, p0, LGeneralFunction/i/a/a;->A:I

    sub-int/2addr v0, v2

    iput v0, p0, LGeneralFunction/i/a/a;->r:I

    .line 154
    iget v0, p0, LGeneralFunction/i/a/a;->q:I

    int-to-float v0, v0

    iget v2, p0, LGeneralFunction/i/a/a;->r:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, LGeneralFunction/i/a/a;->p:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, LGeneralFunction/i/a/a;->s:F

    .line 155
    iget v0, p0, LGeneralFunction/i/a/a;->C:I

    int-to-float v0, v0

    iget v2, p0, LGeneralFunction/i/a/a;->r:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, LGeneralFunction/i/a/a;->p:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, LGeneralFunction/i/a/a;->t:F

    .line 158
    add-int/lit8 v0, p6, 0x1

    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->c(I)F

    move-result v0

    .line 159
    add-int/lit8 v2, p7, 0x1

    invoke-direct {p0, v2}, LGeneralFunction/i/a/a;->c(I)F

    move-result v2

    .line 161
    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->c(F)F

    move-result v3

    iput v3, p0, LGeneralFunction/i/a/a;->j:F

    .line 162
    invoke-direct {p0, v2}, LGeneralFunction/i/a/a;->c(F)F

    move-result v3

    iput v3, p0, LGeneralFunction/i/a/a;->k:F

    .line 165
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, LGeneralFunction/i/a/a;->r:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, LGeneralFunction/i/a/a;->p:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 166
    :goto_2
    iget v4, p0, LGeneralFunction/i/a/a;->j:F

    invoke-direct {p0, v4}, LGeneralFunction/i/a/a;->d(F)I

    move-result v4

    if-eq v4, p6, :cond_4

    .line 168
    iget v4, p0, LGeneralFunction/i/a/a;->j:F

    invoke-direct {p0, v4}, LGeneralFunction/i/a/a;->d(F)I

    move-result v4

    if-ge v4, p6, :cond_3

    .line 170
    iget v4, p0, LGeneralFunction/i/a/a;->j:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    add-float/2addr v4, v5

    iput v4, p0, LGeneralFunction/i/a/a;->j:F

    goto :goto_2

    .line 120
    :cond_1
    if-nez p8, :cond_0

    .line 122
    iget-object v0, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    iget v3, p0, LGeneralFunction/i/a/a;->c:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 123
    iget-object v0, p0, LGeneralFunction/i/a/a;->e:Landroid/widget/LinearLayout;

    iget v3, p0, LGeneralFunction/i/a/a;->b:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 151
    :cond_2
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, LGeneralFunction/i/a/a;->A:I

    goto :goto_1

    .line 174
    :cond_3
    iget v4, p0, LGeneralFunction/i/a/a;->j:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    sub-float/2addr v4, v5

    iput v4, p0, LGeneralFunction/i/a/a;->j:F

    goto :goto_2

    .line 177
    :cond_4
    :goto_3
    iget v4, p0, LGeneralFunction/i/a/a;->k:F

    invoke-direct {p0, v4}, LGeneralFunction/i/a/a;->d(F)I

    move-result v4

    if-eq v4, p7, :cond_6

    .line 179
    iget v4, p0, LGeneralFunction/i/a/a;->k:F

    invoke-direct {p0, v4}, LGeneralFunction/i/a/a;->d(F)I

    move-result v4

    if-ge v4, p7, :cond_5

    .line 181
    iget v4, p0, LGeneralFunction/i/a/a;->k:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    add-float/2addr v4, v5

    iput v4, p0, LGeneralFunction/i/a/a;->k:F

    goto :goto_3

    .line 185
    :cond_5
    iget v4, p0, LGeneralFunction/i/a/a;->k:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    sub-float/2addr v4, v5

    iput v4, p0, LGeneralFunction/i/a/a;->k:F

    goto :goto_3

    .line 189
    :cond_6
    iget-object v3, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    iget v4, p0, LGeneralFunction/i/a/a;->j:F

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, LGeneralFunction/i/a/a;->a(Landroid/widget/LinearLayout;I)V

    .line 190
    iget-object v3, p0, LGeneralFunction/i/a/a;->e:Landroid/widget/LinearLayout;

    iget v4, p0, LGeneralFunction/i/a/a;->k:F

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, LGeneralFunction/i/a/a;->a(Landroid/widget/LinearLayout;I)V

    .line 192
    iget-object v3, p0, LGeneralFunction/i/a/a;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->e(F)I

    move-result v0

    invoke-direct {p0, v3, v0}, LGeneralFunction/i/a/a;->a(Landroid/widget/TextView;I)V

    .line 193
    iget-object v0, p0, LGeneralFunction/i/a/a;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, LGeneralFunction/i/a/a;->j:F

    invoke-direct {p0, v4}, LGeneralFunction/i/a/a;->d(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    invoke-direct {p0, v2}, LGeneralFunction/i/a/a;->e(F)I

    move-result v2

    invoke-direct {p0, v0, v2}, LGeneralFunction/i/a/a;->a(Landroid/widget/TextView;I)V

    .line 195
    iget-object v0, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, LGeneralFunction/i/a/a;->k:F

    invoke-direct {p0, v3}, LGeneralFunction/i/a/a;->d(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const v0, 0x7f100148

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/i/a/a;->i:Landroid/widget/LinearLayout;

    .line 199
    iget-object v0, p0, LGeneralFunction/i/a/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 200
    iget v2, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v2, v2

    iget v3, p0, LGeneralFunction/i/a/a;->y:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    iget-object v0, p0, LGeneralFunction/i/a/a;->i:Landroid/widget/LinearLayout;

    iget v2, p0, LGeneralFunction/i/a/a;->j:F

    float-to-int v2, v2

    iget v3, p0, LGeneralFunction/i/a/a;->k:F

    float-to-int v3, v3

    invoke-direct {p0, v0, v2, v3}, LGeneralFunction/i/a/a;->a(Landroid/widget/LinearLayout;II)V

    .line 206
    const v0, 0x7f100147

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/i/a/a;->h:Landroid/widget/LinearLayout;

    .line 207
    iget-object v0, p0, LGeneralFunction/i/a/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 208
    iget v2, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v2, v2

    iget v3, p0, LGeneralFunction/i/a/a;->y:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 210
    iget-object v0, p0, LGeneralFunction/i/a/a;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, LGeneralFunction/i/a/a;->c(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, LGeneralFunction/i/a/a;->u:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, LGeneralFunction/i/a/a;->c(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v2, v3}, LGeneralFunction/i/a/a;->a(Landroid/widget/LinearLayout;II)V

    .line 213
    const v0, 0x7f10014d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LGeneralFunction/i/a/a;->l:Landroid/widget/Button;

    .line 214
    if-eqz p3, :cond_7

    .line 216
    iget-object v0, p0, LGeneralFunction/i/a/a;->l:Landroid/widget/Button;

    new-instance v1, LGeneralFunction/i/a/a$1;

    invoke-direct {v1, p0}, LGeneralFunction/i/a/a$1;-><init>(LGeneralFunction/i/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 327
    :cond_7
    return-void
.end method

.method private a(F)F
    .locals 3

    .prologue
    .line 393
    iget v0, p0, LGeneralFunction/i/a/a;->A:I

    .line 394
    iget v1, p0, LGeneralFunction/i/a/a;->A:I

    iget v2, p0, LGeneralFunction/i/a/a;->z:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 396
    int-to-float v1, v1

    sub-float v1, p1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 397
    return v0
.end method

.method static synthetic a(LGeneralFunction/i/a/a;F)F
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, LGeneralFunction/i/a/a;->a(F)F

    move-result v0

    return v0
.end method

.method private a(FF)I
    .locals 7

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 357
    iget v2, p0, LGeneralFunction/i/a/a;->z:I

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x2

    .line 358
    iget v3, p0, LGeneralFunction/i/a/a;->v:I

    div-int/lit8 v3, v3, 0x2

    .line 359
    invoke-direct {p0, p1}, LGeneralFunction/i/a/a;->c(F)F

    move-result v4

    .line 360
    iget v5, p0, LGeneralFunction/i/a/a;->j:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 362
    iget v5, p0, LGeneralFunction/i/a/a;->k:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_2

    .line 365
    int-to-float v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 371
    goto :goto_0

    :cond_2
    move v0, v1

    .line 376
    goto :goto_0

    .line 379
    :cond_3
    iget v1, p0, LGeneralFunction/i/a/a;->k:F

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 385
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(LGeneralFunction/i/a/a;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, LGeneralFunction/i/a/a;->D:I

    return v0
.end method

.method static synthetic a(LGeneralFunction/i/a/a;FF)I
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, LGeneralFunction/i/a/a;->a(FF)I

    move-result v0

    return v0
.end method

.method static synthetic a(LGeneralFunction/i/a/a;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, LGeneralFunction/i/a/a;->D:I

    return p1
.end method

.method static synthetic a(LGeneralFunction/i/a/a;Landroid/widget/LinearLayout;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, LGeneralFunction/i/a/a;->a(Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/i/a/a;Landroid/widget/LinearLayout;II)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, LGeneralFunction/i/a/a;->a(Landroid/widget/LinearLayout;II)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/i/a/a;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, LGeneralFunction/i/a/a;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/i/a/a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, LGeneralFunction/i/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 445
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget v1, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v1, v1

    iget v2, p0, LGeneralFunction/i/a/a;->x:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, p2, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 447
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 448
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 496
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget v1, p0, LGeneralFunction/i/a/a;->z:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    iget v2, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, LGeneralFunction/i/a/a;->w:F

    sub-float/2addr v3, v4

    iget v4, p0, LGeneralFunction/i/a/a;->x:F

    sub-float/2addr v3, v4

    iget v4, p0, LGeneralFunction/i/a/a;->w:F

    iget v5, p0, LGeneralFunction/i/a/a;->y:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 498
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 499
    sub-int v0, p3, p2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 500
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 481
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v1, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    iget v1, p0, LGeneralFunction/i/a/a;->v:I

    int-to-float v1, v1

    iget v2, p0, LGeneralFunction/i/a/a;->w:F

    iget v3, p0, LGeneralFunction/i/a/a;->x:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, p2, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 490
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 491
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    return-void

    .line 488
    :cond_0
    invoke-virtual {v0, p2, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 64
    const-string v0, "HorizontalScrollRangeSelectBar"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method private b(F)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 402
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 407
    :cond_0
    return p1
.end method

.method static synthetic b(LGeneralFunction/i/a/a;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, LGeneralFunction/i/a/a;->k:F

    return v0
.end method

.method static synthetic b(LGeneralFunction/i/a/a;F)I
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, LGeneralFunction/i/a/a;->d(F)I

    move-result v0

    return v0
.end method

.method private c(F)F
    .locals 4

    .prologue
    .line 414
    .line 415
    iget v0, p0, LGeneralFunction/i/a/a;->A:I

    .line 416
    div-int/lit8 v1, v0, 0x2

    .line 417
    iget v2, p0, LGeneralFunction/i/a/a;->A:I

    iget v3, p0, LGeneralFunction/i/a/a;->z:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 419
    int-to-float v3, v1

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 421
    int-to-float v0, v2

    .line 433
    :goto_0
    return v0

    .line 423
    :cond_0
    iget v3, p0, LGeneralFunction/i/a/a;->u:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 425
    iget v1, p0, LGeneralFunction/i/a/a;->u:I

    sub-int v0, v1, v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    goto :goto_0

    .line 429
    :cond_1
    int-to-float v0, v1

    sub-float v0, p1, v0

    iget v1, p0, LGeneralFunction/i/a/a;->s:F

    div-float/2addr v0, v1

    .line 430
    iget v1, p0, LGeneralFunction/i/a/a;->s:F

    mul-float/2addr v0, v1

    int-to-float v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private c(I)F
    .locals 3

    .prologue
    .line 460
    .line 461
    iget v0, p0, LGeneralFunction/i/a/a;->A:I

    iget v1, p0, LGeneralFunction/i/a/a;->z:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 462
    iget v1, p0, LGeneralFunction/i/a/a;->r:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    iget v2, p0, LGeneralFunction/i/a/a;->p:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 463
    int-to-float v0, v0

    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->a(F)F

    move-result v0

    return v0
.end method

.method static synthetic c(LGeneralFunction/i/a/a;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, LGeneralFunction/i/a/a;->t:F

    return v0
.end method

.method static synthetic c(LGeneralFunction/i/a/a;F)F
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, LGeneralFunction/i/a/a;->c(F)F

    move-result v0

    return v0
.end method

.method static synthetic d(LGeneralFunction/i/a/a;F)F
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, LGeneralFunction/i/a/a;->b(F)F

    move-result v0

    return v0
.end method

.method private d(F)I
    .locals 2

    .prologue
    .line 453
    .line 454
    iget v0, p0, LGeneralFunction/i/a/a;->p:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, LGeneralFunction/i/a/a;->r:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 455
    return v0
.end method

.method static synthetic d(LGeneralFunction/i/a/a;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, LGeneralFunction/i/a/a;->C:I

    return v0
.end method

.method static synthetic e(LGeneralFunction/i/a/a;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, LGeneralFunction/i/a/a;->j:F

    return v0
.end method

.method static synthetic e(LGeneralFunction/i/a/a;F)F
    .locals 0

    .prologue
    .line 18
    iput p1, p0, LGeneralFunction/i/a/a;->j:F

    return p1
.end method

.method private e(F)I
    .locals 2

    .prologue
    .line 468
    .line 469
    iget v0, p0, LGeneralFunction/i/a/a;->A:I

    div-int/lit8 v0, v0, 0x2

    .line 470
    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 476
    :goto_0
    float-to-int v0, v0

    return v0

    .line 472
    :cond_0
    iget v1, p0, LGeneralFunction/i/a/a;->u:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 473
    iget v0, p0, LGeneralFunction/i/a/a;->u:I

    iget v1, p0, LGeneralFunction/i/a/a;->A:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 475
    :cond_1
    int-to-float v0, v0

    sub-float v0, p1, v0

    goto :goto_0
.end method

.method static synthetic f(LGeneralFunction/i/a/a;F)I
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, LGeneralFunction/i/a/a;->e(F)I

    move-result v0

    return v0
.end method

.method static synthetic f(LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a$b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LGeneralFunction/i/a/a;->o:LGeneralFunction/i/a/a$b;

    return-object v0
.end method

.method static synthetic g(LGeneralFunction/i/a/a;F)F
    .locals 0

    .prologue
    .line 18
    iput p1, p0, LGeneralFunction/i/a/a;->k:F

    return p1
.end method

.method static synthetic g(LGeneralFunction/i/a/a;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, LGeneralFunction/i/a/a;->b:I

    return v0
.end method

.method static synthetic h(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(LGeneralFunction/i/a/a;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, LGeneralFunction/i/a/a;->c:I

    return v0
.end method

.method static synthetic j(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LGeneralFunction/i/a/a;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LGeneralFunction/i/a/a;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic l(LGeneralFunction/i/a/a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LGeneralFunction/i/a/a;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(LGeneralFunction/i/a/a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LGeneralFunction/i/a/a;->n:LGeneralFunction/i/a/a$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    iput-object v1, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    .line 552
    iget-object v0, p0, LGeneralFunction/i/a/a;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 553
    iput-object v1, p0, LGeneralFunction/i/a/a;->l:Landroid/widget/Button;

    .line 554
    iput-object v1, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    .line 555
    iput-object v1, p0, LGeneralFunction/i/a/a;->m:Landroid/view/ViewGroup;

    .line 556
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 524
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->c(I)F

    move-result v0

    .line 526
    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->c(F)F

    move-result v1

    iput v1, p0, LGeneralFunction/i/a/a;->j:F

    .line 527
    iget-object v1, p0, LGeneralFunction/i/a/a;->d:Landroid/widget/LinearLayout;

    iget v2, p0, LGeneralFunction/i/a/a;->j:F

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, LGeneralFunction/i/a/a;->a(Landroid/widget/LinearLayout;I)V

    .line 529
    iget-object v1, p0, LGeneralFunction/i/a/a;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->e(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, LGeneralFunction/i/a/a;->a(Landroid/widget/TextView;I)V

    .line 530
    iget-object v1, p0, LGeneralFunction/i/a/a;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->d(F)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, LGeneralFunction/i/a/a;->i:Landroid/widget/LinearLayout;

    iget v1, p0, LGeneralFunction/i/a/a;->j:F

    float-to-int v1, v1

    iget v2, p0, LGeneralFunction/i/a/a;->k:F

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, LGeneralFunction/i/a/a;->a(Landroid/widget/LinearLayout;II)V

    .line 533
    return-void
.end method

.method public a(LGeneralFunction/i/a/a$a;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, LGeneralFunction/i/a/a;->n:LGeneralFunction/i/a/a$a;

    .line 332
    return-void
.end method

.method public a(LGeneralFunction/i/a/a$b;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, LGeneralFunction/i/a/a;->o:LGeneralFunction/i/a/a$b;

    .line 337
    return-void
.end method

.method public b(I)V
    .locals 4

    .prologue
    .line 537
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->c(I)F

    move-result v0

    .line 539
    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->c(F)F

    move-result v1

    iput v1, p0, LGeneralFunction/i/a/a;->k:F

    .line 540
    iget-object v1, p0, LGeneralFunction/i/a/a;->e:Landroid/widget/LinearLayout;

    iget v2, p0, LGeneralFunction/i/a/a;->k:F

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, LGeneralFunction/i/a/a;->a(Landroid/widget/LinearLayout;I)V

    .line 542
    iget-object v1, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->e(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, LGeneralFunction/i/a/a;->a(Landroid/widget/TextView;I)V

    .line 543
    iget-object v1, p0, LGeneralFunction/i/a/a;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, LGeneralFunction/i/a/a;->d(F)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, LGeneralFunction/i/a/a;->i:Landroid/widget/LinearLayout;

    iget v1, p0, LGeneralFunction/i/a/a;->j:F

    float-to-int v1, v1

    iget v2, p0, LGeneralFunction/i/a/a;->k:F

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, LGeneralFunction/i/a/a;->a(Landroid/widget/LinearLayout;II)V

    .line 546
    return-void
.end method
