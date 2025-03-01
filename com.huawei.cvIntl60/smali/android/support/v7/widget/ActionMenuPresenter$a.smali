.class Landroid/support/v7/widget/ActionMenuPresenter$a;
.super Landroid/support/v7/view/menu/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/u;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 747
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$a;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 748
    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/n;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZI)V

    .line 750
    invoke-virtual {p3}, Landroid/support/v7/view/menu/u;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    .line 751
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/p;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$a;->a(Landroid/view/View;)V

    .line 756
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->k:Landroid/support/v7/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$a;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 757
    return-void

    .line 753
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$d;

    goto :goto_0
.end method


# virtual methods
.method protected e()V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$a;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/support/v7/widget/ActionMenuPresenter$a;

    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$a;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->l:I

    .line 764
    invoke-super {p0}, Landroid/support/v7/view/menu/n;->e()V

    .line 765
    return-void
.end method
