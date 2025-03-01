.class public Landroid/support/v7/widget/aw$a;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/support/v7/widget/aw;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/aw;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/aw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/support/v7/widget/aw$a;->a:Landroid/support/v7/widget/aw;

    .line 107
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/aw$a;->a:Landroid/support/v7/widget/aw;

    invoke-virtual {v0}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aw$a;->a:Landroid/support/v7/widget/aw;

    iget-object v0, v0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 113
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/aw$a;->a:Landroid/support/v7/widget/aw;

    iget-object v0, v0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 117
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aw$a;->a:Landroid/support/v7/widget/aw;

    invoke-virtual {v0}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/aw$a;->a:Landroid/support/v7/widget/aw;

    iget-object v0, v0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 125
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/aw$a;->a:Landroid/support/v7/widget/aw;

    iget-object v0, v0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
