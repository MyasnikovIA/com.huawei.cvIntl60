.class Landroid/support/design/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/f$a;,
        Landroid/support/design/widget/f$c;,
        Landroid/support/design/widget/f$b;,
        Landroid/support/design/widget/f$e;,
        Landroid/support/design/widget/f$f;,
        Landroid/support/design/widget/f$d;
    }
.end annotation


# static fields
.field static final a:Landroid/animation/TimeInterpolator;

.field static final p:[I

.field static final q:[I

.field static final r:[I

.field static final s:[I

.field static final t:[I

.field static final u:[I


# instance fields
.field private A:F

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Landroid/graphics/Rect;

.field private final E:Landroid/graphics/RectF;

.field private final F:Landroid/graphics/RectF;

.field private final G:Landroid/graphics/Matrix;

.field private H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field b:I

.field c:Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field d:Landroid/support/design/a/h;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field e:Landroid/support/design/a/h;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field f:Landroid/support/design/widget/l;

.field g:Landroid/graphics/drawable/Drawable;

.field h:Landroid/graphics/drawable/Drawable;

.field i:Landroid/support/design/widget/a;

.field j:Landroid/graphics/drawable/Drawable;

.field k:F

.field l:F

.field m:F

.field n:I

.field o:F

.field final v:Landroid/support/design/widget/u;

.field final w:Landroid/support/design/widget/m;

.field private x:Landroid/support/design/a/h;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private y:Landroid/support/design/a/h;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final z:Landroid/support/design/widget/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 62
    sget-object v0, Landroid/support/design/a/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/support/design/widget/f;->a:Landroid/animation/TimeInterpolator;

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/f;->p:[I

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/f;->q:[I

    .line 119
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/design/widget/f;->r:[I

    .line 122
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/design/widget/f;->s:[I

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/f;->t:[I

    .line 126
    new-array v0, v2, [I

    sput-object v0, Landroid/support/design/widget/f;->u:[I

    return-void

    .line 113
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 116
    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    .line 119
    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    .line 122
    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/u;Landroid/support/design/widget/m;)V
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/f;->b:I

    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/design/widget/f;->o:F

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/f;->D:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/f;->E:Landroid/graphics/RectF;

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/f;->F:Landroid/graphics/RectF;

    .line 134
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/f;->G:Landroid/graphics/Matrix;

    .line 139
    iput-object p1, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    .line 140
    iput-object p2, p0, Landroid/support/design/widget/f;->w:Landroid/support/design/widget/m;

    .line 142
    new-instance v0, Landroid/support/design/widget/o;

    invoke-direct {v0}, Landroid/support/design/widget/o;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/f;->z:Landroid/support/design/widget/o;

    .line 145
    iget-object v0, p0, Landroid/support/design/widget/f;->z:Landroid/support/design/widget/o;

    sget-object v1, Landroid/support/design/widget/f;->p:[I

    new-instance v2, Landroid/support/design/widget/f$c;

    invoke-direct {v2, p0}, Landroid/support/design/widget/f$c;-><init>(Landroid/support/design/widget/f;)V

    .line 147
    invoke-direct {p0, v2}, Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 148
    iget-object v0, p0, Landroid/support/design/widget/f;->z:Landroid/support/design/widget/o;

    sget-object v1, Landroid/support/design/widget/f;->q:[I

    new-instance v2, Landroid/support/design/widget/f$b;

    invoke-direct {v2, p0}, Landroid/support/design/widget/f$b;-><init>(Landroid/support/design/widget/f;)V

    .line 150
    invoke-direct {p0, v2}, Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 151
    iget-object v0, p0, Landroid/support/design/widget/f;->z:Landroid/support/design/widget/o;

    sget-object v1, Landroid/support/design/widget/f;->r:[I

    new-instance v2, Landroid/support/design/widget/f$b;

    invoke-direct {v2, p0}, Landroid/support/design/widget/f$b;-><init>(Landroid/support/design/widget/f;)V

    .line 153
    invoke-direct {p0, v2}, Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 154
    iget-object v0, p0, Landroid/support/design/widget/f;->z:Landroid/support/design/widget/o;

    sget-object v1, Landroid/support/design/widget/f;->s:[I

    new-instance v2, Landroid/support/design/widget/f$b;

    invoke-direct {v2, p0}, Landroid/support/design/widget/f$b;-><init>(Landroid/support/design/widget/f;)V

    .line 156
    invoke-direct {p0, v2}, Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 158
    iget-object v0, p0, Landroid/support/design/widget/f;->z:Landroid/support/design/widget/o;

    sget-object v1, Landroid/support/design/widget/f;->t:[I

    new-instance v2, Landroid/support/design/widget/f$e;

    invoke-direct {v2, p0}, Landroid/support/design/widget/f$e;-><init>(Landroid/support/design/widget/f;)V

    .line 159
    invoke-direct {p0, v2}, Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 161
    iget-object v0, p0, Landroid/support/design/widget/f;->z:Landroid/support/design/widget/o;

    sget-object v1, Landroid/support/design/widget/f;->u:[I

    new-instance v2, Landroid/support/design/widget/f$a;

    invoke-direct {v2, p0}, Landroid/support/design/widget/f$a;-><init>(Landroid/support/design/widget/f;)V

    .line 162
    invoke-direct {p0, v2}, Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/f;->A:F

    .line 165
    return-void
.end method

.method private a(Landroid/support/design/a/h;FFF)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1    # Landroid/support/design/a/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    iget-object v1, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    aput p2, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 519
    const-string v2, "opacity"

    invoke-virtual {p1, v2}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 520
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v1, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v4, [F

    aput p3, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 523
    const-string v2, "scale"

    invoke-virtual {p1, v2}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 524
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v1, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v4, [F

    aput p3, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 527
    const-string v2, "scale"

    invoke-virtual {p1, v2}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 528
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v1, p0, Landroid/support/design/widget/f;->G:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, v1}, Landroid/support/design/widget/f;->a(FLandroid/graphics/Matrix;)V

    .line 531
    iget-object v1, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    new-instance v2, Landroid/support/design/a/f;

    invoke-direct {v2}, Landroid/support/design/a/f;-><init>()V

    new-instance v3, Landroid/support/design/a/g;

    invoke-direct {v3}, Landroid/support/design/a/g;-><init>()V

    new-array v4, v4, [Landroid/graphics/Matrix;

    new-instance v5, Landroid/graphics/Matrix;

    iget-object v6, p0, Landroid/support/design/widget/f;->G:Landroid/graphics/Matrix;

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v5, v4, v7

    .line 532
    invoke-static {v1, v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 534
    const-string v2, "iconScale"

    invoke-virtual {p1, v2}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    .line 535
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 538
    invoke-static {v1, v0}, Landroid/support/design/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 539
    return-object v1
.end method

.method private a(Landroid/support/design/widget/f$f;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1    # Landroid/support/design/widget/f$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 651
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 652
    sget-object v1, Landroid/support/design/widget/f;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 653
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 654
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 655
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 656
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 657
    return-object v0

    .line 656
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FLandroid/graphics/Matrix;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 290
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 292
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/design/widget/f;->n:I

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Landroid/support/design/widget/f;->E:Landroid/graphics/RectF;

    .line 296
    iget-object v2, p0, Landroid/support/design/widget/f;->F:Landroid/graphics/RectF;

    .line 297
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 298
    iget v0, p0, Landroid/support/design/widget/f;->n:I

    int-to-float v0, v0

    iget v3, p0, Landroid/support/design/widget/f;->n:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 299
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 302
    iget v0, p0, Landroid/support/design/widget/f;->n:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v1, p0, Landroid/support/design/widget/f;->n:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 304
    :cond_0
    return-void
.end method

.method private q()Landroid/support/design/a/h;
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Landroid/support/design/widget/f;->x:Landroid/support/design/a/h;

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    .line 499
    invoke-virtual {v0}, Landroid/support/design/widget/u;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$animator;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/f;->x:Landroid/support/design/a/h;

    .line 501
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/f;->x:Landroid/support/design/a/h;

    return-object v0
.end method

.method private r()Landroid/support/design/a/h;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/design/widget/f;->y:Landroid/support/design/a/h;

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    .line 507
    invoke-virtual {v0}, Landroid/support/design/widget/u;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$animator;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/f;->y:Landroid/support/design/a/h;

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/f;->y:Landroid/support/design/a/h;

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Landroid/support/design/widget/f;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Landroid/support/design/widget/f$3;

    invoke-direct {v0, p0}, Landroid/support/design/widget/f$3;-><init>(Landroid/support/design/widget/f;)V

    iput-object v0, p0, Landroid/support/design/widget/f;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 617
    :cond_0
    return-void
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 729
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 732
    iget v0, p0, Landroid/support/design/widget/f;->A:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 733
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 734
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/u;->setLayerType(ILandroid/graphics/Paint;)V

    .line 744
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/f;->f:Landroid/support/design/widget/l;

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Landroid/support/design/widget/f;->f:Landroid/support/design/widget/l;

    iget v1, p0, Landroid/support/design/widget/f;->A:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->b(F)V

    .line 747
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/f;->i:Landroid/support/design/widget/a;

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Landroid/support/design/widget/f;->i:Landroid/support/design/widget/a;

    iget v1, p0, Landroid/support/design/widget/f;->A:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/a;->a(F)V

    .line 750
    :cond_2
    return-void

    .line 737
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/support/design/widget/u;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method a()F
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Landroid/support/design/widget/f;->k:F

    return v0
.end method

.method final a(F)V
    .locals 3

    .prologue
    .line 234
    iget v0, p0, Landroid/support/design/widget/f;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 235
    iput p1, p0, Landroid/support/design/widget/f;->k:F

    .line 236
    iget v0, p0, Landroid/support/design/widget/f;->k:F

    iget v1, p0, Landroid/support/design/widget/f;->l:F

    iget v2, p0, Landroid/support/design/widget/f;->m:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/f;->a(FFF)V

    .line 238
    :cond_0
    return-void
.end method

.method a(FFF)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Landroid/support/design/widget/f;->f:Landroid/support/design/widget/l;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/support/design/widget/f;->f:Landroid/support/design/widget/l;

    iget v1, p0, Landroid/support/design/widget/f;->m:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/l;->a(FF)V

    .line 328
    invoke-virtual {p0}, Landroid/support/design/widget/f;->j()V

    .line 330
    :cond_0
    return-void
.end method

.method a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/design/widget/f;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/f;->B:Ljava/util/ArrayList;

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/f;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/design/widget/f;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/support/design/widget/f;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 215
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/f;->i:Landroid/support/design/widget/a;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Landroid/support/design/widget/f;->i:Landroid/support/design/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/a;->a(Landroid/content/res/ColorStateList;)V

    .line 218
    :cond_1
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/design/widget/f;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/support/design/widget/f;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 224
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Landroid/support/design/widget/f;->f:Landroid/support/design/widget/l;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/l;->getPadding(Landroid/graphics/Rect;)Z

    .line 559
    return-void
.end method

.method final a(Landroid/support/design/a/h;)V
    .locals 0
    .param p1    # Landroid/support/design/a/h;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 312
    iput-object p1, p0, Landroid/support/design/widget/f;->d:Landroid/support/design/a/h;

    .line 313
    return-void
.end method

.method a(Landroid/support/design/widget/f$d;Z)V
    .locals 3
    .param p1    # Landroid/support/design/widget/f$d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0}, Landroid/support/design/widget/f;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/f;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Landroid/support/design/widget/f;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 380
    :cond_2
    invoke-direct {p0}, Landroid/support/design/widget/f;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, p0, Landroid/support/design/widget/f;->e:Landroid/support/design/a/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/f;->e:Landroid/support/design/a/h;

    .line 382
    :goto_1
    invoke-direct {p0, v0, v1, v1, v1}, Landroid/support/design/widget/f;->a(Landroid/support/design/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 387
    new-instance v0, Landroid/support/design/widget/f$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/support/design/widget/f$1;-><init>(Landroid/support/design/widget/f;ZLandroid/support/design/widget/f$d;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    iget-object v0, p0, Landroid/support/design/widget/f;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p0, Landroid/support/design/widget/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 420
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 383
    :cond_3
    invoke-direct {p0}, Landroid/support/design/widget/f;->r()Landroid/support/design/a/h;

    move-result-object v0

    goto :goto_1

    .line 423
    :cond_4
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 426
    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    if-eqz p2, :cond_6

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v1, v0, p2}, Landroid/support/design/widget/u;->a(IZ)V

    .line 427
    if-eqz p1, :cond_0

    .line 428
    invoke-interface {p1}, Landroid/support/design/widget/f$d;->b()V

    goto :goto_0

    .line 426
    :cond_6
    const/4 v0, 0x4

    goto :goto_3
.end method

.method a([I)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/design/widget/f;->z:Landroid/support/design/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/o;->a([I)V

    .line 334
    return-void
.end method

.method b()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Landroid/support/design/widget/f;->l:F

    return v0
.end method

.method final b(F)V
    .locals 3

    .prologue
    .line 253
    iget v0, p0, Landroid/support/design/widget/f;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 254
    iput p1, p0, Landroid/support/design/widget/f;->l:F

    .line 255
    iget v0, p0, Landroid/support/design/widget/f;->k:F

    iget v1, p0, Landroid/support/design/widget/f;->l:F

    iget v2, p0, Landroid/support/design/widget/f;->m:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/f;->a(FFF)V

    .line 257
    :cond_0
    return-void
.end method

.method b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/design/widget/f;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/f;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/design/widget/f;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/support/design/widget/f;->h:Landroid/graphics/drawable/Drawable;

    .line 229
    invoke-static {p1}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 231
    :cond_0
    return-void
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method final b(Landroid/support/design/a/h;)V
    .locals 0
    .param p1    # Landroid/support/design/a/h;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    iput-object p1, p0, Landroid/support/design/widget/f;->e:Landroid/support/design/a/h;

    .line 322
    return-void
.end method

.method b(Landroid/support/design/widget/f$d;Z)V
    .locals 3
    .param p1    # Landroid/support/design/widget/f$d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 434
    invoke-virtual {p0}, Landroid/support/design/widget/f;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/f;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Landroid/support/design/widget/f;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 443
    :cond_2
    invoke-direct {p0}, Landroid/support/design/widget/f;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/u;->setAlpha(F)V

    .line 447
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/u;->setScaleY(F)V

    .line 448
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/u;->setScaleX(F)V

    .line 449
    invoke-virtual {p0, v1}, Landroid/support/design/widget/f;->d(F)V

    .line 452
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/f;->d:Landroid/support/design/a/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/f;->d:Landroid/support/design/a/h;

    .line 453
    :goto_1
    invoke-direct {p0, v0, v2, v2, v2}, Landroid/support/design/widget/f;->a(Landroid/support/design/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 458
    new-instance v0, Landroid/support/design/widget/f$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/support/design/widget/f$2;-><init>(Landroid/support/design/widget/f;ZLandroid/support/design/widget/f$d;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 478
    iget-object v0, p0, Landroid/support/design/widget/f;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 479
    iget-object v0, p0, Landroid/support/design/widget/f;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 480
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 454
    :cond_4
    invoke-direct {p0}, Landroid/support/design/widget/f;->q()Landroid/support/design/a/h;

    move-result-object v0

    goto :goto_1

    .line 483
    :cond_5
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 485
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/u;->a(IZ)V

    .line 486
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/u;->setAlpha(F)V

    .line 487
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/u;->setScaleY(F)V

    .line 488
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/u;->setScaleX(F)V

    .line 489
    invoke-virtual {p0, v2}, Landroid/support/design/widget/f;->d(F)V

    .line 490
    if-eqz p1, :cond_0

    .line 491
    invoke-interface {p1}, Landroid/support/design/widget/f$d;->a()V

    goto :goto_0
.end method

.method c()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/support/design/widget/f;->m:F

    return v0
.end method

.method final c(F)V
    .locals 3

    .prologue
    .line 260
    iget v0, p0, Landroid/support/design/widget/f;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 261
    iput p1, p0, Landroid/support/design/widget/f;->m:F

    .line 262
    iget v0, p0, Landroid/support/design/widget/f;->k:F

    iget v1, p0, Landroid/support/design/widget/f;->l:F

    iget v2, p0, Landroid/support/design/widget/f;->m:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/f;->a(FFF)V

    .line 264
    :cond_0
    return-void
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/design/widget/f;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/f;->C:Ljava/util/ArrayList;

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method final d()V
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Landroid/support/design/widget/f;->o:F

    invoke-virtual {p0, v0}, Landroid/support/design/widget/f;->d(F)V

    .line 279
    return-void
.end method

.method final d(F)V
    .locals 2

    .prologue
    .line 282
    iput p1, p0, Landroid/support/design/widget/f;->o:F

    .line 284
    iget-object v0, p0, Landroid/support/design/widget/f;->G:Landroid/graphics/Matrix;

    .line 285
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/f;->a(FLandroid/graphics/Matrix;)V

    .line 286
    iget-object v1, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/u;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 287
    return-void
.end method

.method public d(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/design/widget/f;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final e()Landroid/support/design/a/h;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/design/widget/f;->d:Landroid/support/design/a/h;

    return-object v0
.end method

.method final f()Landroid/support/design/a/h;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/design/widget/f;->e:Landroid/support/design/a/h;

    return-object v0
.end method

.method g()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/design/widget/f;->z:Landroid/support/design/widget/o;

    invoke-virtual {v0}, Landroid/support/design/widget/o;->a()V

    .line 338
    return-void
.end method

.method final h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Landroid/support/design/widget/f;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method i()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method final j()V
    .locals 5

    .prologue
    .line 551
    iget-object v0, p0, Landroid/support/design/widget/f;->D:Landroid/graphics/Rect;

    .line 552
    invoke-virtual {p0, v0}, Landroid/support/design/widget/f;->a(Landroid/graphics/Rect;)V

    .line 553
    invoke-virtual {p0, v0}, Landroid/support/design/widget/f;->b(Landroid/graphics/Rect;)V

    .line 554
    iget-object v1, p0, Landroid/support/design/widget/f;->w:Landroid/support/design/widget/m;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/m;->a(IIII)V

    .line 555
    return-void
.end method

.method k()V
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/support/design/widget/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0}, Landroid/support/design/widget/f;->s()V

    .line 566
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/f;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 568
    :cond_0
    return-void
.end method

.method l()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/design/widget/f;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/f;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/f;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 575
    :cond_0
    return-void
.end method

.method m()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    return v0
.end method

.method n()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getRotation()F

    move-result v0

    .line 600
    iget v1, p0, Landroid/support/design/widget/f;->A:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 601
    iput v0, p0, Landroid/support/design/widget/f;->A:F

    .line 602
    invoke-direct {p0}, Landroid/support/design/widget/f;->u()V

    .line 604
    :cond_0
    return-void
.end method

.method o()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 631
    iget-object v2, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v2}, Landroid/support/design/widget/u;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    iget v2, p0, Landroid/support/design/widget/f;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 633
    goto :goto_0

    .line 636
    :cond_2
    iget v2, p0, Landroid/support/design/widget/f;->b:I

    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method p()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 641
    iget-object v2, p0, Landroid/support/design/widget/f;->v:Landroid/support/design/widget/u;

    invoke-virtual {v2}, Landroid/support/design/widget/u;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 643
    iget v2, p0, Landroid/support/design/widget/f;->b:I

    if-ne v2, v0, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 643
    goto :goto_0

    .line 646
    :cond_2
    iget v2, p0, Landroid/support/design/widget/f;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
