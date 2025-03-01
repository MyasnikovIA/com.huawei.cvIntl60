.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$SavedState;,
        Landroid/support/design/widget/BottomSheetBehavior$b;,
        Landroid/support/design/widget/BottomSheetBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field e:I

.field f:Landroid/support/v4/widget/ViewDragHelper;

.field g:I

.field h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field

.field i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:Z

.field private l:Z

.field private m:F

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Landroid/support/design/widget/BottomSheetBehavior$a;

.field private w:Landroid/view/VelocityTracker;

.field private x:I

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Landroid/support/v4/widget/ViewDragHelper$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    .line 150
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    .line 765
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->z:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 188
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    iput-boolean v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    .line 150
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    .line 765
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->z:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 189
    sget-object v0, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 190
    sget v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-ne v2, v3, :cond_0

    .line 192
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->a(I)V

    .line 198
    :goto_0
    sget v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(Z)V

    .line 199
    sget v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 200
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 199
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->a(Z)V

    .line 201
    sget v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 202
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 201
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->c(Z)V

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:F

    .line 206
    return-void

    .line 194
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    .line 195
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 194
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->a(I)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 683
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v0, :cond_0

    .line 684
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->e()I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 691
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    .line 692
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    .line 696
    :cond_0
    return-void
.end method

.method private d()F
    .locals 3

    .prologue
    .line 728
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0

    .line 731
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 732
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    goto :goto_0
.end method

.method private d(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 993
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 998
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 1002
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    .line 1003
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .line 1004
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_2

    if-eqz p1, :cond_2

    .line 1005
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1006
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    .line 1013
    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_7

    .line 1014
    invoke-virtual {v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1015
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_4

    .line 1013
    :cond_3
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1019
    :cond_4
    if-nez p1, :cond_5

    .line 1020
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    .line 1021
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1023
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_2

    .line 1027
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_6

    .line 1028
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    :cond_6
    const/4 v1, 0x4

    invoke-static {v4, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_2

    .line 1036
    :cond_7
    if-nez p1, :cond_0

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    goto :goto_0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 712
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    :goto_0
    return-object p1

    .line 715
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 716
    check-cast p1, Landroid/view/ViewGroup;

    .line 717
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 718
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 720
    goto :goto_0

    .line 717
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 724
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 531
    .line 532
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 533
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    if-nez v2, :cond_3

    .line 534
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    .line 543
    :goto_0
    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 545
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 549
    :cond_0
    return-void

    .line 537
    :cond_1
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    if-eq v2, p1, :cond_3

    .line 538
    :cond_2
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    .line 539
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    .line 540
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    check-cast p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    .line 216
    invoke-virtual {p3}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 218
    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 219
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_1
    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->a:I

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x3

    .line 423
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->e()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 424
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne p3, v3, :cond_0

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    if-eqz v3, :cond_0

    .line 432
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    if-lez v3, :cond_2

    .line 433
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->e()I

    move-result v3

    .line 471
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, p2, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 472
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    .line 473
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$b;

    invoke-direct {v1, p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior$b;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 477
    :goto_2
    iput-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    goto :goto_0

    .line 435
    :cond_2
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->d()F

    move-result v3

    invoke-virtual {p0, p2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 436
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    .line 437
    const/4 v0, 0x5

    goto :goto_1

    .line 438
    :cond_3
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    if-nez v3, :cond_9

    .line 439
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 440
    iget-boolean v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v5, :cond_5

    .line 441
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 442
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    move v3, v1

    .line 443
    goto :goto_1

    .line 445
    :cond_4
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    move v0, v1

    move v3, v2

    .line 446
    goto :goto_1

    .line 449
    :cond_5
    iget v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    if-ge v3, v5, :cond_7

    .line 450
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v3, v1, :cond_6

    move v3, v4

    .line 452
    goto :goto_1

    .line 454
    :cond_6
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    move v0, v2

    move v3, v1

    .line 455
    goto :goto_1

    .line 458
    :cond_7
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 459
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    move v0, v2

    move v3, v1

    .line 460
    goto :goto_1

    .line 462
    :cond_8
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    move v0, v1

    move v3, v2

    .line 463
    goto/16 :goto_1

    .line 468
    :cond_9
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    move v0, v1

    .line 469
    goto/16 :goto_1

    .line 475
    :cond_a
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_2
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 4
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 379
    if-ne p7, v3, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 384
    if-ne p3, v0, :cond_0

    .line 387
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 388
    sub-int v1, v0, p5

    .line 389
    if-lez p5, :cond_4

    .line 390
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->e()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 391
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->e()I

    move-result v1

    sub-int/2addr v0, v1

    aput v0, p6, v3

    .line 392
    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 393
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    .line 412
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    .line 413
    iput p5, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    .line 414
    iput-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    goto :goto_0

    .line 395
    :cond_3
    aput p5, p6, v3

    .line 396
    neg-int v0, p5

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 397
    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_1

    .line 399
    :cond_4
    if-gez p5, :cond_2

    .line 400
    const/4 v2, -0x1

    invoke-virtual {p3, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 401
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-le v1, v2, :cond_5

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v1, :cond_6

    .line 402
    :cond_5
    aput p5, p6, v3

    .line 403
    neg-int v0, p5

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 404
    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_1

    .line 406
    :cond_6
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v0, v1

    aput v0, p6, v3

    .line 407
    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 408
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 509
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-ne v0, p1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 512
    :cond_0
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    .line 516
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 517
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->a()V

    .line 520
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    goto :goto_1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 227
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p2, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 230
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 232
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 234
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    .line 235
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    if-eqz v1, :cond_4

    .line 236
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    if-nez v1, :cond_1

    .line 239
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->design_bottom_sheet_peek_height_min:I

    .line 240
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    .line 242
    :cond_1
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    .line 246
    :goto_0
    const/4 v1, 0x0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    .line 247
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    .line 248
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->a()V

    .line 250
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 251
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->e()I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 261
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_3

    .line 262
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->z:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    .line 264
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    .line 265
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    .line 266
    return v4

    .line 244
    :cond_4
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    goto :goto_0

    .line 252
    :cond_5
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 253
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 254
    :cond_6
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 255
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 256
    :cond_7
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 257
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 258
    :cond_8
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 259
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 329
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 333
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-ne v3, v0, :cond_2

    if-eqz v2, :cond_0

    .line 336
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v3, :cond_3

    .line 337
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 340
    :cond_3
    if-nez v2, :cond_4

    .line 341
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->b()V

    .line 343
    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    if-nez v3, :cond_5

    .line 344
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    .line 346
    :cond_5
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 349
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-nez v2, :cond_6

    .line 350
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:I

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 351
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 354
    :cond_6
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 489
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 487
    :goto_0
    return v0

    .line 489
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 365
    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    .line 366
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    .line 367
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method a(Landroid/view/View;F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 699
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Z

    if-eqz v2, :cond_1

    .line 707
    :cond_0
    :goto_0
    return v0

    .line 702
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 704
    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 707
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method b(I)V
    .locals 2

    .prologue
    .line 666
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-ne v0, p1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    .line 670
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 671
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->d(Z)V

    .line 676
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 677
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/support/design/widget/BottomSheetBehavior$a;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/support/design/widget/BottomSheetBehavior$a;

    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$a;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 672
    :cond_4
    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 673
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->d(Z)V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 569
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    .line 570
    return-void
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    .line 318
    :goto_0
    return v2

    .line 275
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 277
    if-nez v4, :cond_1

    .line 278
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->b()V

    .line 280
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 281
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    .line 283
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 284
    packed-switch v4, :pswitch_data_0

    .line 309
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    .line 311
    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v1

    .line 312
    goto :goto_0

    .line 287
    :pswitch_1
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:Z

    .line 288
    iput v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    .line 290
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-eqz v0, :cond_3

    .line 291
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    goto :goto_0

    .line 296
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    .line 297
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:I

    .line 298
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 299
    :goto_2
    if-eqz v0, :cond_4

    iget v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:I

    invoke-virtual {p1, v0, v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    .line 301
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:Z

    .line 303
    :cond_4
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    if-ne v0, v7, :cond_6

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:I

    .line 305
    invoke-virtual {p1, p2, v5, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    goto :goto_1

    :cond_5
    move-object v0, v3

    .line 298
    goto :goto_2

    :cond_6
    move v0, v2

    .line 305
    goto :goto_3

    .line 317
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 318
    :goto_4
    const/4 v3, 0x2

    if-ne v4, v3, :cond_9

    if-eqz v0, :cond_9

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-nez v3, :cond_9

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-eq v3, v1, :cond_9

    .line 322
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:I

    int-to-float v0, v0

    .line 324
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    :goto_5
    move v2, v1

    .line 318
    goto/16 :goto_0

    :cond_8
    move-object v0, v3

    .line 317
    goto :goto_4

    :cond_9
    move v1, v2

    .line 324
    goto :goto_5

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method c(I)V
    .locals 5

    .prologue
    .line 892
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 893
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/support/design/widget/BottomSheetBehavior$a;

    if-eqz v1, :cond_0

    .line 894
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-le p1, v1, :cond_1

    .line 895
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/support/design/widget/BottomSheetBehavior$a;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$a;->a(Landroid/view/View;F)V

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/support/design/widget/BottomSheetBehavior$a;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    .line 899
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->e()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 898
    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$a;->a(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 590
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Z

    .line 591
    return-void
.end method
