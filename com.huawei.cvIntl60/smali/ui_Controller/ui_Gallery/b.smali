.class public Lui_Controller/ui_Gallery/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/ui_Gallery/b$b;,
        Lui_Controller/ui_Gallery/b$a;,
        Lui_Controller/ui_Gallery/b$d;,
        Lui_Controller/ui_Gallery/b$c;
    }
.end annotation


# instance fields
.field private a:Lui_Controller/ui_Gallery/b$c;

.field private b:Lui_Controller/CustomWidget/a;

.field private c:Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;

.field private d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;

.field private e:I

.field private f:Lui_Controller/ui_Gallery/b$d;

.field private g:Lui_Controller/ui_Gallery/b$d;

.field private h:Z

.field private i:I

.field private j:LGeneralFunction/a/a;

.field private k:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

.field private l:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$a;

.field private m:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$d;

.field private n:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;

.field private o:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;

.field private p:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;

.field private q:Z

.field private r:J

.field private s:Landroid/graphics/PointF;

.field private t:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;


# direct methods
.method public constructor <init>(LGeneralFunction/a/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    .line 69
    iput-object v1, p0, Lui_Controller/ui_Gallery/b;->b:Lui_Controller/CustomWidget/a;

    .line 70
    iput-object v1, p0, Lui_Controller/ui_Gallery/b;->c:Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;

    .line 71
    iput-object v1, p0, Lui_Controller/ui_Gallery/b;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;

    .line 73
    iput v2, p0, Lui_Controller/ui_Gallery/b;->e:I

    .line 74
    new-instance v0, Lui_Controller/ui_Gallery/b$d;

    invoke-direct {v0, p0, v1}, Lui_Controller/ui_Gallery/b$d;-><init>(Lui_Controller/ui_Gallery/b;Lui_Controller/ui_Gallery/b$1;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->f:Lui_Controller/ui_Gallery/b$d;

    .line 75
    new-instance v0, Lui_Controller/ui_Gallery/b$d;

    invoke-direct {v0, p0, v1}, Lui_Controller/ui_Gallery/b$d;-><init>(Lui_Controller/ui_Gallery/b;Lui_Controller/ui_Gallery/b$1;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->g:Lui_Controller/ui_Gallery/b$d;

    .line 76
    iput-boolean v2, p0, Lui_Controller/ui_Gallery/b;->h:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/ui_Gallery/b;->i:I

    .line 79
    iput-object v1, p0, Lui_Controller/ui_Gallery/b;->j:LGeneralFunction/a/a;

    .line 80
    iput-object v1, p0, Lui_Controller/ui_Gallery/b;->k:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 250
    new-instance v0, Lui_Controller/ui_Gallery/b$1;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/b$1;-><init>(Lui_Controller/ui_Gallery/b;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->l:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$a;

    .line 262
    new-instance v0, Lui_Controller/ui_Gallery/b$2;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/b$2;-><init>(Lui_Controller/ui_Gallery/b;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->m:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$d;

    .line 270
    new-instance v0, Lui_Controller/ui_Gallery/b$3;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/b$3;-><init>(Lui_Controller/ui_Gallery/b;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->n:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;

    .line 280
    new-instance v0, Lui_Controller/ui_Gallery/b$4;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/b$4;-><init>(Lui_Controller/ui_Gallery/b;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->o:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;

    .line 287
    new-instance v0, Lui_Controller/ui_Gallery/b$5;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/b$5;-><init>(Lui_Controller/ui_Gallery/b;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->p:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;

    .line 322
    iput-boolean v2, p0, Lui_Controller/ui_Gallery/b;->q:Z

    .line 323
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lui_Controller/ui_Gallery/b;->r:J

    .line 324
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->s:Landroid/graphics/PointF;

    .line 326
    new-instance v0, Lui_Controller/ui_Gallery/b$6;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/b$6;-><init>(Lui_Controller/ui_Gallery/b;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->t:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;

    .line 89
    iput-object p1, p0, Lui_Controller/ui_Gallery/b;->j:LGeneralFunction/a/a;

    .line 90
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/b;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lui_Controller/ui_Gallery/b;->e:I

    return p1
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/b;)Lui_Controller/ui_Gallery/b$c;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 84
    const-string v0, "UI_GalleryViewWidgetHandler"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method private a(Lui_Controller/ui_Gallery/b$d;)V
    .locals 6

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "objSize.lWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lui_Controller/ui_Gallery/b$d;->a(Lui_Controller/ui_Gallery/b$d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,objSize.lHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lui_Controller/ui_Gallery/b$d;->b(Lui_Controller/ui_Gallery/b$d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/b;->a(Ljava/lang/String;I)V

    .line 176
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    if-eqz v0, :cond_0

    iget v0, p0, Lui_Controller/ui_Gallery/b;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->j:LGeneralFunction/a/a;

    iget-object v2, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v2, v2, Lui_Controller/ui_Gallery/b$c;->f:LGeneralFunction/e/d;

    .line 182
    invoke-static {p1}, Lui_Controller/ui_Gallery/b$d;->a(Lui_Controller/ui_Gallery/b$d;)I

    move-result v3

    .line 183
    invoke-static {p1}, Lui_Controller/ui_Gallery/b$d;->b(Lui_Controller/ui_Gallery/b$d;)I

    move-result v4

    iget-object v5, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v5, v5, Lui_Controller/ui_Gallery/b$c;->i:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;-><init>(Landroid/content/Context;LGeneralFunction/e/d;IIZ)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;

    .line 184
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->n:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;)V

    .line 185
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->o:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;)V

    .line 186
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->p:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;)V

    .line 187
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->t:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;)V

    .line 189
    new-instance v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    invoke-direct {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;-><init>()V

    .line 190
    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;

    iput-object v1, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    .line 191
    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->b:Lui_Controller/CustomWidget/a;

    iput-object v1, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->b:Lui_Controller/CustomWidget/a;

    .line 192
    const/4 v1, 0x1

    iput v1, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    .line 193
    invoke-static {p1}, Lui_Controller/ui_Gallery/b$d;->a(Lui_Controller/ui_Gallery/b$d;)I

    move-result v1

    iput v1, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    .line 194
    invoke-static {p1}, Lui_Controller/ui_Gallery/b$d;->b(Lui_Controller/ui_Gallery/b$d;)I

    move-result v1

    iput v1, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->e:I

    .line 196
    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v1, v1, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget v2, p0, Lui_Controller/ui_Gallery/b;->e:I

    invoke-virtual {v1, v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;I)V

    goto :goto_0
.end method

.method private a(FF)Z
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->s:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget v1, v1, Lui_Controller/ui_Gallery/b$c;->a:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 369
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->s:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget v1, v1, Lui_Controller/ui_Gallery/b$c;->a:I

    int-to-float v1, v1

    const/high16 v2, 0x42b40000    # 90.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/b;FF)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lui_Controller/ui_Gallery/b;->b(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/b;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lui_Controller/ui_Gallery/b;->q:Z

    return p1
.end method

.method static synthetic b(Lui_Controller/ui_Gallery/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lui_Controller/ui_Gallery/b;->d()V

    return-void
.end method

.method private b(FF)Z
    .locals 4

    .prologue
    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 379
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget v0, v0, Lui_Controller/ui_Gallery/b$c;->a:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget v1, v1, Lui_Controller/ui_Gallery/b$c;->a:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 381
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget v0, v0, Lui_Controller/ui_Gallery/b$c;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget v1, v1, Lui_Controller/ui_Gallery/b$c;->a:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lui_Controller/ui_Gallery/b;FF)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lui_Controller/ui_Gallery/b;->a(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lui_Controller/ui_Gallery/b;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lui_Controller/ui_Gallery/b;->e:I

    return v0
.end method

.method static synthetic d(Lui_Controller/ui_Gallery/b;)LGeneralFunction/a/a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->j:LGeneralFunction/a/a;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lui_Controller/ui_Gallery/b;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 355
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->j:LGeneralFunction/a/a;

    const/16 v1, 0x2300

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, LGeneralFunction/a/a;->a(IJ)V

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lui_Controller/ui_Gallery/b;->r:J

    .line 358
    :cond_0
    return-void
.end method

.method static synthetic e(Lui_Controller/ui_Gallery/b;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->s:Landroid/graphics/PointF;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->j:LGeneralFunction/a/a;

    const/16 v1, 0x2301

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, LGeneralFunction/a/a;->a(IJ)V

    .line 363
    return-void
.end method

.method static synthetic f(Lui_Controller/ui_Gallery/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lui_Controller/ui_Gallery/b;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b()V

    .line 145
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->g:Lui_Controller/ui_Gallery/b$d;

    invoke-direct {p0, v0}, Lui_Controller/ui_Gallery/b;->a(Lui_Controller/ui_Gallery/b$d;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->f:Lui_Controller/ui_Gallery/b$d;

    invoke-direct {p0, v0}, Lui_Controller/ui_Gallery/b;->a(Lui_Controller/ui_Gallery/b$d;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lui_Controller/ui_Gallery/b;->h:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->g:Lui_Controller/ui_Gallery/b$d;

    invoke-static {v0, p1}, Lui_Controller/ui_Gallery/b$d;->a(Lui_Controller/ui_Gallery/b$d;I)I

    .line 159
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->g:Lui_Controller/ui_Gallery/b$d;

    invoke-static {v0, p2}, Lui_Controller/ui_Gallery/b$d;->b(Lui_Controller/ui_Gallery/b$d;I)I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/ui_Gallery/b;->h:Z

    .line 162
    :cond_0
    return-void
.end method

.method public a(Lui_Controller/ui_Gallery/b$c;II)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 99
    iput-object p1, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    .line 100
    iput p2, p0, Lui_Controller/ui_Gallery/b;->e:I

    .line 102
    new-instance v0, Lui_Controller/CustomWidget/a$b;

    invoke-direct {v0}, Lui_Controller/CustomWidget/a$b;-><init>()V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/TempThumbnail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lui_Controller/CustomWidget/a$b;->a:Ljava/lang/String;

    .line 105
    const v1, 0x1142000

    iput v1, v0, Lui_Controller/CustomWidget/a$b;->b:I

    .line 106
    const v1, 0xc5c10

    iput v1, v0, Lui_Controller/CustomWidget/a$b;->c:I

    .line 107
    const/4 v1, 0x3

    iput v1, v0, Lui_Controller/CustomWidget/a$b;->d:I

    .line 108
    iput p3, v0, Lui_Controller/CustomWidget/a$b;->e:I

    .line 109
    iput-boolean v7, v0, Lui_Controller/CustomWidget/a$b;->f:Z

    .line 110
    iput-boolean v6, v0, Lui_Controller/CustomWidget/a$b;->g:Z

    .line 111
    iput-boolean v6, v0, Lui_Controller/CustomWidget/a$b;->h:Z

    .line 113
    new-instance v1, Lui_Controller/CustomWidget/a;

    invoke-direct {v1, v0}, Lui_Controller/CustomWidget/a;-><init>(Lui_Controller/CustomWidget/a$b;)V

    iput-object v1, p0, Lui_Controller/ui_Gallery/b;->b:Lui_Controller/CustomWidget/a;

    .line 115
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->f:Lui_Controller/ui_Gallery/b$d;

    iget-object v1, p1, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/b$d;->a(Lui_Controller/ui_Gallery/b$d;I)I

    .line 116
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->f:Lui_Controller/ui_Gallery/b$d;

    iget-object v1, p1, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/b$d;->b(Lui_Controller/ui_Gallery/b$d;I)I

    .line 118
    new-instance v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->j:LGeneralFunction/a/a;

    iget-object v2, p1, Lui_Controller/ui_Gallery/b$c;->f:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/b;->f:Lui_Controller/ui_Gallery/b$d;

    .line 119
    invoke-static {v3}, Lui_Controller/ui_Gallery/b$d;->a(Lui_Controller/ui_Gallery/b$d;)I

    move-result v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/b;->f:Lui_Controller/ui_Gallery/b$d;

    .line 120
    invoke-static {v4}, Lui_Controller/ui_Gallery/b$d;->b(Lui_Controller/ui_Gallery/b$d;)I

    move-result v4

    iget-object v5, p1, Lui_Controller/ui_Gallery/b$c;->i:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;-><init>(Landroid/content/Context;LGeneralFunction/e/d;IIZ)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/b;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;

    .line 121
    iget-object v0, p1, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->n:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;)V

    .line 122
    iget-object v0, p1, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->o:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;)V

    .line 123
    iget-object v0, p1, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->p:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;)V

    .line 124
    iget-object v0, p1, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->t:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;)V

    .line 126
    new-instance v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    invoke-direct {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;-><init>()V

    .line 127
    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;

    iput-object v1, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    .line 128
    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->b:Lui_Controller/CustomWidget/a;

    iput-object v1, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->b:Lui_Controller/CustomWidget/a;

    .line 129
    iput v6, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    .line 130
    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->f:Lui_Controller/ui_Gallery/b$d;

    invoke-static {v1}, Lui_Controller/ui_Gallery/b$d;->a(Lui_Controller/ui_Gallery/b$d;)I

    move-result v1

    iput v1, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    .line 131
    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->f:Lui_Controller/ui_Gallery/b$d;

    invoke-static {v1}, Lui_Controller/ui_Gallery/b$d;->b(Lui_Controller/ui_Gallery/b$d;)I

    move-result v1

    iput v1, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->e:I

    .line 133
    iget-object v1, p1, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v2, p0, Lui_Controller/ui_Gallery/b;->k:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->setSingleHorizontalScrollViewCallback(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)V

    .line 135
    iget-object v1, p1, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v1, v0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;I)V

    .line 137
    iput v7, p0, Lui_Controller/ui_Gallery/b;->i:I

    .line 138
    return-void
.end method

.method public a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lui_Controller/ui_Gallery/b;->k:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 95
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c()V

    .line 152
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(I)V

    .line 226
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/ui_Gallery/b;->i:I

    .line 204
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a()V

    .line 208
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iput-object v1, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    .line 210
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iput-object v1, v0, Lui_Controller/ui_Gallery/b$c;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 216
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->b:Lui_Controller/CustomWidget/a;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->b:Lui_Controller/CustomWidget/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a;->a()V

    .line 219
    iput-object v1, p0, Lui_Controller/ui_Gallery/b;->b:Lui_Controller/CustomWidget/a;

    .line 221
    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c(I)V

    .line 231
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->b:Lui_Controller/CustomWidget/a;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/a;->a(I)V

    .line 232
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d()V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteImageViewItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui_Controller/ui_Gallery/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v1, v1, Lui_Controller/ui_Gallery/b$c;->f:LGeneralFunction/e/d;

    invoke-virtual {v1}, LGeneralFunction/e/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/b;->a(Ljava/lang/String;I)V

    .line 234
    iget v0, p0, Lui_Controller/ui_Gallery/b;->e:I

    iget-object v1, p0, Lui_Controller/ui_Gallery/b;->a:Lui_Controller/ui_Gallery/b$c;

    iget-object v1, v1, Lui_Controller/ui_Gallery/b$c;->f:LGeneralFunction/e/d;

    invoke-virtual {v1}, LGeneralFunction/e/d;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 236
    iget v0, p0, Lui_Controller/ui_Gallery/b;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lui_Controller/ui_Gallery/b;->e:I

    .line 238
    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lui_Controller/ui_Gallery/b;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g()Z

    move-result v0

    return v0
.end method
