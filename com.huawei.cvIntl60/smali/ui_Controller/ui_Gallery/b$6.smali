.class Lui_Controller/ui_Gallery/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Gallery/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/b;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/b;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lui_Controller/ui_Gallery/b$6;->a:Lui_Controller/ui_Gallery/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 348
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 331
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$6;->a:Lui_Controller/ui_Gallery/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/b;->a(Lui_Controller/ui_Gallery/b;Z)Z

    .line 332
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$6;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->e(Lui_Controller/ui_Gallery/b;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 333
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$6;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->b(Lui_Controller/ui_Gallery/b;)V

    goto :goto_0

    .line 336
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$6;->a:Lui_Controller/ui_Gallery/b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/b;->b(Lui_Controller/ui_Gallery/b;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$6;->a:Lui_Controller/ui_Gallery/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/b;->a(Lui_Controller/ui_Gallery/b;Z)Z

    .line 339
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$6;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->b(Lui_Controller/ui_Gallery/b;)V

    goto :goto_0

    .line 345
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$6;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->f(Lui_Controller/ui_Gallery/b;)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
