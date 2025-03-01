.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$i;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$s$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$a;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$c;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
    }
.end annotation


# instance fields
.field private A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field private B:I

.field private final C:Landroid/graphics/Rect;

.field private final D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

.field private E:Z

.field private F:Z

.field private G:[I

.field private final H:Ljava/lang/Runnable;

.field a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

.field b:Landroid/support/v7/widget/av;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field c:Landroid/support/v7/widget/av;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroid/support/v7/widget/ap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$i;-><init>()V

    .line 107
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 130
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    .line 135
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    .line 146
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 152
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 158
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 163
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    .line 202
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    .line 216
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    .line 230
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$i$b;

    move-result-object v0

    .line 231
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$i$b;->a:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    .line 232
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$i$b;->b:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    .line 233
    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$i$b;->c:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 234
    new-instance v0, Landroid/support/v7/widget/ap;

    invoke-direct {v0}, Landroid/support/v7/widget/ap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    .line 235
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()V

    .line 236
    return-void
.end method

.method private M()V
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/RecyclerView$i;I)Landroid/support/v7/widget/av;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 259
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    rsub-int/lit8 v0, v0, 0x1

    .line 260
    invoke-static {p0, v0}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/RecyclerView$i;I)Landroid/support/v7/widget/av;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    .line 261
    return-void
.end method

.method private N()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 560
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v1

    if-nez v1, :cond_1

    .line 561
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private O()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 734
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->h()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 780
    :cond_0
    return-void

    .line 737
    :cond_1
    const/4 v2, 0x0

    .line 738
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v5

    move v4, v3

    .line 739
    :goto_0
    if-ge v4, v5, :cond_3

    .line 740
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 741
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    .line 742
    cmpg-float v6, v1, v2

    if-gez v6, :cond_2

    move v0, v2

    .line 739
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    .line 745
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 746
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 747
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 749
    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 751
    :cond_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    .line 752
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 753
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->h()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_4

    .line 754
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 756
    :cond_4
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 757
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    if-eq v0, v4, :cond_0

    move v1, v3

    .line 760
    :goto_3
    if-ge v1, v5, :cond_0

    .line 761
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    .line 762
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 763
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v3, :cond_5

    .line 760
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 766
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v3, v7, :cond_6

    .line 767
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int/2addr v3, v6

    neg-int v3, v3

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v3, v6

    .line 768
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v6, v6, -0x1

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int v0, v6, v0

    neg-int v0, v0

    mul-int/2addr v0, v4

    .line 769
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 771
    :cond_6
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v3, v6

    .line 772
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    mul-int/2addr v0, v4

    .line 773
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v6, v7, :cond_7

    .line 774
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 776
    :cond_7
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 18

    .prologue
    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget-boolean v2, v2, Landroid/support/v7/widget/ap;->i:Z

    if-eqz v2, :cond_4

    .line 1583
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ap;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1584
    const v2, 0x7fffffff

    move v15, v2

    .line 1596
    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ap;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(II)V

    .line 1603
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 1604
    invoke-virtual {v2}, Landroid/support/v7/widget/av;->d()I

    move-result v2

    move/from16 v16, v2

    .line 1606
    :goto_1
    const/4 v2, 0x0

    .line 1607
    :goto_2
    invoke-virtual/range {p2 .. p3}, Landroid/support/v7/widget/ap;->a(Landroid/support/v7/widget/RecyclerView$t;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget-boolean v3, v3, Landroid/support/v7/widget/ap;->i:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 1608
    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1609
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ap;->a(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v3

    .line 1610
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1611
    invoke-virtual {v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f()I

    move-result v6

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)I

    move-result v5

    .line 1614
    const/4 v2, -0x1

    if-ne v5, v2, :cond_7

    const/4 v2, 0x1

    move v4, v2

    .line 1615
    :goto_3
    if-eqz v4, :cond_9

    .line 1616
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    .line 1617
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5, v6, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(ILandroid/support/v7/widget/StaggeredGridLayoutManager$c;)V

    move-object/from16 v17, v2

    .line 1628
    :goto_5
    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 1629
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ap;->e:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    .line 1630
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)V

    .line 1634
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Z)V

    .line 1638
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ap;->e:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 1639
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(I)I

    move-result v2

    .line 1641
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v5

    add-int v7, v2, v5

    .line 1642
    if-eqz v4, :cond_1e

    iget-boolean v5, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v5, :cond_1e

    .line 1644
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1645
    const/4 v8, -0x1

    iput v8, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1646
    iput v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1647
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    move v5, v2

    .line 1663
    :goto_8
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ap;->d:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    .line 1664
    if-eqz v4, :cond_f

    .line 1665
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    .line 1683
    :cond_1
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v14, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Landroid/support/v7/widget/ap;)V

    .line 1686
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 1687
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->d()I

    move-result v2

    .line 1690
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v4

    sub-int v4, v2, v4

    move v6, v2

    .line 1698
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_17

    move-object/from16 v2, p0

    .line 1699
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1704
    :goto_c
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_18

    .line 1705
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v2, v2, Landroid/support/v7/widget/ap;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(II)V

    .line 1709
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget-boolean v2, v2, Landroid/support/v7/widget/ap;->h:Z

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1711
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_19

    .line 1712
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 1717
    :cond_2
    :goto_e
    const/4 v2, 0x1

    .line 1718
    goto/16 :goto_2

    .line 1586
    :cond_3
    const/high16 v2, -0x80000000

    move v15, v2

    goto/16 :goto_0

    .line 1589
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ap;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1590
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ap;->g:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/ap;->b:I

    add-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    .line 1592
    :cond_5
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ap;->f:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/ap;->b:I

    sub-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    .line 1604
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 1605
    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_1

    .line 1614
    :cond_7
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 1616
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ap;)Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    move-result-object v2

    goto/16 :goto_4

    .line 1625
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v5

    move-object/from16 v17, v2

    goto/16 :goto_5

    .line 1632
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1640
    :cond_b
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v2

    goto/16 :goto_7

    .line 1650
    :cond_c
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v2

    .line 1652
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v5

    sub-int v5, v2, v5

    .line 1653
    if-eqz v4, :cond_d

    iget-boolean v7, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v7, :cond_d

    .line 1655
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v7

    .line 1656
    const/4 v8, 0x1

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1657
    iput v6, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1658
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_d
    move v7, v2

    goto/16 :goto_8

    .line 1651
    :cond_e
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v2

    goto :goto_f

    .line 1668
    :cond_f
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ap;->e:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 1669
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    .line 1673
    :goto_10
    if-eqz v2, :cond_1

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1675
    invoke-virtual {v2, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v2

    .line 1676
    if-eqz v2, :cond_10

    .line 1677
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->d:Z

    .line 1679
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    goto/16 :goto_9

    .line 1669
    :cond_11
    const/4 v2, 0x0

    goto :goto_10

    .line 1671
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_10

    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 1687
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    .line 1688
    invoke-virtual {v2}, Landroid/support/v7/widget/av;->d()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v17

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v4, v6

    sub-int/2addr v2, v4

    goto/16 :goto_a

    .line 1692
    :cond_15
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    .line 1695
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v4

    add-int v6, v2, v4

    move v4, v2

    goto/16 :goto_b

    .line 1692
    :cond_16
    move-object/from16 v0, v17

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    .line 1694
    invoke-virtual {v4}, Landroid/support/v7/widget/av;->c()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_11

    :cond_17
    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v5

    move v11, v4

    move v12, v7

    move v13, v6

    .line 1701
    invoke-virtual/range {v8 .. v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    goto/16 :goto_c

    .line 1707
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v2, v2, Landroid/support/v7/widget/ap;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;II)V

    goto/16 :goto_d

    .line 1714
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    .line 1719
    :cond_1a
    if-nez v2, :cond_1b

    .line 1720
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;)V

    .line 1723
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v2, v2, Landroid/support/v7/widget/ap;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v2

    .line 1725
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->c()I

    move-result v3

    sub-int v2, v3, v2

    .line 1730
    :goto_12
    if-lez v2, :cond_1d

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/ap;->b:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_13
    return v2

    .line 1727
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->d()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(I)I

    move-result v2

    .line 1728
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->d()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_12

    .line 1730
    :cond_1d
    const/4 v2, 0x0

    goto :goto_13

    :cond_1e
    move v5, v2

    goto/16 :goto_8
.end method

.method private a(Landroid/support/v7/widget/ap;)Landroid/support/v7/widget/StaggeredGridLayoutManager$c;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1982
    iget v0, p1, Landroid/support/v7/widget/ap;->e:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t(I)Z

    move-result v0

    .line 1984
    if-eqz v0, :cond_0

    .line 1985
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v4, v0, -0x1

    move v0, v1

    move v3, v1

    .line 1993
    :goto_0
    iget v1, p1, Landroid/support/v7/widget/ap;->e:I

    if-ne v1, v2, :cond_1

    .line 1995
    const v2, 0x7fffffff

    .line 1996
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->c()I

    move-result v7

    move v6, v4

    .line 1997
    :goto_1
    if-eq v6, v3, :cond_2

    .line 1998
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v1, v6

    .line 1999
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    .line 2000
    if-ge v1, v2, :cond_4

    .line 1997
    :goto_2
    add-int/2addr v6, v0

    move v2, v1

    move-object v5, v4

    goto :goto_1

    .line 1989
    :cond_0
    const/4 v4, 0x0

    .line 1990
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    move v0, v2

    move v3, v1

    .line 1991
    goto :goto_0

    .line 2008
    :cond_1
    const/high16 v2, -0x80000000

    .line 2009
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->d()I

    move-result v7

    move v6, v4

    .line 2010
    :goto_3
    if-eq v6, v3, :cond_2

    .line 2011
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v1, v6

    .line 2012
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v1

    .line 2013
    if-le v1, v2, :cond_3

    .line 2010
    :goto_4
    add-int/2addr v6, v0

    move v2, v1

    move-object v5, v4

    goto :goto_3

    .line 2018
    :cond_2
    return-object v5

    :cond_3
    move v1, v2

    move-object v4, v5

    goto :goto_4

    :cond_4
    move v1, v2

    move-object v4, v5

    goto :goto_2
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 1821
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_1

    .line 1822
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1821
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1825
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;II)V

    goto :goto_1

    .line 1827
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1909
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 1910
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    .line 1911
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 1912
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1913
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1915
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 1916
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v3, :cond_2

    .line 1917
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1935
    :cond_0
    return-void

    .line 1916
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1921
    :goto_2
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v3, :cond_4

    .line 1922
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->h()V

    .line 1921
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1925
    :cond_3
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1928
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->h()V

    .line 1930
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Z)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 611
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    .line 612
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-eq v0, v7, :cond_2

    .line 613
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    if-nez v0, :cond_2

    .line 614
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;)V

    .line 615
    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 722
    :cond_1
    :goto_0
    return-void

    .line 620
    :cond_2
    iget-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_9

    :cond_3
    move v0, v2

    .line 622
    :goto_1
    if-eqz v0, :cond_4

    .line 623
    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 624
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_a

    .line 625
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V

    .line 630
    :goto_2
    invoke-virtual {p0, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V

    .line 631
    iput-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Z

    .line 633
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v4, :cond_6

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v4, v7, :cond_6

    .line 634
    iget-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v4, v5, :cond_5

    .line 635
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v4

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-eq v4, v5, :cond_6

    .line 636
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 637
    iput-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 641
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v4

    if-lez v4, :cond_e

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-ge v4, v2, :cond_e

    .line 643
    :cond_7
    iget-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    if-eqz v4, :cond_b

    move v0, v1

    .line 644
    :goto_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_e

    .line 646
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e()V

    .line 647
    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_8

    .line 648
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    iget v5, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(I)V

    .line 644
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v1

    .line 620
    goto :goto_1

    .line 627
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()V

    .line 628
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_2

    .line 652
    :cond_b
    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    if-nez v0, :cond_12

    :cond_c
    move v0, v1

    .line 653
    :goto_4
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_d

    .line 654
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iget v6, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(ZI)V

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 657
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a([Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)V

    .line 667
    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;)V

    .line 668
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iput-boolean v1, v0, Landroid/support/v7/widget/ap;->a:Z

    .line 669
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    .line 670
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 671
    iget v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$t;)V

    .line 672
    iget-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_13

    .line 674
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(I)V

    .line 675
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;Landroid/support/v7/widget/RecyclerView$t;)I

    .line 677
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(I)V

    .line 678
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v5, v5, Landroid/support/v7/widget/ap;->d:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/support/v7/widget/ap;->c:I

    .line 679
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;Landroid/support/v7/widget/RecyclerView$t;)I

    .line 690
    :goto_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->O()V

    .line 692
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_f

    .line 693
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_14

    .line 694
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Z)V

    .line 695
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Z)V

    .line 702
    :cond_f
    :goto_6
    if-eqz p3, :cond_16

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 703
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_15

    .line 704
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_15

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    if-nez v0, :cond_10

    .line 705
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    :cond_10
    move v0, v2

    .line 706
    :goto_7
    if-eqz v0, :cond_16

    .line 707
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 708
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    .line 713
    :goto_8
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 714
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 716
    :cond_11
    iget-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 717
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 718
    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 720
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Z)V

    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 659
    :goto_9
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_e

    .line 660
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    .line 661
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e()V

    .line 662
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(I)V

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 682
    :cond_13
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(I)V

    .line 683
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;Landroid/support/v7/widget/RecyclerView$t;)I

    .line 685
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(I)V

    .line 686
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v5, v5, Landroid/support/v7/widget/ap;->d:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/support/v7/widget/ap;->c:I

    .line 687
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;Landroid/support/v7/widget/RecyclerView$t;)I

    goto/16 :goto_5

    .line 697
    :cond_14
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Z)V

    .line 698
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Z)V

    goto/16 :goto_6

    :cond_15
    move v0, v1

    .line 705
    goto :goto_7

    :cond_16
    move v0, v1

    goto :goto_8
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1768
    iget-boolean v0, p2, Landroid/support/v7/widget/ap;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v7/widget/ap;->i:Z

    if-eqz v0, :cond_1

    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/ap;->b:I

    if-nez v0, :cond_3

    .line 1773
    iget v0, p2, Landroid/support/v7/widget/ap;->e:I

    if-ne v0, v1, :cond_2

    .line 1774
    iget v0, p2, Landroid/support/v7/widget/ap;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;I)V

    goto :goto_0

    .line 1776
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/ap;->f:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;I)V

    goto :goto_0

    .line 1781
    :cond_3
    iget v0, p2, Landroid/support/v7/widget/ap;->e:I

    if-ne v0, v1, :cond_5

    .line 1783
    iget v0, p2, Landroid/support/v7/widget/ap;->f:I

    iget v1, p2, Landroid/support/v7/widget/ap;->f:I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1785
    if-gez v0, :cond_4

    .line 1786
    iget v0, p2, Landroid/support/v7/widget/ap;->g:I

    .line 1790
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;I)V

    goto :goto_0

    .line 1788
    :cond_4
    iget v1, p2, Landroid/support/v7/widget/ap;->g:I

    iget v2, p2, Landroid/support/v7/widget/ap;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_1

    .line 1793
    :cond_5
    iget v0, p2, Landroid/support/v7/widget/ap;->g:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s(I)I

    move-result v0

    iget v1, p2, Landroid/support/v7/widget/ap;->g:I

    sub-int/2addr v0, v1

    .line 1795
    if-gez v0, :cond_6

    .line 1796
    iget v0, p2, Landroid/support/v7/widget/ap;->f:I

    .line 1800
    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;I)V

    goto :goto_0

    .line 1798
    :cond_6
    iget v1, p2, Landroid/support/v7/widget/ap;->f:I

    iget v2, p2, Landroid/support/v7/widget/ap;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-lez v0, :cond_3

    .line 787
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v1, :cond_2

    .line 788
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_3

    .line 789
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e()V

    .line 790
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aget v1, v1, v0

    .line 791
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 792
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    if-eqz v2, :cond_1

    .line 793
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->d()I

    move-result v2

    add-int/2addr v1, v2

    .line 798
    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(I)V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 801
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a()V

    .line 802
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 805
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 806
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 807
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()V

    .line 809
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 810
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 811
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 815
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 816
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 817
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    .line 819
    :cond_4
    return-void

    .line 813
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1830
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->i()I

    move-result v0

    .line 1831
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1832
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b()I

    move-result v1

    .line 1833
    add-int/2addr v0, v1

    if-gt v0, p3, :cond_0

    .line 1834
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1842
    :cond_0
    :goto_0
    return-void

    .line 1837
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d()I

    move-result v1

    .line 1838
    sub-int v0, v1, v0

    if-lt v0, p3, :cond_0

    .line 1839
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 5

    .prologue
    .line 1193
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1195
    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)I

    move-result v1

    .line 1197
    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->topMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->bottomMargin:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)I

    move-result v2

    .line 1199
    if-eqz p4, :cond_1

    .line 1200
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z

    move-result v0

    .line 1202
    :goto_0
    if-eqz v0, :cond_0

    .line 1203
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1206
    :cond_0
    return-void

    .line 1201
    :cond_1
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Landroid/support/v7/widget/ap;)V
    .locals 2

    .prologue
    .line 1752
    iget v0, p3, Landroid/support/v7/widget/ap;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1753
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_0

    .line 1754
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(Landroid/view/View;)V

    .line 1765
    :goto_0
    return-void

    .line 1756
    :cond_0
    iget-object v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(Landroid/view/View;)V

    goto :goto_0

    .line 1759
    :cond_1
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_2

    .line 1760
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)V

    goto :goto_0

    .line 1762
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1128
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_1

    .line 1129
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v5, :cond_0

    .line 1130
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:I

    .line 1132
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z()I

    move-result v1

    .line 1133
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v2

    .line 1134
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    .line 1131
    invoke-static {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 1130
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 1189
    :goto_0
    return-void

    .line 1142
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    .line 1143
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v1

    .line 1144
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    .line 1141
    invoke-static {v0, v1, v2, v3, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:I

    .line 1139
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1151
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v5, :cond_2

    .line 1154
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    .line 1158
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    .line 1156
    invoke-static {v0, v1, v4, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    .line 1163
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z()I

    move-result v1

    .line 1164
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v2

    .line 1165
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    .line 1162
    invoke-static {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 1154
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1175
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    .line 1176
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v1

    .line 1177
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    .line 1174
    invoke-static {v0, v1, v2, v3, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    .line 1182
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    .line 1180
    invoke-static {v1, v2, v4, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 1172
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->d()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 406
    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 407
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 408
    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 416
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 408
    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->c()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 412
    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 413
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 414
    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-nez v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    .line 416
    goto :goto_0
.end method

.method private b(III)I
    .locals 3

    .prologue
    .line 1209
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return p1

    .line 1212
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1213
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 1214
    :cond_2
    const/4 v1, 0x0

    .line 1215
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1214
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1072
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1076
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_2

    .line 1077
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    .line 1075
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/bb;->a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/av;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1076
    goto :goto_2
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$t;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1450
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iput v1, v0, Landroid/support/v7/widget/ap;->b:I

    .line 1451
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iput p1, v0, Landroid/support/v7/widget/ap;->c:I

    .line 1454
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1455
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->c()I

    move-result v0

    .line 1456
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 1457
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-ge v0, p1, :cond_1

    move v0, v3

    :goto_0
    if-ne v2, v0, :cond_2

    .line 1458
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->f()I

    move-result v0

    move v2, v1

    .line 1466
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Z

    move-result v4

    .line 1467
    if-eqz v4, :cond_3

    .line 1468
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v5}, Landroid/support/v7/widget/av;->c()I

    move-result v5

    sub-int v2, v5, v2

    iput v2, v4, Landroid/support/v7/widget/ap;->f:I

    .line 1469
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v4}, Landroid/support/v7/widget/av;->d()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v2, Landroid/support/v7/widget/ap;->g:I

    .line 1474
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iput-boolean v1, v0, Landroid/support/v7/widget/ap;->h:Z

    .line 1475
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iput-boolean v3, v0, Landroid/support/v7/widget/ap;->a:Z

    .line 1476
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->h()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 1477
    invoke-virtual {v2}, Landroid/support/v7/widget/av;->e()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, v0, Landroid/support/v7/widget/ap;->i:Z

    .line 1478
    return-void

    :cond_1
    move v0, v1

    .line 1457
    goto :goto_0

    .line 1460
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->f()I

    move-result v2

    move v0, v1

    goto :goto_1

    .line 1471
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v5}, Landroid/support/v7/widget/av;->e()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v4, Landroid/support/v7/widget/ap;->g:I

    .line 1472
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    neg-int v2, v2

    iput v2, v0, Landroid/support/v7/widget/ap;->f:I

    goto :goto_2

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1938
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    .line 1940
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 1941
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 1942
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 1943
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/av;->d(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1944
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1946
    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v4, :cond_3

    move v0, v1

    .line 1947
    :goto_1
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_2

    .line 1948
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1966
    :cond_0
    return-void

    .line 1947
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1952
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_4

    .line 1953
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->g()V

    .line 1952
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1956
    :cond_3
    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1959
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->g()V

    .line 1961
    :cond_4
    invoke-virtual {p0, v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V

    .line 1940
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Z)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 1413
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(I)I

    move-result v0

    .line 1414
    if-ne v0, v1, :cond_1

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 1419
    if-lez v0, :cond_0

    .line 1420
    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v1

    neg-int v1, v1

    .line 1424
    sub-int/2addr v0, v1

    .line 1425
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1426
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->a(I)V

    goto :goto_0
.end method

.method private c(III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1533
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v0

    move v2, v0

    .line 1537
    :goto_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    .line 1538
    if-ge p1, p2, :cond_2

    .line 1539
    add-int/lit8 v1, p2, 0x1

    move v0, p1

    .line 1550
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(I)I

    .line 1551
    sparse-switch p3, :sswitch_data_0

    .line 1565
    :goto_2
    if-gt v1, v2, :cond_4

    .line 1573
    :cond_0
    :goto_3
    return-void

    .line 1533
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 1542
    :cond_2
    add-int/lit8 v1, p1, 0x1

    move v0, p2

    .line 1543
    goto :goto_1

    .line 1547
    :cond_3
    add-int v1, p1, p2

    move v0, p1

    goto :goto_1

    .line 1553
    :sswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_2

    .line 1556
    :sswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    goto :goto_2

    .line 1560
    :sswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    .line 1561
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_2

    .line 1569
    :cond_4
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v1

    .line 1570
    :goto_4
    if-gt v0, v1, :cond_0

    .line 1571
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    goto :goto_3

    .line 1569
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v1

    goto :goto_4

    .line 1551
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Z)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 1432
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v0

    .line 1433
    if-ne v0, v1, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1438
    if-lez v0, :cond_0

    .line 1439
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v1

    .line 1443
    sub-int/2addr v0, v1

    .line 1444
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1445
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->a(I)V

    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w(I)I

    move-result v0

    .line 842
    :goto_0
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 843
    const/high16 v0, -0x80000000

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 844
    const/4 v0, 0x1

    return v0

    .line 842
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v(I)I

    move-result v0

    goto :goto_0
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1092
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1096
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_2

    .line 1097
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    .line 1095
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/bb;->a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/av;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1096
    goto :goto_2
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1112
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1116
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_2

    .line 1117
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    .line 1115
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/bb;->b(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/av;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1116
    goto :goto_2
.end method

.method private m(I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1481
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iput p1, v2, Landroid/support/v7/widget/ap;->e:I

    .line 1482
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Landroid/support/v7/widget/ap;->d:I

    .line 1484
    return-void

    .line 1482
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private n(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .prologue
    .line 1734
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1735
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 1736
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_0

    .line 1737
    iget-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v0

    .line 1736
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1739
    :cond_0
    return-object v1
.end method

.method private o(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .prologue
    .line 1743
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1744
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 1745
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_0

    .line 1746
    iget-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v0

    .line 1745
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1748
    :cond_0
    return-object v1
.end method

.method private p(I)I
    .locals 3

    .prologue
    .line 1845
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v1

    .line 1846
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1847
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v2

    .line 1848
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1846
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1852
    :cond_1
    return v1
.end method

.method private p(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1808
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1809
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(Landroid/view/View;)V

    .line 1808
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1811
    :cond_0
    return-void
.end method

.method private q(I)I
    .locals 3

    .prologue
    .line 1856
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v1

    .line 1857
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1858
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v2

    .line 1859
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1857
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1863
    :cond_1
    return v1
.end method

.method private q(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1815
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1816
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/view/View;)V

    .line 1815
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1818
    :cond_0
    return-void
.end method

.method private r(I)I
    .locals 3

    .prologue
    .line 1887
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    .line 1888
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1889
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v2

    .line 1890
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1888
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1894
    :cond_1
    return v1
.end method

.method private s(I)I
    .locals 3

    .prologue
    .line 1898
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    .line 1899
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1900
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v2

    .line 1901
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1899
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1905
    :cond_1
    return v1
.end method

.method private t(I)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1972
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_3

    .line 1973
    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq v0, v3, :cond_2

    .line 1975
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1973
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1975
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private u(I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 2045
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v2

    if-nez v2, :cond_1

    .line 2046
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v2, :cond_0

    .line 2049
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2046
    goto :goto_0

    .line 2048
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v2

    .line 2049
    if-ge p1, v2, :cond_2

    move v2, v0

    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq v2, v3, :cond_3

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private v(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2220
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v3

    move v2, v1

    .line 2221
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2222
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 2223
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 2224
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 2228
    :goto_1
    return v0

    .line 2221
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2228
    goto :goto_1
.end method

.method private w(I)I
    .locals 2

    .prologue
    .line 2237
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2238
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 2239
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 2240
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 2244
    :goto_1
    return v0

    .line 2237
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2244
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private x(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 2394
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2427
    :cond_0
    :goto_0
    return v0

    .line 2396
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq v1, v2, :cond_0

    .line 2398
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 2399
    goto :goto_0

    .line 2404
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 2405
    goto :goto_0

    .line 2406
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 2409
    goto :goto_0

    .line 2412
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2415
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2418
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2421
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 2394
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method K()I
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    .line 2206
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method L()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2210
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    .line 2211
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 2035
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 1337
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    .line 1338
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 1340
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$j;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 2250
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    .line 2251
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    .line 2254
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 2261
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 2266
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2267
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2269
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)Landroid/view/View;
    .locals 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2286
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 2380
    :cond_0
    :goto_0
    return-object v0

    .line 2290
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 2291
    if-nez v6, :cond_2

    move-object v0, v3

    .line 2292
    goto :goto_0

    .line 2295
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()V

    .line 2296
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x(I)I

    move-result v7

    .line 2297
    const/high16 v0, -0x80000000

    if-ne v7, v0, :cond_3

    move-object v0, v3

    .line 2298
    goto :goto_0

    .line 2300
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 2301
    iget-boolean v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    .line 2302
    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 2304
    if-ne v7, v5, :cond_4

    .line 2305
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v0

    .line 2309
    :goto_1
    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$t;)V

    .line 2310
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(I)V

    .line 2312
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v4, v4, Landroid/support/v7/widget/ap;->d:I

    add-int/2addr v4, v0

    iput v4, v1, Landroid/support/v7/widget/ap;->c:I

    .line 2313
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    const v4, 0x3eaaaaab

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v10}, Landroid/support/v7/widget/av;->f()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, v1, Landroid/support/v7/widget/ap;->b:I

    .line 2314
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iput-boolean v5, v1, Landroid/support/v7/widget/ap;->h:Z

    .line 2315
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iput-boolean v2, v1, Landroid/support/v7/widget/ap;->a:Z

    .line 2316
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    invoke-direct {p0, p3, v1, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;Landroid/support/v7/widget/RecyclerView$t;)I

    .line 2317
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 2318
    if-nez v8, :cond_5

    .line 2319
    invoke-virtual {v9, v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(II)Landroid/view/View;

    move-result-object v1

    .line 2320
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_5

    move-object v0, v1

    .line 2321
    goto :goto_0

    .line 2307
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v0

    goto :goto_1

    .line 2327
    :cond_5
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2328
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_2
    if-ltz v4, :cond_9

    .line 2329
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v4

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(II)Landroid/view/View;

    move-result-object v1

    .line 2330
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_6

    move-object v0, v1

    .line 2331
    goto/16 :goto_0

    .line 2328
    :cond_6
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_2

    :cond_7
    move v1, v2

    .line 2335
    :goto_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v4, :cond_9

    .line 2336
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(II)Landroid/view/View;

    move-result-object v4

    .line 2337
    if-eqz v4, :cond_8

    if-eq v4, v6, :cond_8

    move-object v0, v4

    .line 2338
    goto/16 :goto_0

    .line 2335
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2347
    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v0, :cond_c

    move v1, v5

    :goto_4
    const/4 v0, -0x1

    if-ne v7, v0, :cond_d

    move v0, v5

    :goto_5
    if-ne v1, v0, :cond_e

    move v4, v5

    .line 2349
    :goto_6
    if-nez v8, :cond_a

    .line 2350
    if-eqz v4, :cond_f

    .line 2351
    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->j()I

    move-result v0

    .line 2350
    :goto_7
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2353
    if-eqz v0, :cond_a

    if-ne v0, v6, :cond_0

    .line 2358
    :cond_a
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2359
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8
    if-ltz v1, :cond_15

    .line 2360
    iget v0, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    if-ne v1, v0, :cond_10

    .line 2359
    :cond_b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8

    :cond_c
    move v1, v2

    .line 2347
    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    move v4, v2

    goto :goto_6

    .line 2352
    :cond_f
    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->k()I

    move-result v0

    goto :goto_7

    .line 2363
    :cond_10
    if-eqz v4, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v0, v0, v1

    .line 2364
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->j()I

    move-result v0

    .line 2363
    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2366
    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_b

    goto/16 :goto_0

    .line 2364
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v0, v0, v1

    .line 2365
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->k()I

    move-result v0

    goto :goto_9

    .line 2371
    :cond_12
    add-int/lit8 v2, v2, 0x1

    :cond_13
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v0, :cond_15

    .line 2372
    if-eqz v4, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v0, v0, v2

    .line 2373
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->j()I

    move-result v0

    .line 2372
    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2375
    if-eqz v0, :cond_12

    if-eq v0, v6, :cond_12

    goto/16 :goto_0

    .line 2373
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v0, v0, v2

    .line 2374
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->k()I

    move-result v0

    goto :goto_a

    :cond_15
    move-object v0, v3

    .line 2380
    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 430
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eq p1, v0, :cond_1

    .line 431
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()V

    .line 432
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 433
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 434
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 435
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 436
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v2, p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    aput-object v2, v1, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 440
    :cond_1
    return-void
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2125
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_1

    .line 2126
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 2157
    :cond_0
    return-void

    :cond_1
    move p1, p2

    .line 2125
    goto :goto_0

    .line 2130
    :cond_2
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$t;)V

    .line 2133
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    array-length v0, v0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_4

    .line 2134
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    :cond_4
    move v0, v1

    move v2, v1

    .line 2138
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v3, :cond_7

    .line 2140
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v3, v3, Landroid/support/v7/widget/ap;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v3, v3, Landroid/support/v7/widget/ap;->f:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v5, v5, Landroid/support/v7/widget/ap;->f:I

    .line 2141
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2143
    :goto_2
    if-ltz v3, :cond_5

    .line 2145
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    aput v3, v4, v2

    .line 2146
    add-int/lit8 v2, v2, 0x1

    .line 2138
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2141
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v4, v4, Landroid/support/v7/widget/ap;->g:I

    .line 2142
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v4, v4, Landroid/support/v7/widget/ap;->g:I

    sub-int/2addr v3, v4

    goto :goto_2

    .line 2149
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 2152
    :goto_3
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/ap;->a(Landroid/support/v7/widget/RecyclerView$t;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v0, v0, Landroid/support/v7/widget/ap;->c:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    aget v3, v3, v1

    invoke-interface {p4, v0, v3}, Landroid/support/v7/widget/RecyclerView$i$a;->b(II)V

    .line 2155
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v3, v0, Landroid/support/v7/widget/ap;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v4, v4, Landroid/support/v7/widget/ap;->d:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/support/v7/widget/ap;->c:I

    .line 2152
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method a(ILandroid/support/v7/widget/RecyclerView$t;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2162
    if-lez p1, :cond_0

    .line 2164
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v2

    move v0, v1

    .line 2169
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iput-boolean v1, v3, Landroid/support/v7/widget/ap;->a:Z

    .line 2170
    invoke-direct {p0, v2, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$t;)V

    .line 2171
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(I)V

    .line 2172
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v1, v1, Landroid/support/v7/widget/ap;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/ap;->c:I

    .line 2173
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ap;->b:I

    .line 2174
    return-void

    .line 2166
    :cond_0
    const/4 v0, -0x1

    .line 2167
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v2

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    .line 587
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C()I

    move-result v1

    add-int/2addr v1, v0

    .line 588
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v2

    add-int/2addr v0, v2

    .line 589
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 591
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    .line 592
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 593
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F()I

    move-result v2

    .line 592
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 600
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(II)V

    .line 601
    return-void

    .line 595
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 596
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 597
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 598
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G()I

    move-result v2

    .line 597
    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1222
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1223
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1224
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 1228
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 1283
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1284
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    if-nez v1, :cond_0

    .line 1285
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1300
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    .line 1288
    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1289
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_2

    .line 1291
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v0

    iget-boolean v1, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    :goto_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    const/4 v5, 0x0

    .line 1290
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 1291
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1295
    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 1297
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v2

    iget-boolean v3, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    :goto_2
    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    const/4 v5, 0x0

    .line 1295
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 1297
    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 1

    .prologue
    .line 726
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    .line 727
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 728
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 730
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 731
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V
    .locals 1

    .prologue
    .line 822
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b()V

    .line 832
    const/4 v0, 0x0

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 1515
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 1516
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1509
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1510
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 1520
    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1521
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1526
    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1527
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V

    .line 325
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 326
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e()V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 331
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1304
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1305
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 1306
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v0

    .line 1307
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v1

    .line 1308
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 1312
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    .line 1313
    if-ge v0, v1, :cond_2

    .line 1314
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1315
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    .line 1317
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1318
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 529
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Ljava/lang/String;)V

    .line 531
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    if-eq v0, p1, :cond_0

    .line 479
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 481
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    .line 482
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 483
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$j;)Z
    .locals 1

    .prologue
    .line 2275
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    return v0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 2041
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 2

    .prologue
    .line 1346
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1347
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 1349
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    goto :goto_0
.end method

.method b(Z)Landroid/view/View;
    .locals 8

    .prologue
    .line 1359
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v3

    .line 1360
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->d()I

    move-result v4

    .line 1361
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v5

    .line 1362
    const/4 v0, 0x0

    .line 1363
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_4

    .line 1364
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1365
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v6

    .line 1366
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v7

    .line 1367
    if-le v7, v3, :cond_0

    if-lt v6, v4, :cond_1

    .line 1363
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1370
    :cond_1
    if-ge v6, v3, :cond_2

    if-nez p1, :cond_3

    .line 1379
    :cond_2
    :goto_2
    return-object v1

    .line 1375
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1376
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1379
    goto :goto_2
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 449
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 453
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p1, v0, :cond_1

    .line 461
    :goto_0
    return-void

    .line 456
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 458
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    iput-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 459
    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    .line 460
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1504
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1505
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x1

    .line 849
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v2, v5, :cond_1

    :cond_0
    move v1, v0

    .line 923
    :goto_0
    return v1

    .line 853
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 854
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 855
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    move v1, v0

    .line 856
    goto :goto_0

    .line 859
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-ge v2, v1, :cond_f

    .line 862
    :cond_4
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    .line 863
    if-eqz v2, :cond_c

    .line 866
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v0

    .line 867
    :goto_1
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 868
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-eq v0, v4, :cond_7

    .line 869
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_6

    .line 870
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->d()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    sub-int/2addr v0, v3

    .line 872
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0

    .line 867
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v0

    goto :goto_1

    .line 874
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/2addr v0, v3

    .line 876
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0

    .line 882
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v0

    .line 883
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->f()I

    move-result v3

    if-le v0, v3, :cond_9

    .line 885
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 886
    invoke-virtual {v0}, Landroid/support/v7/widget/av;->d()I

    move-result v0

    .line 887
    :goto_2
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 886
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 887
    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    goto :goto_2

    .line 891
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 892
    invoke-virtual {v3}, Landroid/support/v7/widget/av;->c()I

    move-result v3

    sub-int/2addr v0, v3

    .line 893
    if-gez v0, :cond_a

    .line 894
    neg-int v0, v0

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 897
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->d()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 898
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 899
    if-gez v0, :cond_b

    .line 900
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 904
    :cond_b
    iput v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 908
    :cond_c
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 909
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ne v2, v4, :cond_e

    .line 910
    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u(I)I

    move-result v2

    .line 912
    if-ne v2, v1, :cond_d

    move v0, v1

    :cond_d
    iput-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 913
    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b()V

    .line 917
    :goto_3
    iput-boolean v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    goto/16 :goto_0

    .line 915
    :cond_e
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a(I)V

    goto :goto_3

    .line 920
    :cond_f
    iput v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 921
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    goto/16 :goto_0
.end method

.method c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2177
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v1

    .line 2201
    :goto_0
    return p1

    .line 2181
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$t;)V

    .line 2182
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    .line 2183
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iget v2, v2, Landroid/support/v7/widget/ap;->b:I

    .line 2185
    if-ge v2, v0, :cond_2

    .line 2196
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    neg-int v2, p1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->a(I)V

    .line 2198
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 2199
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    iput v1, v0, Landroid/support/v7/widget/ap;->b:I

    .line 2200
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ap;

    invoke-direct {p0, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/ap;)V

    goto :goto_0

    .line 2187
    :cond_2
    if-gez p1, :cond_3

    .line 2188
    neg-int p1, v0

    goto :goto_1

    :cond_3
    move p1, v0

    .line 2190
    goto :goto_1
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method c(Z)Landroid/view/View;
    .locals 7

    .prologue
    .line 1389
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v3

    .line 1390
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->d()I

    move-result v4

    .line 1391
    const/4 v0, 0x0

    .line 1392
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 1393
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1394
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v5

    .line 1395
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v6

    .line 1396
    if-le v6, v3, :cond_0

    if-lt v5, v4, :cond_1

    .line 1392
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 1399
    :cond_1
    if-le v6, v4, :cond_2

    if-nez p1, :cond_3

    .line 1408
    :cond_2
    :goto_2
    return-object v1

    .line 1404
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1405
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1408
    goto :goto_2
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Z)V

    .line 606
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2054
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u(I)I

    move-result v1

    .line 2055
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2056
    if-nez v1, :cond_0

    .line 2057
    const/4 v0, 0x0

    .line 2066
    :goto_0
    return-object v0

    .line 2059
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v2, :cond_1

    .line 2060
    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2061
    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 2063
    :cond_1
    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 2064
    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public d()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 1232
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1233
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1277
    :goto_0
    return-object v0

    .line 1235
    :cond_0
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1236
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 1237
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 1238
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 1240
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v0, :cond_2

    .line 1241
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 1242
    iget-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    array-length v0, v0

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 1243
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 1248
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_5

    .line 1249
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v0

    .line 1250
    :goto_2
    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1251
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1252
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 1253
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    move v0, v1

    .line 1254
    :goto_3
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_6

    .line 1256
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_4

    .line 1257
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    .line 1258
    if-eq v1, v4, :cond_1

    .line 1259
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->d()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1267
    :cond_1
    :goto_4
    iget-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aput v1, v3, v0

    .line 1254
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1245
    :cond_2
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    goto :goto_1

    .line 1250
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v0

    goto :goto_2

    .line 1262
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v1

    .line 1263
    if-eq v1, v4, :cond_1

    .line 1264
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->c()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_4

    .line 1270
    :cond_5
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1271
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1272
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    :cond_6
    move-object v0, v2

    .line 1277
    goto/16 :goto_0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 1088
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, p1, :cond_0

    .line 2080
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b()V

    .line 2082
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 2083
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 2084
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 2085
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 2029
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 1103
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method f(I)V
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    .line 929
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/av;

    .line 930
    invoke-virtual {v0}, Landroid/support/v7/widget/av;->h()I

    move-result v0

    .line 929
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:I

    .line 931
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2024
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method g()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    .line 311
    :goto_0
    return v1

    .line 274
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v4

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v0

    move v3, v0

    .line 281
    :goto_1
    if-nez v4, :cond_3

    .line 282
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Landroid/view/View;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 285
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I()V

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v4

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v0

    move v3, v0

    goto :goto_1

    .line 290
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    if-nez v0, :cond_4

    move v1, v2

    .line 291
    goto :goto_0

    .line 293
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    .line 294
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v3, 0x1

    .line 295
    invoke-virtual {v5, v4, v6, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 296
    if-nez v5, :cond_6

    .line 297
    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    .line 298
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    move v1, v2

    .line 299
    goto :goto_0

    :cond_5
    move v0, v1

    .line 293
    goto :goto_2

    .line 301
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v3, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    mul-int/lit8 v0, v0, -0x1

    .line 302
    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 304
    if-nez v0, :cond_7

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    .line 309
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I()V

    .line 310
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    goto :goto_0

    .line 307
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto :goto_3
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 1123
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method h()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 339
    .line 340
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 341
    new-instance v9, Ljava/util/BitSet;

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {v9, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 342
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-virtual {v9, v5, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 345
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 347
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v4, :cond_1

    move v8, v0

    .line 354
    :goto_1
    if-ge v1, v8, :cond_2

    move v4, v3

    :goto_2
    move v7, v1

    .line 355
    :goto_3
    if-eq v7, v8, :cond_c

    .line 356
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v6

    .line 357
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 358
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v6

    .line 399
    :goto_4
    return-object v0

    :cond_0
    move v2, v0

    .line 345
    goto :goto_0

    .line 352
    :cond_1
    add-int/lit8 v4, v1, 0x1

    move v8, v4

    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v0

    .line 354
    goto :goto_2

    .line 362
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    .line 364
    :cond_4
    iget-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_6

    .line 355
    :cond_5
    add-int v0, v7, v4

    move v7, v0

    goto :goto_3

    .line 368
    :cond_6
    add-int v1, v7, v4

    if-eq v1, v8, :cond_5

    .line 369
    add-int v1, v7, v4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v10

    .line 371
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_8

    .line 373
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v1

    .line 374
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v11

    .line 375
    if-ge v1, v11, :cond_7

    move-object v0, v6

    .line 376
    goto :goto_4

    .line 377
    :cond_7
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 389
    :goto_5
    if-eqz v1, :cond_5

    .line 391
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 392
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_a

    move v1, v3

    :goto_6
    if-gez v2, :cond_b

    move v0, v3

    :goto_7
    if-eq v1, v0, :cond_5

    move-object v0, v6

    .line 393
    goto :goto_4

    .line 381
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v1

    .line 382
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v11

    .line 383
    if-le v1, v11, :cond_9

    move-object v0, v6

    .line 384
    goto :goto_4

    .line 385
    :cond_9
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 386
    goto :goto_5

    :cond_a
    move v1, v5

    .line 392
    goto :goto_6

    :cond_b
    move v0, v5

    goto :goto_7

    .line 399
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    move v1, v5

    goto :goto_5
.end method

.method public i()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 550
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 551
    return-void
.end method

.method public j(I)V
    .locals 2

    .prologue
    .line 1488
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->j(I)V

    .line 1489
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 1490
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d(I)V

    .line 1489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1492
    :cond_0
    return-void
.end method

.method j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 568
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1329
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    .line 1331
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    .line 1330
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1331
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_1
.end method

.method public k(I)V
    .locals 2

    .prologue
    .line 1496
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->k(I)V

    .line 1497
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 1498
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d(I)V

    .line 1497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1500
    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 0

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    .line 319
    :cond_0
    return-void
.end method

.method m()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    .line 1867
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v3

    move v0, v1

    .line 1868
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_0

    .line 1869
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1873
    :cond_0
    return v1

    .line 1868
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method n()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    .line 1877
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v3

    move v0, v1

    .line 1878
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_0

    .line 1879
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1883
    :cond_0
    return v1

    .line 1878
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
