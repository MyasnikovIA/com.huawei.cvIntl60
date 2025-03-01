.class public LGeneralFunction/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Landroid/widget/Toast;

.field private c:Landroid/widget/Toast;

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/graphics/Bitmap;

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/a;->a:I

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LGeneralFunction/a;->d:Landroid/os/Handler;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, LGeneralFunction/a;->e:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/a;->l:Landroid/graphics/Bitmap;

    .line 262
    new-instance v0, LGeneralFunction/a$1;

    invoke-direct {v0, p0}, LGeneralFunction/a$1;-><init>(LGeneralFunction/a;)V

    iput-object v0, p0, LGeneralFunction/a;->m:Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11

    .prologue
    const/4 v3, -0x2

    const/16 v10, 0xff

    const/16 v9, 0x8

    const/4 v8, 0x0

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v8, p0, LGeneralFunction/a;->a:I

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LGeneralFunction/a;->d:Landroid/os/Handler;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, LGeneralFunction/a;->e:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/a;->l:Landroid/graphics/Bitmap;

    .line 262
    new-instance v0, LGeneralFunction/a$1;

    invoke-direct {v0, p0}, LGeneralFunction/a$1;-><init>(LGeneralFunction/a;)V

    iput-object v0, p0, LGeneralFunction/a;->m:Ljava/lang/Runnable;

    .line 126
    iput v8, p0, LGeneralFunction/a;->e:I

    .line 128
    iget-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 131
    const v0, 0x7f100164

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/a;->i:Landroid/widget/LinearLayout;

    .line 132
    const v0, 0x7f100166

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/a;->j:Landroid/widget/LinearLayout;

    .line 133
    const v0, 0x7f100165

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LGeneralFunction/a;->f:Landroid/widget/ImageView;

    .line 134
    const v0, 0x7f100168

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LGeneralFunction/a;->h:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f100167

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LGeneralFunction/a;->g:Landroid/widget/ImageView;

    .line 137
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    const/16 v2, 0xf

    .line 139
    new-instance v3, LGeneralFunction/c;

    invoke-direct {v3, v2}, LGeneralFunction/c;-><init>(I)V

    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->d(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->n(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->g(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->h(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {v3, v2}, LGeneralFunction/c;->j(I)LGeneralFunction/c;

    move-result-object v2

    .line 140
    iget-object v3, p0, LGeneralFunction/a;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, LGeneralFunction/c;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 141
    iget-object v2, p0, LGeneralFunction/a;->h:Landroid/widget/TextView;

    const/16 v3, 0xaa

    invoke-static {v3, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    .line 146
    iget-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 148
    :cond_0
    iget-object v0, p0, LGeneralFunction/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, LGeneralFunction/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, LGeneralFunction/a;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, LGeneralFunction/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, LGeneralFunction/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    invoke-virtual {v0, v8}, Landroid/widget/Toast;->setDuration(I)V

    .line 155
    iget-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, LGeneralFunction/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, LGeneralFunction/a;->b(J)V

    .line 161
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 8

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/a;->a:I

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LGeneralFunction/a;->d:Landroid/os/Handler;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, LGeneralFunction/a;->e:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/a;->l:Landroid/graphics/Bitmap;

    .line 262
    new-instance v0, LGeneralFunction/a$1;

    invoke-direct {v0, p0}, LGeneralFunction/a$1;-><init>(LGeneralFunction/a;)V

    iput-object v0, p0, LGeneralFunction/a;->m:Ljava/lang/Runnable;

    .line 91
    const/4 v0, 0x2

    iput v0, p0, LGeneralFunction/a;->e:I

    .line 93
    iget-object v0, p0, LGeneralFunction/a;->c:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    const v0, 0x7f100150

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LGeneralFunction/a;->k:Landroid/widget/TextView;

    .line 99
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    const/16 v2, 0xf

    .line 101
    new-instance v3, LGeneralFunction/c;

    invoke-direct {v3, v2}, LGeneralFunction/c;-><init>(I)V

    int-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->d(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->f(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->g(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->h(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->j(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->m(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->o(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->l(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->n(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {v3, v2}, LGeneralFunction/c;->i(I)LGeneralFunction/c;

    move-result-object v2

    .line 102
    iget-object v3, p0, LGeneralFunction/a;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, LGeneralFunction/c;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    iget-object v2, p0, LGeneralFunction/a;->k:Landroid/widget/TextView;

    const/16 v3, 0xaa

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LGeneralFunction/a;->c:Landroid/widget/Toast;

    .line 108
    iget-object v0, p0, LGeneralFunction/a;->c:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 111
    :cond_0
    iget-object v0, p0, LGeneralFunction/a;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    if-eqz p4, :cond_1

    .line 113
    iget-object v0, p0, LGeneralFunction/a;->c:Landroid/widget/Toast;

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 115
    :cond_1
    iget-object v0, p0, LGeneralFunction/a;->c:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 116
    iget-object v0, p0, LGeneralFunction/a;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, LGeneralFunction/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, LGeneralFunction/a;->b(J)V

    .line 122
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;I)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v3, -0x2

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v6, p0, LGeneralFunction/a;->a:I

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LGeneralFunction/a;->d:Landroid/os/Handler;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, LGeneralFunction/a;->e:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/a;->l:Landroid/graphics/Bitmap;

    .line 262
    new-instance v0, LGeneralFunction/a$1;

    invoke-direct {v0, p0}, LGeneralFunction/a$1;-><init>(LGeneralFunction/a;)V

    iput-object v0, p0, LGeneralFunction/a;->m:Ljava/lang/Runnable;

    .line 165
    const/4 v0, 0x1

    iput v0, p0, LGeneralFunction/a;->e:I

    .line 167
    iget-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 169
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 170
    const v0, 0x7f100164

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/a;->i:Landroid/widget/LinearLayout;

    .line 171
    const v0, 0x7f100166

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LGeneralFunction/a;->j:Landroid/widget/LinearLayout;

    .line 172
    const v0, 0x7f100165

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LGeneralFunction/a;->f:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f100168

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LGeneralFunction/a;->h:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f100167

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LGeneralFunction/a;->g:Landroid/widget/ImageView;

    .line 176
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    const/16 v2, 0xf

    .line 178
    new-instance v3, LGeneralFunction/c;

    invoke-direct {v3, v2}, LGeneralFunction/c;-><init>(I)V

    int-to-double v4, v2

    mul-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v3, v4}, LGeneralFunction/c;->f(I)LGeneralFunction/c;

    move-result-object v3

    int-to-double v4, v2

    mul-double/2addr v4, v8

    double-to-int v2, v4

    invoke-virtual {v3, v2}, LGeneralFunction/c;->d(I)LGeneralFunction/c;

    move-result-object v2

    .line 179
    iget-object v3, p0, LGeneralFunction/a;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, LGeneralFunction/c;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 180
    iget-object v2, p0, LGeneralFunction/a;->h:Landroid/widget/TextView;

    const/16 v3, 0xaa

    invoke-static {v3, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    .line 185
    iget-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 187
    :cond_0
    iget-object v0, p0, LGeneralFunction/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, LGeneralFunction/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, LGeneralFunction/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, LGeneralFunction/a;->g:Landroid/widget/ImageView;

    const v1, 0x7f02035c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, LGeneralFunction/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, LGeneralFunction/a;->h:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 193
    iget-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    invoke-virtual {v0, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 194
    iget-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    int-to-long v0, p4

    invoke-direct {p0, v0, v1}, LGeneralFunction/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    int-to-long v0, p4

    invoke-direct {p0, v0, v1}, LGeneralFunction/a;->b(J)V

    .line 200
    :cond_1
    return-void
.end method

.method private a(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 242
    .line 243
    packed-switch v0, :pswitch_data_0

    move v1, v0

    .line 253
    :goto_0
    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 246
    :pswitch_0
    const/16 v1, 0x9c4

    .line 247
    goto :goto_0

    .line 249
    :pswitch_1
    const/16 v1, 0xdac

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, LGeneralFunction/a;->d:Landroid/os/Handler;

    iget-object v1, p0, LGeneralFunction/a;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, LGeneralFunction/a;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 216
    :cond_0
    iget-object v0, p0, LGeneralFunction/a;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, LGeneralFunction/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/a;->l:Landroid/graphics/Bitmap;

    .line 221
    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, LGeneralFunction/a;->e:I

    return v0
.end method
