.class Landroid/support/v7/app/j$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/j;


# direct methods
.method constructor <init>(Landroid/support/v7/app/j;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    iget-boolean v0, v0, Landroid/support/v7/app/j;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    iget-object v0, v0, Landroid/support/v7/app/j;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    iget-object v0, v0, Landroid/support/v7/app/j;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    iget-object v0, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    iget-object v0, v0, Landroid/support/v7/app/j;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    iget-object v0, v0, Landroid/support/v7/app/j;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    iget-object v0, v0, Landroid/support/v7/app/j;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 144
    iget-object v0, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/j;->n:Landroid/support/v7/view/h;

    .line 145
    iget-object v0, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    invoke-virtual {v0}, Landroid/support/v7/app/j;->d()V

    .line 146
    iget-object v0, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    iget-object v0, v0, Landroid/support/v7/app/j;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Landroid/support/v7/app/j$1;->a:Landroid/support/v7/app/j;

    iget-object v0, v0, Landroid/support/v7/app/j;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 149
    :cond_1
    return-void
.end method
