.class Landroid/support/v7/widget/al;
.super Landroid/support/v7/widget/RecyclerView$h;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$m;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/al$b;,
        Landroid/support/v7/widget/al$a;
    }
.end annotation


# static fields
.field private static final k:[I

.field private static final l:[I


# instance fields
.field private A:I

.field private final B:[I

.field private final C:[I

.field private final D:Ljava/lang/Runnable;

.field private final E:Landroid/support/v7/widget/RecyclerView$n;

.field final a:Landroid/graphics/drawable/StateListDrawable;

.field final b:Landroid/graphics/drawable/Drawable;

.field c:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field h:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final i:Landroid/animation/ValueAnimator;

.field j:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:Landroid/graphics/drawable/StateListDrawable;

.field private final r:Landroid/graphics/drawable/Drawable;

.field private final s:I

.field private final t:I

.field private u:I

.field private v:I

.field private w:Landroid/support/v7/widget/RecyclerView;

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/al;->k:[I

    .line 75
    new-array v0, v2, [I

    sput-object v0, Landroid/support/v7/widget/al;->l:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    .line 104
    iput v1, p0, Landroid/support/v7/widget/al;->u:I

    .line 105
    iput v1, p0, Landroid/support/v7/widget/al;->v:I

    .line 112
    iput-boolean v1, p0, Landroid/support/v7/widget/al;->x:Z

    .line 113
    iput-boolean v1, p0, Landroid/support/v7/widget/al;->y:Z

    .line 114
    iput v1, p0, Landroid/support/v7/widget/al;->z:I

    .line 115
    iput v1, p0, Landroid/support/v7/widget/al;->A:I

    .line 117
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/al;->B:[I

    .line 118
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/al;->C:[I

    .line 119
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 120
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    .line 121
    iput v1, p0, Landroid/support/v7/widget/al;->j:I

    .line 123
    new-instance v0, Landroid/support/v7/widget/al$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/al$1;-><init>(Landroid/support/v7/widget/al;)V

    iput-object v0, p0, Landroid/support/v7/widget/al;->D:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Landroid/support/v7/widget/al$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/al$2;-><init>(Landroid/support/v7/widget/al;)V

    iput-object v0, p0, Landroid/support/v7/widget/al;->E:Landroid/support/v7/widget/RecyclerView$n;

    .line 142
    iput-object p2, p0, Landroid/support/v7/widget/al;->a:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    iput-object p3, p0, Landroid/support/v7/widget/al;->b:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p4, p0, Landroid/support/v7/widget/al;->q:Landroid/graphics/drawable/StateListDrawable;

    .line 145
    iput-object p5, p0, Landroid/support/v7/widget/al;->r:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/al;->o:I

    .line 147
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/al;->p:I

    .line 149
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/al;->s:I

    .line 151
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/al;->t:I

    .line 152
    iput p7, p0, Landroid/support/v7/widget/al;->m:I

    .line 153
    iput p8, p0, Landroid/support/v7/widget/al;->n:I

    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/al;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/al$a;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/al$a;-><init>(Landroid/support/v7/widget/al;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/al$b;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/al$b;-><init>(Landroid/support/v7/widget/al;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 161
    return-void

    .line 119
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FF[IIII)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 488
    const/4 v1, 0x1

    aget v1, p3, v1

    aget v2, p3, v0

    sub-int/2addr v1, v2

    .line 489
    if-nez v1, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v0

    .line 492
    :cond_1
    sub-float v2, p2, p1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 493
    sub-int v2, p4, p6

    .line 494
    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 495
    add-int v3, p5, v1

    .line 496
    if-ge v3, v2, :cond_0

    if-ltz v3, :cond_0

    move v0, v1

    .line 497
    goto :goto_0
.end method

.method private a(F)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 455
    invoke-direct {p0}, Landroid/support/v7/widget/al;->g()[I

    move-result-object v3

    .line 456
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 457
    iget v0, p0, Landroid/support/v7/widget/al;->d:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 460
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/al;->e:F

    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    .line 461
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    .line 462
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/al;->v:I

    move-object v0, p0

    .line 460
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/al;->a(FF[IIII)I

    move-result v0

    .line 463
    if-eqz v0, :cond_1

    .line 464
    iget-object v1, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v7, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 466
    :cond_1
    iput v2, p0, Landroid/support/v7/widget/al;->e:F

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 300
    iget v0, p0, Landroid/support/v7/widget/al;->u:I

    .line 302
    iget v1, p0, Landroid/support/v7/widget/al;->o:I

    sub-int/2addr v0, v1

    .line 303
    iget v1, p0, Landroid/support/v7/widget/al;->d:I

    iget v2, p0, Landroid/support/v7/widget/al;->c:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 304
    iget-object v2, p0, Landroid/support/v7/widget/al;->a:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroid/support/v7/widget/al;->o:I

    iget v4, p0, Landroid/support/v7/widget/al;->c:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 305
    iget-object v2, p0, Landroid/support/v7/widget/al;->b:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/al;->p:I

    iget v4, p0, Landroid/support/v7/widget/al;->v:I

    .line 306
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    invoke-direct {p0}, Landroid/support/v7/widget/al;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/al;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    iget v0, p0, Landroid/support/v7/widget/al;->o:I

    int-to-float v0, v0

    int-to-float v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 311
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 312
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 314
    iget v0, p0, Landroid/support/v7/widget/al;->o:I

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    :goto_0
    return-void

    .line 316
    :cond_0
    int-to-float v2, v0

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    iget-object v2, p0, Landroid/support/v7/widget/al;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    int-to-float v2, v1

    invoke-virtual {p1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    iget-object v2, p0, Landroid/support/v7/widget/al;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private b(F)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 470
    invoke-direct {p0}, Landroid/support/v7/widget/al;->h()[I

    move-result-object v3

    .line 471
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 472
    iget v0, p0, Landroid/support/v7/widget/al;->g:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 476
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/al;->h:F

    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    .line 477
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    .line 478
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/al;->u:I

    move-object v0, p0

    .line 476
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/al;->a(FF[IIII)I

    move-result v0

    .line 479
    if-eqz v0, :cond_1

    .line 480
    iget-object v1, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 483
    :cond_1
    iput v2, p0, Landroid/support/v7/widget/al;->h:F

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 325
    iget v0, p0, Landroid/support/v7/widget/al;->v:I

    .line 327
    iget v1, p0, Landroid/support/v7/widget/al;->s:I

    sub-int/2addr v0, v1

    .line 328
    iget v1, p0, Landroid/support/v7/widget/al;->g:I

    iget v2, p0, Landroid/support/v7/widget/al;->f:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 329
    iget-object v2, p0, Landroid/support/v7/widget/al;->q:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroid/support/v7/widget/al;->f:I

    iget v4, p0, Landroid/support/v7/widget/al;->s:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 330
    iget-object v2, p0, Landroid/support/v7/widget/al;->r:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/al;->u:I

    iget v4, p0, Landroid/support/v7/widget/al;->t:I

    .line 331
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    int-to-float v2, v0

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    iget-object v2, p0, Landroid/support/v7/widget/al;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    int-to-float v2, v1

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 336
    iget-object v2, p0, Landroid/support/v7/widget/al;->q:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/al;->E:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 180
    return-void
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 271
    invoke-direct {p0}, Landroid/support/v7/widget/al;->f()V

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/al;->D:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/al;->E:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 186
    invoke-direct {p0}, Landroid/support/v7/widget/al;->f()V

    .line 187
    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 216
    iget-object v1, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/al;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method private g()[I
    .locals 4

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/v7/widget/al;->B:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/al;->n:I

    aput v2, v0, v1

    .line 543
    iget-object v0, p0, Landroid/support/v7/widget/al;->B:[I

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v7/widget/al;->v:I

    iget v3, p0, Landroid/support/v7/widget/al;->n:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 544
    iget-object v0, p0, Landroid/support/v7/widget/al;->B:[I

    return-object v0
.end method

.method private h()[I
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/al;->C:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/al;->n:I

    aput v2, v0, v1

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/al;->C:[I

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v7/widget/al;->u:I

    iget v3, p0, Landroid/support/v7/widget/al;->n:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 553
    iget-object v0, p0, Landroid/support/v7/widget/al;->C:[I

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 192
    return-void
.end method

.method a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 195
    if-ne p1, v2, :cond_0

    iget v0, p0, Landroid/support/v7/widget/al;->z:I

    if-eq v0, v2, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/al;->k:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 197
    invoke-direct {p0}, Landroid/support/v7/widget/al;->f()V

    .line 200
    :cond_0
    if-nez p1, :cond_2

    .line 201
    invoke-virtual {p0}, Landroid/support/v7/widget/al;->a()V

    .line 206
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/al;->z:I

    if-ne v0, v2, :cond_3

    if-eq p1, v2, :cond_3

    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/al;->l:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 208
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/al;->c(I)V

    .line 212
    :cond_1
    :goto_1
    iput p1, p0, Landroid/support/v7/widget/al;->z:I

    .line 213
    return-void

    .line 203
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/al;->b()V

    goto :goto_0

    .line 209
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 210
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Landroid/support/v7/widget/al;->c(I)V

    goto :goto_1
.end method

.method a(II)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    .line 349
    iget v4, p0, Landroid/support/v7/widget/al;->v:I

    .line 350
    sub-int v0, v3, v4

    if-lez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/al;->v:I

    iget v5, p0, Landroid/support/v7/widget/al;->m:I

    if-lt v0, v5, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/al;->x:Z

    .line 353
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v5

    .line 354
    iget v6, p0, Landroid/support/v7/widget/al;->u:I

    .line 355
    sub-int v0, v5, v6

    if-lez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/al;->u:I

    iget v7, p0, Landroid/support/v7/widget/al;->m:I

    if-lt v0, v7, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/al;->y:Z

    .line 358
    iget-boolean v0, p0, Landroid/support/v7/widget/al;->x:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/al;->y:Z

    if-nez v0, :cond_3

    .line 359
    iget v0, p0, Landroid/support/v7/widget/al;->z:I

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/al;->a(I)V

    .line 384
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 350
    goto :goto_0

    :cond_2
    move v0, v2

    .line 355
    goto :goto_1

    .line 365
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/al;->x:Z

    if-eqz v0, :cond_4

    .line 366
    int-to-float v0, p2

    int-to-float v2, v4

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    .line 367
    int-to-float v2, v4

    mul-float/2addr v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/al;->d:I

    .line 369
    mul-int v0, v4, v4

    div-int/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/al;->c:I

    .line 373
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/al;->y:Z

    if-eqz v0, :cond_5

    .line 374
    int-to-float v0, p1

    int-to-float v2, v6

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    .line 375
    int-to-float v2, v6

    mul-float/2addr v0, v2

    int-to-float v2, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/al;->g:I

    .line 377
    mul-int v0, v6, v6

    div-int/2addr v0, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/al;->f:I

    .line 381
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/al;->z:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/v7/widget/al;->z:I

    if-ne v0, v1, :cond_0

    .line 382
    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/al;->a(I)V

    goto :goto_2
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    .prologue
    .line 277
    iget v0, p0, Landroid/support/v7/widget/al;->u:I

    iget-object v1, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/al;->v:I

    iget-object v1, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    .line 278
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 279
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/al;->u:I

    .line 280
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/al;->v:I

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/al;->a(I)V

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/al;->j:I

    if-eqz v0, :cond_1

    .line 290
    iget-boolean v0, p0, Landroid/support/v7/widget/al;->x:Z

    if-eqz v0, :cond_3

    .line 291
    invoke-direct {p0, p1}, Landroid/support/v7/widget/al;->a(Landroid/graphics/Canvas;)V

    .line 293
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/al;->y:Z

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0, p1}, Landroid/support/v7/widget/al;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/al;->d()V

    .line 170
    :cond_2
    iput-object p1, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/al;->w:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Landroid/support/v7/widget/al;->c()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method a(FF)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Landroid/support/v7/widget/al;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/al;->o:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/al;->d:I

    iget v1, p0, Landroid/support/v7/widget/al;->c:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/al;->d:I

    iget v1, p0, Landroid/support/v7/widget/al;->c:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/al;->u:I

    iget v1, p0, Landroid/support/v7/widget/al;->o:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 390
    iget v2, p0, Landroid/support/v7/widget/al;->z:I

    if-ne v2, v0, :cond_5

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/al;->a(FF)Z

    move-result v2

    .line 392
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/al;->b(FF)Z

    move-result v3

    .line 393
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    .line 395
    :cond_0
    if-eqz v3, :cond_3

    .line 396
    iput v0, p0, Landroid/support/v7/widget/al;->A:I

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/al;->h:F

    .line 403
    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/al;->a(I)V

    .line 413
    :cond_2
    :goto_1
    return v0

    .line 398
    :cond_3
    if-eqz v2, :cond_1

    .line 399
    iput v5, p0, Landroid/support/v7/widget/al;->A:I

    .line 400
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/al;->e:F

    goto :goto_0

    :cond_4
    move v0, v1

    .line 406
    goto :goto_1

    .line 408
    :cond_5
    iget v2, p0, Landroid/support/v7/widget/al;->z:I

    if-eq v2, v5, :cond_2

    move v0, v1

    .line 411
    goto :goto_1
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 233
    iget v0, p0, Landroid/support/v7/widget/al;->j:I

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    :pswitch_0
    return-void

    .line 235
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 238
    :pswitch_2
    iput v4, p0, Landroid/support/v7/widget/al;->j:I

    .line 239
    iget-object v1, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method b(I)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 253
    iget v0, p0, Landroid/support/v7/widget/al;->j:I

    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 255
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 258
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v7/widget/al;->j:I

    .line 259
    iget-object v1, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 261
    iget-object v0, p0, Landroid/support/v7/widget/al;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 418
    iget v0, p0, Landroid/support/v7/widget/al;->z:I

    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 423
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/al;->a(FF)Z

    move-result v0

    .line 424
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/al;->b(FF)Z

    move-result v1

    .line 425
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 426
    :cond_2
    if-eqz v1, :cond_4

    .line 427
    iput v4, p0, Landroid/support/v7/widget/al;->A:I

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/al;->h:F

    .line 433
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/al;->a(I)V

    goto :goto_0

    .line 429
    :cond_4
    if-eqz v0, :cond_3

    .line 430
    iput v3, p0, Landroid/support/v7/widget/al;->A:I

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/al;->e:F

    goto :goto_1

    .line 435
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_6

    iget v0, p0, Landroid/support/v7/widget/al;->z:I

    if-ne v0, v3, :cond_6

    .line 436
    iput v1, p0, Landroid/support/v7/widget/al;->e:F

    .line 437
    iput v1, p0, Landroid/support/v7/widget/al;->h:F

    .line 438
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/al;->a(I)V

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/al;->A:I

    goto :goto_0

    .line 440
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Landroid/support/v7/widget/al;->z:I

    if-ne v0, v3, :cond_0

    .line 441
    invoke-virtual {p0}, Landroid/support/v7/widget/al;->b()V

    .line 442
    iget v0, p0, Landroid/support/v7/widget/al;->A:I

    if-ne v0, v4, :cond_7

    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/al;->b(F)V

    .line 445
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/al;->A:I

    if-ne v0, v3, :cond_0

    .line 446
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/al;->a(F)V

    goto :goto_0
.end method

.method b(FF)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 513
    iget v0, p0, Landroid/support/v7/widget/al;->v:I

    iget v1, p0, Landroid/support/v7/widget/al;->s:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/al;->g:I

    iget v1, p0, Landroid/support/v7/widget/al;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/al;->g:I

    iget v1, p0, Landroid/support/v7/widget/al;->f:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
