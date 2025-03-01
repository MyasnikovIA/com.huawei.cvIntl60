.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;
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
    .line 2726
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/16 v9, 0x9c4

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 2730
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2833
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const-string v1, "Error Button"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;Ljava/lang/String;I)V

    .line 2836
    :cond_0
    :goto_0
    return-void

    .line 2733
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x2329

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto :goto_0

    .line 2736
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->e()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 2744
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aJ()V

    move v2, v6

    move v3, v6

    move v4, v6

    .line 2745
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2747
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v5, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, LGeneralFunction/e/d;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2749
    add-int/lit8 v4, v4, 0x1

    move v6, v3

    .line 2745
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v6

    goto :goto_1

    .line 2753
    :cond_1
    add-int/lit8 v6, v3, 0x1

    goto :goto_2

    .line 2757
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2759
    if-lez v4, :cond_3

    if-lez v3, :cond_3

    .line 2761
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZLjava/lang/String;)V

    .line 2762
    invoke-static {v7, v9}, LGeneralFunction/g;->a(II)V

    goto :goto_0

    .line 2765
    :cond_3
    const/16 v0, 0x9

    if-le v3, v0, :cond_4

    .line 2767
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZLjava/lang/String;)V

    .line 2768
    invoke-static {v7, v9}, LGeneralFunction/g;->a(II)V

    goto/16 :goto_0

    .line 2771
    :cond_4
    if-le v4, v1, :cond_5

    .line 2773
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZLjava/lang/String;)V

    .line 2774
    invoke-static {v7, v9}, LGeneralFunction/g;->a(II)V

    goto/16 :goto_0

    .line 2777
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x2330

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 2782
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    if-ne v0, v1, :cond_7

    .line 2784
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->e()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 2786
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2796
    :goto_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 2798
    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0a008b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0092

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move v2, v1

    move v7, v1

    .line 2796
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    goto/16 :goto_0

    .line 2788
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->e()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 2790
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 2802
    :cond_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    if-ne v0, v8, :cond_0

    .line 2804
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->e()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 2806
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2816
    :goto_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 2818
    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0a008b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0092

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    move v2, v1

    move v7, v1

    .line 2816
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    goto/16 :goto_0

    .line 2808
    :cond_8
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->e()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 2810
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00db

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 2824
    :pswitch_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x2100

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 2827
    :pswitch_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const v1, 0x8000

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 2830
    :pswitch_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController$17;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->t()V

    goto/16 :goto_0

    .line 2730
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001cb
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 2798
    :array_0
    .array-data 4
        0x0
        0x2355
    .end array-data

    .line 2818
    :array_1
    .array-data 4
        0x0
        0x2356
    .end array-data
.end method
