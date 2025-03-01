.class Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 843
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->e(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 847
    :cond_1
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, v2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->d(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I

    goto :goto_0

    .line 852
    :cond_2
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 856
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 858
    :pswitch_2
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/view/MotionEvent;)V

    .line 859
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->g(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 860
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, v3}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->d(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I

    goto :goto_0

    .line 864
    :pswitch_3
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/view/MotionEvent;)V

    .line 865
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->h(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 867
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 868
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/view/View;)V

    .line 870
    :cond_3
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, v2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->d(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I

    goto :goto_0

    .line 876
    :pswitch_4
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/view/MotionEvent;)V

    .line 877
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->h(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 878
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, v3}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I

    .line 881
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, v2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->d(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I

    goto :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
