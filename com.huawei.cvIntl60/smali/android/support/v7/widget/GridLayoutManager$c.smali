.class public abstract Landroid/support/v7/widget/GridLayoutManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/util/SparseIntArray;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public a(II)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 909
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v4

    .line 910
    if-ne v4, p2, :cond_1

    .line 936
    :cond_0
    :goto_0
    return v1

    .line 916
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 917
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$c;->b(I)I

    move-result v0

    .line 918
    if-ltz v0, :cond_5

    .line 919
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 920
    add-int/lit8 v0, v0, 0x1

    :goto_1
    move v3, v0

    .line 923
    :goto_2
    if-ge v3, p1, :cond_4

    .line 924
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v0

    .line 925
    add-int/2addr v2, v0

    .line 926
    if-ne v2, p2, :cond_3

    move v0, v1

    .line 923
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_2

    .line 928
    :cond_3
    if-gt v2, p2, :cond_2

    move v0, v2

    goto :goto_3

    .line 933
    :cond_4
    add-int v0, v2, v4

    if-gt v0, p2, :cond_0

    move v1, v2

    .line 934
    goto :goto_0

    :cond_5
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 861
    return-void
.end method

.method b(I)I
    .locals 4

    .prologue
    .line 940
    const/4 v1, 0x0

    .line 941
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 943
    :goto_0
    if-gt v1, v0, :cond_1

    .line 944
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 945
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 946
    if-ge v3, p1, :cond_0

    .line 947
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 949
    :cond_0
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 952
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .line 953
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 954
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 956
    :goto_1
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method b(II)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 873
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->b:Z

    if-nez v0, :cond_1

    .line 874
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$c;->a(II)I

    move-result v0

    .line 882
    :cond_0
    :goto_0
    return v0

    .line 876
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 877
    if-ne v0, v1, :cond_0

    .line 880
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$c;->a(II)I

    move-result v0

    .line 881
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public c(II)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 970
    .line 972
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v6

    move v4, v2

    move v0, v2

    move v5, v2

    .line 973
    :goto_0
    if-ge v4, p1, :cond_1

    .line 974
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v1

    .line 975
    add-int v3, v5, v1

    .line 976
    if-ne v3, p2, :cond_0

    .line 978
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 973
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v1

    goto :goto_0

    .line 979
    :cond_0
    if-le v3, p2, :cond_3

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 985
    :cond_1
    add-int v1, v5, v6

    if-le v1, p2, :cond_2

    .line 986
    add-int/lit8 v0, v0, 0x1

    .line 988
    :cond_2
    return v0

    :cond_3
    move v1, v3

    goto :goto_1
.end method
