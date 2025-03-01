.class public final Lcom/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/k",
            "<**>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/a/a/d/b/i;

.field private c:Lcom/a/a/d/b/a/e;

.field private d:Lcom/a/a/d/b/a/b;

.field private e:Lcom/a/a/d/b/b/h;

.field private f:Lcom/a/a/d/b/c/a;

.field private g:Lcom/a/a/d/b/c/a;

.field private h:Lcom/a/a/d/b/b/a$a;

.field private i:Lcom/a/a/d/b/b/i;

.field private j:Lcom/a/a/e/d;

.field private k:I

.field private l:Lcom/a/a/h/d;

.field private m:Lcom/a/a/e/l$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->a:Ljava/util/Map;

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/d;->k:I

    .line 43
    new-instance v0, Lcom/a/a/h/d;

    invoke-direct {v0}, Lcom/a/a/h/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->l:Lcom/a/a/h/d;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/a/a/c;
    .locals 11

    .prologue
    .line 294
    iget-object v0, p0, Lcom/a/a/d;->f:Lcom/a/a/d/b/c/a;

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, Lcom/a/a/d/b/c/a;->b()Lcom/a/a/d/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->f:Lcom/a/a/d/b/c/a;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/a/a/d;->g:Lcom/a/a/d/b/c/a;

    if-nez v0, :cond_1

    .line 299
    invoke-static {}, Lcom/a/a/d/b/c/a;->a()Lcom/a/a/d/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->g:Lcom/a/a/d/b/c/a;

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/a/a/d;->i:Lcom/a/a/d/b/b/i;

    if-nez v0, :cond_2

    .line 303
    new-instance v0, Lcom/a/a/d/b/b/i$a;

    invoke-direct {v0, p1}, Lcom/a/a/d/b/b/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/a/a/d/b/b/i$a;->a()Lcom/a/a/d/b/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->i:Lcom/a/a/d/b/b/i;

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/a/a/d;->j:Lcom/a/a/e/d;

    if-nez v0, :cond_3

    .line 307
    new-instance v0, Lcom/a/a/e/f;

    invoke-direct {v0}, Lcom/a/a/e/f;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->j:Lcom/a/a/e/d;

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/a/a/d;->c:Lcom/a/a/d/b/a/e;

    if-nez v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/a/a/d;->i:Lcom/a/a/d/b/b/i;

    invoke-virtual {v0}, Lcom/a/a/d/b/b/i;->b()I

    move-result v0

    .line 312
    if-lez v0, :cond_9

    .line 313
    new-instance v1, Lcom/a/a/d/b/a/k;

    invoke-direct {v1, v0}, Lcom/a/a/d/b/a/k;-><init>(I)V

    iput-object v1, p0, Lcom/a/a/d;->c:Lcom/a/a/d/b/a/e;

    .line 319
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/a/a/d;->d:Lcom/a/a/d/b/a/b;

    if-nez v0, :cond_5

    .line 320
    new-instance v0, Lcom/a/a/d/b/a/j;

    iget-object v1, p0, Lcom/a/a/d;->i:Lcom/a/a/d/b/b/i;

    invoke-virtual {v1}, Lcom/a/a/d/b/b/i;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/a/a/d/b/a/j;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/d;->d:Lcom/a/a/d/b/a/b;

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/a/a/d;->e:Lcom/a/a/d/b/b/h;

    if-nez v0, :cond_6

    .line 324
    new-instance v0, Lcom/a/a/d/b/b/g;

    iget-object v1, p0, Lcom/a/a/d;->i:Lcom/a/a/d/b/b/i;

    invoke-virtual {v1}, Lcom/a/a/d/b/b/i;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/a/a/d/b/b/g;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/d;->e:Lcom/a/a/d/b/b/h;

    .line 327
    :cond_6
    iget-object v0, p0, Lcom/a/a/d;->h:Lcom/a/a/d/b/b/a$a;

    if-nez v0, :cond_7

    .line 328
    new-instance v0, Lcom/a/a/d/b/b/f;

    invoke-direct {v0, p1}, Lcom/a/a/d/b/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/d;->h:Lcom/a/a/d/b/b/a$a;

    .line 331
    :cond_7
    iget-object v0, p0, Lcom/a/a/d;->b:Lcom/a/a/d/b/i;

    if-nez v0, :cond_8

    .line 332
    new-instance v0, Lcom/a/a/d/b/i;

    iget-object v1, p0, Lcom/a/a/d;->e:Lcom/a/a/d/b/b/h;

    iget-object v2, p0, Lcom/a/a/d;->h:Lcom/a/a/d/b/b/a$a;

    iget-object v3, p0, Lcom/a/a/d;->g:Lcom/a/a/d/b/c/a;

    iget-object v4, p0, Lcom/a/a/d;->f:Lcom/a/a/d/b/c/a;

    .line 333
    invoke-static {}, Lcom/a/a/d/b/c/a;->c()Lcom/a/a/d/b/c/a;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/a/a/d/b/i;-><init>(Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/b/a$a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;)V

    iput-object v0, p0, Lcom/a/a/d;->b:Lcom/a/a/d/b/i;

    .line 336
    :cond_8
    new-instance v6, Lcom/a/a/e/l;

    iget-object v0, p0, Lcom/a/a/d;->m:Lcom/a/a/e/l$a;

    invoke-direct {v6, v0}, Lcom/a/a/e/l;-><init>(Lcom/a/a/e/l$a;)V

    .line 339
    new-instance v0, Lcom/a/a/c;

    iget-object v2, p0, Lcom/a/a/d;->b:Lcom/a/a/d/b/i;

    iget-object v3, p0, Lcom/a/a/d;->e:Lcom/a/a/d/b/b/h;

    iget-object v4, p0, Lcom/a/a/d;->c:Lcom/a/a/d/b/a/e;

    iget-object v5, p0, Lcom/a/a/d;->d:Lcom/a/a/d/b/a/b;

    iget-object v7, p0, Lcom/a/a/d;->j:Lcom/a/a/e/d;

    iget v8, p0, Lcom/a/a/d;->k:I

    iget-object v1, p0, Lcom/a/a/d;->l:Lcom/a/a/h/d;

    .line 348
    invoke-virtual {v1}, Lcom/a/a/h/d;->g()Lcom/a/a/h/d;

    move-result-object v9

    iget-object v10, p0, Lcom/a/a/d;->a:Ljava/util/Map;

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/a/a/c;-><init>(Landroid/content/Context;Lcom/a/a/d/b/i;Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/a/e;Lcom/a/a/d/b/a/b;Lcom/a/a/e/l;Lcom/a/a/e/d;ILcom/a/a/h/d;Ljava/util/Map;)V

    .line 339
    return-object v0

    .line 315
    :cond_9
    new-instance v0, Lcom/a/a/d/b/a/f;

    invoke-direct {v0}, Lcom/a/a/d/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->c:Lcom/a/a/d/b/a/e;

    goto :goto_0
.end method

.method a(Lcom/a/a/e/l$a;)Lcom/a/a/d;
    .locals 0
    .param p1    # Lcom/a/a/e/l$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    iput-object p1, p0, Lcom/a/a/d;->m:Lcom/a/a/e/l$a;

    .line 284
    return-object p0
.end method
