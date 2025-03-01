.class public Landroid/support/design/widget/q;
.super Landroid/support/v7/widget/l;
.source "SourceFile"


# direct methods
.method private getHintFromLayout()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/design/widget/q;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextInputLayout()Landroid/support/design/widget/TextInputLayout;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/support/design/widget/q;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 76
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 77
    instance-of v1, v0, Landroid/support/design/widget/TextInputLayout;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    .line 82
    :goto_1
    return-object v0

    .line 80
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/design/widget/q;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/l;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v7/widget/l;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 68
    invoke-direct {p0}, Landroid/support/design/widget/q;->getHintFromLayout()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 70
    :cond_0
    return-object v0
.end method
