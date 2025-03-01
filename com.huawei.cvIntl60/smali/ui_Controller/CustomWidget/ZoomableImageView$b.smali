.class Lui_Controller/CustomWidget/ZoomableImageView$b;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/ZoomableImageView;


# direct methods
.method private constructor <init>(Lui_Controller/CustomWidget/ZoomableImageView;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lui_Controller/CustomWidget/ZoomableImageView;Lui_Controller/CustomWidget/ZoomableImageView$1;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ZoomableImageView$b;-><init>(Lui_Controller/CustomWidget/ZoomableImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 159
    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v1

    .line 160
    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    iget-object v3, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v3}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {v2, v3}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;F)F

    .line 161
    const/high16 v2, 0x3f800000    # 1.0f

    .line 162
    iget-object v3, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v3}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v3

    iget-object v4, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v4}, Lui_Controller/CustomWidget/ZoomableImageView;->m(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 163
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ZoomableImageView;->m(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v2

    invoke-static {v0, v2}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;F)F

    .line 164
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->m(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v0

    div-float/2addr v0, v1

    .line 170
    :cond_0
    :goto_0
    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->g(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v1

    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ZoomableImageView;->f(Lui_Controller/CustomWidget/ZoomableImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->j(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v1

    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ZoomableImageView;->i(Lui_Controller/CustomWidget/ZoomableImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 171
    :cond_1
    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->k(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ZoomableImageView;->f(Lui_Controller/CustomWidget/ZoomableImageView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v3}, Lui_Controller/CustomWidget/ZoomableImageView;->i(Lui_Controller/CustomWidget/ZoomableImageView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 175
    :goto_1
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->l(Lui_Controller/CustomWidget/ZoomableImageView;)V

    .line 176
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_2
    iget-object v3, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v3}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    .line 166
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0, v2}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;F)F

    .line 167
    div-float v0, v2, v1

    goto :goto_0

    .line 173
    :cond_3
    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->k(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$b;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;I)I

    .line 152
    const/4 v0, 0x1

    return v0
.end method
