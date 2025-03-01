.class public abstract Landroid/support/v7/widget/RecyclerView$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$f$c;,
        Landroid/support/v7/widget/RecyclerView$f$a;,
        Landroid/support/v7/widget/RecyclerView$f$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$f$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$f$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 12483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12539
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView$f$b;

    .line 12540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->b:Ljava/util/ArrayList;

    .line 12543
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$f;->c:J

    .line 12544
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$f;->d:J

    .line 12545
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$f;->e:J

    .line 12546
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$f;->f:J

    .line 13151
    return-void
.end method

.method static e(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 12868
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0xe

    .line 12869
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12870
    const/4 v0, 0x4

    .line 12879
    :cond_0
    :goto_0
    return v0

    .line 12872
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 12873
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->f()I

    move-result v1

    .line 12874
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->e()I

    move-result v2

    .line 12875
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 12876
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$w;)Landroid/support/v7/widget/RecyclerView$f$c;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 12697
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$f;->j()Landroid/support/v7/widget/RecyclerView$f$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$f$c;->a(Landroid/support/v7/widget/RecyclerView$w;)Landroid/support/v7/widget/RecyclerView$f$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$w;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$f$c;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$t;",
            "Landroid/support/v7/widget/RecyclerView$w;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/RecyclerView$f$c;"
        }
    .end annotation

    .prologue
    .line 12668
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$f;->j()Landroid/support/v7/widget/RecyclerView$f$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$f$c;->a(Landroid/support/v7/widget/RecyclerView$w;)Landroid/support/v7/widget/RecyclerView$f$c;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method a(Landroid/support/v7/widget/RecyclerView$f$b;)V
    .locals 0

    .prologue
    .line 12629
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView$f$b;

    .line 12630
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$f$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$f$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$f$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$f$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;Ljava/util/List;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$w;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 13087
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$f;->h(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    return v0
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$f$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$f$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$f$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$f$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract d()V
.end method

.method public abstract d(Landroid/support/v7/widget/RecyclerView$w;)V
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public e()J
    .locals 2

    .prologue
    .line 12554
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$f;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 12572
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$f;->c:J

    return-wide v0
.end method

.method public final f(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12952
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$f;->g(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 12953
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView$f$b;

    if-eqz v0, :cond_0

    .line 12954
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView$f$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$f$b;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 12956
    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 12590
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$f;->d:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12967
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 12608
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$f;->f:J

    return-wide v0
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13057
    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 13095
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 13096
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 13097
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$f$a;

    invoke-interface {v0}, Landroid/support/v7/widget/RecyclerView$f$a;->a()V

    .line 13096
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 13099
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13100
    return-void
.end method

.method public j()Landroid/support/v7/widget/RecyclerView$f$c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 13113
    new-instance v0, Landroid/support/v7/widget/RecyclerView$f$c;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$f$c;-><init>()V

    return-object v0
.end method
