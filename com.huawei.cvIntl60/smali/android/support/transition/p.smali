.class public Landroid/support/transition/p;
.super Landroid/support/transition/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/p$a;
    }
.end annotation


# instance fields
.field h:I

.field i:Z

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/l;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/support/transition/l;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/p;->k:Z

    .line 83
    iput-boolean v1, p0, Landroid/support/transition/p;->i:Z

    .line 87
    iput v1, p0, Landroid/support/transition/p;->l:I

    .line 110
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 408
    new-instance v1, Landroid/support/transition/p$a;

    invoke-direct {v1, p0}, Landroid/support/transition/p$a;-><init>(Landroid/support/transition/p;)V

    .line 409
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    .line 410
    invoke-virtual {v0, v1}, Landroid/support/transition/l;->a(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/support/transition/p;->h:I

    .line 413
    return-void
.end method


# virtual methods
.method public synthetic a(J)Landroid/support/transition/l;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/support/transition/p;->c(J)Landroid/support/transition/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/l;
    .locals 1
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/p;->b(Landroid/animation/TimeInterpolator;)Landroid/support/transition/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/support/transition/l$c;)Landroid/support/transition/l;
    .locals 1
    .param p1    # Landroid/support/transition/l$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/p;->c(Landroid/support/transition/l$c;)Landroid/support/transition/p;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/transition/p;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 140
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/p;->k:Z

    .line 143
    :goto_0
    return-object p0

    .line 137
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/p;->k:Z

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/support/transition/l;)Landroid/support/transition/p;
    .locals 4
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iput-object p0, p1, Landroid/support/transition/l;->d:Landroid/support/transition/p;

    .line 178
    iget-wide v0, p0, Landroid/support/transition/p;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 179
    iget-wide v0, p0, Landroid/support/transition/p;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/support/transition/l;->a(J)Landroid/support/transition/l;

    .line 181
    :cond_0
    iget v0, p0, Landroid/support/transition/p;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Landroid/support/transition/p;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/l;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/l;

    .line 184
    :cond_1
    iget v0, p0, Landroid/support/transition/p;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Landroid/support/transition/p;->n()Landroid/support/transition/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/l;->a(Landroid/support/transition/o;)V

    .line 187
    :cond_2
    iget v0, p0, Landroid/support/transition/p;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0}, Landroid/support/transition/p;->l()Landroid/support/transition/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/l;->a(Landroid/support/transition/g;)V

    .line 190
    :cond_3
    iget v0, p0, Landroid/support/transition/p;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {p0}, Landroid/support/transition/p;->m()Landroid/support/transition/l$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/l;->a(Landroid/support/transition/l$b;)V

    .line 193
    :cond_4
    return-object p0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 630
    invoke-super {p0, p1}, Landroid/support/transition/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 631
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/transition/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 631
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 634
    :cond_0
    return-object v2
.end method

.method public a(Landroid/support/transition/g;)V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0, p1}, Landroid/support/transition/l;->a(Landroid/support/transition/g;)V

    .line 383
    iget v0, p0, Landroid/support/transition/p;->l:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/transition/p;->l:I

    .line 384
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/l;->a(Landroid/support/transition/g;)V

    .line 384
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method public a(Landroid/support/transition/l$b;)V
    .locals 3

    .prologue
    .line 620
    invoke-super {p0, p1}, Landroid/support/transition/l;->a(Landroid/support/transition/l$b;)V

    .line 621
    iget v0, p0, Landroid/support/transition/p;->l:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/transition/p;->l:I

    .line 622
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 623
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 624
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/l;->a(Landroid/support/transition/l$b;)V

    .line 623
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method public a(Landroid/support/transition/o;)V
    .locals 3

    .prologue
    .line 610
    invoke-super {p0, p1}, Landroid/support/transition/l;->a(Landroid/support/transition/o;)V

    .line 611
    iget v0, p0, Landroid/support/transition/p;->l:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/transition/p;->l:I

    .line 612
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 613
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 614
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/l;->a(Landroid/support/transition/o;)V

    .line 613
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method

.method public a(Landroid/support/transition/s;)V
    .locals 3
    .param p1    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 514
    iget-object v0, p1, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/transition/p;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    .line 516
    iget-object v2, p1, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {v0, p1}, Landroid/support/transition/l;->a(Landroid/support/transition/s;)V

    .line 518
    iget-object v2, p1, Landroid/support/transition/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_1
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/transition/t;Landroid/support/transition/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/t;",
            "Landroid/support/transition/t;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/s;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Landroid/support/transition/p;->c()J

    move-result-wide v8

    .line 457
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 458
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_3

    .line 459
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    .line 462
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/transition/p;->k:Z

    if-nez v1, :cond_0

    if-nez v6, :cond_1

    .line 463
    :cond_0
    invoke-virtual {v0}, Landroid/support/transition/l;->c()J

    move-result-wide v2

    .line 464
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 465
    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/support/transition/l;->b(J)Landroid/support/transition/l;

    :cond_1
    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 470
    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/l;->a(Landroid/view/ViewGroup;Landroid/support/transition/t;Landroid/support/transition/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 458
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {v0, v8, v9}, Landroid/support/transition/l;->b(J)Landroid/support/transition/l;

    goto :goto_1

    .line 473
    :cond_3
    return-void
.end method

.method public b(I)Landroid/support/transition/l;
    .locals 1

    .prologue
    .line 215
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 216
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    goto :goto_0
.end method

.method public synthetic b(J)Landroid/support/transition/l;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/support/transition/p;->d(J)Landroid/support/transition/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/support/transition/l$c;)Landroid/support/transition/l;
    .locals 1
    .param p1    # Landroid/support/transition/l$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/p;->d(Landroid/support/transition/l$c;)Landroid/support/transition/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/view/View;)Landroid/support/transition/l;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/p;->f(Landroid/view/View;)Landroid/support/transition/p;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/animation/TimeInterpolator;)Landroid/support/transition/p;
    .locals 3
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 250
    iget v0, p0, Landroid/support/transition/p;->l:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/p;->l:I

    .line 251
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 253
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 254
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/l;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/l;

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 257
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/l;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/l;

    move-result-object v0

    check-cast v0, Landroid/support/transition/p;

    return-object v0
.end method

.method public b(Landroid/support/transition/s;)V
    .locals 3
    .param p1    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 526
    iget-object v0, p1, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/transition/p;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    .line 528
    iget-object v2, p1, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-virtual {v0, p1}, Landroid/support/transition/l;->b(Landroid/support/transition/s;)V

    .line 530
    iget-object v2, p1, Landroid/support/transition/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    :cond_1
    return-void
.end method

.method public synthetic c(Landroid/view/View;)Landroid/support/transition/l;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/p;->g(Landroid/view/View;)Landroid/support/transition/p;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Landroid/support/transition/p;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Landroid/support/transition/l;->a(J)Landroid/support/transition/l;

    .line 232
    iget-wide v0, p0, Landroid/support/transition/p;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 234
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 235
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/l;->a(J)Landroid/support/transition/l;

    .line 234
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_0
    return-object p0
.end method

.method public c(Landroid/support/transition/l$c;)Landroid/support/transition/p;
    .locals 1
    .param p1    # Landroid/support/transition/l$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/support/transition/l;->a(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    move-result-object v0

    check-cast v0, Landroid/support/transition/p;

    return-object v0
.end method

.method c(Landroid/support/transition/s;)V
    .locals 3

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/support/transition/l;->c(Landroid/support/transition/s;)V

    .line 539
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 540
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 541
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/l;->c(Landroid/support/transition/s;)V

    .line 540
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/support/transition/p;->o()Landroid/support/transition/l;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Landroid/support/transition/p;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Landroid/support/transition/l;->b(J)Landroid/support/transition/l;

    move-result-object v0

    check-cast v0, Landroid/support/transition/p;

    return-object v0
.end method

.method public d(Landroid/support/transition/l$c;)Landroid/support/transition/p;
    .locals 1
    .param p1    # Landroid/support/transition/l$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/support/transition/l;->b(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    move-result-object v0

    check-cast v0, Landroid/support/transition/p;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/support/transition/l;->d(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 551
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 552
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/l;->d(Landroid/view/View;)V

    .line 551
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 554
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {p0}, Landroid/support/transition/p;->j()V

    .line 483
    invoke-virtual {p0}, Landroid/support/transition/p;->k()V

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-direct {p0}, Landroid/support/transition/p;->r()V

    .line 487
    iget-boolean v0, p0, Landroid/support/transition/p;->k:Z

    if-nez v0, :cond_3

    .line 490
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 491
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    .line 492
    iget-object v1, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/l;

    .line 493
    new-instance v3, Landroid/support/transition/p$1;

    invoke-direct {v3, p0, v1}, Landroid/support/transition/p$1;-><init>(Landroid/support/transition/p;Landroid/support/transition/l;)V

    invoke-virtual {v0, v3}, Landroid/support/transition/l;->a(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    .line 490
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 501
    :cond_2
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    .line 502
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Landroid/support/transition/l;->e()V

    goto :goto_0

    .line 506
    :cond_3
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    .line 507
    invoke-virtual {v0}, Landroid/support/transition/l;->e()V

    goto :goto_2
.end method

.method public e(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/support/transition/l;->e(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 562
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 563
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/l;->e(Landroid/view/View;)V

    .line 562
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;)Landroid/support/transition/p;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/l;->b(Landroid/view/View;)Landroid/support/transition/l;

    .line 263
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/l;->b(Landroid/view/View;)Landroid/support/transition/l;

    move-result-object v0

    check-cast v0, Landroid/support/transition/p;

    return-object v0
.end method

.method public g(Landroid/view/View;)Landroid/support/transition/p;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/l;->c(Landroid/view/View;)Landroid/support/transition/l;

    .line 314
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 317
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/l;->c(Landroid/view/View;)Landroid/support/transition/l;

    move-result-object v0

    check-cast v0, Landroid/support/transition/p;

    return-object v0
.end method

.method public o()Landroid/support/transition/l;
    .locals 4

    .prologue
    .line 639
    invoke-super {p0}, Landroid/support/transition/l;->o()Landroid/support/transition/l;

    move-result-object v0

    check-cast v0, Landroid/support/transition/p;

    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    .line 641
    iget-object v1, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 642
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 643
    iget-object v1, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/l;

    invoke-virtual {v1}, Landroid/support/transition/l;->o()Landroid/support/transition/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    .line 642
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 645
    :cond_0
    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/transition/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
