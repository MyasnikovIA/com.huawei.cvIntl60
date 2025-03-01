.class public abstract Landroid/support/transition/ai;
.super Landroid/support/transition/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ai$a;,
        Landroid/support/transition/ai$b;
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/ai;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/transition/l;-><init>()V

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/transition/ai;->i:I

    .line 99
    return-void
.end method

.method private b(Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/support/transition/ai$b;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 191
    new-instance v1, Landroid/support/transition/ai$b;

    invoke-direct {v1}, Landroid/support/transition/ai$b;-><init>()V

    .line 192
    iput-boolean v4, v1, Landroid/support/transition/ai$b;->a:Z

    .line 193
    iput-boolean v4, v1, Landroid/support/transition/ai$b;->b:Z

    .line 194
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/support/transition/ai$b;->c:I

    .line 196
    iget-object v0, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroid/support/transition/ai$b;->e:Landroid/view/ViewGroup;

    .line 201
    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p2, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/support/transition/ai$b;->d:I

    .line 203
    iget-object v0, p2, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroid/support/transition/ai$b;->f:Landroid/view/ViewGroup;

    .line 208
    :goto_1
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 209
    iget v0, v1, Landroid/support/transition/ai$b;->c:I

    iget v2, v1, Landroid/support/transition/ai$b;->d:I

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Landroid/support/transition/ai$b;->e:Landroid/view/ViewGroup;

    iget-object v2, v1, Landroid/support/transition/ai$b;->f:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_2

    move-object v0, v1

    .line 239
    :goto_2
    return-object v0

    .line 198
    :cond_0
    iput v5, v1, Landroid/support/transition/ai$b;->c:I

    .line 199
    iput-object v6, v1, Landroid/support/transition/ai$b;->e:Landroid/view/ViewGroup;

    goto :goto_0

    .line 205
    :cond_1
    iput v5, v1, Landroid/support/transition/ai$b;->d:I

    .line 206
    iput-object v6, v1, Landroid/support/transition/ai$b;->f:Landroid/view/ViewGroup;

    goto :goto_1

    .line 213
    :cond_2
    iget v0, v1, Landroid/support/transition/ai$b;->c:I

    iget v2, v1, Landroid/support/transition/ai$b;->d:I

    if-eq v0, v2, :cond_5

    .line 214
    iget v0, v1, Landroid/support/transition/ai$b;->c:I

    if-nez v0, :cond_4

    .line 215
    iput-boolean v4, v1, Landroid/support/transition/ai$b;->b:Z

    .line 216
    iput-boolean v3, v1, Landroid/support/transition/ai$b;->a:Z

    :cond_3
    :goto_3
    move-object v0, v1

    .line 239
    goto :goto_2

    .line 217
    :cond_4
    iget v0, v1, Landroid/support/transition/ai$b;->d:I

    if-nez v0, :cond_3

    .line 218
    iput-boolean v3, v1, Landroid/support/transition/ai$b;->b:Z

    .line 219
    iput-boolean v3, v1, Landroid/support/transition/ai$b;->a:Z

    goto :goto_3

    .line 223
    :cond_5
    iget-object v0, v1, Landroid/support/transition/ai$b;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 224
    iput-boolean v4, v1, Landroid/support/transition/ai$b;->b:Z

    .line 225
    iput-boolean v3, v1, Landroid/support/transition/ai$b;->a:Z

    goto :goto_3

    .line 226
    :cond_6
    iget-object v0, v1, Landroid/support/transition/ai$b;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 227
    iput-boolean v3, v1, Landroid/support/transition/ai$b;->b:Z

    .line 228
    iput-boolean v3, v1, Landroid/support/transition/ai$b;->a:Z

    goto :goto_3

    .line 232
    :cond_7
    if-nez p1, :cond_8

    iget v0, v1, Landroid/support/transition/ai$b;->d:I

    if-nez v0, :cond_8

    .line 233
    iput-boolean v3, v1, Landroid/support/transition/ai$b;->b:Z

    .line 234
    iput-boolean v3, v1, Landroid/support/transition/ai$b;->a:Z

    goto :goto_3

    .line 235
    :cond_8
    if-nez p2, :cond_3

    iget v0, v1, Landroid/support/transition/ai$b;->c:I

    if-nez v0, :cond_3

    .line 236
    iput-boolean v4, v1, Landroid/support/transition/ai$b;->b:Z

    .line 237
    iput-boolean v3, v1, Landroid/support/transition/ai$b;->a:Z

    goto :goto_3
.end method

.method private d(Landroid/support/transition/s;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p1, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 147
    iget-object v1, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v1, "android:visibility:parent"

    iget-object v2, p1, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 150
    iget-object v1, p1, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 151
    iget-object v1, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:visibility:screenLocation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/s;ILandroid/support/transition/s;I)Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 279
    iget v0, p0, Landroid/support/transition/ai;->i:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v1

    .line 293
    :goto_0
    return-object v0

    .line 282
    :cond_1
    if-nez p2, :cond_2

    .line 283
    iget-object v0, p4, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 284
    invoke-virtual {p0, v0, v3}, Landroid/support/transition/ai;->b(Landroid/view/View;Z)Landroid/support/transition/s;

    move-result-object v2

    .line 286
    invoke-virtual {p0, v0, v3}, Landroid/support/transition/ai;->a(Landroid/view/View;Z)Landroid/support/transition/s;

    move-result-object v0

    .line 288
    invoke-direct {p0, v2, v0}, Landroid/support/transition/ai;->b(Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/support/transition/ai$b;

    move-result-object v0

    .line 289
    iget-boolean v0, v0, Landroid/support/transition/ai$b;->a:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 290
    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p4, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroid/support/transition/ai;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0, p2, p3}, Landroid/support/transition/ai;->b(Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/support/transition/ai$b;

    move-result-object v0

    .line 247
    iget-boolean v1, v0, Landroid/support/transition/ai$b;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/transition/ai$b;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/transition/ai$b;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 249
    :cond_0
    iget-boolean v1, v0, Landroid/support/transition/ai$b;->b:Z

    if-eqz v1, :cond_1

    .line 250
    iget v3, v0, Landroid/support/transition/ai$b;->c:I

    iget v5, v0, Landroid/support/transition/ai$b;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/ai;->a(Landroid/view/ViewGroup;Landroid/support/transition/s;ILandroid/support/transition/s;I)Landroid/animation/Animator;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 253
    :cond_1
    iget v3, v0, Landroid/support/transition/ai$b;->c:I

    iget v5, v0, Landroid/support/transition/ai$b;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/ai;->b(Landroid/view/ViewGroup;Landroid/support/transition/s;ILandroid/support/transition/s;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 122
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput p1, p0, Landroid/support/transition/ai;->i:I

    .line 126
    return-void
.end method

.method public a(Landroid/support/transition/s;)V
    .locals 0
    .param p1    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/support/transition/ai;->d(Landroid/support/transition/s;)V

    .line 157
    return-void
.end method

.method public a(Landroid/support/transition/s;Landroid/support/transition/s;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 462
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 466
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    .line 467
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 472
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/transition/ai;->b(Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/support/transition/ai$b;

    move-result-object v1

    .line 473
    iget-boolean v2, v1, Landroid/support/transition/ai$b;->a:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/support/transition/ai$b;->c:I

    if-eqz v2, :cond_3

    iget v1, v1, Landroid/support/transition/ai$b;->d:I

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    sget-object v0, Landroid/support/transition/ai;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/s;ILandroid/support/transition/s;I)Landroid/animation/Animator;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 336
    iget v0, p0, Landroid/support/transition/ai;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eq v0, v7, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-object v2

    .line 340
    :cond_1
    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/support/transition/s;->b:Landroid/view/View;

    .line 341
    :goto_1
    if-eqz p4, :cond_4

    iget-object v0, p4, Landroid/support/transition/s;->b:Landroid/view/View;

    .line 344
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_8

    .line 345
    :cond_2
    if-eqz v0, :cond_5

    move-object v3, v2

    move-object v1, v0

    .line 395
    :goto_3
    if-eqz v1, :cond_d

    if-eqz p2, :cond_d

    .line 397
    iget-object v0, p2, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:visibility:screenLocation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 398
    aget v2, v0, v6

    .line 399
    aget v0, v0, v5

    .line 400
    new-array v3, v7, [I

    .line 401
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 402
    aget v4, v3, v6

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 403
    aget v2, v3, v5

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 404
    invoke-static {p1}, Landroid/support/transition/x;->a(Landroid/view/ViewGroup;)Landroid/support/transition/w;

    move-result-object v0

    .line 405
    invoke-interface {v0, v1}, Landroid/support/transition/w;->a(Landroid/view/View;)V

    .line 406
    invoke-virtual {p0, p1, v1, p2, p4}, Landroid/support/transition/ai;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;

    move-result-object v2

    .line 407
    if-nez v2, :cond_c

    .line 408
    invoke-interface {v0, v1}, Landroid/support/transition/w;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 340
    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 341
    goto :goto_2

    .line 348
    :cond_5
    if-eqz v1, :cond_10

    .line 352
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v3, v2

    .line 354
    goto :goto_3

    .line 355
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_10

    .line 356
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 357
    invoke-virtual {p0, v0, v5}, Landroid/support/transition/ai;->a(Landroid/view/View;Z)Landroid/support/transition/s;

    move-result-object v3

    .line 358
    invoke-virtual {p0, v0, v5}, Landroid/support/transition/ai;->b(Landroid/view/View;Z)Landroid/support/transition/s;

    move-result-object v4

    .line 361
    invoke-direct {p0, v3, v4}, Landroid/support/transition/ai;->b(Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/support/transition/ai$b;

    move-result-object v3

    .line 362
    iget-boolean v3, v3, Landroid/support/transition/ai$b;->a:Z

    if-nez v3, :cond_7

    .line 363
    invoke-static {p1, v1, v0}, Landroid/support/transition/q;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    :goto_4
    move-object v3, v2

    move-object v1, v0

    .line 375
    goto :goto_3

    .line 365
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_f

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 367
    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/transition/ai;->e:Z

    if-eqz v0, :cond_f

    move-object v0, v1

    .line 372
    goto :goto_4

    .line 379
    :cond_8
    const/4 v3, 0x4

    if-ne p5, v3, :cond_9

    move-object v3, v0

    move-object v1, v2

    .line 380
    goto/16 :goto_3

    .line 383
    :cond_9
    if-ne v1, v0, :cond_a

    move-object v3, v0

    move-object v1, v2

    .line 384
    goto/16 :goto_3

    .line 385
    :cond_a
    iget-boolean v0, p0, Landroid/support/transition/ai;->e:Z

    if-eqz v0, :cond_b

    move-object v3, v2

    .line 386
    goto/16 :goto_3

    .line 389
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 388
    invoke-static {p1, v1, v0}, Landroid/support/transition/q;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v3, v2

    goto/16 :goto_3

    .line 411
    :cond_c
    new-instance v3, Landroid/support/transition/ai$1;

    invoke-direct {v3, p0, v0, v1}, Landroid/support/transition/ai$1;-><init>(Landroid/support/transition/ai;Landroid/support/transition/w;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 421
    :cond_d
    if-eqz v3, :cond_0

    .line 422
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 423
    invoke-static {v3, v6}, Landroid/support/transition/ad;->a(Landroid/view/View;I)V

    .line 424
    invoke-virtual {p0, p1, v3, p2, p4}, Landroid/support/transition/ai;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_e

    .line 426
    new-instance v0, Landroid/support/transition/ai$a;

    invoke-direct {v0, v3, p5, v5}, Landroid/support/transition/ai$a;-><init>(Landroid/view/View;IZ)V

    .line 428
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    invoke-static {v2, v0}, Landroid/support/transition/a;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 430
    invoke-virtual {p0, v0}, Landroid/support/transition/ai;->a(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    goto/16 :goto_0

    .line 432
    :cond_e
    invoke-static {v3, v0}, Landroid/support/transition/ad;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_f
    move-object v0, v2

    goto :goto_4

    :cond_10
    move-object v3, v2

    move-object v1, v2

    goto/16 :goto_3
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/support/transition/s;)V
    .locals 0
    .param p1    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 161
    invoke-direct {p0, p1}, Landroid/support/transition/ai;->d(Landroid/support/transition/s;)V

    .line 162
    return-void
.end method
