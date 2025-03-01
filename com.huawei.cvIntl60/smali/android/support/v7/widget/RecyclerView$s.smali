.class public abstract Landroid/support/v7/widget/RecyclerView$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$s$b;,
        Landroid/support/v7/widget/RecyclerView$s$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/RecyclerView$i;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroid/support/v7/widget/RecyclerView$s$a;


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 11693
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$i;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 11578
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Landroid/support/v7/widget/RecyclerView$i;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 11547
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    .line 11548
    return-void
.end method

.method a(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 11637
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    .line 11638
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 11639
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->b()V

    .line 11648
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v1, :cond_3

    .line 11649
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$s;->b(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 11650
    if-eqz v1, :cond_3

    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 11651
    :cond_2
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 11652
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 11653
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    .line 11651
    invoke-virtual {v0, v2, v1, v4}, Landroid/support/v7/widget/RecyclerView;->a(II[I)V

    .line 11658
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Z

    .line 11660
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 11662
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    if-ne v1, v2, :cond_6

    .line 11663
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V

    .line 11664
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$s$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 11665
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->b()V

    .line 11671
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    if-eqz v1, :cond_5

    .line 11672
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$s;->a(IILandroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V

    .line 11673
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s$a;->a()Z

    move-result v1

    .line 11674
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$s$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 11675
    if-eqz v1, :cond_5

    .line 11677
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    if-eqz v1, :cond_7

    .line 11678
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Z

    .line 11679
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$v;->a()V

    .line 11687
    :cond_5
    :goto_1
    return-void

    .line 11667
    :cond_6
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11668
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    goto :goto_0

    .line 11683
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->b()V

    goto :goto_1
.end method

.method protected abstract a(IILandroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$s$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$s$a;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$s$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public b(I)Landroid/graphics/PointF;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 11562
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->a()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    .line 11563
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$s$b;

    if-eqz v1, :cond_0

    .line 11564
    check-cast v0, Landroid/support/v7/widget/RecyclerView$s$b;

    .line 11565
    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$s$b;->d(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 11569
    :goto_0
    return-object v0

    .line 11567
    :cond_0
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/support/v7/widget/RecyclerView$s$b;

    .line 11568
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11567
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11569
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 11588
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    if-nez v0, :cond_0

    .line 11602
    :goto_0
    return-void

    .line 11591
    :cond_0
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    .line 11592
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->f()V

    .line 11593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    .line 11594
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    .line 11595
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    .line 11596
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Z

    .line 11598
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 11600
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Landroid/support/v7/widget/RecyclerView$i;

    .line 11601
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 11720
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 11721
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/view/View;

    .line 11726
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 11612
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 11620
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 11630
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    return v0
.end method

.method protected abstract f()V
.end method
