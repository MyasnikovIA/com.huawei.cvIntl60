.class Landroid/support/transition/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/transition/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/e;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Landroid/support/transition/e;


# direct methods
.method constructor <init>(Landroid/support/transition/e;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Landroid/support/transition/e$2;->c:Landroid/support/transition/e;

    iput-object p2, p0, Landroid/support/transition/e$2;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/transition/e$2;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/l;)V
    .locals 4
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p1, p0}, Landroid/support/transition/l;->b(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    .line 156
    iget-object v0, p0, Landroid/support/transition/e$2;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Landroid/support/transition/e$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 158
    :goto_0
    if-ge v1, v3, :cond_0

    .line 159
    iget-object v0, p0, Landroid/support/transition/e$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public b(Landroid/support/transition/l;)V
    .locals 0
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    return-void
.end method

.method public c(Landroid/support/transition/l;)V
    .locals 0
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    return-void
.end method

.method public d(Landroid/support/transition/l;)V
    .locals 0
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    return-void
.end method
