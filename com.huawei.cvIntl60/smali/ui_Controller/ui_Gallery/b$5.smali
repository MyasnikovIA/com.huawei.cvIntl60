.class Lui_Controller/ui_Gallery/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;


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
    .line 287
    iput-object p1, p0, Lui_Controller/ui_Gallery/b$5;->a:Lui_Controller/ui_Gallery/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/PointF;)V
    .locals 6

    .prologue
    const/16 v3, 0x2302

    const-wide/16 v4, 0x0

    .line 290
    packed-switch p1, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$5;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->a(Lui_Controller/ui_Gallery/b;)Lui_Controller/ui_Gallery/b$c;

    move-result-object v0

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->f:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/b$5;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v1}, Lui_Controller/ui_Gallery/b;->c(Lui_Controller/ui_Gallery/b;)I

    move-result v1

    invoke-virtual {v0, v1}, LGeneralFunction/e/d;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$5;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->d(Lui_Controller/ui_Gallery/b;)LGeneralFunction/a/a;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, LGeneralFunction/a/a;->a(IJ)V

    goto :goto_0

    .line 304
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$5;->a:Lui_Controller/ui_Gallery/b;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/b;->a(Lui_Controller/ui_Gallery/b;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$5;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->d(Lui_Controller/ui_Gallery/b;)LGeneralFunction/a/a;

    move-result-object v0

    const/16 v1, 0x2303

    invoke-virtual {v0, v1, v4, v5}, LGeneralFunction/a/a;->a(IJ)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$5;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->d(Lui_Controller/ui_Gallery/b;)LGeneralFunction/a/a;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, LGeneralFunction/a/a;->a(IJ)V

    goto :goto_0

    .line 316
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$5;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->d(Lui_Controller/ui_Gallery/b;)LGeneralFunction/a/a;

    move-result-object v0

    const/16 v1, 0x2304

    invoke-virtual {v0, v1, v4, v5}, LGeneralFunction/a/a;->a(IJ)V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 293
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
