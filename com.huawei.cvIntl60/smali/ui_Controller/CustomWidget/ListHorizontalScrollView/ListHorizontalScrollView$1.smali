.class Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;
.super Landroid/os/Handler;
.source "SourceFile"


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
.method constructor <init>(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 360
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 361
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 364
    :pswitch_0
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->scrollTo(II)V

    .line 365
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-virtual {v0, v4}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, v4}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Z)V

    .line 367
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, v5}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Z)Z

    goto :goto_0

    .line 370
    :pswitch_1
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->d(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 378
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I

    move-result v0

    .line 379
    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    iget-object v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v2, v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->smoothScrollTo(II)V

    .line 381
    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v1, v0, v5}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;IZ)V

    .line 382
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, v4}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Z)Z

    .line 383
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-static {v0, v4}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    const/16 v1, 0x32

    invoke-static {v0, v6, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;II)V

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
