.class public Landroid/support/v7/widget/aq;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/aq$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:[I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/aq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/aq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    iput-boolean v2, p0, Landroid/support/v7/widget/aq;->a:Z

    .line 109
    iput v4, p0, Landroid/support/v7/widget/aq;->b:I

    .line 116
    iput v3, p0, Landroid/support/v7/widget/aq;->c:I

    .line 120
    const v0, 0x800033

    iput v0, p0, Landroid/support/v7/widget/aq;->e:I

    .line 155
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v0, p3, v3}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bk;

    move-result-object v0

    .line 158
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/bk;->a(II)I

    move-result v1

    .line 159
    if-ltz v1, :cond_0

    .line 160
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->setOrientation(I)V

    .line 163
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/bk;->a(II)I

    move-result v1

    .line 164
    if-ltz v1, :cond_1

    .line 165
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->setGravity(I)V

    .line 168
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bk;->a(IZ)Z

    move-result v1

    .line 169
    if-nez v1, :cond_2

    .line 170
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->setBaselineAligned(Z)V

    .line 173
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bk;->a(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aq;->g:F

    .line 175
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 176
    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/bk;->a(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aq;->b:I

    .line 178
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bk;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/aq;->h:Z

    .line 180
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bk;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bk;->a(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aq;->n:I

    .line 182
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bk;->e(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aq;->o:I

    .line 184
    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->a()V

    .line 185
    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 1645
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1646
    return-void
.end method

.method private c(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 895
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    .line 897
    :goto_0
    if-ge v7, p1, :cond_1

    .line 898
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v1

    .line 899
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 900
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/aq$a;

    .line 902
    iget v0, v6, Landroid/support/v7/widget/aq$a;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 905
    iget v8, v6, Landroid/support/v7/widget/aq$a;->height:I

    .line 906
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/aq$a;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 909
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/aq;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 910
    iput v8, v6, Landroid/support/v7/widget/aq$a;->height:I

    .line 897
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 914
    :cond_1
    return-void
.end method

.method private d(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1317
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v7, v3

    .line 1319
    :goto_0
    if-ge v7, p1, :cond_1

    .line 1320
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v1

    .line 1321
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 1322
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/aq$a;

    .line 1324
    iget v0, v6, Landroid/support/v7/widget/aq$a;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1327
    iget v8, v6, Landroid/support/v7/widget/aq$a;->width:I

    .line 1328
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/aq$a;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1331
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/aq;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1332
    iput v8, v6, Landroid/support/v7/widget/aq$a;->width:I

    .line 1319
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1336
    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x0

    return v0
.end method

.method a(II)V
    .locals 26

    .prologue
    .line 595
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 596
    const/16 v19, 0x0

    .line 597
    const/16 v18, 0x0

    .line 598
    const/4 v13, 0x0

    .line 599
    const/4 v12, 0x0

    .line 600
    const/16 v17, 0x1

    .line 601
    const/4 v6, 0x0

    .line 603
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getVirtualChildCount()I

    move-result v21

    .line 605
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 606
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 608
    const/4 v11, 0x0

    .line 609
    const/4 v15, 0x0

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/aq;->b:I

    move/from16 v24, v0

    .line 612
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/aq;->h:Z

    move/from16 v25, v0

    .line 614
    const/4 v14, 0x0

    .line 617
    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v5, v0, :cond_e

    .line 618
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v4

    .line 620
    if-nez v4, :cond_0

    .line 621
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aq;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    move v4, v14

    move v9, v15

    move v10, v6

    move/from16 v7, v17

    .line 617
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v14, v4

    move v15, v9

    move v6, v10

    move/from16 v17, v7

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    .line 626
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v4, v14

    move v9, v15

    move v10, v6

    move/from16 v7, v17

    .line 627
    goto :goto_1

    .line 630
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aq;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 631
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/aq;->m:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 634
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/support/v7/widget/aq$a;

    .line 636
    iget v3, v10, Landroid/support/v7/widget/aq$a;->g:F

    add-float v16, v6, v3

    .line 638
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_5

    iget v3, v10, Landroid/support/v7/widget/aq$a;->height:I

    if-nez v3, :cond_5

    iget v3, v10, Landroid/support/v7/widget/aq$a;->g:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 642
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 643
    iget v6, v10, Landroid/support/v7/widget/aq$a;->topMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 644
    const/4 v15, 0x1

    .line 683
    :cond_3
    :goto_2
    if-ltz v24, :cond_4

    add-int/lit8 v3, v5, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_4

    .line 684
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->c:I

    .line 690
    :cond_4
    move/from16 v0, v24

    if-ge v5, v0, :cond_9

    iget v3, v10, Landroid/support/v7/widget/aq$a;->g:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    .line 691
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 646
    :cond_5
    const/high16 v3, -0x80000000

    .line 648
    iget v6, v10, Landroid/support/v7/widget/aq$a;->height:I

    if-nez v6, :cond_6

    iget v6, v10, Landroid/support/v7/widget/aq$a;->g:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 653
    const/4 v3, 0x0

    .line 654
    const/4 v6, -0x2

    iput v6, v10, Landroid/support/v7/widget/aq$a;->height:I

    :cond_6
    move/from16 v20, v3

    .line 661
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/aq;->f:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;IIIII)V

    .line 665
    const/high16 v3, -0x80000000

    move/from16 v0, v20

    if-eq v0, v3, :cond_7

    .line 666
    move/from16 v0, v20

    iput v0, v10, Landroid/support/v7/widget/aq$a;->height:I

    .line 669
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 670
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/aq;->f:I

    .line 671
    add-int v7, v6, v3

    iget v8, v10, Landroid/support/v7/widget/aq$a;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    add-int/2addr v7, v8

    .line 672
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    .line 671
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/aq;->f:I

    .line 674
    if-eqz v25, :cond_3

    .line 675
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    .line 661
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 697
    :cond_9
    const/4 v3, 0x0

    .line 698
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v6, :cond_26

    iget v6, v10, Landroid/support/v7/widget/aq$a;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_26

    .line 703
    const/4 v6, 0x1

    .line 704
    const/4 v3, 0x1

    .line 707
    :goto_4
    iget v7, v10, Landroid/support/v7/widget/aq$a;->leftMargin:I

    iget v8, v10, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v8, v7

    .line 708
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v9, v7, v8

    .line 709
    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 711
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    .line 710
    move/from16 v0, v18

    invoke-static {v0, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v18

    .line 713
    if-eqz v17, :cond_a

    iget v7, v10, Landroid/support/v7/widget/aq$a;->width:I

    const/4 v11, -0x1

    if-ne v7, v11, :cond_a

    const/4 v7, 0x1

    .line 714
    :goto_5
    iget v10, v10, Landroid/support/v7/widget/aq$a;->g:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_c

    .line 719
    if-eqz v3, :cond_b

    move v3, v8

    :goto_6
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v13

    .line 726
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v4, v14

    move v9, v15

    move v11, v6

    move/from16 v10, v16

    move v12, v3

    move v13, v8

    goto/16 :goto_1

    .line 713
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    move v3, v9

    .line 719
    goto :goto_6

    .line 722
    :cond_c
    if-eqz v3, :cond_d

    :goto_8
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v3, v12

    goto :goto_7

    :cond_d
    move v8, v9

    goto :goto_8

    .line 729
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aq;->c(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 730
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/aq;->m:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 733
    :cond_f
    if-eqz v25, :cond_13

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_10

    if-nez v23, :cond_13

    .line 735
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 737
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v4, v0, :cond_13

    .line 738
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v5

    .line 740
    if-nez v5, :cond_11

    .line 741
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aq;->d(I)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    move v3, v4

    .line 737
    :goto_a
    add-int/lit8 v4, v3, 0x1

    goto :goto_9

    .line 745
    :cond_11
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_12

    .line 746
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    .line 747
    goto :goto_a

    .line 751
    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aq$a;

    .line 753
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/aq;->f:I

    .line 754
    add-int v8, v7, v14

    iget v9, v3, Landroid/support/v7/widget/aq$a;->topMargin:I

    add-int/2addr v8, v9

    iget v3, v3, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    add-int/2addr v3, v8

    .line 755
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 754
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    move v3, v4

    goto :goto_a

    .line 760
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 762
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 768
    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v16

    .line 769
    const v3, 0xffffff

    and-int v3, v3, v16

    .line 774
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/aq;->f:I

    sub-int v7, v3, v4

    .line 775
    if-nez v15, :cond_14

    if-eqz v7, :cond_20

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_20

    .line 776
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/aq;->g:F

    .line 778
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 780
    const/4 v3, 0x0

    move v14, v3

    move v5, v6

    move/from16 v9, v17

    move v10, v13

    move/from16 v8, v18

    move/from16 v12, v19

    :goto_b
    move/from16 v0, v21

    if-ge v14, v0, :cond_1e

    .line 781
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v15

    .line 783
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_16

    move v4, v5

    move v3, v9

    .line 780
    :goto_c
    add-int/lit8 v6, v14, 0x1

    move v14, v6

    move v5, v4

    move v9, v3

    goto :goto_b

    .line 787
    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aq$a;

    .line 789
    iget v6, v3, Landroid/support/v7/widget/aq$a;->g:F

    .line 790
    const/4 v4, 0x0

    cmpl-float v4, v6, v4

    if-lez v4, :cond_25

    .line 792
    int-to-float v4, v7

    mul-float/2addr v4, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 793
    sub-float/2addr v5, v6

    .line 794
    sub-int v6, v7, v4

    .line 797
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingRight()I

    move-result v13

    add-int/2addr v7, v13

    iget v13, v3, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int/2addr v7, v13

    iget v13, v3, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v7, v13

    iget v13, v3, Landroid/support/v7/widget/aq$a;->width:I

    .line 796
    move/from16 v0, p1

    invoke-static {v0, v7, v13}, Landroid/support/v7/widget/aq;->getChildMeasureSpec(III)I

    move-result v7

    .line 802
    iget v13, v3, Landroid/support/v7/widget/aq$a;->height:I

    if-nez v13, :cond_17

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v13, :cond_19

    .line 805
    :cond_17
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v4, v13

    .line 806
    if-gez v4, :cond_18

    .line 807
    const/4 v4, 0x0

    .line 810
    :cond_18
    const/high16 v13, 0x40000000    # 2.0f

    .line 811
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 810
    invoke-virtual {v15, v7, v4}, Landroid/view/View;->measure(II)V

    .line 822
    :goto_d
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    .line 821
    invoke-static {v8, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    move v4, v5

    move v8, v7

    .line 826
    :goto_e
    iget v5, v3, Landroid/support/v7/widget/aq$a;->leftMargin:I

    iget v7, v3, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v5, v7

    .line 827
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 828
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 830
    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v13, :cond_1b

    iget v13, v3, Landroid/support/v7/widget/aq$a;->width:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_1b

    const/4 v13, 0x1

    .line 833
    :goto_f
    if-eqz v13, :cond_1c

    :goto_10
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 836
    if-eqz v9, :cond_1d

    iget v5, v3, Landroid/support/v7/widget/aq$a;->width:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1d

    const/4 v5, 0x1

    .line 838
    :goto_11
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/aq;->f:I

    .line 839
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    iget v13, v3, Landroid/support/v7/widget/aq$a;->topMargin:I

    add-int/2addr v9, v13

    iget v3, v3, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    add-int/2addr v3, v9

    .line 840
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v9

    add-int/2addr v3, v9

    .line 839
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    move v7, v6

    move v3, v5

    goto/16 :goto_c

    .line 815
    :cond_19
    if-lez v4, :cond_1a

    :goto_12
    const/high16 v13, 0x40000000    # 2.0f

    .line 816
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 815
    invoke-virtual {v15, v7, v4}, Landroid/view/View;->measure(II)V

    goto :goto_d

    :cond_1a
    const/4 v4, 0x0

    goto :goto_12

    .line 830
    :cond_1b
    const/4 v13, 0x0

    goto :goto_f

    :cond_1c
    move v5, v7

    .line 833
    goto :goto_10

    .line 836
    :cond_1d
    const/4 v5, 0x0

    goto :goto_11

    .line 844
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    move/from16 v17, v9

    move v3, v10

    move/from16 v18, v8

    move v4, v12

    .line 876
    :goto_13
    if-nez v17, :cond_23

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_23

    .line 880
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 883
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 885
    move/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/aq;->setMeasuredDimension(II)V

    .line 888
    if-eqz v11, :cond_1f

    .line 889
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/aq;->c(II)V

    .line 891
    :cond_1f
    return-void

    .line 847
    :cond_20
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 853
    if-eqz v25, :cond_24

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_24

    .line 854
    const/4 v3, 0x0

    move v4, v3

    :goto_15
    move/from16 v0, v21

    if-ge v4, v0, :cond_24

    .line 855
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v5

    .line 857
    if-eqz v5, :cond_21

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_22

    .line 854
    :cond_21
    :goto_16
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_15

    .line 862
    :cond_22
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aq$a;

    .line 864
    iget v3, v3, Landroid/support/v7/widget/aq$a;->g:F

    .line 865
    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_21

    .line 867
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    .line 869
    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 866
    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_16

    :cond_23
    move v3, v4

    goto :goto_14

    :cond_24
    move v3, v10

    move/from16 v4, v19

    goto/16 :goto_13

    :cond_25
    move v4, v5

    move v6, v7

    goto/16 :goto_e

    :cond_26
    move v6, v11

    goto/16 :goto_4
.end method

.method a(IIII)V
    .locals 14

    .prologue
    .line 1426
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingLeft()I

    move-result v9

    .line 1432
    sub-int v0, p3, p1

    .line 1433
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 1436
    sub-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    .line 1438
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getVirtualChildCount()I

    move-result v12

    .line 1440
    iget v0, p0, Landroid/support/v7/widget/aq;->e:I

    and-int/lit8 v0, v0, 0x70

    .line 1441
    iget v1, p0, Landroid/support/v7/widget/aq;->e:I

    const v2, 0x800007

    and-int v7, v1, v2

    .line 1443
    sparse-switch v0, :sswitch_data_0

    .line 1456
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingTop()I

    move-result v0

    .line 1460
    :goto_0
    const/4 v8, 0x0

    move v3, v0

    :goto_1
    if-ge v8, v12, :cond_2

    .line 1461
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v1

    .line 1462
    if-nez v1, :cond_0

    .line 1463
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/aq;->d(I)I

    move-result v0

    add-int/2addr v3, v0

    move v0, v8

    .line 1460
    :goto_2
    add-int/lit8 v8, v0, 0x1

    goto :goto_1

    .line 1446
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, p0, Landroid/support/v7/widget/aq;->f:I

    sub-int/2addr v0, v1

    .line 1447
    goto :goto_0

    .line 1451
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, p0, Landroid/support/v7/widget/aq;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1452
    goto :goto_0

    .line 1464
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 1465
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1466
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1469
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/aq$a;

    .line 1471
    iget v0, v6, Landroid/support/v7/widget/aq$a;->h:I

    .line 1472
    if-gez v0, :cond_1

    move v0, v7

    .line 1475
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1476
    invoke-static {v0, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1478
    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_1

    .line 1490
    iget v0, v6, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int v2, v9, v0

    .line 1494
    :goto_3
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/aq;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1495
    iget v0, p0, Landroid/support/v7/widget/aq;->m:I

    add-int/2addr v0, v3

    .line 1498
    :goto_4
    iget v3, v6, Landroid/support/v7/widget/aq$a;->topMargin:I

    add-int v13, v0, v3

    .line 1499
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;)I

    move-result v0

    add-int v3, v13, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;IIII)V

    .line 1501
    iget v0, v6, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v13, v0

    .line 1503
    invoke-virtual {p0, v1, v8}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_2

    .line 1480
    :sswitch_2
    sub-int v0, v11, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v9

    iget v2, v6, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Landroid/support/v7/widget/aq$a;->rightMargin:I

    sub-int v2, v0, v2

    .line 1482
    goto :goto_3

    .line 1485
    :sswitch_3
    sub-int v0, v10, v4

    iget v2, v6, Landroid/support/v7/widget/aq$a;->rightMargin:I

    sub-int v2, v0, v2

    .line 1486
    goto :goto_3

    .line 1506
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v8

    goto/16 :goto_2

    .line 1443
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1478
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getVirtualChildCount()I

    move-result v2

    .line 296
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 297
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v3

    .line 299
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 300
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq$a;

    .line 302
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/support/v7/widget/aq$a;->topMargin:I

    sub-int v0, v3, v0

    iget v3, p0, Landroid/support/v7/widget/aq;->m:I

    sub-int/2addr v0, v3

    .line 303
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/aq;->a(Landroid/graphics/Canvas;I)V

    .line 296
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aq;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v1

    .line 311
    if-nez v1, :cond_3

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/aq;->m:I

    sub-int/2addr v0, v1

    .line 317
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/aq;->a(Landroid/graphics/Canvas;I)V

    .line 319
    :cond_2
    return-void

    .line 314
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq$a;

    .line 315
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method a(Landroid/graphics/Canvas;I)V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/aq;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/aq;->o:I

    add-int/2addr v1, v2

    .line 364
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/aq;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/aq;->m:I

    add-int/2addr v3, p2

    .line 363
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/aq;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method a(Landroid/view/View;IIIII)V
    .locals 6

    .prologue
    .line 1377
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/aq;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1379
    return-void
.end method

.method b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1401
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/util/AttributeSet;)Landroid/support/v7/widget/aq$a;
    .locals 2

    .prologue
    .line 1721
    new-instance v0, Landroid/support/v7/widget/aq$a;

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/aq$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/aq$a;
    .locals 1

    .prologue
    .line 1744
    new-instance v0, Landroid/support/v7/widget/aq$a;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aq$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aq;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method b(II)V
    .locals 29

    .prologue
    .line 928
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 929
    const/16 v20, 0x0

    .line 930
    const/16 v19, 0x0

    .line 931
    const/4 v14, 0x0

    .line 932
    const/4 v13, 0x0

    .line 933
    const/16 v18, 0x1

    .line 934
    const/4 v6, 0x0

    .line 936
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getVirtualChildCount()I

    move-result v22

    .line 938
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 939
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 941
    const/4 v12, 0x0

    .line 942
    const/16 v16, 0x0

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/aq;->i:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/aq;->j:[I

    if-nez v3, :cond_1

    .line 945
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v7/widget/aq;->i:[I

    .line 946
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v7/widget/aq;->j:[I

    .line 949
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/aq;->i:[I

    move-object/from16 v25, v0

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/aq;->j:[I

    move-object/from16 v26, v0

    .line 952
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v25, v7

    aput v8, v25, v5

    aput v8, v25, v4

    aput v8, v25, v3

    .line 953
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v26, v7

    aput v8, v26, v5

    aput v8, v26, v4

    aput v8, v26, v3

    .line 955
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/aq;->a:Z

    move/from16 v27, v0

    .line 956
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/aq;->h:Z

    move/from16 v28, v0

    .line 958
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    move v11, v3

    .line 960
    :goto_0
    const/4 v15, 0x0

    .line 963
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v5, v0, :cond_14

    .line 964
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v4

    .line 966
    if-nez v4, :cond_3

    .line 967
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aq;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    move v4, v15

    move/from16 v9, v16

    move v10, v6

    move/from16 v7, v18

    .line 963
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v15, v4

    move/from16 v16, v9

    move v6, v10

    move/from16 v18, v7

    goto :goto_1

    .line 958
    :cond_2
    const/4 v3, 0x0

    move v11, v3

    goto :goto_0

    .line 971
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_4

    .line 972
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v4, v15

    move/from16 v9, v16

    move v10, v6

    move/from16 v7, v18

    .line 973
    goto :goto_2

    .line 976
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aq;->c(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 977
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/aq;->l:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 981
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/support/v7/widget/aq$a;

    .line 983
    iget v3, v10, Landroid/support/v7/widget/aq$a;->g:F

    add-float v17, v6, v3

    .line 985
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    iget v3, v10, Landroid/support/v7/widget/aq$a;->width:I

    if-nez v3, :cond_a

    iget v3, v10, Landroid/support/v7/widget/aq$a;->g:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    .line 989
    if-eqz v11, :cond_8

    .line 990
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    iget v6, v10, Landroid/support/v7/widget/aq$a;->leftMargin:I

    iget v7, v10, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1002
    :goto_3
    if-eqz v27, :cond_9

    .line 1003
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1004
    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    .line 1047
    :cond_6
    :goto_4
    const/4 v3, 0x0

    .line 1048
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v6, :cond_35

    iget v6, v10, Landroid/support/v7/widget/aq$a;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_35

    .line 1052
    const/4 v6, 0x1

    .line 1053
    const/4 v3, 0x1

    .line 1056
    :goto_5
    iget v7, v10, Landroid/support/v7/widget/aq$a;->topMargin:I

    iget v8, v10, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    add-int/2addr v8, v7

    .line 1057
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v9, v7, v8

    .line 1058
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v19

    .line 1060
    if-eqz v27, :cond_7

    .line 1061
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 1062
    const/4 v7, -0x1

    if-eq v12, v7, :cond_7

    .line 1065
    iget v7, v10, Landroid/support/v7/widget/aq$a;->h:I

    if-gez v7, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/aq;->e:I

    :goto_6
    and-int/lit8 v7, v7, 0x70

    .line 1067
    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    .line 1070
    aget v21, v25, v7

    move/from16 v0, v21

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v21

    aput v21, v25, v7

    .line 1071
    aget v21, v26, v7

    sub-int v12, v9, v12

    move/from16 v0, v21

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v26, v7

    .line 1075
    :cond_7
    move/from16 v0, v20

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 1077
    if-eqz v18, :cond_10

    iget v7, v10, Landroid/support/v7/widget/aq$a;->height:I

    const/4 v12, -0x1

    if-ne v7, v12, :cond_10

    const/4 v7, 0x1

    .line 1078
    :goto_7
    iget v10, v10, Landroid/support/v7/widget/aq$a;->g:F

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-lez v10, :cond_12

    .line 1083
    if-eqz v3, :cond_11

    move v3, v8

    :goto_8
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v14

    .line 1090
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v4, v15

    move/from16 v9, v16

    move v12, v6

    move/from16 v10, v17

    move v13, v3

    move v14, v8

    goto/16 :goto_2

    .line 992
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 993
    iget v6, v10, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    goto/16 :goto_3

    .line 1006
    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 1009
    :cond_a
    const/high16 v3, -0x80000000

    .line 1011
    iget v6, v10, Landroid/support/v7/widget/aq$a;->width:I

    if-nez v6, :cond_b

    iget v6, v10, Landroid/support/v7/widget/aq$a;->g:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    .line 1016
    const/4 v3, 0x0

    .line 1017
    const/4 v6, -0x2

    iput v6, v10, Landroid/support/v7/widget/aq$a;->width:I

    :cond_b
    move/from16 v21, v3

    .line 1024
    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/aq;->f:I

    :goto_a
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;IIIII)V

    .line 1028
    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-eq v0, v3, :cond_c

    .line 1029
    move/from16 v0, v21

    iput v0, v10, Landroid/support/v7/widget/aq$a;->width:I

    .line 1032
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1033
    if-eqz v11, :cond_e

    .line 1034
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/aq;->f:I

    iget v7, v10, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int/2addr v7, v3

    iget v8, v10, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v7, v8

    .line 1035
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1042
    :goto_b
    if-eqz v28, :cond_6

    .line 1043
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto/16 :goto_4

    .line 1024
    :cond_d
    const/4 v7, 0x0

    goto :goto_a

    .line 1037
    :cond_e
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1038
    add-int v7, v6, v3

    iget v8, v10, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v7, v8

    .line 1039
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    .line 1038
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/aq;->f:I

    goto :goto_b

    .line 1065
    :cond_f
    iget v7, v10, Landroid/support/v7/widget/aq$a;->h:I

    goto/16 :goto_6

    .line 1077
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_11
    move v3, v9

    .line 1083
    goto/16 :goto_8

    .line 1086
    :cond_12
    if-eqz v3, :cond_13

    :goto_c
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v3, v13

    goto/16 :goto_9

    :cond_13
    move v8, v9

    goto :goto_c

    .line 1093
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aq;->c(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1094
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/aq;->l:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1099
    :cond_15
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_34

    .line 1103
    :cond_16
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v7, 0x2

    aget v7, v25, v7

    .line 1105
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1104
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1103
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1106
    const/4 v4, 0x3

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v7, 0x1

    aget v7, v26, v7

    const/4 v8, 0x2

    aget v8, v26, v8

    .line 1108
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1107
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1106
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1109
    add-int/2addr v3, v4

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1112
    :goto_d
    if-eqz v28, :cond_1b

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_17

    if-nez v23, :cond_1b

    .line 1114
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1116
    const/4 v4, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v4, v0, :cond_1b

    .line 1117
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v7

    .line 1119
    if-nez v7, :cond_18

    .line 1120
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aq;->d(I)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    move v3, v4

    .line 1116
    :goto_f
    add-int/lit8 v4, v3, 0x1

    goto :goto_e

    .line 1124
    :cond_18
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_19

    .line 1125
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    .line 1126
    goto :goto_f

    .line 1130
    :cond_19
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aq$a;

    .line 1131
    if-eqz v11, :cond_1a

    .line 1132
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/aq;->f:I

    iget v9, v3, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int/2addr v9, v15

    iget v3, v3, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v3, v9

    .line 1133
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    move v3, v4

    goto :goto_f

    .line 1135
    :cond_1a
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1136
    add-int v9, v8, v15

    iget v10, v3, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int/2addr v9, v10

    iget v3, v3, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v3, v9

    .line 1137
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    .line 1136
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    move v3, v4

    goto :goto_f

    .line 1143
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1145
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1148
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1151
    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-static {v3, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v17

    .line 1152
    const v3, 0xffffff

    and-int v3, v3, v17

    .line 1157
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/aq;->f:I

    sub-int v8, v3, v4

    .line 1158
    if-nez v16, :cond_1c

    if-eqz v8, :cond_2d

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_2d

    .line 1159
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1d

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/aq;->g:F

    .line 1161
    :cond_1d
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v9, -0x1

    aput v9, v25, v7

    aput v9, v25, v5

    aput v9, v25, v4

    aput v9, v25, v3

    .line 1162
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v9, -0x1

    aput v9, v26, v7

    aput v9, v26, v5

    aput v9, v26, v4

    aput v9, v26, v3

    .line 1163
    const/4 v15, -0x1

    .line 1165
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1167
    const/4 v3, 0x0

    move/from16 v16, v3

    move v5, v6

    move/from16 v9, v18

    move v10, v14

    move/from16 v13, v19

    :goto_10
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_29

    .line 1168
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v18

    .line 1170
    if-eqz v18, :cond_33

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1e

    move v3, v5

    move v4, v8

    move v6, v9

    move v14, v15

    .line 1167
    :goto_11
    add-int/lit8 v7, v16, 0x1

    move/from16 v16, v7

    move v5, v3

    move v8, v4

    move v9, v6

    move v15, v14

    goto :goto_10

    .line 1175
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aq$a;

    .line 1177
    iget v6, v3, Landroid/support/v7/widget/aq$a;->g:F

    .line 1178
    const/4 v4, 0x0

    cmpl-float v4, v6, v4

    if-lez v4, :cond_32

    .line 1180
    int-to-float v4, v8

    mul-float/2addr v4, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1181
    sub-float v7, v5, v6

    .line 1182
    sub-int/2addr v8, v4

    .line 1186
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/aq$a;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/aq$a;->height:I

    .line 1184
    move/from16 v0, p2

    invoke-static {v0, v5, v6}, Landroid/support/v7/widget/aq;->getChildMeasureSpec(III)I

    move-result v5

    .line 1191
    iget v6, v3, Landroid/support/v7/widget/aq$a;->width:I

    if-nez v6, :cond_1f

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_22

    .line 1194
    :cond_1f
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    .line 1195
    if-gez v4, :cond_20

    .line 1196
    const/4 v4, 0x0

    .line 1199
    :cond_20
    const/high16 v6, 0x40000000    # 2.0f

    .line 1200
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1199
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1211
    :goto_12
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    .line 1210
    invoke-static {v13, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 1214
    :goto_13
    if-eqz v11, :cond_24

    .line 1215
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/aq;->f:I

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v3, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v5, v6

    .line 1216
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1223
    :goto_14
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v4, :cond_25

    iget v4, v3, Landroid/support/v7/widget/aq$a;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_25

    const/4 v4, 0x1

    .line 1226
    :goto_15
    iget v5, v3, Landroid/support/v7/widget/aq$a;->topMargin:I

    iget v6, v3, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1227
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 1228
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1229
    if-eqz v4, :cond_26

    move v4, v5

    :goto_16
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1232
    if-eqz v9, :cond_27

    iget v4, v3, Landroid/support/v7/widget/aq$a;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    const/4 v5, 0x1

    .line 1234
    :goto_17
    if-eqz v27, :cond_21

    .line 1235
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1236
    const/4 v9, -0x1

    if-eq v4, v9, :cond_21

    .line 1238
    iget v9, v3, Landroid/support/v7/widget/aq$a;->h:I

    if-gez v9, :cond_28

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->e:I

    :goto_18
    and-int/lit8 v3, v3, 0x70

    .line 1240
    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    .line 1243
    aget v9, v25, v3

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v25, v3

    .line 1244
    aget v9, v26, v3

    sub-int v4, v6, v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v26, v3

    :cond_21
    move v3, v7

    move v4, v8

    move v6, v5

    goto/16 :goto_11

    .line 1204
    :cond_22
    if-lez v4, :cond_23

    :goto_19
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    goto/16 :goto_12

    :cond_23
    const/4 v4, 0x0

    goto :goto_19

    .line 1218
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1219
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, v3, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v5, v6

    .line 1220
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1219
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/aq;->f:I

    goto/16 :goto_14

    .line 1223
    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_15

    :cond_26
    move v4, v6

    .line 1229
    goto :goto_16

    .line 1232
    :cond_27
    const/4 v5, 0x0

    goto :goto_17

    .line 1238
    :cond_28
    iget v3, v3, Landroid/support/v7/widget/aq$a;->h:I

    goto :goto_18

    .line 1251
    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/aq;->f:I

    .line 1256
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    .line 1260
    :cond_2a
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v6, 0x2

    aget v6, v25, v6

    .line 1262
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1261
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1260
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1263
    const/4 v4, 0x3

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v6, 0x1

    aget v6, v26, v6

    const/4 v7, 0x2

    aget v7, v26, v7

    .line 1265
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1264
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1263
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1266
    add-int/2addr v3, v4

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_2b
    move/from16 v18, v9

    move v3, v10

    move/from16 v19, v13

    move v4, v15

    .line 1295
    :goto_1a
    if-nez v18, :cond_30

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v5, :cond_30

    .line 1299
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1304
    const/high16 v4, -0x1000000

    and-int v4, v4, v19

    or-int v4, v4, v17

    shl-int/lit8 v5, v19, 0x10

    .line 1305
    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1304
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroid/support/v7/widget/aq;->setMeasuredDimension(II)V

    .line 1308
    if-eqz v12, :cond_2c

    .line 1309
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/aq;->d(II)V

    .line 1311
    :cond_2c
    return-void

    .line 1269
    :cond_2d
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1273
    if-eqz v28, :cond_31

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_31

    .line 1274
    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    move/from16 v0, v22

    if-ge v4, v0, :cond_31

    .line 1275
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v6

    .line 1277
    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_2f

    .line 1274
    :cond_2e
    :goto_1d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1c

    .line 1282
    :cond_2f
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aq$a;

    .line 1284
    iget v3, v3, Landroid/support/v7/widget/aq$a;->g:F

    .line 1285
    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2e

    .line 1286
    const/high16 v3, 0x40000000    # 2.0f

    .line 1287
    invoke-static {v15, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1288
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1286
    invoke-virtual {v6, v3, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1d

    :cond_30
    move v3, v4

    goto :goto_1b

    :cond_31
    move v3, v10

    move v4, v5

    goto/16 :goto_1a

    :cond_32
    move v7, v5

    goto/16 :goto_13

    :cond_33
    move v3, v5

    move v4, v8

    move v6, v9

    move v14, v15

    goto/16 :goto_11

    :cond_34
    move/from16 v5, v20

    goto/16 :goto_d

    :cond_35
    move v6, v12

    goto/16 :goto_5
.end method

.method b(IIII)V
    .locals 22

    .prologue
    .line 1521
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/bs;->a(Landroid/view/View;)Z

    move-result v4

    .line 1522
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingTop()I

    move-result v11

    .line 1528
    sub-int v2, p4, p2

    .line 1529
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingBottom()I

    move-result v3

    sub-int v15, v2, v3

    .line 1532
    sub-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingBottom()I

    move-result v3

    sub-int v16, v2, v3

    .line 1534
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getVirtualChildCount()I

    move-result v17

    .line 1536
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/aq;->e:I

    const v3, 0x800007

    and-int/2addr v2, v3

    .line 1537
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->e:I

    and-int/lit8 v14, v3, 0x70

    .line 1539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/aq;->a:Z

    move/from16 v18, v0

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/aq;->i:[I

    move-object/from16 v19, v0

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/aq;->j:[I

    move-object/from16 v20, v0

    .line 1544
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1545
    invoke-static {v2, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingLeft()I

    move-result v12

    .line 1562
    :goto_0
    const/4 v3, 0x0

    .line 1563
    const/4 v2, 0x1

    .line 1565
    if-eqz v4, :cond_7

    .line 1566
    add-int/lit8 v3, v17, -0x1

    .line 1567
    const/4 v2, -0x1

    move v9, v2

    move v10, v3

    .line 1570
    :goto_1
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 1571
    mul-int v2, v9, v13

    add-int v21, v10, v2

    .line 1572
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v3

    .line 1574
    if-nez v3, :cond_0

    .line 1575
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aq;->d(I)I

    move-result v2

    add-int/2addr v12, v2

    move v2, v13

    .line 1570
    :goto_3
    add-int/lit8 v13, v2, 0x1

    goto :goto_2

    .line 1548
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingLeft()I

    move-result v2

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/aq;->f:I

    sub-int v12, v2, v3

    .line 1549
    goto :goto_0

    .line 1553
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getPaddingLeft()I

    move-result v2

    sub-int v3, p3, p1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/aq;->f:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int v12, v2, v3

    .line 1554
    goto :goto_0

    .line 1576
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    .line 1577
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1578
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1579
    const/4 v4, -0x1

    .line 1582
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/aq$a;

    .line 1584
    if-eqz v18, :cond_5

    iget v2, v8, Landroid/support/v7/widget/aq$a;->height:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 1585
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 1588
    :goto_4
    iget v4, v8, Landroid/support/v7/widget/aq$a;->h:I

    .line 1589
    if-gez v4, :cond_1

    move v4, v14

    .line 1593
    :cond_1
    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_1

    move v5, v11

    .line 1629
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aq;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1630
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/aq;->l:I

    add-int/2addr v2, v12

    .line 1633
    :goto_6
    iget v4, v8, Landroid/support/v7/widget/aq$a;->leftMargin:I

    add-int v12, v2, v4

    .line 1634
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;IIII)V

    .line 1636
    iget v2, v8, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v2, v6

    .line 1637
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/aq;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1639
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/aq;->a(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v13

    goto/16 :goto_3

    .line 1595
    :sswitch_2
    iget v4, v8, Landroid/support/v7/widget/aq$a;->topMargin:I

    add-int v5, v11, v4

    .line 1596
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1597
    const/4 v4, 0x1

    aget v4, v19, v4

    sub-int v2, v4, v2

    add-int/2addr v5, v2

    goto :goto_5

    .line 1613
    :sswitch_3
    sub-int v2, v16, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    iget v4, v8, Landroid/support/v7/widget/aq$a;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v8, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1615
    goto :goto_5

    .line 1618
    :sswitch_4
    sub-int v4, v15, v7

    iget v5, v8, Landroid/support/v7/widget/aq$a;->bottomMargin:I

    sub-int v5, v4, v5

    .line 1619
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1620
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v2, v4, v2

    .line 1621
    const/4 v4, 0x2

    aget v4, v20, v4

    sub-int v2, v4, v2

    sub-int/2addr v5, v2

    .line 1622
    goto :goto_5

    .line 1642
    :cond_3
    return-void

    :cond_4
    move v2, v12

    goto :goto_6

    :cond_5
    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v13

    goto/16 :goto_3

    :cond_7
    move v9, v2

    move v10, v3

    goto/16 :goto_1

    .line 1545
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1593
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method b(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getVirtualChildCount()I

    move-result v2

    .line 323
    invoke-static {p0}, Landroid/support/v7/widget/bs;->a(Landroid/view/View;)Z

    move-result v3

    .line 324
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 325
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v4

    .line 327
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    .line 328
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq$a;

    .line 331
    if-eqz v3, :cond_1

    .line 332
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v0, v4

    .line 336
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/aq;->b(Landroid/graphics/Canvas;I)V

    .line 324
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/aq$a;->leftMargin:I

    sub-int v0, v4, v0

    iget v4, p0, Landroid/support/v7/widget/aq;->l:I

    sub-int/2addr v0, v4

    goto :goto_1

    .line 341
    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aq;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->b(I)Landroid/view/View;

    move-result-object v1

    .line 344
    if-nez v1, :cond_5

    .line 345
    if-eqz v3, :cond_4

    .line 346
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingLeft()I

    move-result v0

    .line 358
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/aq;->b(Landroid/graphics/Canvas;I)V

    .line 360
    :cond_3
    return-void

    .line 348
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/aq;->l:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 351
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq$a;

    .line 352
    if-eqz v3, :cond_6

    .line 353
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/aq$a;->leftMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Landroid/support/v7/widget/aq;->l:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 355
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/aq$a;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method b(Landroid/graphics/Canvas;I)V
    .locals 5

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/aq;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/aq;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/aq;->l:I

    add-int/2addr v2, p2

    .line 370
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/aq;->o:I

    sub-int/2addr v3, v4

    .line 369
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget-object v0, p0, Landroid/support/v7/widget/aq;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    return-void
.end method

.method protected c(I)Z
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 566
    if-nez p1, :cond_2

    .line 567
    iget v2, p0, Landroid/support/v7/widget/aq;->n:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 567
    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 569
    iget v2, p0, Landroid/support/v7/widget/aq;->n:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 570
    :cond_3
    iget v2, p0, Landroid/support/v7/widget/aq;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 572
    add-int/lit8 v2, p1, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 573
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aq;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 572
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 580
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1751
    instance-of v0, p1, Landroid/support/v7/widget/aq$a;

    return v0
.end method

.method d(I)I
    .locals 1

    .prologue
    .line 1358
    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->j()Landroid/support/v7/widget/aq$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aq;->b(Landroid/util/AttributeSet;)Landroid/support/v7/widget/aq$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aq;->b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/aq$a;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 423
    iget v1, p0, Landroid/support/v7/widget/aq;->b:I

    if-gez v1, :cond_1

    .line 424
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getChildCount()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/aq;->b:I

    if-gt v1, v2, :cond_2

    .line 428
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_2
    iget v1, p0, Landroid/support/v7/widget/aq;->b:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 433
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 435
    if-ne v3, v0, :cond_3

    .line 436
    iget v1, p0, Landroid/support/v7/widget/aq;->b:I

    if-eqz v1, :cond_0

    .line 442
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/aq;->c:I

    .line 454
    iget v1, p0, Landroid/support/v7/widget/aq;->d:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 455
    iget v1, p0, Landroid/support/v7/widget/aq;->e:I

    and-int/lit8 v1, v1, 0x70

    .line 456
    const/16 v4, 0x30

    if-eq v1, v4, :cond_4

    .line 457
    sparse-switch v1, :sswitch_data_0

    :cond_4
    move v1, v0

    .line 470
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq$a;

    .line 471
    iget v0, v0, Landroid/support/v7/widget/aq$a;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_0

    .line 459
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/aq;->f:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 460
    goto :goto_1

    .line 463
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Landroid/support/v7/widget/aq;->f:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Landroid/support/v7/widget/aq;->b:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/aq;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Landroid/support/v7/widget/aq;->o:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 278
    iget v0, p0, Landroid/support/v7/widget/aq;->l:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 1700
    iget v0, p0, Landroid/support/v7/widget/aq;->e:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1667
    iget v0, p0, Landroid/support/v7/widget/aq;->d:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/support/v7/widget/aq;->n:I

    return v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Landroid/support/v7/widget/aq;->g:F

    return v0
.end method

.method protected j()Landroid/support/v7/widget/aq$a;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1734
    iget v0, p0, Landroid/support/v7/widget/aq;->d:I

    if-nez v0, :cond_0

    .line 1735
    new-instance v0, Landroid/support/v7/widget/aq$a;

    invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/aq$a;-><init>(II)V

    .line 1739
    :goto_0
    return-object v0

    .line 1736
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aq;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1737
    new-instance v0, Landroid/support/v7/widget/aq$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/aq$a;-><init>(II)V

    goto :goto_0

    .line 1739
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/aq;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aq;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 288
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aq;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aq;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1757
    const-class v0, Landroid/support/v7/widget/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1758
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 1762
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1763
    const-class v0, Landroid/support/v7/widget/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1764
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 1406
    iget v0, p0, Landroid/support/v7/widget/aq;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1407
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/aq;->a(IIII)V

    .line 1411
    :goto_0
    return-void

    .line 1409
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/aq;->b(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 550
    iget v0, p0, Landroid/support/v7/widget/aq;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 551
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/aq;->a(II)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/aq;->b(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .prologue
    .line 392
    iput-boolean p1, p0, Landroid/support/v7/widget/aq;->a:Z

    .line 393
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3

    .prologue
    .line 488
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 490
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/aq;->b:I

    .line 493
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Landroid/support/v7/widget/aq;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 235
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/aq;->k:Landroid/graphics/drawable/Drawable;

    .line 236
    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aq;->l:I

    .line 238
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aq;->m:I

    .line 243
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->setWillNotDraw(Z)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->requestLayout()V

    goto :goto_0

    .line 240
    :cond_2
    iput v0, p0, Landroid/support/v7/widget/aq;->l:I

    .line 241
    iput v0, p0, Landroid/support/v7/widget/aq;->m:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0

    .prologue
    .line 257
    iput p1, p0, Landroid/support/v7/widget/aq;->o:I

    .line 258
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    .prologue
    .line 1679
    iget v0, p0, Landroid/support/v7/widget/aq;->e:I

    if-eq v0, p1, :cond_1

    .line 1680
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 1681
    const v0, 0x800003

    or-int/2addr v0, p1

    .line 1684
    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 1685
    or-int/lit8 v0, v0, 0x30

    .line 1688
    :cond_0
    iput v0, p0, Landroid/support/v7/widget/aq;->e:I

    .line 1689
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->requestLayout()V

    .line 1691
    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setHorizontalGravity(I)V
    .locals 3

    .prologue
    const v2, 0x800007

    .line 1704
    and-int v0, p1, v2

    .line 1705
    iget v1, p0, Landroid/support/v7/widget/aq;->e:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 1706
    iget v1, p0, Landroid/support/v7/widget/aq;->e:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/aq;->e:I

    .line 1707
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->requestLayout()V

    .line 1709
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .prologue
    .line 418
    iput-boolean p1, p0, Landroid/support/v7/widget/aq;->h:Z

    .line 419
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 1654
    iget v0, p0, Landroid/support/v7/widget/aq;->d:I

    if-eq v0, p1, :cond_0

    .line 1655
    iput p1, p0, Landroid/support/v7/widget/aq;->d:I

    .line 1656
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->requestLayout()V

    .line 1658
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Landroid/support/v7/widget/aq;->n:I

    if-eq p1, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->requestLayout()V

    .line 198
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/aq;->n:I

    .line 199
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    .prologue
    .line 1712
    and-int/lit8 v0, p1, 0x70

    .line 1713
    iget v1, p0, Landroid/support/v7/widget/aq;->e:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1714
    iget v1, p0, Landroid/support/v7/widget/aq;->e:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/aq;->e:I

    .line 1715
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->requestLayout()V

    .line 1717
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/aq;->g:F

    .line 546
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method
