.class Landroid/support/v7/view/menu/k$b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/view/CollapsibleActionView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    .line 459
    check-cast v0, Landroid/view/CollapsibleActionView;

    iput-object v0, p0, Landroid/support/v7/view/menu/k$b;->a:Landroid/view/CollapsibleActionView;

    .line 460
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k$b;->addView(Landroid/view/View;)V

    .line 461
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroid/support/v7/view/menu/k$b;->a:Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 466
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/support/v7/view/menu/k$b;->a:Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 471
    return-void
.end method

.method c()Landroid/view/View;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Landroid/support/v7/view/menu/k$b;->a:Landroid/view/CollapsibleActionView;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
