.class Landroid/support/transition/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/transition/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/e;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroid/support/transition/e;


# direct methods
.method constructor <init>(Landroid/support/transition/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Landroid/support/transition/e$3;->g:Landroid/support/transition/e;

    iput-object p2, p0, Landroid/support/transition/e$3;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/transition/e$3;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/transition/e$3;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroid/support/transition/e$3;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/transition/e$3;->e:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/transition/e$3;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/l;)V
    .locals 0
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    return-void
.end method

.method public b(Landroid/support/transition/l;)V
    .locals 0
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    return-void
.end method

.method public c(Landroid/support/transition/l;)V
    .locals 0
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 247
    return-void
.end method

.method public d(Landroid/support/transition/l;)V
    .locals 4
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v0, p0, Landroid/support/transition/e$3;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/support/transition/e$3;->g:Landroid/support/transition/e;

    iget-object v1, p0, Landroid/support/transition/e$3;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/transition/e$3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/e;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 225
    :cond_0
    iget-object v0, p0, Landroid/support/transition/e$3;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Landroid/support/transition/e$3;->g:Landroid/support/transition/e;

    iget-object v1, p0, Landroid/support/transition/e$3;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/transition/e$3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/e;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 228
    :cond_1
    iget-object v0, p0, Landroid/support/transition/e$3;->e:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Landroid/support/transition/e$3;->g:Landroid/support/transition/e;

    iget-object v1, p0, Landroid/support/transition/e$3;->e:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/transition/e$3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/e;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 231
    :cond_2
    return-void
.end method
