.class public Landroid/support/v7/widget/e;
.super Landroid/widget/AutoCompleteTextView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/support/v7/widget/f;

.field private final c:Landroid/support/v7/widget/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/e;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    sget v0, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {p1}, Landroid/support/v7/widget/bh;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/e;->a:[I

    invoke-static {v0, p2, v1, p3, v2}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bk;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bk;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/e;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->a()V

    .line 83
    new-instance v0, Landroid/support/v7/widget/f;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/f;->a(Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Landroid/support/v7/widget/x;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/x;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/x;

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/x;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/x;->a(Landroid/util/AttributeSet;I)V

    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->a()V

    .line 89
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->c()V

    .line 174
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/x;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->a()V

    .line 177
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    .line 137
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    .line 165
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroid/support/v7/widget/m;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    .prologue
    .line 199
    .line 200
    invoke-static {p0, p1}, Landroid/support/v4/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 199
    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 201
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/content/res/ColorStateList;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 152
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/x;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/x;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/x;->a(Landroid/content/Context;I)V

    .line 185
    :cond_0
    return-void
.end method
