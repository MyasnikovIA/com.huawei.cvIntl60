.class public Landroid/support/v7/widget/s;
.super Landroid/widget/RadioButton;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/TintableCompoundButton;


# instance fields
.field private final a:Landroid/support/v7/widget/j;

.field private final b:Landroid/support/v7/widget/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    sget v0, Landroid/support/v7/appcompat/R$attr;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 64
    invoke-static {p1}, Landroid/support/v7/widget/bh;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Landroid/support/v7/widget/j;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/j;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    .line 66
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/j;->a(Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Landroid/support/v7/widget/x;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/x;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/x;

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/x;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/x;->a(Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 87
    iget-object v1, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    .line 88
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/j;->a(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    .line 113
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    .line 138
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->c()V

    .line 77
    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
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
    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/j;->a(Landroid/content/res/ColorStateList;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
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
    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/j;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/j;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 127
    :cond_0
    return-void
.end method
