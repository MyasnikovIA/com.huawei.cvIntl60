.class public abstract Landroid/support/v7/widget/RecyclerView$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "w"
.end annotation


# static fields
.field private static final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:J

.field f:I

.field g:I

.field h:Landroid/support/v7/widget/RecyclerView$w;

.field i:Landroid/support/v7/widget/RecyclerView$w;

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/support/v7/widget/RecyclerView$p;

.field n:Z

.field o:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field p:Landroid/support/v7/widget/RecyclerView;

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10804
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/RecyclerView$w;->q:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 10831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10692
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    .line 10693
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    .line 10694
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$w;->e:J

    .line 10695
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->f:I

    .line 10696
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    .line 10699
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->h:Landroid/support/v7/widget/RecyclerView$w;

    .line 10701
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->i:Landroid/support/v7/widget/RecyclerView$w;

    .line 10806
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    .line 10807
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Ljava/util/List;

    .line 10809
    iput v4, p0, Landroid/support/v7/widget/RecyclerView$w;->r:I

    .line 10813
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$p;

    .line 10815
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    .line 10819
    iput v4, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    .line 10822
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->o:I

    .line 10832
    if-nez p1, :cond_0

    .line 10833
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10835
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    .line 10836
    return-void
.end method

.method private A()V
    .locals 1

    .prologue
    .line 11050
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    .line 11052
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Ljava/util/List;

    .line 11054
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10861
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    .line 10862
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    .line 10863
    return-void
.end method

.method a(II)V
    .locals 2

    .prologue
    .line 11033
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    .line 11034
    return-void
.end method

.method a(IIZ)V
    .locals 1

    .prologue
    .line 10839
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    .line 10840
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/RecyclerView$w;->a(IZ)V

    .line 10841
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    .line 10842
    return-void
.end method

.method a(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 10845
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    if-ne v0, v1, :cond_0

    .line 10846
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    .line 10848
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    if-ne v0, v1, :cond_1

    .line 10849
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    .line 10851
    :cond_1
    if-eqz p2, :cond_2

    .line 10852
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    .line 10854
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    .line 10855
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10856
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$j;->e:Z

    .line 10858
    :cond_3
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Z)V
    .locals 0

    .prologue
    .line 11000
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$p;

    .line 11001
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    .line 11002
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 11097
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11098
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->o:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    .line 11103
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$w;I)Z

    .line 11105
    return-void

    .line 11100
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    .line 11101
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    goto :goto_0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 11041
    if-nez p1, :cond_1

    .line 11042
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    .line 11047
    :cond_0
    :goto_0
    return-void

    .line 11043
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 11044
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$w;->A()V

    .line 11045
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 11153
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->r:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->r:I

    .line 11154
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->r:I

    if-gez v0, :cond_2

    .line 11155
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->r:I

    .line 11160
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11170
    :cond_0
    :goto_1
    return-void

    .line 11153
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->r:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11162
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 11163
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    goto :goto_1

    .line 11164
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->r:I

    if-nez v0, :cond_0

    .line 11165
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    goto :goto_1
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 11021
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 10866
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10867
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    .line 10869
    :cond_0
    return-void
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 11037
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    .line 11038
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 11111
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$w;I)Z

    .line 11113
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    .line 11114
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 10872
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 10911
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 10937
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->p:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 10938
    const/4 v0, -0x1

    .line 10940
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 10955
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 10965
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$w;->e:J

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 10972
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->f:I

    return v0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 10976
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()V
    .locals 1

    .prologue
    .line 10980
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$p;->c(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 10981
    return-void
.end method

.method k()Z
    .locals 1

    .prologue
    .line 10984
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()V
    .locals 1

    .prologue
    .line 10988
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    .line 10989
    return-void
.end method

.method m()V
    .locals 1

    .prologue
    .line 10992
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    .line 10993
    return-void
.end method

.method n()Z
    .locals 1

    .prologue
    .line 11005
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()Z
    .locals 1

    .prologue
    .line 11009
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method p()Z
    .locals 1

    .prologue
    .line 11013
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()Z
    .locals 1

    .prologue
    .line 11017
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method r()Z
    .locals 1

    .prologue
    .line 11025
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s()Z
    .locals 1

    .prologue
    .line 11029
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method t()V
    .locals 1

    .prologue
    .line 11057
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11058
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11060
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    .line 11061
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 11118
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11119
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/RecyclerView$w;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11121
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11122
    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    if-eqz v0, :cond_a

    const-string v0, "[changeScrap]"

    .line 11123
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11125
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11126
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->p()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11127
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11128
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11129
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11130
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11131
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->w()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$w;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11132
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11134
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11135
    :cond_9
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11122
    :cond_a
    const-string v0, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11064
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 11065
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 11067
    :cond_0
    sget-object v0, Landroid/support/v7/widget/RecyclerView$w;->q:Ljava/util/List;

    .line 11073
    :goto_0
    return-object v0

    .line 11070
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Ljava/util/List;

    goto :goto_0

    .line 11073
    :cond_2
    sget-object v0, Landroid/support/v7/widget/RecyclerView$w;->q:Ljava/util/List;

    goto :goto_0
.end method

.method v()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 11078
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    .line 11079
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    .line 11080
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    .line 11081
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$w;->e:J

    .line 11082
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    .line 11083
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$w;->r:I

    .line 11084
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$w;->h:Landroid/support/v7/widget/RecyclerView$w;

    .line 11085
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$w;->i:Landroid/support/v7/widget/RecyclerView$w;

    .line 11086
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->t()V

    .line 11087
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    .line 11088
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->o:I

    .line 11089
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 11090
    return-void
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 11178
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    .line 11179
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method x()Z
    .locals 1

    .prologue
    .line 11187
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method y()Z
    .locals 1

    .prologue
    .line 11195
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method z()Z
    .locals 1

    .prologue
    .line 11199
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
