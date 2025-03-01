.class public Landroid/support/design/widget/TextInputLayout$a;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0

    .prologue
    .line 2102
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 2103
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    .line 2104
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2108
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2109
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 2110
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2111
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v9

    .line 2112
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    .line 2113
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    move-result-object v6

    .line 2114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 2115
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v2

    .line 2116
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    move v8, v2

    .line 2117
    :goto_3
    if-nez v8, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_0
    move v7, v2

    .line 2119
    :goto_4
    if-eqz v1, :cond_a

    .line 2120
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 2125
    :cond_1
    :goto_5
    if-eqz v4, :cond_3

    .line 2126
    invoke-virtual {p2, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 2127
    if-nez v1, :cond_2

    if-eqz v4, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setShowingHintText(Z)V

    .line 2130
    :cond_3
    if-eqz v7, :cond_4

    .line 2131
    if-eqz v8, :cond_b

    move-object v0, v5

    :goto_6
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 2132
    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentInvalid(Z)V

    .line 2134
    :cond_4
    return-void

    .line 2110
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v1, v3

    .line 2114
    goto :goto_1

    :cond_7
    move v4, v3

    .line 2115
    goto :goto_2

    :cond_8
    move v8, v3

    .line 2116
    goto :goto_3

    :cond_9
    move v7, v3

    .line 2117
    goto :goto_4

    .line 2121
    :cond_a
    if-eqz v4, :cond_1

    .line 2122
    invoke-virtual {p2, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_b
    move-object v0, v6

    .line 2131
    goto :goto_6
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 2138
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2139
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 2140
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2141
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$a;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2142
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2143
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2145
    :cond_1
    return-void

    .line 2140
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
