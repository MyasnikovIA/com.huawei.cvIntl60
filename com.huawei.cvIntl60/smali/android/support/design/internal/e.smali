.class public Landroid/support/design/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/o;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/e$c;,
        Landroid/support/design/internal/e$e;,
        Landroid/support/design/internal/e$f;,
        Landroid/support/design/internal/e$d;,
        Landroid/support/design/internal/e$b;,
        Landroid/support/design/internal/e$a;,
        Landroid/support/design/internal/e$h;,
        Landroid/support/design/internal/e$i;,
        Landroid/support/design/internal/e$g;,
        Landroid/support/design/internal/e$j;
    }
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/support/v7/view/menu/h;

.field c:Landroid/support/design/internal/e$b;

.field d:Landroid/view/LayoutInflater;

.field e:I

.field f:Z

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/content/res/ColorStateList;

.field i:Landroid/graphics/drawable/Drawable;

.field j:I

.field k:I

.field l:I

.field final m:Landroid/view/View$OnClickListener;

.field private n:Landroid/support/design/internal/NavigationMenuView;

.field private o:Landroid/support/v7/view/menu/o$a;

.field private p:I


# virtual methods
.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 254
    iput p1, p0, Landroid/support/design/internal/e;->e:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/e;->f:Z

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/e;->a(Z)V

    .line 257
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 2

    .prologue
    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/internal/e;->d:Landroid/view/LayoutInflater;

    .line 89
    iput-object p2, p0, Landroid/support/design/internal/e;->b:Landroid/support/v7/view/menu/h;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    sget v1, Landroid/support/design/R$dimen;->design_navigation_separator_vertical_padding:I

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/e;->l:I

    .line 93
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 239
    iput-object p1, p0, Landroid/support/design/internal/e;->h:Landroid/content/res/ColorStateList;

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/e;->a(Z)V

    .line 241
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 265
    iput-object p1, p0, Landroid/support/design/internal/e;->i:Landroid/graphics/drawable/Drawable;

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/e;->a(Z)V

    .line 267
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 180
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 181
    check-cast p1, Landroid/os/Bundle;

    .line 182
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Landroid/support/design/internal/e;->n:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 186
    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Landroid/support/design/internal/e;->c:Landroid/support/design/internal/e$b;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/e$b;->a(Landroid/os/Bundle;)V

    .line 190
    :cond_1
    const-string v0, "android:menu:header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_2

    .line 192
    iget-object v1, p0, Landroid/support/design/internal/e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 195
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/design/internal/e;->o:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/support/design/internal/e;->o:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    .line 133
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/j;)V
    .locals 1
    .param p1    # Landroid/support/v7/view/menu/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/design/internal/e;->c:Landroid/support/design/internal/e$b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/e$b;->a(Landroid/support/v7/view/menu/j;)V

    .line 199
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Landroid/support/design/internal/e;->o:Landroid/support/v7/view/menu/o$a;

    .line 121
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/design/internal/e;->c:Landroid/support/design/internal/e$b;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/support/design/internal/e;->c:Landroid/support/design/internal/e$b;

    invoke-virtual {v0}, Landroid/support/design/internal/e$b;->b()V

    .line 116
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/u;)Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Landroid/support/design/internal/e;->p:I

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 274
    iput p1, p0, Landroid/support/design/internal/e;->j:I

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/e;->a(Z)V

    .line 276
    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 249
    iput-object p1, p0, Landroid/support/design/internal/e;->g:Landroid/content/res/ColorStateList;

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/e;->a(Z)V

    .line 251
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    iget-object v1, p0, Landroid/support/design/internal/e;->n:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 164
    iget-object v2, p0, Landroid/support/design/internal/e;->n:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 165
    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 167
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/e;->c:Landroid/support/design/internal/e$b;

    if-eqz v1, :cond_1

    .line 168
    const-string v1, "android:menu:adapter"

    iget-object v2, p0, Landroid/support/design/internal/e;->c:Landroid/support/design/internal/e$b;

    invoke-virtual {v2}, Landroid/support/design/internal/e$b;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/e;->a:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 171
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 172
    iget-object v2, p0, Landroid/support/design/internal/e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 173
    const-string v2, "android:menu:header"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 175
    :cond_2
    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 283
    iput p1, p0, Landroid/support/design/internal/e;->k:I

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/e;->a(Z)V

    .line 285
    return-void
.end method

.method public d()Landroid/support/v7/view/menu/j;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/design/internal/e;->c:Landroid/support/design/internal/e$b;

    invoke-virtual {v0}, Landroid/support/design/internal/e$b;->c()Landroid/support/v7/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/design/internal/e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public f()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/design/internal/e;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public g()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/design/internal/e;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/design/internal/e;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Landroid/support/design/internal/e;->j:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Landroid/support/design/internal/e;->k:I

    return v0
.end method
