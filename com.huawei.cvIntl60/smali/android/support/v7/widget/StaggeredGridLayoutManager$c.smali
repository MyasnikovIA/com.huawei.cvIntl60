.class Landroid/support/v7/widget/StaggeredGridLayoutManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field final e:I

.field final synthetic f:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2517
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    .line 2512
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2513
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2514
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    .line 2518
    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    .line 2519
    return-void
.end method


# virtual methods
.method a(I)I
    .locals 2

    .prologue
    .line 2522
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2523
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2529
    :cond_0
    :goto_0
    return p1

    .line 2525
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2528
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a()V

    .line 2529
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    goto :goto_0
.end method

.method a(IIZ)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2795
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(IIZZZ)I

    move-result v0

    return v0
.end method

.method a(IIZZZ)I
    .locals 8

    .prologue
    .line 2758
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v4

    .line 2759
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->d()I

    move-result v5

    .line 2760
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 2761
    :goto_0
    if-eq p1, p2, :cond_b

    .line 2762
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2763
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v6

    .line 2764
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v7

    .line 2765
    if-eqz p5, :cond_2

    if-gt v6, v5, :cond_1

    const/4 v2, 0x1

    move v3, v2

    .line 2767
    :goto_1
    if-eqz p5, :cond_5

    if-lt v7, v4, :cond_4

    const/4 v2, 0x1

    .line 2769
    :goto_2
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 2770
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 2772
    if-lt v6, v4, :cond_a

    if-gt v7, v5, :cond_a

    .line 2773
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 2785
    :goto_3
    return v0

    .line 2760
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 2765
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    :cond_2
    if-ge v6, v5, :cond_3

    const/4 v2, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 2767
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    if-le v7, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 2775
    :cond_7
    if-eqz p4, :cond_8

    .line 2777
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_3

    .line 2778
    :cond_8
    if-lt v6, v4, :cond_9

    if-le v7, v5, :cond_a

    .line 2781
    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_3

    .line 2761
    :cond_a
    add-int/2addr p1, v1

    goto :goto_0

    .line 2785
    :cond_b
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public a(II)Landroid/view/View;
    .locals 5

    .prologue
    .line 2803
    const/4 v1, 0x0

    .line 2804
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 2805
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2806
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 2807
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2808
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_1

    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 2809
    invoke-virtual {v4, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    if-lt v4, p1, :cond_2

    :cond_1
    move-object v0, v1

    .line 2832
    :goto_1
    return-object v0

    .line 2812
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2806
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    .line 2819
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    .line 2820
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2821
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_6

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 2822
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    if-gt v3, p1, :cond_5

    move-object v0, v1

    .line 2823
    goto :goto_1

    .line 2825
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2819
    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method a()V
    .locals 3

    .prologue
    .line 2533
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2534
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    .line 2535
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2536
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2538
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2539
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2540
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2543
    :cond_0
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2589
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 2590
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 2591
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2592
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2593
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2594
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2596
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2597
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    .line 2599
    :cond_2
    return-void
.end method

.method a(ZI)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 2617
    if-eqz p1, :cond_1

    .line 2618
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v0

    .line 2622
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e()V

    .line 2623
    if-ne v0, v2, :cond_2

    .line 2634
    :cond_0
    :goto_1
    return-void

    .line 2620
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v0

    goto :goto_0

    .line 2626
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 2627
    invoke-virtual {v1}, Landroid/support/v7/widget/av;->c()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2630
    :cond_4
    if-eq p2, v2, :cond_5

    .line 2631
    add-int/2addr v0, p2

    .line 2633
    :cond_5
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    goto :goto_1
.end method

.method b()I
    .locals 2

    .prologue
    .line 2547
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2548
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2551
    :goto_0
    return v0

    .line 2550
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a()V

    .line 2551
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    goto :goto_0
.end method

.method b(I)I
    .locals 2

    .prologue
    .line 2555
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2556
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2563
    :cond_0
    :goto_0
    return p1

    .line 2558
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2559
    if-eqz v0, :cond_0

    .line 2562
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c()V

    .line 2563
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    goto :goto_0
.end method

.method b(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2602
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 2603
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 2604
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2605
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2606
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2607
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2609
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2610
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    .line 2612
    :cond_2
    return-void
.end method

.method c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
    .locals 1

    .prologue
    .line 2683
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 2567
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2568
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    .line 2569
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2570
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_0

    .line 2571
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2572
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2573
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2574
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2577
    :cond_0
    return-void
.end method

.method c(I)V
    .locals 0

    .prologue
    .line 2648
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2649
    return-void
.end method

.method d()I
    .locals 2

    .prologue
    .line 2581
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2582
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2585
    :goto_0
    return v0

    .line 2584
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c()V

    .line 2585
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    goto :goto_0
.end method

.method d(I)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2687
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    if-eq v0, v1, :cond_0

    .line 2688
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2690
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    if-eq v0, v1, :cond_1

    .line 2691
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2693
    :cond_1
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 2637
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2638
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f()V

    .line 2639
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    .line 2640
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2643
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2644
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2645
    return-void
.end method

.method g()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2652
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2653
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2654
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v2

    .line 2655
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 2656
    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2657
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    .line 2659
    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 2660
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2662
    :cond_2
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2663
    return-void
.end method

.method h()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2666
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2667
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    .line 2668
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 2669
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2670
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2672
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2673
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/av;->e(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    .line 2675
    :cond_2
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2676
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 2679
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    return v0
.end method

.method public j()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2702
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    .line 2703
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(IIZ)I

    move-result v0

    .line 2704
    :goto_0
    return v0

    .line 2703
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    .line 2704
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public k()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2720
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    .line 2721
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(IIZ)I

    move-result v0

    .line 2722
    :goto_0
    return v0

    .line 2721
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    .line 2722
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(IIZ)I

    move-result v0

    goto :goto_0
.end method
