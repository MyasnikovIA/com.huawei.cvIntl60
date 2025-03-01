.class public Lui_Controller/CustomWidget/ZoomableImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/CustomWidget/ZoomableImageView$a;,
        Lui_Controller/CustomWidget/ZoomableImageView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Matrix;

.field private b:Landroid/graphics/Matrix;

.field private c:I

.field private final d:Landroid/graphics/PointF;

.field private final e:Landroid/graphics/PointF;

.field private f:F

.field private g:[F

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:Landroid/view/ScaleGestureDetector;

.field private o:Landroid/view/GestureDetector;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 26
    iput v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->c:I

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->d:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->e:Landroid/graphics/PointF;

    .line 30
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->f:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->j:F

    .line 41
    iput-boolean v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->p:Z

    .line 45
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->c:I

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->d:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->e:Landroid/graphics/PointF;

    .line 30
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->f:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->j:F

    .line 41
    iput-boolean v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->p:Z

    .line 50
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private a(FFF)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 221
    cmpg-float v1, p3, p2

    if-gtz v1, :cond_1

    .line 223
    sub-float v1, p2, p3

    move v2, v0

    .line 229
    :goto_0
    cmpg-float v3, p1, v2

    if-gez v3, :cond_2

    .line 230
    neg-float v0, p1

    add-float/2addr v0, v2

    .line 233
    :cond_0
    :goto_1
    return v0

    .line 225
    :cond_1
    sub-float v2, p2, p3

    move v1, v0

    .line 226
    goto :goto_0

    .line 231
    :cond_2
    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    .line 232
    neg-float v0, p1

    add-float/2addr v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ZoomableImageView;F)F
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->j:F

    return p1
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ZoomableImageView;FFF)F
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lui_Controller/CustomWidget/ZoomableImageView;->b(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ZoomableImageView;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->c:I

    return p1
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->n:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->setClickable(Z)V

    .line 57
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lui_Controller/CustomWidget/ZoomableImageView$b;

    invoke-direct {v1, p0, v2}, Lui_Controller/CustomWidget/ZoomableImageView$b;-><init>(Lui_Controller/CustomWidget/ZoomableImageView;Lui_Controller/CustomWidget/ZoomableImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->n:Landroid/view/ScaleGestureDetector;

    .line 58
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lui_Controller/CustomWidget/ZoomableImageView$a;

    invoke-direct {v1, p0, v2}, Lui_Controller/CustomWidget/ZoomableImageView$a;-><init>(Lui_Controller/CustomWidget/ZoomableImageView;Lui_Controller/CustomWidget/ZoomableImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->o:Landroid/view/GestureDetector;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->b:Landroid/graphics/Matrix;

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->g:[F

    .line 62
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 63
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/ZoomableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    new-instance v0, Lui_Controller/CustomWidget/ZoomableImageView$1;

    invoke-direct {v0, p0}, Lui_Controller/CustomWidget/ZoomableImageView$1;-><init>(Lui_Controller/CustomWidget/ZoomableImageView;)V

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/ZoomableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    return-void
.end method

.method private b(FFF)F
    .locals 1

    .prologue
    .line 239
    cmpg-float v0, p3, p2

    if-gtz v0, :cond_0

    .line 240
    const/4 p1, 0x0

    .line 242
    :cond_0
    return p1
.end method

.method static synthetic b(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->o:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 208
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->g:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 209
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->g:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 210
    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->g:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    .line 211
    iget v2, p0, Lui_Controller/CustomWidget/ZoomableImageView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lui_Controller/CustomWidget/ZoomableImageView;->k:F

    iget v4, p0, Lui_Controller/CustomWidget/ZoomableImageView;->j:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v0, v2, v3}, Lui_Controller/CustomWidget/ZoomableImageView;->a(FFF)F

    move-result v0

    .line 212
    iget v2, p0, Lui_Controller/CustomWidget/ZoomableImageView;->i:I

    int-to-float v2, v2

    iget v3, p0, Lui_Controller/CustomWidget/ZoomableImageView;->l:F

    iget v4, p0, Lui_Controller/CustomWidget/ZoomableImageView;->j:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lui_Controller/CustomWidget/ZoomableImageView;->a(FFF)F

    move-result v1

    .line 213
    cmpl-float v2, v0, v5

    if-nez v2, :cond_0

    cmpl-float v2, v1, v5

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 215
    :cond_1
    return-void
.end method

.method static synthetic c(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->d:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic d(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->e:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic e(Lui_Controller/CustomWidget/ZoomableImageView;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->c:I

    return v0
.end method

.method static synthetic f(Lui_Controller/CustomWidget/ZoomableImageView;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->h:I

    return v0
.end method

.method static synthetic g(Lui_Controller/CustomWidget/ZoomableImageView;)F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->k:F

    return v0
.end method

.method static synthetic h(Lui_Controller/CustomWidget/ZoomableImageView;)F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->j:F

    return v0
.end method

.method static synthetic i(Lui_Controller/CustomWidget/ZoomableImageView;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->i:I

    return v0
.end method

.method static synthetic j(Lui_Controller/CustomWidget/ZoomableImageView;)F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->l:F

    return v0
.end method

.method static synthetic k(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic l(Lui_Controller/CustomWidget/ZoomableImageView;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lui_Controller/CustomWidget/ZoomableImageView;->b()V

    return-void
.end method

.method static synthetic m(Lui_Controller/CustomWidget/ZoomableImageView;)F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->f:F

    return v0
.end method

.method static synthetic n(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->b:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->j:F

    .line 143
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->p:Z

    .line 145
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 131
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/ZoomableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/ZoomableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 248
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    .line 250
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->h:I

    .line 251
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->i:I

    .line 253
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->m:I

    iget v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->h:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->m:I

    iget v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->i:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->h:I

    if-eqz v0, :cond_1

    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->i:I

    if-nez v0, :cond_2

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->i:I

    iput v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->m:I

    .line 258
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->h:I

    .line 260
    iget v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 263
    invoke-virtual {p0}, Lui_Controller/CustomWidget/ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 268
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 269
    const-string v2, "bmSize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bmWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bmHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v2, p0, Lui_Controller/CustomWidget/ZoomableImageView;->h:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 271
    iget v3, p0, Lui_Controller/CustomWidget/ZoomableImageView;->i:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 272
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 273
    iget-object v3, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 275
    iget v3, p0, Lui_Controller/CustomWidget/ZoomableImageView;->i:I

    int-to-float v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, v3, v0

    .line 276
    iget v3, p0, Lui_Controller/CustomWidget/ZoomableImageView;->h:I

    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float v1, v3, v1

    .line 277
    div-float/2addr v0, v5

    .line 278
    div-float/2addr v1, v5

    .line 279
    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 280
    iget v2, p0, Lui_Controller/CustomWidget/ZoomableImageView;->h:I

    int-to-float v2, v2

    mul-float/2addr v1, v5

    sub-float v1, v2, v1

    iput v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->k:F

    .line 281
    iget v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->i:I

    int-to-float v1, v1

    mul-float/2addr v0, v5

    sub-float v0, v1, v0

    iput v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->l:F

    .line 282
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 283
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 284
    iput-boolean v6, p0, Lui_Controller/CustomWidget/ZoomableImageView;->p:Z

    .line 294
    :cond_3
    :goto_1
    invoke-direct {p0}, Lui_Controller/CustomWidget/ZoomableImageView;->b()V

    goto/16 :goto_0

    .line 288
    :cond_4
    iget-boolean v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->p:Z

    if-eqz v0, :cond_3

    .line 290
    invoke-virtual {p0}, Lui_Controller/CustomWidget/ZoomableImageView;->a()V

    .line 291
    iput-boolean v6, p0, Lui_Controller/CustomWidget/ZoomableImageView;->p:Z

    goto :goto_1
.end method

.method public setMaxZoom(F)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 119
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lui_Controller/CustomWidget/ZoomableImageView;->f:F

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iput p1, p0, Lui_Controller/CustomWidget/ZoomableImageView;->f:F

    goto :goto_0
.end method
