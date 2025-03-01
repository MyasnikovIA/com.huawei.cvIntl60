.class Lui_Controller/CustomWidget/ZoomableImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/CustomWidget/ZoomableImageView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/ZoomableImageView;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/ZoomableImageView;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 70
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 71
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->b(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->k(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 108
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->invalidate()V

    .line 109
    return v7

    .line 76
    :pswitch_1
    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->c(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 77
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->d(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->c(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 78
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0, v3}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;I)I

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->e(Lui_Controller/CustomWidget/ZoomableImageView;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 83
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ZoomableImageView;->c(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 84
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v3}, Lui_Controller/CustomWidget/ZoomableImageView;->c(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 85
    iget-object v3, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    iget-object v4, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v4}, Lui_Controller/CustomWidget/ZoomableImageView;->f(Lui_Controller/CustomWidget/ZoomableImageView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v5}, Lui_Controller/CustomWidget/ZoomableImageView;->g(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v5

    iget-object v6, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v6}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v3, v1, v4, v5}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;FFF)F

    move-result v1

    .line 86
    iget-object v3, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    iget-object v4, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v4}, Lui_Controller/CustomWidget/ZoomableImageView;->i(Lui_Controller/CustomWidget/ZoomableImageView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v5}, Lui_Controller/CustomWidget/ZoomableImageView;->j(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v5

    iget-object v6, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v6}, Lui_Controller/CustomWidget/ZoomableImageView;->h(Lui_Controller/CustomWidget/ZoomableImageView;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v3, v2, v4, v5}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;FFF)F

    move-result v2

    .line 87
    iget-object v3, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v3}, Lui_Controller/CustomWidget/ZoomableImageView;->k(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 88
    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->l(Lui_Controller/CustomWidget/ZoomableImageView;)V

    .line 89
    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ZoomableImageView;->c(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 95
    :pswitch_3
    iget-object v1, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v1, v7}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;I)I

    .line 96
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ZoomableImageView;->d(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 97
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ZoomableImageView;->d(Lui_Controller/CustomWidget/ZoomableImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 98
    if-ge v1, v4, :cond_0

    if-ge v0, v4, :cond_0

    .line 99
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/ZoomableImageView;->performClick()Z

    goto/16 :goto_0

    .line 103
    :pswitch_4
    iget-object v0, p0, Lui_Controller/CustomWidget/ZoomableImageView$1;->a:Lui_Controller/CustomWidget/ZoomableImageView;

    invoke-static {v0, v7}, Lui_Controller/CustomWidget/ZoomableImageView;->a(Lui_Controller/CustomWidget/ZoomableImageView;I)I

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
