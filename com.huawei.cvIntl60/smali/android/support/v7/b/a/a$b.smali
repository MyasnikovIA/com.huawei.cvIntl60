.class Landroid/support/v7/b/a/a$b;
.super Landroid/support/v7/b/a/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/b/a/a$b;Landroid/support/v7/b/a/a;Landroid/content/res/Resources;)V
    .locals 1
    .param p1    # Landroid/support/v7/b/a/a$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 633
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/b/a/d$a;-><init>(Landroid/support/v7/b/a/d$a;Landroid/support/v7/b/a/d;Landroid/content/res/Resources;)V

    .line 634
    if-eqz p1, :cond_0

    .line 636
    iget-object v0, p1, Landroid/support/v7/b/a/a$b;->a:Landroid/support/v4/util/LongSparseArray;

    iput-object v0, p0, Landroid/support/v7/b/a/a$b;->a:Landroid/support/v4/util/LongSparseArray;

    .line 637
    iget-object v0, p1, Landroid/support/v7/b/a/a$b;->b:Landroid/support/v4/util/SparseArrayCompat;

    iput-object v0, p0, Landroid/support/v7/b/a/a$b;->b:Landroid/support/v4/util/SparseArrayCompat;

    .line 642
    :goto_0
    return-void

    .line 639
    :cond_0
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/b/a/a$b;->a:Landroid/support/v4/util/LongSparseArray;

    .line 640
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v7/b/a/a$b;->b:Landroid/support/v4/util/SparseArrayCompat;

    goto :goto_0
.end method

.method private static f(II)J
    .locals 4

    .prologue
    .line 711
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method a(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 680
    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/b/a/a$b;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method a(II)I
    .locals 6

    .prologue
    .line 684
    invoke-static {p1, p2}, Landroid/support/v7/b/a/a$b;->f(II)J

    move-result-wide v0

    .line 685
    iget-object v2, p0, Landroid/support/v7/b/a/a$b;->a:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method a(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 10
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 651
    invoke-super {p0, p3}, Landroid/support/v7/b/a/d$a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 652
    invoke-static {p1, p2}, Landroid/support/v7/b/a/a$b;->f(II)J

    move-result-wide v4

    .line 653
    const-wide/16 v0, 0x0

    .line 654
    if-eqz p4, :cond_0

    .line 655
    const-wide v0, 0x200000000L

    .line 657
    :cond_0
    iget-object v3, p0, Landroid/support/v7/b/a/a$b;->a:Landroid/support/v4/util/LongSparseArray;

    int-to-long v6, v2

    or-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 658
    if-eqz p4, :cond_1

    .line 659
    invoke-static {p2, p1}, Landroid/support/v7/b/a/a$b;->f(II)J

    move-result-wide v4

    .line 660
    iget-object v3, p0, Landroid/support/v7/b/a/a$b;->a:Landroid/support/v4/util/LongSparseArray;

    int-to-long v6, v2

    const-wide v8, 0x100000000L

    or-long/2addr v6, v8

    or-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/support/v4/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 662
    :cond_1
    return v2
.end method

.method a([I)I
    .locals 1
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 672
    invoke-super {p0, p1}, Landroid/support/v7/b/a/d$a;->b([I)I

    move-result v0

    .line 673
    if-ltz v0, :cond_0

    .line 676
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, v0}, Landroid/support/v7/b/a/d$a;->b([I)I

    move-result v0

    goto :goto_0
.end method

.method a([ILandroid/graphics/drawable/Drawable;I)I
    .locals 3
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 666
    invoke-super {p0, p1, p2}, Landroid/support/v7/b/a/d$a;->a([ILandroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 667
    iget-object v1, p0, Landroid/support/v7/b/a/a$b;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 668
    return v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/v7/b/a/a$b;->a:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clone()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/b/a/a$b;->a:Landroid/support/v4/util/LongSparseArray;

    .line 647
    iget-object v0, p0, Landroid/support/v7/b/a/a$b;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clone()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/b/a/a$b;->b:Landroid/support/v4/util/SparseArrayCompat;

    .line 648
    return-void
.end method

.method b(II)Z
    .locals 6

    .prologue
    .line 689
    invoke-static {p1, p2}, Landroid/support/v7/b/a/a$b;->f(II)J

    move-result-wide v0

    .line 690
    iget-object v2, p0, Landroid/support/v7/b/a/a$b;->a:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x100000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(II)Z
    .locals 6

    .prologue
    .line 694
    invoke-static {p1, p2}, Landroid/support/v7/b/a/a$b;->f(II)J

    move-result-wide v0

    .line 695
    iget-object v2, p0, Landroid/support/v7/b/a/a$b;->a:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x200000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 701
    new-instance v0, Landroid/support/v7/b/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/b/a/a;-><init>(Landroid/support/v7/b/a/a$b;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 707
    new-instance v0, Landroid/support/v7/b/a/a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/b/a/a;-><init>(Landroid/support/v7/b/a/a$b;Landroid/content/res/Resources;)V

    return-object v0
.end method
