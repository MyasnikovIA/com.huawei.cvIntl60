.class public Landroid/support/design/widget/AppBarLayout$BaseBehavior;
.super Landroid/support/design/widget/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;,
        Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/design/widget/AppBarLayout;",
        ">",
        "Landroid/support/design/widget/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/animation/ValueAnimator;

.field private e:I

.field private f:Z

.field private g:F

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 900
    invoke-direct {p0}, Landroid/support/design/widget/h;-><init>()V

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    .line 900
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 903
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    .line 904
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/AppBarLayout$BaseBehavior;)I
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b:I

    return v0
.end method

.method private a(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 1077
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_1

    .line 1078
    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1080
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1082
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$b;

    .line 1083
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$b;->a()I

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1085
    iget v5, v0, Landroid/support/design/widget/AppBarLayout$b;->topMargin:I

    sub-int/2addr v3, v5

    .line 1086
    iget v0, v0, Landroid/support/design/widget/AppBarLayout$b;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1089
    :goto_1
    neg-int v2, p2

    if-gt v3, v2, :cond_0

    neg-int v2, p2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 1093
    :goto_2
    return v0

    .line 1077
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1093
    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1455
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1456
    invoke-virtual {p1, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1457
    instance-of v3, v0, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v3, :cond_0

    .line 1461
    :goto_1
    return-object v0

    .line 1455
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1461
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 990
    if-ne p4, v2, :cond_2

    .line 991
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v0

    .line 992
    if-gez p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    .line 993
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v1

    neg-int v1, v1

    if-ne v0, v1, :cond_2

    .line 994
    :cond_1
    invoke-static {p3, v2}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    .line 997
    :cond_2
    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;IF)V"
        }
    .end annotation

    .prologue
    .line 1029
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1032
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1033
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 1034
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 1040
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V

    .line 1041
    return-void

    .line 1036
    :cond_0
    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1037
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    .line 1048
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v0

    .line 1049
    if-ne v0, p3, :cond_1

    .line 1050
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 1057
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    .line 1058
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/support/design/a/a;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1059
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/design/widget/AppBarLayout$BaseBehavior$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$BaseBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1071
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    const/16 v2, 0x258

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1072
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1073
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1381
    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v3

    .line 1382
    if-eqz v3, :cond_2

    .line 1383
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$b;

    .line 1384
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$b;->a()I

    move-result v0

    .line 1387
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_7

    .line 1388
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    .line 1390
    if-lez p4, :cond_4

    and-int/lit8 v5, v0, 0xc

    if-eqz v5, :cond_4

    .line 1397
    neg-int v0, p3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_3

    move v0, v1

    .line 1405
    :goto_0
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1408
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v3

    .line 1409
    if-eqz v3, :cond_0

    .line 1410
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_6

    :goto_1
    move v0, v1

    .line 1414
    :cond_0
    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->a(Z)Z

    move-result v0

    .line 1416
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    if-nez p5, :cond_1

    if-eqz v0, :cond_2

    .line 1417
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    .line 1423
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1397
    goto :goto_0

    .line 1398
    :cond_4
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 1401
    neg-int v0, p3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v1, v2

    .line 1410
    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method private static a(II)Z
    .locals 1

    .prologue
    .line 1143
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 936
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 936
    :goto_0
    return v0

    .line 937
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1328
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1330
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 1331
    invoke-virtual {p1, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1332
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$b;

    .line 1333
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$b;->b()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1335
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v3, v7, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v3, v7, :cond_3

    .line 1336
    if-eqz v6, :cond_2

    .line 1338
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$b;->a()I

    move-result v2

    .line 1339
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_4

    .line 1341
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v7, v0, Landroid/support/design/widget/AppBarLayout$b;->topMargin:I

    add-int/2addr v4, v7

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$b;->bottomMargin:I

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    .line 1343
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_0

    .line 1346
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1350
    :cond_0
    :goto_1
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1351
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1354
    :cond_1
    if-lez v0, :cond_2

    .line 1355
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v3, v1

    .line 1356
    int-to-float v2, v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1359
    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 1357
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1362
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    mul-int p2, v1, v0

    .line 1372
    :cond_2
    return p2

    .line 1330
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private static c(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 5

    .prologue
    .line 1443
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1444
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1445
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 1450
    :goto_1
    return-object v0

    .line 1444
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1450
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 1097
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v4

    .line 1098
    invoke-direct {p0, p2, v4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v2

    .line 1099
    if-ltz v2, :cond_3

    .line 1100
    invoke-virtual {p2, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1101
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$b;

    .line 1102
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$b;->a()I

    move-result v6

    .line 1104
    and-int/lit8 v1, v6, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_3

    .line 1106
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v3, v1

    .line 1107
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 1109
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_0

    .line 1111
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v1, v2

    .line 1114
    :cond_0
    const/4 v2, 0x2

    invoke-static {v6, v2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1116
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1129
    :cond_1
    :goto_0
    const/16 v2, 0x20

    invoke-static {v6, v2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1131
    iget v2, v0, Landroid/support/design/widget/AppBarLayout$b;->topMargin:I

    add-int/2addr v3, v2

    .line 1132
    iget v0, v0, Landroid/support/design/widget/AppBarLayout$b;->bottomMargin:I

    sub-int/2addr v1, v0

    .line 1135
    :cond_2
    add-int v0, v1, v3

    div-int/lit8 v0, v0, 0x2

    if-ge v4, v0, :cond_6

    .line 1137
    :goto_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v0

    const/4 v1, 0x0

    .line 1136
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 1140
    :cond_3
    return-void

    .line 1117
    :cond_4
    const/4 v2, 0x5

    invoke-static {v6, v2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1121
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 1122
    if-ge v4, v2, :cond_5

    move v3, v2

    .line 1123
    goto :goto_0

    :cond_5
    move v1, v2

    .line 1125
    goto :goto_0

    :cond_6
    move v1, v3

    .line 1135
    goto :goto_1
.end method

.method private d(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1428
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 1429
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 1430
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1432
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1433
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1435
    instance-of v5, v0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v5, :cond_1

    .line 1436
    check-cast v0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->d()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1439
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 1436
    goto :goto_1

    .line 1429
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1439
    goto :goto_1
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 1466
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;III)I"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1275
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v1

    .line 1278
    if-eqz p4, :cond_4

    if-lt v1, p4, :cond_4

    if-gt v1, p5, :cond_4

    .line 1281
    invoke-static {p3, p4, p5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v3

    .line 1282
    if-eq v1, v3, :cond_1

    .line 1284
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1285
    invoke-direct {p0, p2, v3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v0

    .line 1288
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(I)Z

    move-result v2

    .line 1291
    sub-int v6, v1, v3

    .line 1293
    sub-int v0, v3, v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b:I

    .line 1295
    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;)V

    .line 1304
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->a(I)V

    .line 1307
    if-ge v3, v1, :cond_3

    const/4 v4, -0x1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    move v5, v6

    .line 1319
    :cond_1
    :goto_2
    return v5

    :cond_2
    move v0, v3

    .line 1285
    goto :goto_0

    .line 1307
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 1316
    :cond_4
    iput v5, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b:I

    goto :goto_2
.end method

.method bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6

    .prologue
    .line 869
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v0

    return v0
.end method

.method synthetic a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 869
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    return v0
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 1255
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 1256
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1495
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    if-eqz v0, :cond_0

    .line 1496
    check-cast p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    .line 1497
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1498
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->a:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    .line 1499
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->b:F

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->g:F

    .line 1500
    iget-boolean v0, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->c:Z

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->f:Z

    .line 1505
    :goto_0
    return-void

    .line 1502
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1503
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1006
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 1008
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 1012
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->h:Ljava/lang/ref/WeakReference;

    .line 1013
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 978
    if-gez p7, :cond_0

    .line 981
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 982
    invoke-direct {p0, p7, p2, p3, p8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    .line 984
    :cond_0
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 985
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {p2, v5}, Landroid/support/design/widget/AppBarLayout;->a(Z)Z

    .line 987
    :cond_2
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .prologue
    .line 949
    if-eqz p5, :cond_0

    .line 952
    if-gez p5, :cond_1

    .line 954
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 955
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int v5, v4, v0

    .line 961
    :goto_0
    if-eq v4, v5, :cond_0

    .line 962
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v6

    .line 963
    invoke-direct {p0, p5, p2, p3, p7}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    .line 966
    :cond_0
    return-void

    .line 958
    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 959
    const/4 v5, 0x0

    goto :goto_0
.end method

.method bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 869
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 869
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 869
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 9

    .prologue
    .line 869
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 8

    .prologue
    .line 869
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method a(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1234
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->i:Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->i:Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;->a(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    .line 1248
    :goto_0
    return v0

    .line 1240
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 1242
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1243
    if-eqz v0, :cond_1

    .line 1244
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    .line 1245
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1248
    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1177
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v6

    .line 1183
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v1

    .line 1184
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    if-ltz v0, :cond_2

    and-int/lit8 v0, v1, 0x8

    if-nez v0, :cond_2

    .line 1185
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 1187
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->f:Z

    if-eqz v2, :cond_1

    .line 1188
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 1192
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 1212
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->e()V

    .line 1213
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    .line 1218
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v4}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v0

    .line 1217
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(I)Z

    .line 1224
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1223
    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    .line 1227
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->a(I)V

    .line 1229
    return v6

    .line 1190
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->g:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    .line 1193
    :cond_2
    if-eqz v1, :cond_0

    .line 1194
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_3

    move v0, v5

    .line 1195
    :goto_2
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_5

    .line 1196
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v1

    neg-int v1, v1

    .line 1197
    if-eqz v0, :cond_4

    .line 1198
    invoke-direct {p0, p1, p2, v1, v3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_1

    :cond_3
    move v0, v4

    .line 1194
    goto :goto_2

    .line 1200
    :cond_4
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    .line 1202
    :cond_5
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1203
    if-eqz v0, :cond_6

    .line 1204
    invoke-direct {p0, p1, p2, v4, v3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_1

    .line 1206
    :cond_6
    invoke-virtual {p0, p1, p2, v4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1154
    .line 1155
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1156
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1165
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 1161
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    .line 1167
    const/4 v0, 0x1

    .line 1171
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 916
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_2

    .line 918
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 920
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 922
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 926
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->h:Ljava/lang/ref/WeakReference;

    .line 929
    iput p6, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c:I

    .line 931
    return v0

    .line 918
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 869
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .prologue
    .line 869
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7

    .prologue
    .line 869
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method b(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 1260
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method bridge synthetic b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 869
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1471
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/h;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1472
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b()I

    move-result v4

    .line 1475
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 1476
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1477
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int v7, v1, v4

    .line 1479
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v4

    if-gtz v1, :cond_1

    if-ltz v7, :cond_1

    .line 1480
    new-instance v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    invoke-direct {v1, v2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1481
    iput v3, v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->a:I

    .line 1483
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v7, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->c:Z

    .line 1484
    int-to-float v0, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->b:F

    move-object v0, v1

    .line 1490
    :goto_1
    return-object v0

    .line 1475
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 1490
    goto :goto_1
.end method

.method public bridge synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 869
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method c(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 1265
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method synthetic c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 869
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    return v0
.end method
