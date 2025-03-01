.class public final Landroid/support/v7/widget/RecyclerView$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Landroid/support/v7/widget/RecyclerView$o;

.field final synthetic f:Landroid/support/v7/widget/RecyclerView;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroid/support/v7/widget/RecyclerView$u;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 5637
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    .line 5639
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    .line 5641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    .line 5643
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    .line 5644
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->g:Ljava/util/List;

    .line 5646
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$p;->h:I

    .line 5647
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$p;->d:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 6061
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 6062
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6063
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 6064
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/view/ViewGroup;Z)V

    .line 6061
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6067
    :cond_1
    if-nez p2, :cond_2

    .line 6079
    :goto_1
    return-void

    .line 6071
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 6072
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6073
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 6075
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 6076
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6077
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$w;IIJ)Z
    .locals 6
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 5744
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->p:Landroid/support/v7/widget/RecyclerView;

    .line 5745
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->h()I

    move-result v1

    .line 5746
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 5747
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p4, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    move-wide v4, p4

    .line 5748
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$o;->b(IJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5750
    const/4 v0, 0x0

    .line 5759
    :goto_0
    return v0

    .line 5752
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 5753
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    .line 5754
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->h()I

    move-result v5

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v7/widget/RecyclerView$o;->b(IJ)V

    .line 5755
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$p;->e(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 5756
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5757
    iput p3, p1, Landroid/support/v7/widget/RecyclerView$w;->g:I

    .line 5759
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 2

    .prologue
    .line 6039
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6040
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    .line 6041
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 6043
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 6046
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6047
    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    .line 6048
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/aw;

    .line 6049
    invoke-virtual {v1}, Landroid/support/v7/widget/aw;->b()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v1

    .line 6048
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 6052
    :cond_1
    return-void
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 2

    .prologue
    .line 6055
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6056
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/view/ViewGroup;Z)V

    .line 6058
    :cond_0
    return-void
.end method


# virtual methods
.method a(IZJ)Landroid/support/v7/widget/RecyclerView$w;
    .locals 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v10, 0x2000

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5882
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 5883
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    .line 5884
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    .line 5885
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5890
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5891
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$p;->f(I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v1

    .line 5892
    if-eqz v1, :cond_6

    move v0, v6

    :goto_0
    move v2, v0

    .line 5895
    :goto_1
    if-nez v1, :cond_19

    .line 5896
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$p;->b(IZ)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 5897
    if-eqz v0, :cond_4

    .line 5898
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5900
    if-nez p2, :cond_3

    .line 5903
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    .line 5904
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5905
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v1, v3, v7}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5906
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->j()V

    .line 5910
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    :cond_3
    move-object v0, v8

    .line 5918
    :cond_4
    :goto_3
    if-nez v0, :cond_18

    .line 5919
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/d;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/d;->b(I)I

    move-result v3

    .line 5920
    if-ltz v3, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v1

    if-lt v3, v1, :cond_9

    .line 5921
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    .line 5923
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v7

    .line 5892
    goto/16 :goto_0

    .line 5907
    :cond_7
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5908
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->l()V

    goto :goto_2

    :cond_8
    move v2, v6

    .line 5914
    goto :goto_3

    .line 5926
    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$a;->b(I)I

    move-result v1

    .line 5928
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$a;->e()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5929
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$a;->a(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1, p2}, Landroid/support/v7/widget/RecyclerView$p;->a(JIZ)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 5931
    if-eqz v0, :cond_17

    .line 5933
    iput v3, v0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    move v9, v6

    .line 5937
    :goto_4
    if-nez v0, :cond_b

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->i:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v2, :cond_b

    .line 5940
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->i:Landroid/support/v7/widget/RecyclerView$u;

    .line 5941
    invoke-virtual {v2, p0, p1, v1}, Landroid/support/v7/widget/RecyclerView$u;->a(Landroid/support/v7/widget/RecyclerView$p;II)Landroid/view/View;

    move-result-object v2

    .line 5942
    if-eqz v2, :cond_b

    .line 5943
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 5944
    if-nez v0, :cond_a

    .line 5945
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    .line 5947
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5948
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5949
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    .line 5951
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5955
    :cond_b
    if-nez v0, :cond_c

    .line 5960
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->g()Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$o;->a(I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 5961
    if-eqz v0, :cond_c

    .line 5962
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->v()V

    .line 5963
    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->a:Z

    if-eqz v2, :cond_c

    .line 5964
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->f(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 5968
    :cond_c
    if-nez v0, :cond_f

    .line 5969
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 5970
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p3, v4

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    move-wide v4, p3

    .line 5971
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$o;->a(IJJ)Z

    move-result v0

    if-nez v0, :cond_d

    move-object v1, v8

    .line 6035
    :goto_5
    return-object v1

    .line 5975
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/widget/RecyclerView$a;->c(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 5976
    sget-boolean v4, Landroid/support/v7/widget/RecyclerView;->d:Z

    if-eqz v4, :cond_e

    .line 5978
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    .line 5979
    if-eqz v4, :cond_e

    .line 5980
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Landroid/support/v7/widget/RecyclerView$w;->b:Ljava/lang/ref/WeakReference;

    .line 5984
    :cond_e
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    .line 5985
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    sub-long v2, v4, v2

    invoke-virtual {v8, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$o;->a(IJ)V

    :cond_f
    move-object v1, v0

    move v8, v9

    .line 5995
    :goto_6
    if-eqz v8, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 5996
    invoke-virtual {v1, v10}, Landroid/support/v7/widget/RecyclerView$w;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5997
    invoke-virtual {v1, v7, v10}, Landroid/support/v7/widget/RecyclerView$w;->a(II)V

    .line 5998
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$t;->j:Z

    if-eqz v0, :cond_10

    .line 6000
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$f;->e(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    .line 6001
    or-int/lit16 v0, v0, 0x1000

    .line 6002
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/RecyclerView$f;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    .line 6003
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->u()Ljava/util/List;

    move-result-object v4

    .line 6002
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$w;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$f$c;

    move-result-object v0

    .line 6004
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$f$c;)V

    .line 6009
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->p()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6011
    iput p1, v1, Landroid/support/v7/widget/RecyclerView$w;->g:I

    move v2, v7

    .line 6022
    :goto_7
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6024
    if-nez v0, :cond_13

    .line 6025
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    .line 6026
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6033
    :goto_8
    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$j;->c:Landroid/support/v7/widget/RecyclerView$w;

    .line 6034
    if-eqz v8, :cond_15

    if-eqz v2, :cond_15

    :goto_9
    iput-boolean v6, v0, Landroid/support/v7/widget/RecyclerView$j;->f:Z

    goto/16 :goto_5

    .line 6012
    :cond_11
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->p()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6018
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->b(I)I

    move-result v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p3

    .line 6019
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$w;IIJ)Z

    move-result v0

    move v2, v0

    goto :goto_7

    .line 6027
    :cond_13
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 6028
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    .line 6029
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 6031
    :cond_14
    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    goto :goto_8

    :cond_15
    move v6, v7

    .line 6034
    goto :goto_9

    :cond_16
    move v2, v7

    goto :goto_7

    :cond_17
    move v9, v2

    goto/16 :goto_4

    :cond_18
    move-object v1, v0

    move v8, v2

    goto/16 :goto_6

    :cond_19
    move-object v0, v1

    goto/16 :goto_3

    :cond_1a
    move-object v1, v8

    move v2, v7

    goto/16 :goto_1
.end method

.method a(JIZ)Landroid/support/v7/widget/RecyclerView$w;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 6429
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6430
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 6431
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6432
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->g()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->k()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6433
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->h()I

    move-result v3

    if-ne p3, v3, :cond_1

    .line 6434
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    .line 6435
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6444
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6445
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$w;->a(II)V

    .line 6477
    :cond_0
    :goto_1
    return-object v0

    .line 6450
    :cond_1
    if-nez p4, :cond_2

    .line 6454
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6455
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6456
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/view/View;)V

    .line 6430
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 6462
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6463
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    .line 6464
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6465
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->g()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_5

    .line 6466
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->h()I

    move-result v3

    if-ne p3, v3, :cond_4

    .line 6467
    if-nez p4, :cond_0

    .line 6468
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 6471
    :cond_4
    if-nez p4, :cond_5

    .line 6472
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    move-object v0, v1

    .line 6473
    goto :goto_1

    .line 6463
    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    .line 6477
    goto :goto_1
.end method

.method a(IZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 5858
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(IZJ)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 5660
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5661
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->d()V

    .line 5662
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 5670
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$p;->h:I

    .line 5671
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->b()V

    .line 5672
    return-void
.end method

.method a(II)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 6501
    if-ge p1, p2, :cond_1

    .line 6504
    const/4 v0, -0x1

    move v1, v0

    move v2, p2

    move v3, p1

    .line 6510
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v5

    .line 6511
    :goto_1
    if-ge v4, v6, :cond_4

    .line 6512
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6513
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    if-lt v7, v3, :cond_0

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    if-le v7, v2, :cond_2

    .line 6511
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 6508
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    move v2, p1

    move v3, p2

    goto :goto_0

    .line 6516
    :cond_2
    iget v7, v0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    if-ne v7, p1, :cond_3

    .line 6517
    sub-int v7, p2, p1

    invoke-virtual {v0, v7, v5}, Landroid/support/v7/widget/RecyclerView$w;->a(IZ)V

    goto :goto_2

    .line 6519
    :cond_3
    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/RecyclerView$w;->a(IZ)V

    goto :goto_2

    .line 6526
    :cond_4
    return-void
.end method

.method a(IIZ)V
    .locals 4

    .prologue
    .line 6549
    add-int v2, p1, p2

    .line 6550
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6551
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 6552
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6553
    if-eqz v0, :cond_0

    .line 6554
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    if-lt v3, v2, :cond_1

    .line 6560
    neg-int v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/support/v7/widget/RecyclerView$w;->a(IZ)V

    .line 6551
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6561
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    if-lt v3, p1, :cond_0

    .line 6563
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    .line 6564
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    goto :goto_1

    .line 6568
    :cond_2
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V
    .locals 1

    .prologue
    .line 6495
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->a()V

    .line 6496
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->g()Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V

    .line 6497
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$o;)V
    .locals 1

    .prologue
    .line 6575
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    if-eqz v0, :cond_0

    .line 6576
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$o;->c()V

    .line 6578
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    .line 6579
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6580
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$o;->b()V

    .line 6582
    :cond_1
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 6571
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$p;->i:Landroid/support/v7/widget/RecyclerView$u;

    .line 6572
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$w;Z)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x4000

    .line 6250
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 6251
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$w;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6252
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->a(II)V

    .line 6253
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 6255
    :cond_0
    if-eqz p2, :cond_1

    .line 6256
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$p;->d(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 6258
    :cond_1
    iput-object v2, p1, Landroid/support/v7/widget/RecyclerView$w;->p:Landroid/support/v7/widget/RecyclerView;

    .line 6259
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->g()Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 6260
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 6094
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 6095
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6096
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6098
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6099
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->j()V

    .line 6103
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 6104
    return-void

    .line 6100
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6101
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->l()V

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5706
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5711
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    .line 5727
    :cond_0
    :goto_0
    return v0

    .line 5713
    :cond_1
    iget v2, p1, Landroid/support/v7/widget/RecyclerView$w;->c:I

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 5714
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    .line 5715
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5717
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5719
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iget v3, p1, Landroid/support/v7/widget/RecyclerView$w;->c:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$a;->b(I)I

    move-result v2

    .line 5720
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->h()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 5721
    goto :goto_0

    .line 5724
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5725
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->g()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iget v5, p1, Landroid/support/v7/widget/RecyclerView$w;->c:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$a;->a(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(I)I
    .locals 3

    .prologue
    .line 5828
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 5829
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    .line 5830
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$t;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5832
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5835
    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->b(I)I

    move-result p1

    goto :goto_0
.end method

.method b(IZ)Landroid/support/v7/widget/RecyclerView$w;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 6375
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6378
    :goto_0
    if-ge v2, v3, :cond_3

    .line 6379
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6380
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->k()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->d()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 6381
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6382
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    .line 6424
    :cond_1
    :goto_1
    return-object v0

    .line 6378
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6387
    :cond_3
    if-nez p2, :cond_5

    .line 6388
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->c(I)Landroid/view/View;

    move-result-object v2

    .line 6389
    if-eqz v2, :cond_5

    .line 6392
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 6393
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/af;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/af;->e(Landroid/view/View;)V

    .line 6394
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/af;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/af;->b(Landroid/view/View;)I

    move-result v1

    .line 6395
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 6396
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    .line 6397
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6399
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/af;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/af;->e(I)V

    .line 6400
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$p;->c(Landroid/view/View;)V

    .line 6401
    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    goto :goto_1

    .line 6408
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6409
    :goto_2
    if-ge v1, v2, :cond_7

    .line 6410
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6413
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->d()I

    move-result v3

    if-ne v3, p1, :cond_6

    .line 6414
    if-nez p2, :cond_1

    .line 6415
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 6409
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6424
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method b()V
    .locals 3

    .prologue
    .line 5675
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/RecyclerView$i;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->x:I

    .line 5676
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$p;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$p;->d:I

    .line 5679
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5680
    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$p;->d:I

    if-le v1, v2, :cond_1

    .line 5681
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    .line 5680
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5675
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5683
    :cond_1
    return-void
.end method

.method b(II)V
    .locals 4

    .prologue
    .line 6529
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6530
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6531
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6532
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    if-lt v3, p1, :cond_0

    .line 6537
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Landroid/support/v7/widget/RecyclerView$w;->a(IZ)V

    .line 6530
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6540
    :cond_1
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6155
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6156
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6158
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->i()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    .line 6159
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v0, v2

    goto :goto_0

    .line 6162
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    .line 6165
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6168
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    .line 6171
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6175
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->y()Z

    move-result v4

    .line 6176
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    .line 6178
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 6185
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6186
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$p;->d:I

    if-lez v0, :cond_d

    const/16 v0, 0x20e

    .line 6187
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$w;->a(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6192
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6193
    iget v3, p0, Landroid/support/v7/widget/RecyclerView$p;->d:I

    if-lt v0, v3, :cond_6

    if-lez v0, :cond_6

    .line 6194
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    .line 6195
    add-int/lit8 v0, v0, -0x1

    .line 6199
    :cond_6
    sget-boolean v3, Landroid/support/v7/widget/RecyclerView;->d:Z

    if-eqz v3, :cond_8

    if-lez v0, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/ao$a;

    iget v5, p1, Landroid/support/v7/widget/RecyclerView$w;->c:I

    .line 6201
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/ao$a;->a(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 6203
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 6204
    :goto_2
    if-ltz v3, :cond_7

    .line 6205
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    .line 6206
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/ao$a;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/ao$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 6211
    :cond_7
    add-int/lit8 v0, v3, 0x1

    .line 6213
    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v1

    .line 6216
    :goto_3
    if-nez v0, :cond_c

    .line 6217
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$w;Z)V

    .line 6235
    :goto_4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v7/widget/br;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/br;->g(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 6236
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    if-eqz v4, :cond_9

    .line 6237
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->p:Landroid/support/v7/widget/RecyclerView;

    .line 6239
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 6178
    goto :goto_1

    .line 6209
    :cond_b
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    .line 6210
    goto :goto_2

    :cond_c
    move v1, v2

    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_3

    :cond_e
    move v1, v2

    move v0, v2

    goto :goto_4
.end method

.method b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 6268
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 6269
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$p;

    .line 6270
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    .line 6271
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->l()V

    .line 6272
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 6273
    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 5854
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$p;->a(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5692
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->g:Ljava/util/List;

    return-object v0
.end method

.method c(II)V
    .locals 4

    .prologue
    .line 6592
    add-int v2, p1, p2

    .line 6593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6594
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 6595
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6596
    if-nez v0, :cond_1

    .line 6594
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6600
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    .line 6601
    if-lt v3, p1, :cond_0

    if-ge v3, v2, :cond_0

    .line 6602
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    .line 6603
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    goto :goto_1

    .line 6608
    :cond_2
    return-void
.end method

.method c(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 1

    .prologue
    .line 6311
    iget-boolean v0, p1, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    if-eqz v0, :cond_0

    .line 6312
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6316
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$p;

    .line 6317
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    .line 6318
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->l()V

    .line 6319
    return-void

    .line 6314
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 6285
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 6286
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6287
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6288
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    .line 6291
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6293
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$w;->a(Landroid/support/v7/widget/RecyclerView$p;Z)V

    .line 6294
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6302
    :goto_0
    return-void

    .line 6296
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 6297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    .line 6299
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$w;->a(Landroid/support/v7/widget/RecyclerView$p;Z)V

    .line 6300
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 6116
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6117
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6118
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->d(I)V

    .line 6117
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6120
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6121
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->d:Z

    if-eqz v0, :cond_1

    .line 6122
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/ao$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao$a;->a()V

    .line 6124
    :cond_1
    return-void
.end method

.method d(I)V
    .locals 2

    .prologue
    .line 6141
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6145
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$w;Z)V

    .line 6146
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6147
    return-void
.end method

.method d(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 6481
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    .line 6482
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$q;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 6484
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_1

    .line 6485
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 6487
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    if-eqz v0, :cond_2

    .line 6488
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v7/widget/br;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/br;->g(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 6491
    :cond_2
    return-void
.end method

.method e()I
    .locals 1

    .prologue
    .line 6322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method e(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 6326
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    return-object v0
.end method

.method f(I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 6339
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 6364
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 6343
    :goto_1
    if-ge v3, v4, :cond_3

    .line 6344
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6345
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->k()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->d()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 6346
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    goto :goto_0

    .line 6343
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 6351
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6352
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->b(I)I

    move-result v0

    .line 6353
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 6354
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$a;->a(I)J

    move-result-wide v6

    .line 6355
    :goto_2
    if-ge v2, v4, :cond_5

    .line 6356
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6357
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->k()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->g()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 6358
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    goto :goto_0

    .line 6355
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 6364
    goto :goto_0
.end method

.method f()V
    .locals 1

    .prologue
    .line 6330
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6331
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6332
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6334
    :cond_0
    return-void
.end method

.method g()Landroid/support/v7/widget/RecyclerView$o;
    .locals 1

    .prologue
    .line 6585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    if-nez v0, :cond_0

    .line 6586
    new-instance v0, Landroid/support/v7/widget/RecyclerView$o;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$o;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    .line 6588
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->e:Landroid/support/v7/widget/RecyclerView$o;

    return-object v0
.end method

.method h()V
    .locals 4

    .prologue
    .line 6611
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6612
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6613
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6614
    if-eqz v0, :cond_0

    .line 6615
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    .line 6616
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$w;->a(Ljava/lang/Object;)V

    .line 6612
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6620
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6622
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->d()V

    .line 6624
    :cond_3
    return-void
.end method

.method i()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6627
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6628
    :goto_0
    if-ge v2, v3, :cond_0

    .line 6629
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6630
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->a()V

    .line 6628
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6632
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6633
    :goto_1
    if-ge v2, v3, :cond_1

    .line 6634
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->a()V

    .line 6633
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6636
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 6637
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6638
    :goto_2
    if-ge v1, v2, :cond_2

    .line 6639
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->a()V

    .line 6638
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6642
    :cond_2
    return-void
.end method

.method j()V
    .locals 4

    .prologue
    .line 6645
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6646
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6647
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 6648
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    .line 6649
    if-eqz v0, :cond_0

    .line 6650
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$j;->e:Z

    .line 6646
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6653
    :cond_1
    return-void
.end method
