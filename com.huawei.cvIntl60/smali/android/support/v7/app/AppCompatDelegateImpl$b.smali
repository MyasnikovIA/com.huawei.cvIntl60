.class Landroid/support/v7/app/AppCompatDelegateImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImpl;

.field private b:Landroid/support/v7/view/b$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/view/b$a;)V
    .locals 0

    .prologue
    .line 2155
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2156
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->b:Landroid/support/v7/view/b$a;

    .line 2157
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/b;)V
    .locals 3

    .prologue
    .line 2176
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->b:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;)V

    .line 2177
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2181
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 2182
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->m()V

    .line 2183
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->k:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2184
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->k:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$b$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl$b;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2199
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/c;

    if-eqz v0, :cond_2

    .line 2200
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/c;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    invoke-interface {v0, v1}, Landroid/support/v7/app/c;->b(Landroid/support/v7/view/b;)V

    .line 2202
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    .line 2203
    return-void
.end method

.method public a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 2161
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->b:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 2171
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->b:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 2166
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$b;->b:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/b$a;->b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
