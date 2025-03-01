.class public Landroid/support/design/transformation/FabTransformationSheetBehavior;
.super Landroid/support/design/transformation/FabTransformationBehavior;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/design/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 78
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    .line 83
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_2

    if-eqz p2, :cond_2

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    :cond_2
    move v3, v2

    .line 88
    :goto_1
    if-ge v3, v4, :cond_8

    .line 89
    invoke-virtual {v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 93
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_4

    .line 94
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v1

    instance-of v1, v1, Landroid/support/design/transformation/FabTransformationScrimBehavior;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 96
    :goto_2
    if-eq v5, p1, :cond_3

    if-eqz v1, :cond_5

    .line 88
    :cond_3
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 94
    goto :goto_2

    .line 100
    :cond_5
    if-nez p2, :cond_6

    .line 101
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    .line 102
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_3

    .line 108
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_7

    .line 109
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_7
    const/4 v1, 0x4

    invoke-static {v5, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_3

    .line 117
    :cond_8
    if-nez p2, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    if-eqz p2, :cond_0

    .line 57
    sget v0, Landroid/support/design/R$animator;->mtrl_fab_transformation_sheet_expand_spec:I

    .line 62
    :goto_0
    new-instance v1, Landroid/support/design/transformation/FabTransformationBehavior$a;

    invoke-direct {v1}, Landroid/support/design/transformation/FabTransformationBehavior$a;-><init>()V

    .line 63
    invoke-static {p1, v0}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    iput-object v0, v1, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    .line 64
    new-instance v0, Landroid/support/design/a/j;

    const/16 v2, 0x11

    invoke-direct {v0, v2, v3, v3}, Landroid/support/design/a/j;-><init>(IFF)V

    iput-object v0, v1, Landroid/support/design/transformation/FabTransformationBehavior$a;->b:Landroid/support/design/a/j;

    .line 65
    return-object v1

    .line 59
    :cond_0
    sget v0, Landroid/support/design/R$animator;->mtrl_fab_transformation_sheet_collapse_spec:I

    goto :goto_0
.end method

.method protected a(Landroid/view/View;Landroid/view/View;ZZ)Z
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p2, p3}, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a(Landroid/view/View;Z)V

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v0

    return v0
.end method
