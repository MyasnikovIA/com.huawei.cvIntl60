.class public Landroid/support/design/widget/TabLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Landroid/support/design/widget/TabLayout;

.field public b:Landroid/support/design/widget/TabLayout$h;

.field private c:Ljava/lang/Object;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$f;->g:I

    .line 1706
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$f;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout$f;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->e:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/support/design/widget/TabLayout$f;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1769
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1770
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$f;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1815
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    .line 1816
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->g()V

    .line 1817
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$f;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1750
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/view/View;

    .line 1751
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->g()V

    .line 1752
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1843
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->f:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1846
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1849
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->e:Ljava/lang/CharSequence;

    .line 1850
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->g()V

    .line 1851
    return-object p0
.end method

.method public a()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1734
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/view/View;

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1780
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1913
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->f:Ljava/lang/CharSequence;

    .line 1914
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->g()V

    .line 1915
    return-object p0
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 1794
    iput p1, p0, Landroid/support/design/widget/TabLayout$f;->g:I

    .line 1795
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1790
    iget v0, p0, Landroid/support/design/widget/TabLayout$f;->g:I

    return v0
.end method

.method public c(I)Landroid/support/design/widget/TabLayout$f;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1828
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1829
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1831
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Landroid/support/design/widget/TabLayout$f;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1863
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1864
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1866
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$f;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1804
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 1871
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1874
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout$f;)V

    .line 1875
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 1879
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1880
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1882
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$f;->g:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$h;->b()V

    .line 1936
    :cond_0
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1939
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    .line 1940
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    .line 1941
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$f;->c:Ljava/lang/Object;

    .line 1942
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    .line 1943
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$f;->e:Ljava/lang/CharSequence;

    .line 1944
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$f;->f:Ljava/lang/CharSequence;

    .line 1945
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$f;->g:I

    .line 1946
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/view/View;

    .line 1947
    return-void
.end method
