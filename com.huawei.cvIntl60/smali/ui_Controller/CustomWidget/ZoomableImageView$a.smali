.class Lui_Controller/CustomWidget/ZoomableImageView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/ZoomableImageView;


# direct methods
.method private constructor <init>(Lui_Controller/CustomWidget/ZoomableImageView;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lui_Controller/CustomWidget/ZoomableImageView;Lui_Controller/CustomWidget/ZoomableImageView$1;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ZoomableImageView$a;-><init>(Lui_Controller/CustomWidget/ZoomableImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 185
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;F)F

    .line 196
    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->k(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->n(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 197
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->k(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v1

    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v2

    iget-object v3, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v3}, Lui_Controller/CustomWidget/ZoomableImageView;->f(Lui_Controller/CustomWidget/ZoomableImageView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v4}, Lui_Controller/CustomWidget/ZoomableImageView;->i(Lui_Controller/CustomWidget/ZoomableImageView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 194
    :cond_1
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$a;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0, v2}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;F)F

    goto :goto_0
.end method
