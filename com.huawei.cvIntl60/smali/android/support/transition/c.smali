.class public Landroid/support/transition/c;
.super Landroid/support/transition/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/c$a;
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final i:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/c$a;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/c$a;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Landroid/support/transition/j;


# instance fields
.field private o:[I

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/c;->h:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/support/transition/c$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/c$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/c;->i:Landroid/util/Property;

    .line 86
    new-instance v0, Landroid/support/transition/c$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/c$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/c;->j:Landroid/util/Property;

    .line 99
    new-instance v0, Landroid/support/transition/c$4;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/c$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/c;->k:Landroid/util/Property;

    .line 112
    new-instance v0, Landroid/support/transition/c$5;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/c$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/c;->l:Landroid/util/Property;

    .line 129
    new-instance v0, Landroid/support/transition/c$6;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/c$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/c;->m:Landroid/util/Property;

    .line 146
    new-instance v0, Landroid/support/transition/c$7;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/c$7;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/c;->n:Landroid/util/Property;

    .line 167
    new-instance v0, Landroid/support/transition/j;

    invoke-direct {v0}, Landroid/support/transition/j;-><init>()V

    sput-object v0, Landroid/support/transition/c;->r:Landroid/support/transition/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Landroid/support/transition/l;-><init>()V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/c;->o:[I

    .line 164
    iput-boolean v1, p0, Landroid/support/transition/c;->p:Z

    .line 165
    iput-boolean v1, p0, Landroid/support/transition/c;->q:Z

    .line 170
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 245
    .line 246
    iget-boolean v2, p0, Landroid/support/transition/c;->q:Z

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {p0, p1, v0}, Landroid/support/transition/c;->b(Landroid/view/View;Z)Landroid/support/transition/s;

    move-result-object v2

    .line 248
    if-nez v2, :cond_2

    .line 249
    if-ne p1, p2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 249
    goto :goto_0

    .line 251
    :cond_2
    iget-object v2, v2, Landroid/support/transition/s;->b:Landroid/view/View;

    if-eq p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private d(Landroid/support/transition/s;)V
    .locals 8

    .prologue
    .line 217
    iget-object v0, p1, Landroid/support/transition/s;->b:Landroid/view/View;

    .line 219
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    :cond_0
    iget-object v1, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-boolean v1, p0, Landroid/support/transition/c;->q:Z

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p1, Landroid/support/transition/s;->b:Landroid/view/View;

    iget-object v2, p0, Landroid/support/transition/c;->o:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 225
    iget-object v1, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/support/transition/c;->o:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/support/transition/c;->o:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_1
    iget-boolean v1, p0, Landroid/support/transition/c;->p:Z

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;
    .locals 18
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
    .line 261
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 262
    :cond_0
    const/4 v2, 0x0

    .line 455
    :cond_1
    :goto_0
    return-object v2

    .line 264
    :cond_2
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/transition/s;->a:Ljava/util/Map;

    .line 265
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/s;->a:Ljava/util/Map;

    .line 266
    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 267
    const-string v3, "android:changeBounds:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 268
    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    .line 269
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 271
    :cond_4
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/s;->b:Landroid/view/View;

    .line 272
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/support/transition/c;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 273
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 274
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v4, "android:changeBounds:bounds"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 275
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 276
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 277
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 278
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 279
    iget v11, v1, Landroid/graphics/Rect;->right:I

    .line 280
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 281
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 282
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 283
    sub-int v13, v11, v9

    .line 284
    sub-int v14, v12, v10

    .line 285
    sub-int v15, v7, v5

    .line 286
    sub-int v16, v8, v6

    .line 287
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 288
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v4, "android:changeBounds:clip"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 289
    const/4 v2, 0x0

    .line 290
    if-eqz v13, :cond_5

    if-nez v14, :cond_6

    :cond_5
    if-eqz v15, :cond_a

    if-eqz v16, :cond_a

    .line 291
    :cond_6
    if-ne v9, v5, :cond_7

    if-eq v10, v6, :cond_8

    :cond_7
    const/4 v2, 0x1

    .line 292
    :cond_8
    if-ne v11, v7, :cond_9

    if-eq v12, v8, :cond_a

    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 294
    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    if-nez v1, :cond_d

    if-eqz v4, :cond_d

    .line 296
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 298
    :cond_d
    if-lez v2, :cond_16

    .line 300
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/transition/c;->p:Z

    move/from16 v17, v0

    if-nez v17, :cond_12

    .line 301
    invoke-static {v3, v9, v10, v11, v12}, Landroid/support/transition/ad;->a(Landroid/view/View;IIII)V

    .line 303
    const/4 v1, 0x2

    if-ne v2, v1, :cond_f

    .line 304
    if-ne v13, v15, :cond_e

    move/from16 v0, v16

    if-ne v14, v0, :cond_e

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/c;->l()Landroid/support/transition/g;

    move-result-object v1

    int-to-float v2, v9

    int-to-float v4, v10

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/support/transition/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 307
    sget-object v2, Landroid/support/transition/c;->n:Landroid/util/Property;

    invoke-static {v3, v2, v1}, Landroid/support/transition/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v2, v1

    .line 388
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 390
    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/support/transition/x;->a(Landroid/view/ViewGroup;Z)V

    .line 391
    new-instance v3, Landroid/support/transition/c$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1}, Landroid/support/transition/c$10;-><init>(Landroid/support/transition/c;Landroid/view/ViewGroup;)V

    .line 418
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/transition/c;->a(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    goto/16 :goto_0

    .line 310
    :cond_e
    new-instance v2, Landroid/support/transition/c$a;

    invoke-direct {v2, v3}, Landroid/support/transition/c$a;-><init>(Landroid/view/View;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/c;->l()Landroid/support/transition/g;

    move-result-object v1

    int-to-float v4, v9

    int-to-float v9, v10

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v1, v4, v9, v5, v6}, Landroid/support/transition/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 313
    sget-object v4, Landroid/support/transition/c;->j:Landroid/util/Property;

    .line 314
    invoke-static {v2, v4, v1}, Landroid/support/transition/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/c;->l()Landroid/support/transition/g;

    move-result-object v1

    int-to-float v5, v11

    int-to-float v6, v12

    int-to-float v7, v7

    int-to-float v8, v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/support/transition/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 318
    sget-object v5, Landroid/support/transition/c;->k:Landroid/util/Property;

    invoke-static {v2, v5, v1}, Landroid/support/transition/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 320
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 321
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 323
    new-instance v4, Landroid/support/transition/c$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Landroid/support/transition/c$8;-><init>(Landroid/support/transition/c;Landroid/support/transition/c$a;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v1

    .line 329
    goto :goto_1

    .line 330
    :cond_f
    if-ne v9, v5, :cond_10

    if-eq v10, v6, :cond_11

    .line 331
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/c;->l()Landroid/support/transition/g;

    move-result-object v1

    int-to-float v2, v9

    int-to-float v4, v10

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/support/transition/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 333
    sget-object v2, Landroid/support/transition/c;->m:Landroid/util/Property;

    invoke-static {v3, v2, v1}, Landroid/support/transition/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v2, v1

    .line 335
    goto :goto_1

    .line 336
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/c;->l()Landroid/support/transition/g;

    move-result-object v1

    int-to-float v2, v11

    int-to-float v4, v12

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/support/transition/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 338
    sget-object v2, Landroid/support/transition/c;->l:Landroid/util/Property;

    invoke-static {v3, v2, v1}, Landroid/support/transition/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v2, v1

    .line 340
    goto/16 :goto_1

    .line 342
    :cond_12
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 343
    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 345
    add-int/2addr v2, v9

    add-int/2addr v11, v10

    invoke-static {v3, v9, v10, v2, v11}, Landroid/support/transition/ad;->a(Landroid/view/View;IIII)V

    .line 348
    const/4 v2, 0x0

    .line 349
    if-ne v9, v5, :cond_13

    if-eq v10, v6, :cond_1a

    .line 350
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/c;->l()Landroid/support/transition/g;

    move-result-object v2

    int-to-float v9, v9

    int-to-float v10, v10

    int-to-float v11, v5

    int-to-float v12, v6

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/support/transition/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    .line 352
    sget-object v9, Landroid/support/transition/c;->n:Landroid/util/Property;

    invoke-static {v3, v9, v2}, Landroid/support/transition/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object v10, v2

    .line 356
    :goto_2
    if-nez v1, :cond_19

    .line 357
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-direct {v1, v2, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v9, v1

    .line 359
    :goto_3
    if-nez v4, :cond_18

    .line 360
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v11, 0x0

    move/from16 v0, v16

    invoke-direct {v1, v2, v11, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 362
    :goto_4
    const/4 v2, 0x0

    .line 363
    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 364
    invoke-static {v3, v9}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 365
    const-string v2, "clipBounds"

    sget-object v11, Landroid/support/transition/c;->r:Landroid/support/transition/j;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v9, 0x1

    aput-object v1, v12, v9

    invoke-static {v3, v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 367
    new-instance v1, Landroid/support/transition/c$9;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Landroid/support/transition/c$9;-><init>(Landroid/support/transition/c;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v9, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v9

    .line 385
    :goto_5
    invoke-static {v10, v1}, Landroid/support/transition/q;->a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    .line 423
    :cond_14
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 424
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowY"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 425
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowX"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 426
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/support/transition/s;->a:Ljava/util/Map;

    const-string v6, "android:changeBounds:windowY"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 428
    if-ne v2, v5, :cond_15

    if-eq v4, v1, :cond_16

    .line 429
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/transition/c;->o:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 430
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 432
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 433
    invoke-virtual {v3, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 434
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 436
    invoke-static {v3}, Landroid/support/transition/ad;->c(Landroid/view/View;)F

    move-result v9

    .line 437
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/support/transition/ad;->a(Landroid/view/View;F)V

    .line 438
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ad;->a(Landroid/view/View;)Landroid/support/transition/ac;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/support/transition/ac;->a(Landroid/graphics/drawable/Drawable;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/c;->l()Landroid/support/transition/g;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/transition/c;->o:[I

    const/4 v10, 0x0

    aget v8, v8, v10

    sub-int/2addr v2, v8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/transition/c;->o:[I

    const/4 v10, 0x1

    aget v8, v8, v10

    sub-int/2addr v4, v8

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/transition/c;->o:[I

    const/4 v10, 0x0

    aget v8, v8, v10

    sub-int/2addr v5, v8

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/transition/c;->o:[I

    const/4 v10, 0x1

    aget v8, v8, v10

    sub-int/2addr v1, v8

    int-to-float v1, v1

    invoke-virtual {v6, v2, v4, v5, v1}, Landroid/support/transition/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 442
    sget-object v2, Landroid/support/transition/c;->i:Landroid/util/Property;

    invoke-static {v2, v1}, Landroid/support/transition/i;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 444
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-static {v7, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 445
    new-instance v4, Landroid/support/transition/c$2;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Landroid/support/transition/c$2;-><init>(Landroid/support/transition/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 455
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_17
    move-object v1, v2

    goto/16 :goto_5

    :cond_18
    move-object v1, v4

    goto/16 :goto_4

    :cond_19
    move-object v9, v1

    goto/16 :goto_3

    :cond_1a
    move-object v10, v2

    goto/16 :goto_2
.end method

.method public a(Landroid/support/transition/s;)V
    .locals 0
    .param p1    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    invoke-direct {p0, p1}, Landroid/support/transition/c;->d(Landroid/support/transition/s;)V

    .line 237
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    sget-object v0, Landroid/support/transition/c;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/support/transition/s;)V
    .locals 0
    .param p1    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 241
    invoke-direct {p0, p1}, Landroid/support/transition/c;->d(Landroid/support/transition/s;)V

    .line 242
    return-void
.end method
