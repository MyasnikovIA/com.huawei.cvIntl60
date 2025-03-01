.class public abstract Landroid/support/v7/widget/RecyclerView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$w;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView$b;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6701
    new-instance v0, Landroid/support/v7/widget/RecyclerView$b;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$b;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    .line 6702
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 6873
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 7003
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$b;->registerObserver(Ljava/lang/Object;)V

    .line 7004
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6912
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$w;I)V
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6781
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 6782
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 7029
    return-void
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 6845
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 7017
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$b;->unregisterObserver(Ljava/lang/Object;)V

    .line 7018
    return-void
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 6815
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$w;->c:I

    .line 6816
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6817
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$a;->a(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/RecyclerView$w;->e:J

    .line 6819
    :cond_0
    const/16 v0, 0x207

    invoke-virtual {p1, v2, v0}, Landroid/support/v7/widget/RecyclerView$w;->a(II)V

    .line 6822
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6823
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->u()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$w;ILjava/util/List;)V

    .line 6824
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->t()V

    .line 6825
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6826
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$j;

    if-eqz v1, :cond_1

    .line 6827
    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$j;->e:Z

    .line 6829
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 6830
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 7038
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 6949
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 6793
    :try_start_0
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6794
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 6795
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6803
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0

    .line 6800
    :cond_0
    :try_start_1
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$w;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6803
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-object v0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6963
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6975
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 6891
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 7070
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 7071
    return-void
.end method
