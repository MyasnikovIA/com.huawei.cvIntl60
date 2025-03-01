.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)V
    .locals 0

    .prologue
    .line 4355
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4358
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->onUserInteraction()V

    .line 4360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4432
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4364
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 4365
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2112

    invoke-virtual {v0, v1, v6, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto :goto_0

    .line 4369
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 4370
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, LGeneralFunction/e/d;->a(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4372
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2111

    invoke-virtual {v0, v1, v6, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto :goto_0

    .line 4374
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, LGeneralFunction/e/d;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 4376
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2113

    invoke-virtual {v0, v1, v6, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto :goto_0

    .line 4381
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;I)V

    .line 4382
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    goto :goto_0

    .line 4386
    :pswitch_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;I)V

    .line 4387
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    goto :goto_0

    .line 4391
    :pswitch_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;I)V

    .line 4392
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    goto :goto_0

    .line 4396
    :pswitch_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;I)V

    .line 4397
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    goto :goto_0

    .line 4401
    :pswitch_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 4402
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->N:I

    if-ne v0, v3, :cond_2

    .line 4403
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->z(Z)V

    .line 4404
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->N:I

    if-eq v0, v4, :cond_0

    .line 4405
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(IZ)V

    goto/16 :goto_0

    .line 4409
    :pswitch_8
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 4410
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->N:I

    if-ne v0, v3, :cond_3

    .line 4411
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->z(Z)V

    .line 4412
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->N:I

    if-eq v0, v2, :cond_0

    .line 4413
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(IZ)V

    goto/16 :goto_0

    .line 4417
    :pswitch_9
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 4418
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->N:I

    if-eq v0, v3, :cond_0

    .line 4419
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->z(Z)V

    goto/16 :goto_0

    .line 4423
    :pswitch_a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 4424
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x23a8

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 4428
    :pswitch_b
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$30;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x23a9

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 4360
    :pswitch_data_0
    .packed-switch 0x7f10039c
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
