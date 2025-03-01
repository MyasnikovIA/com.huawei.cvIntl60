.class public abstract Landroid/support/design/transformation/FabTransformationBehavior;
.super Landroid/support/design/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/transformation/FabTransformationBehavior$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->d:[I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->d:[I

    .line 83
    return-void
.end method

.method private a(Landroid/support/design/transformation/FabTransformationBehavior$a;Landroid/support/design/a/i;FF)F
    .locals 8

    .prologue
    .line 613
    invoke-virtual {p2}, Landroid/support/design/a/i;->a()J

    move-result-wide v0

    .line 614
    invoke-virtual {p2}, Landroid/support/design/a/i;->b()J

    move-result-wide v2

    .line 617
    iget-object v4, p1, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v5, "expansion"

    invoke-virtual {v4, v5}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v4

    .line 618
    invoke-virtual {v4}, Landroid/support/design/a/i;->a()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/support/design/a/i;->b()J

    move-result-wide v4

    add-long/2addr v4, v6

    .line 621
    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    .line 622
    sub-long v0, v4, v0

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 625
    invoke-virtual {p2}, Landroid/support/design/a/i;->c()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 626
    invoke-static {p3, p4, v0}, Landroid/support/design/a/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F
    .locals 4

    .prologue
    .line 492
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 493
    iget-object v2, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 495
    invoke-direct {p0, p1, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 496
    invoke-direct {p0, p2, v2}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 498
    const/4 v0, 0x0

    .line 499
    iget v3, p3, Landroid/support/design/a/j;->a:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    .line 512
    :goto_0
    :pswitch_0
    iget v1, p3, Landroid/support/design/a/j;->b:F

    add-float/2addr v0, v1

    .line 513
    return v0

    .line 501
    :pswitch_1
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 502
    goto :goto_0

    .line 504
    :pswitch_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 505
    goto :goto_0

    .line 507
    :pswitch_3
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    .line 508
    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 633
    sget v0, Landroid/support/design/R$id;->mtrl_child_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_0

    .line 635
    invoke-direct {p0, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 645
    :goto_0
    return-object v0

    .line 639
    :cond_0
    instance-of v0, p1, Landroid/support/design/transformation/b;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/support/design/transformation/a;

    if-eqz v0, :cond_2

    .line 640
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 641
    invoke-direct {p0, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/design/transformation/FabTransformationBehavior;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 673
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 675
    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    .line 677
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 679
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 680
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 681
    invoke-interface {p7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;JJJIIFLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 697
    add-long v0, p2, p4

    cmp-long v0, v0, p6

    if-gez v0, :cond_0

    .line 699
    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 701
    add-long v2, p2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 702
    add-long v2, p2, p4

    sub-long v2, p6, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 703
    invoke-interface {p11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 545
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->d:[I

    .line 546
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 548
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 553
    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/design/transformation/FabTransformationBehavior$a;Landroid/support/design/a/i;Landroid/support/design/a/i;FFFFLandroid/graphics/RectF;)V
    .locals 4

    .prologue
    .line 591
    .line 592
    invoke-direct {p0, p2, p3, p5, p7}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/support/design/transformation/FabTransformationBehavior$a;Landroid/support/design/a/i;FF)F

    move-result v0

    .line 594
    invoke-direct {p0, p2, p4, p6, p8}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/support/design/transformation/FabTransformationBehavior$a;Landroid/support/design/a/i;FF)F

    move-result v1

    .line 597
    iget-object v2, p0, Landroid/support/design/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    .line 598
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 599
    iget-object v3, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 600
    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 603
    iget-object v2, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 604
    invoke-direct {p0, p1, v2}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 605
    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 606
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 608
    invoke-virtual {p9, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 609
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;FFLjava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$a;",
            "FF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/support/design/c/d;

    if-nez v4, :cond_0

    .line 409
    :goto_0
    return-void

    :cond_0
    move-object/from16 v16, p2

    .line 337
    check-cast v16, Landroid/support/design/c/d;

    .line 339
    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->b:Landroid/support/design/a/j;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/design/transformation/FabTransformationBehavior;->c(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F

    move-result v4

    .line 340
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->b:Landroid/support/design/a/j;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Landroid/support/design/transformation/FabTransformationBehavior;->d(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F

    move-result v5

    .line 341
    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/design/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    .line 342
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/design/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v14, v6, v7

    .line 345
    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v7, "expansion"

    invoke-virtual {v6, v7}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v18

    .line 347
    if-eqz p3, :cond_3

    .line 348
    if-nez p4, :cond_1

    .line 349
    new-instance v6, Landroid/support/design/c/d$d;

    invoke-direct {v6, v4, v5, v14}, Landroid/support/design/c/d$d;-><init>(FFF)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/support/design/c/d;->setRevealInfo(Landroid/support/design/c/d$d;)V

    .line 352
    :cond_1
    if-eqz p4, :cond_2

    .line 353
    invoke-interface/range {v16 .. v16}, Landroid/support/design/c/d;->getRevealInfo()Landroid/support/design/c/d$d;

    move-result-object v6

    iget v10, v6, Landroid/support/design/c/d$d;->c:F

    .line 354
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v8, p6

    move/from16 v9, p7

    .line 355
    invoke-static/range {v4 .. v9}, Landroid/support/design/widget/k;->a(FFFFFF)F

    move-result v6

    .line 359
    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v6}, Landroid/support/design/c/a;->a(Landroid/support/design/c/d;FFF)Landroid/animation/Animator;

    move-result-object v12

    .line 361
    new-instance v6, Landroid/support/design/transformation/FabTransformationBehavior$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1}, Landroid/support/design/transformation/FabTransformationBehavior$4;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/c/d;)V

    invoke-virtual {v12, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    invoke-virtual/range {v18 .. v18}, Landroid/support/design/a/i;->a()J

    move-result-wide v6

    float-to-int v8, v4

    float-to-int v9, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v11, p8

    .line 373
    invoke-direct/range {v4 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;JIIFLjava/util/List;)V

    move-object v4, v12

    .line 406
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 407
    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-static/range {v16 .. v16}, Landroid/support/design/c/a;->a(Landroid/support/design/c/d;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move v10, v14

    .line 353
    goto :goto_1

    .line 382
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/support/design/c/d;->getRevealInfo()Landroid/support/design/c/d$d;

    move-result-object v6

    iget v12, v6, Landroid/support/design/c/d$d;->c:F

    .line 385
    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v14}, Landroid/support/design/c/a;->a(Landroid/support/design/c/d;FFF)Landroid/animation/Animator;

    move-result-object v17

    .line 390
    invoke-virtual/range {v18 .. v18}, Landroid/support/design/a/i;->a()J

    move-result-wide v8

    float-to-int v10, v4

    float-to-int v11, v5

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v13, p8

    .line 388
    invoke-direct/range {v6 .. v13}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;JIIFLjava/util/List;)V

    .line 397
    invoke-virtual/range {v18 .. v18}, Landroid/support/design/a/i;->a()J

    move-result-wide v6

    .line 398
    invoke-virtual/range {v18 .. v18}, Landroid/support/design/a/i;->b()J

    move-result-wide v8

    move-object/from16 v0, p5

    iget-object v10, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    .line 399
    invoke-virtual {v10}, Landroid/support/design/a/h;->a()J

    move-result-wide v10

    float-to-int v12, v4

    float-to-int v13, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v15, p8

    .line 395
    invoke-direct/range {v4 .. v15}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;JJJIIFLjava/util/List;)V

    move-object/from16 v4, v17

    goto :goto_2
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 187
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 190
    if-eqz p3, :cond_1

    .line 191
    if-nez p4, :cond_0

    .line 192
    neg-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 194
    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v2, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 199
    :goto_0
    iget-object v1, p5, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v2, "elevation"

    invoke-virtual {v1, v2}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v0}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 201
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void

    .line 196
    :cond_1
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    neg-float v0, v0

    aput v0, v2, v3

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->b:Landroid/support/design/a/j;

    invoke-direct {p0, p1, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F

    move-result v1

    .line 214
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->b:Landroid/support/design/a/j;

    invoke-direct {p0, p1, p2, v2}, Landroid/support/design/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F

    move-result v3

    .line 221
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-nez v2, :cond_2

    .line 223
    :cond_0
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v4, "translationXLinear"

    invoke-virtual {v2, v4}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v4

    .line 224
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v5, "translationYLinear"

    invoke-virtual {v2, v5}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v5

    .line 235
    :goto_0
    if-eqz p3, :cond_6

    .line 236
    if-nez p4, :cond_1

    .line 237
    neg-float v2, v1

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    neg-float v2, v3

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 240
    :cond_1
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {p2, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 241
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {p2, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 243
    neg-float v6, v1

    neg-float v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/support/design/transformation/FabTransformationBehavior$a;Landroid/support/design/a/i;Landroid/support/design/a/i;FFFFLandroid/graphics/RectF;)V

    move-object v1, v11

    move-object v2, v12

    .line 258
    :goto_1
    invoke-virtual {v4, v2}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 259
    invoke-virtual {v5, v1}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 260
    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void

    .line 225
    :cond_2
    if-eqz p3, :cond_3

    const/4 v2, 0x0

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_4

    :cond_3
    if-nez p3, :cond_5

    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-lez v2, :cond_5

    .line 227
    :cond_4
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v4, "translationXCurveUpwards"

    invoke-virtual {v2, v4}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v4

    .line 228
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v5, "translationYCurveUpwards"

    invoke-virtual {v2, v5}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v5

    goto :goto_0

    .line 231
    :cond_5
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v4, "translationXCurveDownwards"

    invoke-virtual {v2, v4}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v4

    .line 232
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v5, "translationYCurveDownwards"

    invoke-virtual {v2, v5}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v5

    goto :goto_0

    .line 254
    :cond_6
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    neg-float v1, v1

    aput v1, v6, v7

    invoke-static {p2, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 255
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    neg-float v3, v3

    aput v3, v6, v7

    invoke-static {p2, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_1
.end method

.method private b(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F
    .locals 4

    .prologue
    .line 517
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 518
    iget-object v2, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 520
    invoke-direct {p0, p1, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 521
    invoke-direct {p0, p2, v2}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 523
    const/4 v0, 0x0

    .line 524
    iget v3, p3, Landroid/support/design/a/j;->a:I

    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_0

    .line 537
    :goto_0
    iget v1, p3, Landroid/support/design/a/j;->c:F

    add-float/2addr v0, v1

    .line 538
    return v0

    .line 526
    :sswitch_0
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 527
    goto :goto_0

    .line 529
    :sswitch_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 530
    goto :goto_0

    .line 532
    :sswitch_2
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 533
    goto :goto_0

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 650
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 651
    check-cast p1, Landroid/view/ViewGroup;

    .line 653
    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 272
    instance-of v0, p2, Landroid/support/design/c/d;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 276
    check-cast v0, Landroid/support/design/c/d;

    .line 277
    check-cast p1, Landroid/widget/ImageView;

    .line 278
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 280
    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 287
    if-eqz p3, :cond_3

    .line 288
    if-nez p4, :cond_2

    .line 289
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 291
    :cond_2
    sget-object v1, Landroid/support/design/a/e;->a:Landroid/util/Property;

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 296
    :goto_1
    new-instance v3, Landroid/support/design/transformation/FabTransformationBehavior$2;

    invoke-direct {v3, p0, p2}, Landroid/support/design/transformation/FabTransformationBehavior$2;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    iget-object v3, p5, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v4, "iconFade"

    invoke-virtual {v3, v4}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v3

    .line 307
    invoke-virtual {v3, v1}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 308
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v1, Landroid/support/design/transformation/FabTransformationBehavior$3;

    invoke-direct {v1, p0, v0, v2}, Landroid/support/design/transformation/FabTransformationBehavior$3;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/c/d;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_3
    sget-object v1, Landroid/support/design/a/e;->a:Landroid/util/Property;

    new-array v3, v3, [I

    aput v5, v3, v4

    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_1
.end method

.method private c(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F
    .locals 4

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 557
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 559
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 560
    invoke-direct {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 562
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F

    move-result v2

    .line 563
    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 565
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 658
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 659
    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 662
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 419
    instance-of v0, p2, Landroid/support/design/c/d;

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 422
    :cond_0
    check-cast p2, Landroid/support/design/c/d;

    .line 424
    invoke-direct {p0, p1}, Landroid/support/design/transformation/FabTransformationBehavior;->c(Landroid/view/View;)I

    move-result v0

    .line 425
    const v1, 0xffffff

    and-int/2addr v1, v0

    .line 428
    if-eqz p3, :cond_2

    .line 429
    if-nez p4, :cond_1

    .line 430
    invoke-interface {p2, v0}, Landroid/support/design/c/d;->setCircularRevealScrimColor(I)V

    .line 432
    :cond_1
    sget-object v0, Landroid/support/design/c/d$c;->a:Landroid/util/Property;

    new-array v2, v2, [I

    aput v1, v2, v3

    .line 433
    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 445
    :goto_1
    invoke-static {}, Landroid/support/design/a/c;->a()Landroid/support/design/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 446
    iget-object v1, p5, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v2, "color"

    invoke-virtual {v1, v2}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v1

    .line 447
    invoke-virtual {v1, v0}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 448
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_2
    sget-object v1, Landroid/support/design/c/d$c;->a:Landroid/util/Property;

    new-array v2, v2, [I

    aput v0, v2, v3

    .line 439
    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1
.end method

.method private d(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F
    .locals 4

    .prologue
    .line 569
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 570
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 572
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 573
    invoke-direct {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 575
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F

    move-result v2

    .line 576
    const/4 v3, 0x0

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 578
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private d(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 459
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    instance-of v0, p2, Landroid/support/design/c/d;

    if-eqz v0, :cond_2

    sget v0, Landroid/support/design/c/c;->a:I

    if-eqz v0, :cond_0

    .line 468
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 475
    if-eqz p3, :cond_4

    .line 476
    if-nez p4, :cond_3

    .line 477
    sget-object v1, Landroid/support/design/a/d;->a:Landroid/util/Property;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    :cond_3
    sget-object v1, Landroid/support/design/a/d;->a:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    .line 480
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 486
    :goto_1
    iget-object v1, p5, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v2, "contentFade"

    invoke-virtual {v1, v2}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v1

    .line 487
    invoke-virtual {v1, v0}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 488
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :cond_4
    sget-object v1, Landroid/support/design/a/d;->a:Landroid/util/Property;

    new-array v2, v5, [F

    aput v3, v2, v4

    .line 483
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$a;
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout$e;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/CoordinatorLayout$e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 104
    iget v0, p1, Landroid/support/design/widget/CoordinatorLayout$e;->h:I

    if-nez v0, :cond_0

    .line 107
    const/16 v0, 0x50

    iput v0, p1, Landroid/support/design/widget/CoordinatorLayout$e;->h:I

    .line 109
    :cond_0
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    instance-of v1, p3, Landroid/support/design/widget/FloatingActionButton;

    if-eqz v1, :cond_2

    .line 94
    check-cast p3, Landroid/support/design/widget/FloatingActionButton;

    .line 95
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result v1

    .line 96
    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 98
    :cond_2
    return v0
.end method

.method protected b(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 22
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$a;

    move-result-object v9

    .line 117
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 120
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 121
    invoke-direct/range {v4 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V

    .line 125
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 126
    invoke-direct/range {v4 .. v12}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 128
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v18

    .line 129
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v19

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 131
    invoke-direct/range {v4 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 132
    invoke-direct/range {v12 .. v21}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;FFLjava/util/List;Ljava/util/List;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 142
    invoke-direct/range {v4 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->c(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 143
    invoke-direct/range {v4 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->d(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V

    .line 146
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 147
    invoke-static {v6, v10}, Landroid/support/design/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 148
    new-instance v4, Landroid/support/design/transformation/FabTransformationBehavior$1;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/support/design/transformation/FabTransformationBehavior$1;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    const/4 v4, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    .line 171
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 173
    :cond_1
    return-object v6
.end method
