.class Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 421
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 422
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 425
    :pswitch_0
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->scrollTo(II)V

    .line 426
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0, v4, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;II)V

    .line 428
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Z)V

    .line 429
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Z)Z

    goto :goto_0

    .line 432
    :pswitch_1
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 439
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v1

    invoke-static {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)V

    .line 441
    :cond_1
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    const/16 v1, 0x32

    invoke-static {v0, v4, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;II)V

    goto :goto_0

    .line 444
    :pswitch_2
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->f(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 446
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    .line 447
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-static {v1, v3, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;ILandroid/graphics/PointF;)V

    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
