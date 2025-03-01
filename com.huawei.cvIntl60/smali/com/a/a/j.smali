.class public Lcom/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/e/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/j$a;,
        Lcom/a/a/j$b;
    }
.end annotation


# static fields
.field private static final c:Lcom/a/a/h/d;

.field private static final d:Lcom/a/a/h/d;

.field private static final e:Lcom/a/a/h/d;


# instance fields
.field protected final a:Lcom/a/a/c;

.field final b:Lcom/a/a/e/h;

.field private final f:Lcom/a/a/e/n;

.field private final g:Lcom/a/a/e/m;

.field private final h:Lcom/a/a/e/p;

.field private final i:Ljava/lang/Runnable;

.field private final j:Landroid/os/Handler;

.field private final k:Lcom/a/a/e/c;

.field private l:Lcom/a/a/h/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/a/a/h/d;->a(Ljava/lang/Class;)Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h/d;->g()Lcom/a/a/h/d;

    move-result-object v0

    sput-object v0, Lcom/a/a/j;->c:Lcom/a/a/h/d;

    .line 47
    const-class v0, Lcom/a/a/d/d/e/c;

    invoke-static {v0}, Lcom/a/a/h/d;->a(Ljava/lang/Class;)Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h/d;->g()Lcom/a/a/h/d;

    move-result-object v0

    sput-object v0, Lcom/a/a/j;->d:Lcom/a/a/h/d;

    .line 48
    sget-object v0, Lcom/a/a/d/b/h;->c:Lcom/a/a/d/b/h;

    .line 49
    invoke-static {v0}, Lcom/a/a/h/d;->a(Lcom/a/a/d/b/h;)Lcom/a/a/h/d;

    move-result-object v0

    sget-object v1, Lcom/a/a/g;->d:Lcom/a/a/g;

    invoke-virtual {v0, v1}, Lcom/a/a/h/d;->a(Lcom/a/a/g;)Lcom/a/a/h/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Lcom/a/a/h/d;->a(Z)Lcom/a/a/h/d;

    move-result-object v0

    sput-object v0, Lcom/a/a/j;->e:Lcom/a/a/h/d;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/a/a/c;Lcom/a/a/e/h;Lcom/a/a/e/m;)V
    .locals 6

    .prologue
    .line 70
    new-instance v4, Lcom/a/a/e/n;

    invoke-direct {v4}, Lcom/a/a/e/n;-><init>()V

    invoke-virtual {p1}, Lcom/a/a/c;->d()Lcom/a/a/e/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/j;-><init>(Lcom/a/a/c;Lcom/a/a/e/h;Lcom/a/a/e/m;Lcom/a/a/e/n;Lcom/a/a/e/d;)V

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/a/a/c;Lcom/a/a/e/h;Lcom/a/a/e/m;Lcom/a/a/e/n;Lcom/a/a/e/d;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/a/a/e/p;

    invoke-direct {v0}, Lcom/a/a/e/p;-><init>()V

    iput-object v0, p0, Lcom/a/a/j;->h:Lcom/a/a/e/p;

    .line 57
    new-instance v0, Lcom/a/a/j$1;

    invoke-direct {v0, p0}, Lcom/a/a/j$1;-><init>(Lcom/a/a/j;)V

    iput-object v0, p0, Lcom/a/a/j;->i:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/a/a/j;->j:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/a/a/j;->a:Lcom/a/a/c;

    .line 82
    iput-object p2, p0, Lcom/a/a/j;->b:Lcom/a/a/e/h;

    .line 83
    iput-object p3, p0, Lcom/a/a/j;->g:Lcom/a/a/e/m;

    .line 84
    iput-object p4, p0, Lcom/a/a/j;->f:Lcom/a/a/e/n;

    .line 86
    invoke-virtual {p1}, Lcom/a/a/c;->e()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/e;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/a/a/j$b;

    invoke-direct {v1, p4}, Lcom/a/a/j$b;-><init>(Lcom/a/a/e/n;)V

    .line 89
    invoke-interface {p5, v0, v1}, Lcom/a/a/e/d;->a(Landroid/content/Context;Lcom/a/a/e/c$a;)Lcom/a/a/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j;->k:Lcom/a/a/e/c;

    .line 95
    invoke-static {}, Lcom/a/a/j/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/a/a/j;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/a/a/j;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/a/a/j;->k:Lcom/a/a/e/c;

    invoke-interface {p2, v0}, Lcom/a/a/e/h;->a(Lcom/a/a/e/i;)V

    .line 102
    invoke-virtual {p1}, Lcom/a/a/c;->e()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/e;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/j;->a(Lcom/a/a/h/d;)V

    .line 104
    invoke-virtual {p1, p0}, Lcom/a/a/c;->a(Lcom/a/a/j;)V

    .line 105
    return-void

    .line 98
    :cond_0
    invoke-interface {p2, p0}, Lcom/a/a/e/h;->a(Lcom/a/a/e/i;)V

    goto :goto_0
.end method

.method private c(Lcom/a/a/h/a/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/h",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/a/a/j;->b(Lcom/a/a/h/a/h;)Z

    move-result v0

    .line 431
    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/c;

    invoke-virtual {v0, p1}, Lcom/a/a/c;->a(Lcom/a/a/h/a/h;)V

    .line 434
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/a/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TResourceType;>;)",
            "Lcom/a/a/i",
            "<TResourceType;>;"
        }
    .end annotation

    .prologue
    .line 387
    new-instance v0, Lcom/a/a/i;

    iget-object v1, p0, Lcom/a/a/j;->a:Lcom/a/a/c;

    invoke-direct {v0, v1, p0, p1}, Lcom/a/a/i;-><init>(Lcom/a/a/c;Lcom/a/a/j;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/a/a/i;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/i",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/a/a/j;->g()Lcom/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/i;->a(Ljava/lang/Object;)Lcom/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 201
    iget-object v0, p0, Lcom/a/a/j;->f:Lcom/a/a/e/n;

    invoke-virtual {v0}, Lcom/a/a/e/n;->a()V

    .line 202
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 403
    new-instance v0, Lcom/a/a/j$a;

    invoke-direct {v0, p1}, Lcom/a/a/j$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/a/a/j;->a(Lcom/a/a/h/a/h;)V

    .line 404
    return-void
.end method

.method public a(Lcom/a/a/h/a/h;)V
    .locals 2
    .param p1    # Lcom/a/a/h/a/h;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/h",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-static {}, Lcom/a/a/j/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-direct {p0, p1}, Lcom/a/a/j;->c(Lcom/a/a/h/a/h;)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/a/a/j;->j:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/j$2;

    invoke-direct {v1, p0, p1}, Lcom/a/a/j$2;-><init>(Lcom/a/a/j;Lcom/a/a/h/a/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Lcom/a/a/h/a/h;Lcom/a/a/h/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/h",
            "<*>;",
            "Lcom/a/a/h/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/a/a/j;->h:Lcom/a/a/e/p;

    invoke-virtual {v0, p1}, Lcom/a/a/e/p;->a(Lcom/a/a/h/a/h;)V

    .line 454
    iget-object v0, p0, Lcom/a/a/j;->f:Lcom/a/a/e/n;

    invoke-virtual {v0, p2}, Lcom/a/a/e/n;->a(Lcom/a/a/h/a;)V

    .line 455
    return-void
.end method

.method protected a(Lcom/a/a/h/d;)V
    .locals 1
    .param p1    # Lcom/a/a/h/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h/d;->h()Lcom/a/a/h/d;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j;->l:Lcom/a/a/h/d;

    .line 109
    return-void
.end method

.method b(Ljava/lang/Class;)Lcom/a/a/k;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/a/a/k",
            "<*TT;>;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/e;->a(Ljava/lang/Class;)Lcom/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 234
    iget-object v0, p0, Lcom/a/a/j;->f:Lcom/a/a/e/n;

    invoke-virtual {v0}, Lcom/a/a/e/n;->b()V

    .line 235
    return-void
.end method

.method b(Lcom/a/a/h/a/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/h",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 437
    invoke-interface {p1}, Lcom/a/a/h/a/h;->b()Lcom/a/a/h/a;

    move-result-object v1

    .line 439
    if-nez v1, :cond_0

    .line 448
    :goto_0
    return v0

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/a/a/j;->f:Lcom/a/a/e/n;

    invoke-virtual {v2, v1}, Lcom/a/a/e/n;->b(Lcom/a/a/h/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/a/a/j;->h:Lcom/a/a/e/p;

    invoke-virtual {v1, p1}, Lcom/a/a/e/p;->b(Lcom/a/a/h/a/h;)V

    .line 445
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/a/a/h/a/h;->a(Lcom/a/a/h/a;)V

    goto :goto_0

    .line 448
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/a/a/j;->b()V

    .line 258
    iget-object v0, p0, Lcom/a/a/j;->h:Lcom/a/a/e/p;

    invoke-virtual {v0}, Lcom/a/a/e/p;->c()V

    .line 259
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/a/a/j;->a()V

    .line 268
    iget-object v0, p0, Lcom/a/a/j;->h:Lcom/a/a/e/p;

    invoke-virtual {v0}, Lcom/a/a/e/p;->d()V

    .line 269
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/a/a/j;->h:Lcom/a/a/e/p;

    invoke-virtual {v0}, Lcom/a/a/e/p;->e()V

    .line 278
    iget-object v0, p0, Lcom/a/a/j;->h:Lcom/a/a/e/p;

    invoke-virtual {v0}, Lcom/a/a/e/p;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h/a/h;

    .line 279
    invoke-virtual {p0, v0}, Lcom/a/a/j;->a(Lcom/a/a/h/a/h;)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/a/a/j;->h:Lcom/a/a/e/p;

    invoke-virtual {v0}, Lcom/a/a/e/p;->b()V

    .line 282
    iget-object v0, p0, Lcom/a/a/j;->f:Lcom/a/a/e/n;

    invoke-virtual {v0}, Lcom/a/a/e/n;->c()V

    .line 283
    iget-object v0, p0, Lcom/a/a/j;->b:Lcom/a/a/e/h;

    invoke-interface {v0, p0}, Lcom/a/a/e/h;->b(Lcom/a/a/e/i;)V

    .line 284
    iget-object v0, p0, Lcom/a/a/j;->b:Lcom/a/a/e/h;

    iget-object v1, p0, Lcom/a/a/j;->k:Lcom/a/a/e/c;

    invoke-interface {v0, v1}, Lcom/a/a/e/h;->b(Lcom/a/a/e/i;)V

    .line 285
    iget-object v0, p0, Lcom/a/a/j;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/a/a/j;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/c;

    invoke-virtual {v0, p0}, Lcom/a/a/c;->b(Lcom/a/a/j;)V

    .line 287
    return-void
.end method

.method public f()Lcom/a/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/a/a/j;->a(Ljava/lang/Class;)Lcom/a/a/i;

    move-result-object v0

    sget-object v1, Lcom/a/a/j;->c:Lcom/a/a/h/d;

    invoke-virtual {v0, v1}, Lcom/a/a/i;->a(Lcom/a/a/h/d;)Lcom/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/a/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/i",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/a/a/j;->a(Ljava/lang/Class;)Lcom/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method h()Lcom/a/a/h/d;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/a/a/j;->l:Lcom/a/a/h/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/j;->f:Lcom/a/a/e/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/j;->g:Lcom/a/a/e/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
