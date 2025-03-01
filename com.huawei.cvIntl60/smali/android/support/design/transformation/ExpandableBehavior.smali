.class public abstract Landroid/support/design/transformation/ExpandableBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    .line 65
    return-void
.end method

.method static synthetic a(Landroid/support/design/transformation/ExpandableBehavior;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    return v0
.end method

.method private a(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    if-eqz p1, :cond_2

    .line 141
    iget v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 144
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    if-ne v2, v1, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/support/design/d/b;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 129
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 130
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 131
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/transformation/ExpandableBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    check-cast v0, Landroid/support/design/d/b;

    .line 135
    :goto_1
    return-object v0

    .line 129
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 88
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/support/design/transformation/ExpandableBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/support/design/d/b;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/support/design/d/b;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/transformation/ExpandableBehavior;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v1}, Landroid/support/design/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    .line 92
    iget v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Landroid/support/design/transformation/ExpandableBehavior$1;

    invoke-direct {v3, p0, p2, v0, v1}, Landroid/support/design/transformation/ExpandableBehavior$1;-><init>(Landroid/support/design/transformation/ExpandableBehavior;Landroid/view/View;ILandroid/support/design/d/b;)V

    .line 95
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 110
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public abstract a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
.end method

.method protected abstract a(Landroid/view/View;Landroid/view/View;ZZ)Z
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 116
    check-cast p3, Landroid/support/design/d/b;

    .line 117
    invoke-interface {p3}, Landroid/support/design/d/b;->a()Z

    move-result v0

    .line 118
    invoke-direct {p0, v0}, Landroid/support/design/transformation/ExpandableBehavior;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {p3}, Landroid/support/design/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    move-object v0, p3

    .line 120
    check-cast v0, Landroid/view/View;

    invoke-interface {p3}, Landroid/support/design/d/b;->a()Z

    move-result v2

    invoke-virtual {p0, v0, p2, v2, v1}, Landroid/support/design/transformation/ExpandableBehavior;->a(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v0

    .line 123
    :goto_1
    return v0

    .line 119
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
