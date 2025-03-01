.class public Landroid/support/v7/widget/aw;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/aw$a;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/widget/RecyclerView;

.field final b:Landroid/support/v4/view/AccessibilityDelegateCompat;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 39
    new-instance v0, Landroid/support/v7/widget/aw$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aw$a;-><init>(Landroid/support/v7/widget/aw;)V

    iput-object v0, p0, Landroid/support/v7/widget/aw;->b:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 40
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->v()Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/view/AccessibilityDelegateCompat;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/aw;->b:Landroid/support/v4/view/AccessibilityDelegateCompat;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 70
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 71
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 73
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 61
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 65
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/RecyclerView$i;->a(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
