.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$b;,
        Landroid/support/v7/widget/GridLayoutManager$a;,
        Landroid/support/v7/widget/GridLayoutManager$c;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:[I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field g:Landroid/support/v7/widget/GridLayoutManager$c;

.field final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 58
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 73
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$i$b;

    move-result-object v0

    .line 74
    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i$b;->b:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 75
    return-void
.end method

.method private K()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 187
    return-void
.end method

.method private L()V
    .locals 6

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->v()I

    move-result v2

    .line 191
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 192
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 193
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->f()I

    move-result v3

    .line 194
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method private M()V
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->C()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->A()I

    move-result v1

    sub-int/2addr v0, v1

    .line 281
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->m(I)V

    .line 282
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->z()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->D()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->B()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private N()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-eq v0, v1, :cond_1

    .line 365
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 367
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I
    .locals 3

    .prologue
    .line 451
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    .line 463
    :goto_0
    return v0

    .line 454
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$p;->b(I)I

    move-result v0

    .line 455
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 460
    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(FI)V
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 748
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->m(I)V

    .line 749
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;IIZ)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 771
    if-eqz p5, :cond_0

    .line 774
    const/4 v0, 0x1

    move v1, v0

    move v2, v3

    .line 781
    :goto_0
    if-eq v2, p3, :cond_1

    .line 782
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v4, v0, v2

    .line 783
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 784
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v4

    iput v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    .line 785
    iput v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    .line 786
    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    add-int/2addr v3, v0

    .line 781
    add-int/2addr v2, v1

    goto :goto_0

    .line 776
    :cond_0
    add-int/lit8 v2, p3, -0x1

    move v1, v0

    move p3, v0

    .line 778
    goto :goto_0

    .line 788
    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    .line 755
    if-eqz p4, :cond_1

    .line 756
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z

    move-result v0

    .line 760
    :goto_0
    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 763
    :cond_0
    return-void

    .line 758
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 713
    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager$b;->d:Landroid/graphics/Rect;

    .line 714
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->bottomMargin:I

    add-int/2addr v2, v3

    .line 716
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->rightMargin:I

    add-int/2addr v3, v1

    .line 718
    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->a(II)I

    move-result v1

    .line 721
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v4, v5, :cond_0

    .line 722
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    invoke-static {v1, p2, v3, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 724
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->f()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->x()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    invoke-static {v3, v4, v2, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v0

    move v2, v1

    .line 732
    :goto_0
    invoke-direct {p0, p1, v2, v0, p3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 733
    return-void

    .line 727
    :cond_0
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    invoke-static {v1, p2, v2, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 729
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->f()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->w()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    invoke-static {v2, v4, v3, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v2

    move v0, v1

    goto :goto_0
.end method

.method static a([III)[I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 321
    if-eqz p0, :cond_0

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_1

    .line 323
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    .line 325
    :cond_1
    aput v4, p0, v4

    .line 326
    div-int v1, p2, p1

    .line 327
    rem-int v6, p2, p1

    .line 330
    const/4 v0, 0x1

    move v3, v0

    move v2, v4

    move v5, v4

    :goto_0
    if-gt v3, p1, :cond_2

    .line 332
    add-int/2addr v2, v6

    .line 333
    if-lez v2, :cond_3

    sub-int v0, p1, v2

    if-ge v0, v6, :cond_3

    .line 334
    add-int/lit8 v0, v1, 0x1

    .line 335
    sub-int/2addr v2, p1

    .line 337
    :goto_1
    add-int v4, v5, v0

    .line 338
    aput v4, p0, v3

    .line 330
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v4

    goto :goto_0

    .line 340
    :cond_2
    return-object p0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 467
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$c;->b(II)I

    move-result v0

    .line 484
    :cond_0
    :goto_0
    return v0

    .line 470
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 471
    if-ne v0, v1, :cond_0

    .line 474
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$p;->b(I)I

    move-result v0

    .line 475
    if-ne v0, v1, :cond_2

    .line 480
    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v0, 0x0

    goto :goto_0

    .line 484
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$c;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 387
    if-ne p4, v0, :cond_0

    .line 389
    :goto_0
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v1

    .line 390
    if-eqz v0, :cond_1

    .line 392
    :goto_1
    if-lez v1, :cond_3

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    if-lez v0, :cond_3

    .line 393
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 394
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v1

    goto :goto_1

    .line 387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 399
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    move v0, v1

    .line 401
    :goto_2
    if-ge v2, v3, :cond_2

    .line 402
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v1

    .line 403
    if-le v1, v0, :cond_2

    .line 404
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .line 409
    goto :goto_2

    .line 410
    :cond_2
    iput v2, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 412
    :cond_3
    return-void
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 488
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v0

    .line 505
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 492
    if-ne v0, v1, :cond_0

    .line 495
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$p;->b(I)I

    move-result v0

    .line 496
    if-ne v0, v1, :cond_2

    .line 501
    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x1

    goto :goto_0

    .line 505
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private m(I)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->a([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    .line 311
    return-void
.end method


# virtual methods
.method a(II)I
    .locals 3

    .prologue
    .line 344
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 348
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->M()V

    .line 373
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->N()V

    .line 374
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 119
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 126
    :goto_0
    return v0

    .line 121
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 122
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$j;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 227
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    .line 231
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 243
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 246
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 417
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->i()V

    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v5

    .line 421
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->d()I

    move-result v6

    .line 422
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v2, v3

    move-object v4, v3

    .line 424
    :goto_1
    if-eq p3, p4, :cond_4

    .line 425
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 426
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 427
    if-ltz v0, :cond_7

    if-ge v0, p5, :cond_7

    .line 428
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v0

    .line 429
    if-eqz v0, :cond_1

    move-object v0, v2

    .line 424
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    goto :goto_1

    .line 422
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$j;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    if-nez v4, :cond_7

    move-object v0, v2

    move-object v4, v3

    .line 434
    goto :goto_2

    .line 436
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    .line 437
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_5

    .line 438
    :cond_3
    if-nez v2, :cond_7

    move-object v0, v3

    .line 439
    goto :goto_2

    .line 446
    :cond_4
    if-eqz v2, :cond_6

    :goto_3
    move-object v3, v2

    :cond_5
    return-object v3

    :cond_6
    move-object v2, v4

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)Landroid/view/View;
    .locals 26

    .prologue
    .line 995
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    .line 996
    if-nez v18, :cond_1

    .line 997
    const/4 v12, 0x0

    .line 1112
    :cond_0
    :goto_0
    return-object v12

    .line 999
    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 1000
    iget v0, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    move/from16 v19, v0

    .line 1001
    iget v5, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    iget v4, v4, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    add-int v20, v5, v4

    .line 1002
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)Landroid/view/View;

    move-result-object v4

    .line 1003
    if-nez v4, :cond_2

    .line 1004
    const/4 v12, 0x0

    goto :goto_0

    .line 1008
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->f(I)I

    move-result v4

    .line 1009
    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/widget/GridLayoutManager;->k:Z

    if-eq v4, v5, :cond_5

    const/4 v4, 0x1

    .line 1011
    :goto_2
    if-eqz v4, :cond_6

    .line 1012
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->v()I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    .line 1013
    const/4 v6, -0x1

    .line 1014
    const/4 v4, -0x1

    move v5, v4

    .line 1020
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->h()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v8, v4

    .line 1025
    :goto_4
    const/4 v15, 0x0

    .line 1026
    const/4 v14, -0x1

    .line 1027
    const/4 v13, 0x0

    .line 1035
    const/4 v11, 0x0

    .line 1036
    const/4 v10, -0x1

    .line 1037
    const/4 v9, 0x0

    .line 1044
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v21

    move/from16 v17, v7

    .line 1045
    :goto_5
    move/from16 v0, v17

    if-eq v0, v5, :cond_3

    .line 1046
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v4

    .line 1047
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v12

    .line 1048
    move-object/from16 v0, v18

    if-ne v12, v0, :cond_8

    .line 1112
    :cond_3
    if-eqz v15, :cond_16

    :goto_6
    move-object v12, v15

    goto :goto_0

    .line 1009
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1016
    :cond_6
    const/4 v7, 0x0

    .line 1017
    const/4 v6, 0x1

    .line 1018
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->v()I

    move-result v4

    move v5, v4

    goto :goto_3

    .line 1020
    :cond_7
    const/4 v4, 0x0

    move v8, v4

    goto :goto_4

    .line 1052
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_a

    move/from16 v0, v21

    if-eq v4, v0, :cond_a

    .line 1057
    if-nez v15, :cond_3

    :cond_9
    move v4, v9

    move v7, v10

    .line 1045
    :goto_7
    add-int v12, v17, v6

    move/from16 v17, v12

    move v9, v4

    move v10, v7

    goto :goto_5

    .line 1063
    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 1064
    iget v0, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    move/from16 v22, v0

    .line 1065
    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    iget v0, v4, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    move/from16 v16, v0

    add-int v23, v7, v16

    .line 1066
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_b

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 1070
    :cond_b
    const/4 v7, 0x0

    .line 1071
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-eqz v16, :cond_c

    if-eqz v15, :cond_d

    .line 1072
    :cond_c
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_f

    if-nez v11, :cond_f

    .line 1073
    :cond_d
    const/4 v7, 0x1

    .line 1098
    :cond_e
    :goto_8
    if-eqz v7, :cond_9

    .line 1099
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1101
    iget v14, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    .line 1102
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1103
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v13, v4, v7

    move v4, v9

    move v7, v10

    move-object v15, v12

    goto :goto_7

    .line 1075
    :cond_f
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1076
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 1077
    sub-int v16, v24, v16

    .line 1078
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 1079
    move/from16 v0, v16

    if-le v0, v13, :cond_10

    .line 1080
    const/4 v7, 0x1

    goto :goto_8

    .line 1081
    :cond_10
    move/from16 v0, v16

    if-ne v0, v13, :cond_e

    move/from16 v0, v22

    if-le v0, v14, :cond_11

    const/16 v16, 0x1

    :goto_9
    move/from16 v0, v16

    if-ne v8, v0, :cond_e

    .line 1084
    const/4 v7, 0x1

    goto :goto_8

    .line 1081
    :cond_11
    const/16 v16, 0x0

    goto :goto_9

    .line 1086
    :cond_12
    if-nez v15, :cond_e

    const/16 v24, 0x0

    const/16 v25, 0x1

    .line 1087
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;ZZ)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1088
    move/from16 v0, v16

    if-le v0, v9, :cond_13

    .line 1089
    const/4 v7, 0x1

    goto :goto_8

    .line 1090
    :cond_13
    move/from16 v0, v16

    if-ne v0, v9, :cond_e

    move/from16 v0, v22

    if-le v0, v10, :cond_14

    const/16 v16, 0x1

    :goto_a
    move/from16 v0, v16

    if-ne v8, v0, :cond_e

    .line 1093
    const/4 v7, 0x1

    goto :goto_8

    .line 1090
    :cond_14
    const/16 v16, 0x0

    goto :goto_a

    .line 1106
    :cond_15
    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    .line 1107
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1108
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int/2addr v4, v9

    move-object v11, v12

    goto/16 :goto_7

    :cond_16
    move-object v15, v11

    .line 1112
    goto/16 :goto_6
.end method

.method public a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 810
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne p1, v0, :cond_0

    .line 821
    :goto_0
    return-void

    .line 813
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 814
    if-ge p1, v1, :cond_1

    .line 815
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 819
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 820
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->o()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    if-nez v0, :cond_0

    .line 287
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/graphics/Rect;II)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->A()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->C()I

    move-result v1

    add-int/2addr v1, v0

    .line 291
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->B()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->D()I

    move-result v2

    add-int/2addr v0, v2

    .line 292
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 294
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->G()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    .line 295
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 296
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->F()I

    move-result v2

    .line 295
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v1

    .line 303
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->f(II)V

    .line 304
    return-void

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 299
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->F()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v1

    .line 300
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 301
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->G()I

    move-result v2

    .line 300
    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    .line 356
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->M()V

    .line 357
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    .line 360
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->N()V

    .line 361
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 13

    .prologue
    .line 526
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->i()I

    move-result v11

    .line 527
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v11, v1, :cond_2

    const/4 v1, 0x1

    move v7, v1

    .line 528
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->v()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    aget v1, v1, v2

    move v10, v1

    .line 532
    :goto_1
    if-eqz v7, :cond_0

    .line 533
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->M()V

    .line 535
    :cond_0
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v6, 0x1

    .line 537
    :goto_2
    const/4 v4, 0x0

    .line 538
    const/4 v5, 0x0

    .line 539
    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 540
    if-nez v6, :cond_1

    .line 541
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v1

    .line 542
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v2

    .line 543
    add-int/2addr v1, v2

    .line 545
    :cond_1
    :goto_3
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v4, v2, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$t;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-lez v1, :cond_6

    .line 546
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 547
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v3

    .line 548
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-le v3, v8, :cond_5

    .line 549
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " requires "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 527
    :cond_2
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_0

    .line 528
    :cond_3
    const/4 v1, 0x0

    move v10, v1

    goto :goto_1

    .line 535
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 553
    :cond_5
    sub-int/2addr v1, v3

    .line 554
    if-gez v1, :cond_7

    .line 566
    :cond_6
    if-nez v4, :cond_8

    .line 567
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    .line 700
    :goto_4
    return-void

    .line 557
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v2

    .line 558
    if-eqz v2, :cond_6

    .line 561
    add-int/2addr v5, v3

    .line 562
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aput-object v2, v3, v4

    .line 563
    add-int/lit8 v4, v4, 0x1

    .line 564
    goto :goto_3

    .line 571
    :cond_8
    const/4 v9, 0x0

    .line 572
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 575
    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;IIZ)V

    .line 576
    const/4 v1, 0x0

    move v5, v1

    move v3, v8

    move v2, v9

    :goto_5
    if-ge v5, v4, :cond_d

    .line 577
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v8, v1, v5

    .line 578
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v1, :cond_b

    .line 579
    if-eqz v6, :cond_a

    .line 580
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;)V

    .line 591
    :goto_6
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 593
    const/4 v1, 0x0

    invoke-direct {p0, v8, v11, v1}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    .line 594
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v1

    .line 595
    if-le v1, v2, :cond_9

    move v2, v1

    .line 598
    :cond_9
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 599
    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v12, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v12, v8}, Landroid/support/v7/widget/av;->f(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    int-to-float v1, v1

    div-float v1, v8, v1

    .line 601
    cmpl-float v8, v1, v3

    if-lez v8, :cond_1b

    .line 576
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move v3, v1

    goto :goto_5

    .line 582
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_6

    .line 585
    :cond_b
    if-eqz v6, :cond_c

    .line 586
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;)V

    goto :goto_6

    .line 588
    :cond_c
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;I)V

    goto :goto_6

    .line 605
    :cond_d
    if-eqz v7, :cond_e

    .line 607
    invoke-direct {p0, v3, v10}, Landroid/support/v7/widget/GridLayoutManager;->a(FI)V

    .line 609
    const/4 v2, 0x0

    .line 610
    const/4 v1, 0x0

    move v3, v1

    :goto_8
    if-ge v3, v4, :cond_e

    .line 611
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v1, v1, v3

    .line 612
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    invoke-direct {p0, v1, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    .line 613
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v1

    .line 614
    if-le v1, v2, :cond_1a

    .line 610
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_8

    .line 622
    :cond_e
    const/4 v1, 0x0

    move v5, v1

    :goto_a
    if-ge v5, v4, :cond_11

    .line 623
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v6, v1, v5

    .line 624
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_f

    .line 625
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 626
    iget-object v3, v1, Landroid/support/v7/widget/GridLayoutManager$b;->d:Landroid/graphics/Rect;

    .line 627
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->bottomMargin:I

    add-int/2addr v7, v8

    .line 629
    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v3, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->rightMargin:I

    add-int/2addr v3, v8

    .line 631
    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    iget v9, v1, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    invoke-virtual {p0, v8, v9}, Landroid/support/v7/widget/GridLayoutManager;->a(II)I

    move-result v8

    .line 634
    iget v9, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 635
    const/high16 v9, 0x40000000    # 2.0f

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v3, v1, v10}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v3

    .line 637
    sub-int v1, v2, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 645
    :goto_b
    const/4 v7, 0x1

    invoke-direct {p0, v6, v3, v1, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 622
    :cond_f
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_a

    .line 640
    :cond_10
    sub-int v3, v2, v3

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 642
    const/high16 v9, 0x40000000    # 2.0f

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v1, v10}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    goto :goto_b

    .line 649
    :cond_11
    move-object/from16 v0, p4

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    .line 651
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 652
    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    .line 653
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_14

    .line 654
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 655
    sub-int v2, v1, v2

    .line 669
    :goto_c
    const/4 v3, 0x0

    move v10, v1

    move v8, v2

    move v9, v5

    move v7, v6

    :goto_d
    if-ge v3, v4, :cond_19

    .line 670
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v6, v1, v3

    .line 671
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 672
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_18

    .line 673
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->h()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 674
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->A()I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    iget v9, v1, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    sub-int/2addr v7, v9

    aget v5, v5, v7

    add-int v9, v2, v5

    .line 675
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/av;->f(Landroid/view/View;)I

    move-result v2

    sub-int v7, v9, v2

    :goto_e
    move-object v5, p0

    .line 686
    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 694
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$b;->d()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$b;->e()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 695
    :cond_12
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    .line 697
    :cond_13
    move-object/from16 v0, p4

    iget-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    .line 669
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_d

    .line 657
    :cond_14
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 658
    add-int v1, v3, v2

    move v2, v3

    goto :goto_c

    .line 661
    :cond_15
    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_16

    .line 662
    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 663
    sub-int v6, v5, v2

    move v2, v3

    goto :goto_c

    .line 665
    :cond_16
    move-object/from16 v0, p3

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 666
    add-int v5, v6, v2

    move v2, v3

    goto :goto_c

    .line 677
    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->A()I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v7, v1, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    aget v5, v5, v7

    add-int v7, v2, v5

    .line 678
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/av;->f(Landroid/view/View;)I

    move-result v2

    add-int v9, v7, v2

    goto :goto_e

    .line 681
    :cond_18
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->B()I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    aget v5, v5, v8

    add-int v8, v2, v5

    .line 682
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/av;->f(Landroid/view/View;)I

    move-result v2

    add-int v10, v8, v2

    goto :goto_e

    .line 699
    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    move v1, v2

    goto/16 :goto_9

    :cond_1b
    move v1, v3

    goto/16 :goto_7
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .prologue
    .line 146
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager$b;

    if-nez v1, :cond_0

    .line 148
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 164
    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    .line 151
    check-cast v6, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 152
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->f()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v2

    .line 153
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_2

    .line 155
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 157
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    .line 154
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 159
    :cond_2
    const/4 v3, 0x1

    .line 161
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v4

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v5

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 162
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    .line 159
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 182
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 511
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    move v0, v1

    .line 513
    :goto_0
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$t;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 514
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 515
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroid/support/v7/widget/RecyclerView$i$a;->b(II)V

    .line 516
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v3

    .line 517
    sub-int/2addr v2, v3

    .line 518
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 519
    add-int/lit8 v0, v0, 0x1

    .line 520
    goto :goto_0

    .line 521
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 207
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 202
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 223
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 218
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 113
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$j;)Z
    .locals 1

    .prologue
    .line 252
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$b;

    return v0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->M()V

    .line 381
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->N()V

    .line 382
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 132
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v0, v1, :cond_0

    .line 133
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 140
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 136
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 212
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->L()V

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)V

    .line 175
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->K()V

    .line 176
    return-void
.end method
