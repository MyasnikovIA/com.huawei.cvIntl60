.class public abstract Landroid/support/v7/widget/RecyclerView$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$i$b;,
        Landroid/support/v7/widget/RecyclerView$i$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/bq$b;

.field private final b:Landroid/support/v7/widget/bq$b;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field p:Landroid/support/v7/widget/af;

.field q:Landroid/support/v7/widget/RecyclerView;

.field r:Landroid/support/v7/widget/bq;

.field s:Landroid/support/v7/widget/bq;

.field t:Landroid/support/v7/widget/RecyclerView$s;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7304
    new-instance v0, Landroid/support/v7/widget/RecyclerView$i$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$i$1;-><init>(Landroid/support/v7/widget/RecyclerView$i;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->a:Landroid/support/v7/widget/bq$b;

    .line 7350
    new-instance v0, Landroid/support/v7/widget/RecyclerView$i$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$i$2;-><init>(Landroid/support/v7/widget/RecyclerView$i;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/support/v7/widget/bq$b;

    .line 7400
    new-instance v0, Landroid/support/v7/widget/bq;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->a:Landroid/support/v7/widget/bq$b;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/bq;-><init>(Landroid/support/v7/widget/bq$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->r:Landroid/support/v7/widget/bq;

    .line 7401
    new-instance v0, Landroid/support/v7/widget/bq;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/support/v7/widget/bq$b;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/bq;-><init>(Landroid/support/v7/widget/bq$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->s:Landroid/support/v7/widget/bq;

    .line 7406
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$i;->u:Z

    .line 7408
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$i;->v:Z

    .line 7414
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$i;->w:Z

    .line 7420
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    .line 7422
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$i;->d:Z

    .line 10422
    return-void
.end method

.method public static a(III)I
    .locals 2

    .prologue
    .line 7610
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 7611
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 7612
    sparse-switch v1, :sswitch_data_0

    .line 7619
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 7616
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 7612
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(IIIIZ)I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v3, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 9181
    sub-int v1, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9184
    if-eqz p4, :cond_4

    .line 9185
    if-ltz p3, :cond_1

    move p1, v2

    move v1, p3

    .line 9222
    :cond_0
    :goto_0
    :sswitch_0
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 9188
    :cond_1
    if-ne p3, v5, :cond_3

    .line 9189
    sparse-switch p1, :sswitch_data_0

    :cond_2
    move p1, v0

    move v1, v0

    goto :goto_0

    :sswitch_1
    move p1, v0

    move v1, v0

    .line 9197
    goto :goto_0

    .line 9200
    :cond_3
    if-ne p3, v4, :cond_2

    move p1, v0

    move v1, v0

    .line 9202
    goto :goto_0

    .line 9205
    :cond_4
    if-ltz p3, :cond_5

    move p1, v2

    move v1, p3

    .line 9207
    goto :goto_0

    .line 9208
    :cond_5
    if-eq p3, v5, :cond_0

    .line 9211
    if-ne p3, v4, :cond_2

    .line 9213
    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_7

    :cond_6
    move p1, v3

    .line 9214
    goto :goto_0

    :cond_7
    move p1, v0

    .line 9216
    goto :goto_0

    .line 9189
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$i$b;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10374
    new-instance v0, Landroid/support/v7/widget/RecyclerView$i$b;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$i$b;-><init>()V

    .line 10375
    sget-object v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 10377
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$i$b;->a:I

    .line 10379
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_spanCount:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$i$b;->b:I

    .line 10380
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$i$b;->c:Z

    .line 10381
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$i$b;->d:Z

    .line 10382
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10383
    return-object v0
.end method

.method private a(ILandroid/view/View;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8526
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->e(I)V

    .line 8527
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 8935
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 8936
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8951
    :goto_0
    return-void

    .line 8942
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    .line 8943
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8944
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$i;->g(I)V

    .line 8945
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    goto :goto_0

    .line 8947
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$i;->h(I)V

    .line 8948
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$p;->c(Landroid/view/View;)V

    .line 8949
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v7/widget/br;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/br;->h(Landroid/support/v7/widget/RecyclerView$w;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 8298
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v1

    .line 8299
    if-nez p3, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8301
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v7/widget/br;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->e(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 8310
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    .line 8311
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->k()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8312
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8313
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->j()V

    .line 8317
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/support/v7/widget/af;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8342
    :cond_2
    :goto_2
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$j;->f:Z

    if-eqz v2, :cond_3

    .line 8346
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 8347
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$j;->f:Z

    .line 8349
    :cond_3
    return-void

    .line 8308
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v7/widget/br;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->f(Landroid/support/v7/widget/RecyclerView$w;)V

    goto :goto_0

    .line 8315
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->l()V

    goto :goto_1

    .line 8321
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-ne v2, v3, :cond_9

    .line 8323
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/af;->b(Landroid/view/View;)I

    move-result v2

    .line 8324
    if-ne p2, v5, :cond_7

    .line 8325
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v3}, Landroid/support/v7/widget/af;->b()I

    move-result p2

    .line 8327
    :cond_7
    if-ne v2, v5, :cond_8

    .line 8328
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    .line 8330
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8332
    :cond_8
    if-eq v2, p2, :cond_2

    .line 8333
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v3, v2, p2}, Landroid/support/v7/widget/RecyclerView$i;->e(II)V

    goto :goto_2

    .line 8336
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v2, p1, p2, v4}, Landroid/support/v7/widget/af;->a(Landroid/view/View;IZ)V

    .line 8337
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$j;->e:Z

    .line 8338
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8339
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$s;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method private static b(III)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9075
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 9076
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 9077
    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    move v0, v1

    .line 9088
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 9080
    :cond_1
    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 9088
    goto :goto_0

    .line 9084
    :sswitch_1
    if-ge v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 9086
    :sswitch_2
    if-eq v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 9080
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .locals 14

    .prologue
    .line 9573
    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 9574
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->A()I

    move-result v5

    .line 9575
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->B()I

    move-result v6

    .line 9576
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->y()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->C()I

    move-result v2

    sub-int v7, v1, v2

    .line 9577
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->z()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->D()I

    move-result v2

    sub-int v8, v1, v2

    .line 9578
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int v9, v1, v2

    .line 9579
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int v10, v1, v2

    .line 9580
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int v11, v9, v1

    .line 9581
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int v12, v10, v1

    .line 9583
    const/4 v1, 0x0

    sub-int v2, v9, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9584
    const/4 v1, 0x0

    sub-int v3, v10, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9585
    const/4 v1, 0x0

    sub-int v13, v11, v7

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9586
    const/4 v13, 0x0

    sub-int v8, v12, v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 9592
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->t()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 9593
    if-eqz v1, :cond_0

    :goto_0
    move v2, v1

    .line 9602
    :goto_1
    if-eqz v3, :cond_3

    move v1, v3

    .line 9604
    :goto_2
    const/4 v3, 0x0

    aput v2, v4, v3

    .line 9605
    const/4 v2, 0x1

    aput v1, v4, v2

    .line 9606
    return-object v4

    .line 9593
    :cond_0
    sub-int v1, v11, v7

    .line 9594
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 9596
    :cond_1
    if-eqz v2, :cond_2

    move v1, v2

    :goto_3
    move v2, v1

    .line 9597
    goto :goto_1

    .line 9596
    :cond_2
    sub-int v2, v9, v5

    .line 9597
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    .line 9602
    :cond_3
    sub-int v1, v10, v6

    .line 9603
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2
.end method

.method private d(Landroid/support/v7/widget/RecyclerView;II)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 9705
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 9706
    if-nez v1, :cond_1

    .line 9720
    :cond_0
    :goto_0
    return v0

    .line 9709
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->A()I

    move-result v2

    .line 9710
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->B()I

    move-result v3

    .line 9711
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->y()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->C()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9712
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->z()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->D()I

    move-result v6

    sub-int/2addr v5, v6

    .line 9713
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    .line 9714
    invoke-virtual {p0, v1, v6}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9716
    iget v1, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p2

    if-ge v1, v4, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p2

    if-le v1, v2, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p3

    if-ge v1, v5, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p3

    if-le v1, v3, :cond_0

    .line 9720
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public A()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 8744
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 8754
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 8764
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 8774
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 8824
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 8831
    :cond_0
    :goto_0
    return-object v0

    .line 8827
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 8828
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/af;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 8831
    goto :goto_0
.end method

.method public F()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 10014
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public G()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 10022
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method H()V
    .locals 1

    .prologue
    .line 10045
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v0, :cond_0

    .line 10046
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->b()V

    .line 10048
    :cond_0
    return-void
.end method

.method public I()V
    .locals 1

    .prologue
    .line 10211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->u:Z

    .line 10212
    return-void
.end method

.method J()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 10408
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->v()I

    move-result v2

    move v1, v0

    .line 10409
    :goto_0
    if-ge v1, v2, :cond_0

    .line 10410
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v3

    .line 10411
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10412
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_1

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_1

    .line 10413
    const/4 v0, 0x1

    .line 10416
    :cond_0
    return v0

    .line 10409
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 8122
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 10247
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v1, :cond_1

    .line 10250
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    goto :goto_0
.end method

.method public abstract a()Landroid/support/v7/widget/RecyclerView$j;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 8105
    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 8081
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$j;

    if-eqz v0, :cond_0

    .line 8082
    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$j;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/support/v7/widget/RecyclerView$j;)V

    .line 8086
    :goto_0
    return-object v0

    .line 8083
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 8084
    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 8086
    :cond_1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 9535
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 0

    .prologue
    .line 7816
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 0

    .prologue
    .line 7844
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$p;)V
    .locals 1
    .param p2    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8646
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    .line 8647
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->g(I)V

    .line 8648
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/view/View;)V

    .line 8649
    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 3

    .prologue
    .line 7570
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->A()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->C()I

    move-result v1

    add-int/2addr v0, v1

    .line 7571
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->B()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->D()I

    move-result v2

    add-int/2addr v1, v2

    .line 7572
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->F()I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/support/v7/widget/RecyclerView$i;->a(III)I

    move-result v0

    .line 7573
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->G()I

    move-result v2

    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->a(III)I

    move-result v1

    .line 7574
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$i;->f(II)V

    .line 7575
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 10042
    return-void
.end method

.method a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    .line 10087
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 10088
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 9770
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8927
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->v()I

    move-result v0

    .line 8928
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 8929
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v1

    .line 8930
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;ILandroid/view/View;)V

    .line 8928
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8932
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;II)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9995
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 9996
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 10117
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10118
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 10119
    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 10121
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10122
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 10123
    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 10127
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    .line 10128
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v1

    .line 10129
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->e(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)Z

    move-result v2

    .line 10130
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->d(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v3

    .line 10127
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 10131
    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 10132
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 10192
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v0

    .line 10193
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    .line 10195
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 10197
    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 10198
    return-void

    :cond_0
    move v0, v4

    .line 10192
    goto :goto_0

    :cond_1
    move v2, v4

    .line 10193
    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 10152
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    .line 10163
    :cond_0
    :goto_0
    return-void

    .line 10155
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    .line 10156
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    .line 10157
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    .line 10158
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10155
    :cond_2
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 10160
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 10161
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0

    .line 10158
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 1

    .prologue
    .line 10051
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    if-ne v0, p1, :cond_0

    .line 10052
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    .line 10054
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 0

    .prologue
    .line 8034
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9809
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9822
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9877
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 9859
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9860
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 7955
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->e(Landroid/support/v7/widget/RecyclerView;)V

    .line 7956
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8253
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;I)V

    .line 8254
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 8271
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;IZ)V

    .line 8272
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9104
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    .line 9106
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9107
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 9108
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 9110
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->y()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->w()I

    move-result v4

    .line 9111
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->A()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->C()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$j;->width:I

    .line 9113
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->e()Z

    move-result v6

    .line 9110
    invoke-static {v3, v4, v2, v5, v6}, Landroid/support/v7/widget/RecyclerView$i;->a(IIIIZ)I

    move-result v2

    .line 9114
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->z()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->x()I

    move-result v4

    .line 9115
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->B()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->D()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$j;->height:I

    .line 9117
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->f()Z

    move-result v6

    .line 9114
    invoke-static {v3, v4, v1, v5, v6}, Landroid/support/v7/widget/RecyclerView$i;->a(IIIIZ)I

    move-result v1

    .line 9118
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9119
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 9121
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9320
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    .line 9321
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9322
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$j;->rightMargin:I

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p5, v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->bottomMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 9325
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$j;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8539
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 8540
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8541
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v7/widget/br;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/br;->e(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 8545
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/support/v7/widget/af;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8549
    return-void

    .line 8543
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v7/widget/br;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/br;->f(Landroid/support/v7/widget/RecyclerView$w;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9373
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9374
    return-void
.end method

.method a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    .line 10167
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 10169
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/af;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10170
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 10173
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8635
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;)V

    .line 8636
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/view/View;)V

    .line 8637
    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 9340
    if-eqz p2, :cond_1

    .line 9341
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9342
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 9343
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    .line 9342
    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9348
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9349
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 9350
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9351
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/graphics/RectF;

    .line 9352
    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9353
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9354
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    .line 9355
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 9356
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    .line 9357
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    .line 9358
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 9354
    invoke-virtual {p3, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9362
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 9363
    return-void

    .line 9345
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10136
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10137
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7631
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7632
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 7634
    :cond_0
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 10289
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$j;)Z
    .locals 1

    .prologue
    .line 8064
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;ILandroid/os/Bundle;)Z
    .locals 5
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10305
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 10331
    :cond_0
    :goto_0
    return v1

    .line 10309
    :cond_1
    sparse-switch p3, :sswitch_data_0

    move v3, v1

    move v0, v1

    .line 10327
    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    .line 10330
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3, v0}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    move v1, v2

    .line 10331
    goto :goto_0

    .line 10311
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10312
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->z()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->B()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->D()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    .line 10314
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10315
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->y()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->A()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->C()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    goto :goto_1

    .line 10319
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10320
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->z()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->B()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->D()I

    move-result v3

    sub-int/2addr v0, v3

    .line 10322
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10323
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->y()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->A()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->C()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 10309
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 10358
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 9752
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9625
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9645
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object v2

    .line 9647
    aget v3, v2, v0

    .line 9648
    aget v2, v2, v1

    .line 9649
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v3, v2}, Landroid/support/v7/widget/RecyclerView$i;->d(Landroid/support/v7/widget/RecyclerView;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9650
    :cond_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 9651
    :cond_1
    if-eqz p4, :cond_3

    .line 9652
    invoke-virtual {p1, v3, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :goto_0
    move v0, v1

    .line 9659
    :cond_2
    return v0

    .line 9654
    :cond_3
    invoke-virtual {p1, v3, v2}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9730
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->o()Z

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

.method public a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 9798
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z
    .locals 2

    .prologue
    .line 9028
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    if-eqz v0, :cond_0

    .line 9029
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$j;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$i;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9030
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$j;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$i;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 10337
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;ZZ)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9683
    const/16 v2, 0x6003

    .line 9685
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->r:Landroid/support/v7/widget/bq;

    invoke-virtual {v3, p1, v2}, Landroid/support/v7/widget/bq;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->s:Landroid/support/v7/widget/bq;

    .line 9687
    invoke-virtual {v3, p1, v2}, Landroid/support/v7/widget/bq;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 9688
    :goto_0
    if-eqz p2, :cond_2

    move v0, v2

    .line 9691
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 9687
    goto :goto_0

    .line 9691
    :cond_2
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 7898
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7899
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 7901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .prologue
    .line 8139
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 10267
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v1, :cond_1

    .line 10270
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    goto :goto_0
.end method

.method b(Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8963
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$p;->e()I

    move-result v1

    .line 8965
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 8966
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$p;->e(I)Landroid/view/View;

    move-result-object v2

    .line 8967
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v3

    .line 8968
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8965
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8976
    :cond_0
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView$w;->a(Z)V

    .line 8977
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->r()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8978
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8980
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz v4, :cond_2

    .line 8981
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView$f;->d(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 8983
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$w;->a(Z)V

    .line 8984
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/view/View;)V

    goto :goto_1

    .line 8986
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$p;->f()V

    .line 8987
    if-lez v1, :cond_4

    .line 8988
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 8990
    :cond_4
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 7475
    if-nez p1, :cond_0

    .line 7476
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    .line 7477
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    .line 7478
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->g:I

    .line 7479
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->h:I

    .line 7486
    :goto_0
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$i;->e:I

    .line 7487
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$i;->f:I

    .line 7488
    return-void

    .line 7481
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    .line 7482
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/af;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    .line 7483
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->g:I

    .line 7484
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->h:I

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9833
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 1

    .prologue
    .line 7852
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->v:Z

    .line 7853
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V

    .line 7854
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8282
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/view/View;I)V

    .line 8283
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 8294
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;IZ)V

    .line 8295
    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 9442
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 9443
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9448
    :goto_0
    return-void

    .line 9446
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 9447
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 7751
    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z
    .locals 2

    .prologue
    .line 9042
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    if-eqz v0, :cond_0

    .line 9044
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$j;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$i;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9045
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$j;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$i;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9907
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 8466
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->v()I

    move-result v2

    .line 8467
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 8468
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    .line 8469
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v3

    .line 8470
    if-nez v3, :cond_1

    .line 8467
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 8473
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->d()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    .line 8474
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$t;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->q()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8478
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7491
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->g:I

    .line 7492
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->e:I

    .line 7493
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$i;->e:I

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->b:Z

    if-nez v0, :cond_0

    .line 7494
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$i;->g:I

    .line 7497
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->h:I

    .line 7498
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->f:I

    .line 7499
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$i;->f:I

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->b:Z

    if-nez v0, :cond_1

    .line 7500
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$i;->h:I

    .line 7502
    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10077
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 10078
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v1

    .line 10079
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10080
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(ILandroid/support/v7/widget/RecyclerView$p;)V

    .line 10077
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10083
    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    .prologue
    .line 8019
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8020
    return-void
.end method

.method c(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 7847
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->v:Z

    .line 7848
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->d(Landroid/support/v7/widget/RecyclerView;)V

    .line 7849
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9846
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8360
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->a(Landroid/view/View;)V

    .line 8361
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8560
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$j;)V

    .line 8561
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 7725
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->w:Z

    return v0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10231
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9952
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8408
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$j;->f()I

    move-result v0

    return v0
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 10036
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 9556
    const/4 v0, 0x0

    return-object v0
.end method

.method d(II)V
    .locals 8

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    .line 7518
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->v()I

    move-result v7

    .line 7519
    if-nez v7, :cond_0

    .line 7520
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 7547
    :goto_0
    return-void

    .line 7528
    :cond_0
    const/4 v4, 0x0

    move v3, v5

    move v1, v5

    move v2, v6

    move v0, v6

    :goto_1
    if-ge v4, v7, :cond_5

    .line 7529
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v5

    .line 7530
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    .line 7531
    invoke-virtual {p0, v5, v6}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7532
    iget v5, v6, Landroid/graphics/Rect;->left:I

    if-ge v5, v0, :cond_1

    .line 7533
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 7535
    :cond_1
    iget v5, v6, Landroid/graphics/Rect;->right:I

    if-le v5, v1, :cond_2

    .line 7536
    iget v1, v6, Landroid/graphics/Rect;->right:I

    .line 7538
    :cond_2
    iget v5, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v2, :cond_3

    .line 7539
    iget v2, v6, Landroid/graphics/Rect;->top:I

    .line 7541
    :cond_3
    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v3, :cond_4

    .line 7542
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 7528
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7545
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 7546
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 7919
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9892
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 8438
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 8448
    :cond_0
    :goto_0
    return-object v0

    .line 8441
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 8442
    if-eqz v1, :cond_0

    .line 8445
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/af;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 8448
    goto :goto_0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 8172
    return-void
.end method

.method public e(II)V
    .locals 3

    .prologue
    .line 8591
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    .line 8592
    if-nez v0, :cond_0

    .line 8593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    .line 8594
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8596
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->h(I)V

    .line 8597
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;I)V

    .line 8598
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7928
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 8149
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$t;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10284
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9937
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9236
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f(II)V
    .locals 1

    .prologue
    .line 10006
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 10007
    return-void
.end method

.method f(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 10387
    .line 10388
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10389
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10387
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$i;->c(II)V

    .line 10391
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 8159
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9922
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9249
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9250
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 8372
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    .line 8373
    if-eqz v0, :cond_0

    .line 8374
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->a(I)V

    .line 8376
    :cond_0
    return-void
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9967
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9385
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->n(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 8519
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$i;->a(ILandroid/view/View;)V

    .line 8520
    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9397
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->l(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public i(I)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 8668
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9409
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->o(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 8858
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8859
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->e(I)V

    .line 8861
    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9421
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->m(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 8870
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8871
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 8873
    :cond_0
    return-void
.end method

.method public l(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9462
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public l(I)V
    .locals 0

    .prologue
    .line 10062
    return-void
.end method

.method l()Z
    .locals 1

    .prologue
    .line 10404
    const/4 v0, 0x0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9477
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9492
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public o(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9507
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 7581
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7582
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 7584
    :cond_0
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 7792
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->d:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 7864
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->v:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 7964
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 8211
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 8224
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 8397
    const/4 v0, -0x1

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 8658
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->p:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 8685
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$i;->e:I

    return v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 8702
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$i;->f:I

    return v0
.end method

.method public y()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 8718
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$i;->g:I

    return v0
.end method

.method public z()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .prologue
    .line 8734
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$i;->h:I

    return v0
.end method
