.class Landroid/support/v7/app/AppCompatDelegateImpl$b$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl$b;->a(Landroid/support/v7/view/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImpl$b;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl$b;)V
    .locals 0

    .prologue
    .line 2184
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$b;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2187
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 2188
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 2189
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2193
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 2194
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->k:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2195
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iput-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->k:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2196
    return-void

    .line 2190
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2191
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0
.end method
