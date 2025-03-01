.class public Landroid/support/design/widget/BaseTransientBottomBar$e;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/view/accessibility/AccessibilityManager;

.field private final b:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

.field private c:Landroid/support/design/widget/BaseTransientBottomBar$d;

.field private d:Landroid/support/design/widget/BaseTransientBottomBar$c;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 717
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 720
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 721
    sget-object v0, Landroid/support/design/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 722
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    const/4 v2, 0x0

    .line 724
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 723
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 726
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 728
    const-string v0, "accessibility"

    .line 729
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->a:Landroid/view/accessibility/AccessibilityManager;

    .line 730
    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$e$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$e$1;-><init>(Landroid/support/design/widget/BaseTransientBottomBar$e;)V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->b:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .line 738
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->a:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->b:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    .line 740
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->setClickableOrFocusableBasedOnAccessibility(Z)V

    .line 741
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/BaseTransientBottomBar$e;Z)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$e;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method private setClickableOrFocusableBasedOnAccessibility(Z)V
    .locals 1

    .prologue
    .line 744
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->setClickable(Z)V

    .line 745
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$e;->setFocusable(Z)V

    .line 746
    return-void

    .line 744
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 758
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 759
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->d:Landroid/support/design/widget/BaseTransientBottomBar$c;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->d:Landroid/support/design/widget/BaseTransientBottomBar$c;

    invoke-interface {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$c;->a(Landroid/view/View;)V

    .line 763
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 764
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 768
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 769
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->d:Landroid/support/design/widget/BaseTransientBottomBar$c;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->d:Landroid/support/design/widget/BaseTransientBottomBar$c;

    invoke-interface {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$c;->b(Landroid/view/View;)V

    .line 773
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->a:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->b:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    .line 775
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 750
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 751
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->c:Landroid/support/design/widget/BaseTransientBottomBar$d;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->c:Landroid/support/design/widget/BaseTransientBottomBar$d;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/design/widget/BaseTransientBottomBar$d;->a(Landroid/view/View;IIII)V

    .line 754
    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$c;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->d:Landroid/support/design/widget/BaseTransientBottomBar$c;

    .line 785
    return-void
.end method

.method setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$d;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$e;->c:Landroid/support/design/widget/BaseTransientBottomBar$d;

    .line 780
    return-void
.end method
