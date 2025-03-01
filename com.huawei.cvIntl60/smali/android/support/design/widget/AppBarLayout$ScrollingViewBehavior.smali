.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1558
    invoke-direct {p0}, Landroid/support/design/widget/i;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 1561
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1563
    sget-object v0, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout:[I

    .line 1564
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1565
    sget v1, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v2, 0x0

    .line 1566
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1565
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->b(I)V

    .line 1567
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1568
    return-void
.end method

.method private static a(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2

    .prologue
    .line 1643
    .line 1644
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1645
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    if-eqz v1, :cond_0

    .line 1646
    check-cast v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v0

    .line 1648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1605
    .line 1606
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1607
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    if-eqz v1, :cond_0

    .line 1610
    check-cast v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    .line 1613
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1614
    invoke-static {v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/AppBarLayout$BaseBehavior;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1615
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 1616
    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->c(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1611
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1618
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1672
    instance-of v0, p2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 1673
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 1674
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1675
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->a(Z)Z

    .line 1678
    :cond_0
    return-void

    .line 1675
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/View;)F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1622
    instance-of v1, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 1623
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 1624
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    .line 1625
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v2

    .line 1626
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a(Landroid/support/design/widget/AppBarLayout;)I

    move-result v3

    .line 1628
    if-eqz v2, :cond_1

    add-int v4, v1, v3

    if-gt v4, v2, :cond_1

    .line 1639
    :cond_0
    :goto_0
    return v0

    .line 1632
    :cond_1
    sub-int/2addr v1, v2

    .line 1633
    if-eqz v1, :cond_0

    .line 1635
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method a(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/design/widget/AppBarLayout;"
        }
    .end annotation

    .prologue
    .line 1653
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1654
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1655
    instance-of v3, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v3, :cond_0

    .line 1656
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 1659
    :goto_1
    return-object v0

    .line 1653
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1659
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic a(I)Z
    .locals 1

    .prologue
    .line 1556
    invoke-super {p0, p1}, Landroid/support/design/widget/i;->a(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1556
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 1

    .prologue
    .line 1556
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1586
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v3

    .line 1587
    if-eqz v3, :cond_1

    .line 1589
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p3, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1591
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:Landroid/graphics/Rect;

    .line 1592
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1594
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1597
    if-nez p4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/support/design/widget/AppBarLayout;->a(ZZ)V

    .line 1601
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 1597
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1601
    goto :goto_1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1573
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    return v0
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 1556
    invoke-super {p0}, Landroid/support/design/widget/i;->b()I

    move-result v0

    return v0
.end method

.method b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1664
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 1665
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    .line 1667
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/i;->b(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method synthetic b(Ljava/util/List;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1556
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1578
    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a(Landroid/view/View;Landroid/view/View;)V

    .line 1579
    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->b(Landroid/view/View;Landroid/view/View;)V

    .line 1580
    const/4 v0, 0x0

    return v0
.end method
