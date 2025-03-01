.class public Landroid/support/v7/widget/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v7/widget/bn;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
