.class public Lcom/a/a/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:F

.field private c:Lcom/a/a/d/b/h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/a/a/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Lcom/a/a/d/h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private p:I

.field private q:Lcom/a/a/d/j;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/d/m",
            "<*>;>;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Landroid/content/res/Resources$Theme;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/a/a/h/d;->b:F

    .line 83
    sget-object v0, Lcom/a/a/d/b/h;->e:Lcom/a/a/d/b/h;

    iput-object v0, p0, Lcom/a/a/h/d;->c:Lcom/a/a/d/b/h;

    .line 85
    sget-object v0, Lcom/a/a/g;->c:Lcom/a/a/g;

    iput-object v0, p0, Lcom/a/a/h/d;->d:Lcom/a/a/g;

    .line 93
    iput-boolean v1, p0, Lcom/a/a/h/d;->i:Z

    .line 94
    iput v2, p0, Lcom/a/a/h/d;->j:I

    .line 95
    iput v2, p0, Lcom/a/a/h/d;->k:I

    .line 97
    invoke-static {}, Lcom/a/a/i/a;->a()Lcom/a/a/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/d;->l:Lcom/a/a/d/h;

    .line 99
    iput-boolean v1, p0, Lcom/a/a/h/d;->n:Z

    .line 103
    new-instance v0, Lcom/a/a/d/j;

    invoke-direct {v0}, Lcom/a/a/d/j;-><init>()V

    iput-object v0, p0, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/h/d;->r:Ljava/util/Map;

    .line 107
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/a/a/h/d;->s:Ljava/lang/Class;

    .line 115
    iput-boolean v1, p0, Lcom/a/a/h/d;->y:Z

    return-void
.end method

.method private F()Lcom/a/a/h/d;
    .locals 2

    .prologue
    .line 1386
    iget-boolean v0, p0, Lcom/a/a/h/d;->t:Z

    if-eqz v0, :cond_0

    .line 1387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1389
    :cond_0
    return-object p0
.end method

.method public static a(Lcom/a/a/d/b/h;)Lcom/a/a/h/d;
    .locals 1
    .param p0    # Lcom/a/a/d/b/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/a/a/h/d;

    invoke-direct {v0}, Lcom/a/a/h/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/a/a/h/d;->b(Lcom/a/a/d/b/h;)Lcom/a/a/h/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;Z)Lcom/a/a/h/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/d/a/k;",
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/a/a/h/d;"
        }
    .end annotation

    .prologue
    .line 1029
    if-eqz p3, :cond_0

    .line 1030
    invoke-virtual {p0, p1, p2}, Lcom/a/a/h/d;->b(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    .line 1031
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/a/a/h/d;->y:Z

    .line 1032
    return-object v0

    .line 1030
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/a/a/h/d;->a(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/a/a/d/h;)Lcom/a/a/h/d;
    .locals 1
    .param p0    # Lcom/a/a/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/a/a/h/d;

    invoke-direct {v0}, Lcom/a/a/h/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/a/a/h/d;->b(Lcom/a/a/d/h;)Lcom/a/a/h/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lcom/a/a/h/d;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/a/a/h/d;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/a/a/h/d;

    invoke-direct {v0}, Lcom/a/a/h/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/a/a/h/d;->b(Ljava/lang/Class;)Lcom/a/a/h/d;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 1499
    iget v0, p0, Lcom/a/a/h/d;->a:I

    invoke-static {v0, p1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    return v0
.end method

.method private static b(II)Z
    .locals 1

    .prologue
    .line 386
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;)Lcom/a/a/h/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/d/a/k;",
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/a/a/h/d;"
        }
    .end annotation

    .prologue
    .line 1022
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/h/d;->a(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;Z)Lcom/a/a/h/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .prologue
    .line 1487
    iget v0, p0, Lcom/a/a/h/d;->j:I

    return v0
.end method

.method public final B()F
    .locals 1

    .prologue
    .line 1491
    iget v0, p0, Lcom/a/a/h/d;->b:F

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 1495
    iget-boolean v0, p0, Lcom/a/a/h/d;->y:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    .prologue
    .line 1503
    iget-boolean v0, p0, Lcom/a/a/h/d;->w:Z

    return v0
.end method

.method public final E()Z
    .locals 1

    .prologue
    .line 1507
    iget-boolean v0, p0, Lcom/a/a/h/d;->x:Z

    return v0
.end method

.method public a()Lcom/a/a/h/d;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 720
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h/d;

    .line 721
    new-instance v1, Lcom/a/a/d/j;

    invoke-direct {v1}, Lcom/a/a/d/j;-><init>()V

    iput-object v1, v0, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    .line 722
    iget-object v1, v0, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    iget-object v2, p0, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    invoke-virtual {v1, v2}, Lcom/a/a/d/j;->a(Lcom/a/a/d/j;)V

    .line 723
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/a/a/h/d;->r:Ljava/util/Map;

    .line 724
    iget-object v1, v0, Lcom/a/a/h/d;->r:Ljava/util/Map;

    iget-object v2, p0, Lcom/a/a/h/d;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 725
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/a/a/h/d;->t:Z

    .line 726
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/a/a/h/d;->v:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    return-object v0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(F)Lcom/a/a/h/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/h/d;->a(F)Lcom/a/a/h/d;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    .line 405
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_2
    iput p1, p0, Lcom/a/a/h/d;->b:F

    .line 409
    iget v0, p0, Lcom/a/a/h/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 411
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(II)Lcom/a/a/h/d;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/h/d;->a(II)Lcom/a/a/h/d;

    move-result-object v0

    .line 666
    :goto_0
    return-object v0

    .line 662
    :cond_0
    iput p1, p0, Lcom/a/a/h/d;->k:I

    .line 663
    iput p2, p0, Lcom/a/a/h/d;->j:I

    .line 664
    iget v0, p0, Lcom/a/a/h/d;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 666
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/d/d/a/k;)Lcom/a/a/h/d;
    .locals 2
    .param p1    # Lcom/a/a/d/d/a/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 852
    sget-object v0, Lcom/a/a/d/d/a/l;->b:Lcom/a/a/d/i;

    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h/d;->a(Lcom/a/a/d/i;Ljava/lang/Object;)Lcom/a/a/h/d;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;)Lcom/a/a/h/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/d/a/k;",
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/a/a/h/d;"
        }
    .end annotation

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/h/d;->a(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    .line 998
    :goto_0
    return-object v0

    .line 997
    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/h/d;->a(Lcom/a/a/d/d/a/k;)Lcom/a/a/h/d;

    .line 998
    invoke-virtual {p0, p2}, Lcom/a/a/h/d;->b(Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/d/i;Ljava/lang/Object;)Lcom/a/a/h/d;
    .locals 1
    .param p1    # Lcom/a/a/d/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/i",
            "<TT;>;TT;)",
            "Lcom/a/a/h/d;"
        }
    .end annotation

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/h/d;->a(Lcom/a/a/d/i;Ljava/lang/Object;)Lcom/a/a/h/d;

    move-result-object v0

    .line 742
    :goto_0
    return-object v0

    .line 739
    :cond_0
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-static {p2}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v0, p0, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/d/j;->a(Lcom/a/a/d/i;Ljava/lang/Object;)Lcom/a/a/d/j;

    .line 742
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/d/m;)Lcom/a/a/h/d;
    .locals 2
    .param p1    # Lcom/a/a/d/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/a/a/h/d;"
        }
    .end annotation

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/h/d;->a(Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    .line 1059
    :goto_0
    return-object v0

    .line 1056
    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/h/d;->b(Lcom/a/a/d/m;)Lcom/a/a/h/d;

    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/h/d;->m:Z

    .line 1058
    iget v0, p0, Lcom/a/a/h/d;->a:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 1059
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/g;)Lcom/a/a/h/d;
    .locals 1
    .param p1    # Lcom/a/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/h/d;->a(Lcom/a/a/g;)Lcom/a/a/h/d;

    move-result-object v0

    .line 481
    :goto_0
    return-object v0

    .line 478
    :cond_0
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/g;

    iput-object v0, p0, Lcom/a/a/h/d;->d:Lcom/a/a/g;

    .line 479
    iget v0, p0, Lcom/a/a/h/d;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 481
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/h/d;)Lcom/a/a/h/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/h/d;->a(Lcom/a/a/h/d;)Lcom/a/a/h/d;

    move-result-object v0

    .line 1296
    :goto_0
    return-object v0

    .line 1224
    :cond_0
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1225
    iget v0, p1, Lcom/a/a/h/d;->b:F

    iput v0, p0, Lcom/a/a/h/d;->b:F

    .line 1227
    :cond_1
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    iget-boolean v0, p1, Lcom/a/a/h/d;->w:Z

    iput-boolean v0, p0, Lcom/a/a/h/d;->w:Z

    .line 1230
    :cond_2
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1231
    iget-object v0, p1, Lcom/a/a/h/d;->c:Lcom/a/a/d/b/h;

    iput-object v0, p0, Lcom/a/a/h/d;->c:Lcom/a/a/d/b/h;

    .line 1233
    :cond_3
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1234
    iget-object v0, p1, Lcom/a/a/h/d;->d:Lcom/a/a/g;

    iput-object v0, p0, Lcom/a/a/h/d;->d:Lcom/a/a/g;

    .line 1236
    :cond_4
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1237
    iget-object v0, p1, Lcom/a/a/h/d;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/a/a/h/d;->e:Landroid/graphics/drawable/Drawable;

    .line 1239
    :cond_5
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1240
    iget v0, p1, Lcom/a/a/h/d;->f:I

    iput v0, p0, Lcom/a/a/h/d;->f:I

    .line 1242
    :cond_6
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1243
    iget-object v0, p1, Lcom/a/a/h/d;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/a/a/h/d;->g:Landroid/graphics/drawable/Drawable;

    .line 1245
    :cond_7
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1246
    iget v0, p1, Lcom/a/a/h/d;->h:I

    iput v0, p0, Lcom/a/a/h/d;->h:I

    .line 1248
    :cond_8
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1249
    iget-boolean v0, p1, Lcom/a/a/h/d;->i:Z

    iput-boolean v0, p0, Lcom/a/a/h/d;->i:Z

    .line 1251
    :cond_9
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1252
    iget v0, p1, Lcom/a/a/h/d;->k:I

    iput v0, p0, Lcom/a/a/h/d;->k:I

    .line 1253
    iget v0, p1, Lcom/a/a/h/d;->j:I

    iput v0, p0, Lcom/a/a/h/d;->j:I

    .line 1255
    :cond_a
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1256
    iget-object v0, p1, Lcom/a/a/h/d;->l:Lcom/a/a/d/h;

    iput-object v0, p0, Lcom/a/a/h/d;->l:Lcom/a/a/d/h;

    .line 1258
    :cond_b
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1259
    iget-object v0, p1, Lcom/a/a/h/d;->s:Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/a/h/d;->s:Ljava/lang/Class;

    .line 1261
    :cond_c
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1262
    iget-object v0, p1, Lcom/a/a/h/d;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/a/a/h/d;->o:Landroid/graphics/drawable/Drawable;

    .line 1264
    :cond_d
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1265
    iget v0, p1, Lcom/a/a/h/d;->p:I

    iput v0, p0, Lcom/a/a/h/d;->p:I

    .line 1267
    :cond_e
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const v1, 0x8000

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1268
    iget-object v0, p1, Lcom/a/a/h/d;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/a/a/h/d;->u:Landroid/content/res/Resources$Theme;

    .line 1270
    :cond_f
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1271
    iget-boolean v0, p1, Lcom/a/a/h/d;->n:Z

    iput-boolean v0, p0, Lcom/a/a/h/d;->n:Z

    .line 1273
    :cond_10
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1274
    iget-boolean v0, p1, Lcom/a/a/h/d;->m:Z

    iput-boolean v0, p0, Lcom/a/a/h/d;->m:Z

    .line 1276
    :cond_11
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1277
    iget-object v0, p0, Lcom/a/a/h/d;->r:Ljava/util/Map;

    iget-object v1, p1, Lcom/a/a/h/d;->r:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1278
    iget-boolean v0, p1, Lcom/a/a/h/d;->y:Z

    iput-boolean v0, p0, Lcom/a/a/h/d;->y:Z

    .line 1280
    :cond_12
    iget v0, p1, Lcom/a/a/h/d;->a:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lcom/a/a/h/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1281
    iget-boolean v0, p1, Lcom/a/a/h/d;->x:Z

    iput-boolean v0, p0, Lcom/a/a/h/d;->x:Z

    .line 1285
    :cond_13
    iget-boolean v0, p0, Lcom/a/a/h/d;->n:Z

    if-nez v0, :cond_14

    .line 1286
    iget-object v0, p0, Lcom/a/a/h/d;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1287
    iget v0, p0, Lcom/a/a/h/d;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 1288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/h/d;->m:Z

    .line 1289
    iget v0, p0, Lcom/a/a/h/d;->a:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 1290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/h/d;->y:Z

    .line 1293
    :cond_14
    iget v0, p0, Lcom/a/a/h/d;->a:I

    iget v1, p1, Lcom/a/a/h/d;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 1294
    iget-object v0, p0, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    iget-object v1, p1, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    invoke-virtual {v0, v1}, Lcom/a/a/d/j;->a(Lcom/a/a/d/j;)V

    .line 1296
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/a/a/d/m;)Lcom/a/a/h/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/a/a/d/m",
            "<TT;>;)",
            "Lcom/a/a/h/d;"
        }
    .end annotation

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/h/d;->a(Ljava/lang/Class;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    .line 1149
    :goto_0
    return-object v0

    .line 1140
    :cond_0
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    invoke-static {p2}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v0, p0, Lcom/a/a/h/d;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iget v0, p0, Lcom/a/a/h/d;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/h/d;->n:Z

    .line 1145
    iget v0, p0, Lcom/a/a/h/d;->a:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 1148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/h/d;->y:Z

    .line 1149
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)Lcom/a/a/h/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 637
    iget-boolean v1, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/h/d;->a(Z)Lcom/a/a/h/d;

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    .line 641
    :cond_0
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/a/a/h/d;->i:Z

    .line 642
    iget v0, p0, Lcom/a/a/h/d;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 644
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0

    .line 641
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Lcom/a/a/d/b/h;)Lcom/a/a/h/d;
    .locals 1
    .param p1    # Lcom/a/a/d/b/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/h/d;->b(Lcom/a/a/d/b/h;)Lcom/a/a/h/d;

    move-result-object v0

    .line 463
    :goto_0
    return-object v0

    .line 460
    :cond_0
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/h;

    iput-object v0, p0, Lcom/a/a/h/d;->c:Lcom/a/a/d/b/h;

    .line 461
    iget v0, p0, Lcom/a/a/h/d;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 463
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method final b(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;)Lcom/a/a/h/d;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/d/a/k;",
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/a/a/h/d;"
        }
    .end annotation

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/h/d;->b(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    .line 1012
    :goto_0
    return-object v0

    .line 1011
    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/h/d;->a(Lcom/a/a/d/d/a/k;)Lcom/a/a/h/d;

    .line 1012
    invoke-virtual {p0, p2}, Lcom/a/a/h/d;->a(Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/a/a/d/h;)Lcom/a/a/h/d;
    .locals 1
    .param p1    # Lcom/a/a/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/h/d;->b(Lcom/a/a/d/h;)Lcom/a/a/h/d;

    move-result-object v0

    .line 701
    :goto_0
    return-object v0

    .line 699
    :cond_0
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/h;

    iput-object v0, p0, Lcom/a/a/h/d;->l:Lcom/a/a/d/h;

    .line 700
    iget v0, p0, Lcom/a/a/h/d;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 701
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/a/a/d/m;)Lcom/a/a/h/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/a/a/h/d;"
        }
    .end annotation

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/h/d;->b(Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    .line 1113
    :goto_0
    return-object v0

    .line 1109
    :cond_0
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/a/a/h/d;->a(Ljava/lang/Class;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    .line 1111
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Lcom/a/a/d/d/a/c;

    invoke-direct {v1, p1}, Lcom/a/a/d/d/a/c;-><init>(Lcom/a/a/d/m;)V

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h/d;->a(Ljava/lang/Class;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    .line 1112
    const-class v0, Lcom/a/a/d/d/e/c;

    new-instance v1, Lcom/a/a/d/d/e/f;

    invoke-direct {v1, p1}, Lcom/a/a/d/d/e/f;-><init>(Lcom/a/a/d/m;)V

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h/d;->a(Ljava/lang/Class;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    .line 1113
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;)Lcom/a/a/h/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/a/a/h/d;"
        }
    .end annotation

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/h/d;->b(Ljava/lang/Class;)Lcom/a/a/h/d;

    move-result-object v0

    .line 753
    :goto_0
    return-object v0

    .line 751
    :cond_0
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/a/h/d;->s:Ljava/lang/Class;

    .line 752
    iget v0, p0, Lcom/a/a/h/d;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/a/a/h/d;->a:I

    .line 753
    invoke-direct {p0}, Lcom/a/a/h/d;->F()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/a/a/h/d;->n:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 761
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/a/a/h/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/a/a/h/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 882
    sget-object v0, Lcom/a/a/d/d/a/k;->b:Lcom/a/a/d/d/a/k;

    new-instance v1, Lcom/a/a/d/d/a/h;

    invoke-direct {v1}, Lcom/a/a/d/d/a/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h/d;->a(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/a/h/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 912
    sget-object v0, Lcom/a/a/d/d/a/k;->a:Lcom/a/a/d/d/a/k;

    new-instance v1, Lcom/a/a/d/d/a/m;

    invoke-direct {v1}, Lcom/a/a/d/d/a/m;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/a/a/h/d;->c(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1302
    instance-of v1, p1, Lcom/a/a/h/d;

    if-eqz v1, :cond_0

    .line 1303
    check-cast p1, Lcom/a/a/h/d;

    .line 1304
    iget v1, p1, Lcom/a/a/h/d;->b:F

    iget v2, p0, Lcom/a/a/h/d;->b:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/a/a/h/d;->f:I

    iget v2, p1, Lcom/a/a/h/d;->f:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/h/d;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/a/a/h/d;->e:Landroid/graphics/drawable/Drawable;

    .line 1306
    invoke-static {v1, v2}, Lcom/a/a/j/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/a/a/h/d;->h:I

    iget v2, p1, Lcom/a/a/h/d;->h:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/h/d;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/a/a/h/d;->g:Landroid/graphics/drawable/Drawable;

    .line 1308
    invoke-static {v1, v2}, Lcom/a/a/j/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/a/a/h/d;->p:I

    iget v2, p1, Lcom/a/a/h/d;->p:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/h/d;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/a/a/h/d;->o:Landroid/graphics/drawable/Drawable;

    .line 1310
    invoke-static {v1, v2}, Lcom/a/a/j/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/a/a/h/d;->i:Z

    iget-boolean v2, p1, Lcom/a/a/h/d;->i:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/a/a/h/d;->j:I

    iget v2, p1, Lcom/a/a/h/d;->j:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/a/a/h/d;->k:I

    iget v2, p1, Lcom/a/a/h/d;->k:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/a/a/h/d;->m:Z

    iget-boolean v2, p1, Lcom/a/a/h/d;->m:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/a/a/h/d;->n:Z

    iget-boolean v2, p1, Lcom/a/a/h/d;->n:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/a/a/h/d;->w:Z

    iget-boolean v2, p1, Lcom/a/a/h/d;->w:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/a/a/h/d;->x:Z

    iget-boolean v2, p1, Lcom/a/a/h/d;->x:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/h/d;->c:Lcom/a/a/d/b/h;

    iget-object v2, p1, Lcom/a/a/h/d;->c:Lcom/a/a/d/b/h;

    .line 1318
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/h/d;->d:Lcom/a/a/g;

    iget-object v2, p1, Lcom/a/a/h/d;->d:Lcom/a/a/g;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    iget-object v2, p1, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    .line 1320
    invoke-virtual {v1, v2}, Lcom/a/a/d/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/h/d;->r:Ljava/util/Map;

    iget-object v2, p1, Lcom/a/a/h/d;->r:Ljava/util/Map;

    .line 1321
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/h/d;->s:Ljava/lang/Class;

    iget-object v2, p1, Lcom/a/a/h/d;->s:Ljava/lang/Class;

    .line 1322
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/h/d;->l:Lcom/a/a/d/h;

    iget-object v2, p1, Lcom/a/a/h/d;->l:Lcom/a/a/d/h;

    .line 1323
    invoke-static {v1, v2}, Lcom/a/a/j/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/h/d;->u:Landroid/content/res/Resources$Theme;

    iget-object v2, p1, Lcom/a/a/h/d;->u:Landroid/content/res/Resources$Theme;

    .line 1324
    invoke-static {v1, v2}, Lcom/a/a/j/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1326
    :cond_0
    return v0
.end method

.method public f()Lcom/a/a/h/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 943
    sget-object v0, Lcom/a/a/d/d/a/k;->e:Lcom/a/a/d/d/a/k;

    new-instance v1, Lcom/a/a/d/d/a/i;

    invoke-direct {v1}, Lcom/a/a/d/d/a/i;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/a/a/h/d;->c(Lcom/a/a/d/d/a/k;Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/a/a/h/d;
    .locals 1

    .prologue
    .line 1362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/h/d;->t:Z

    .line 1364
    return-object p0
.end method

.method public h()Lcom/a/a/h/d;
    .locals 2

    .prologue
    .line 1376
    iget-boolean v0, p0, Lcom/a/a/h/d;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    if-nez v0, :cond_0

    .line 1377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/h/d;->v:Z

    .line 1381
    invoke-virtual {p0}, Lcom/a/a/h/d;->g()Lcom/a/a/h/d;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1331
    iget v0, p0, Lcom/a/a/h/d;->b:F

    invoke-static {v0}, Lcom/a/a/j/i;->a(F)I

    move-result v0

    .line 1332
    iget v1, p0, Lcom/a/a/h/d;->f:I

    invoke-static {v1, v0}, Lcom/a/a/j/i;->b(II)I

    move-result v0

    .line 1333
    iget-object v1, p0, Lcom/a/a/h/d;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1334
    iget v1, p0, Lcom/a/a/h/d;->h:I

    invoke-static {v1, v0}, Lcom/a/a/j/i;->b(II)I

    move-result v0

    .line 1335
    iget-object v1, p0, Lcom/a/a/h/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1336
    iget v1, p0, Lcom/a/a/h/d;->p:I

    invoke-static {v1, v0}, Lcom/a/a/j/i;->b(II)I

    move-result v0

    .line 1337
    iget-object v1, p0, Lcom/a/a/h/d;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1338
    iget-boolean v1, p0, Lcom/a/a/h/d;->i:Z

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(ZI)I

    move-result v0

    .line 1339
    iget v1, p0, Lcom/a/a/h/d;->j:I

    invoke-static {v1, v0}, Lcom/a/a/j/i;->b(II)I

    move-result v0

    .line 1340
    iget v1, p0, Lcom/a/a/h/d;->k:I

    invoke-static {v1, v0}, Lcom/a/a/j/i;->b(II)I

    move-result v0

    .line 1341
    iget-boolean v1, p0, Lcom/a/a/h/d;->m:Z

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(ZI)I

    move-result v0

    .line 1342
    iget-boolean v1, p0, Lcom/a/a/h/d;->n:Z

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(ZI)I

    move-result v0

    .line 1343
    iget-boolean v1, p0, Lcom/a/a/h/d;->w:Z

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(ZI)I

    move-result v0

    .line 1344
    iget-boolean v1, p0, Lcom/a/a/h/d;->x:Z

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(ZI)I

    move-result v0

    .line 1345
    iget-object v1, p0, Lcom/a/a/h/d;->c:Lcom/a/a/d/b/h;

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1346
    iget-object v1, p0, Lcom/a/a/h/d;->d:Lcom/a/a/g;

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1347
    iget-object v1, p0, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1348
    iget-object v1, p0, Lcom/a/a/h/d;->r:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1349
    iget-object v1, p0, Lcom/a/a/h/d;->s:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1350
    iget-object v1, p0, Lcom/a/a/h/d;->l:Lcom/a/a/d/h;

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1351
    iget-object v1, p0, Lcom/a/a/h/d;->u:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/a/a/j/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1352
    return v0
.end method

.method public final i()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/d/m",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/a/a/h/d;->r:Ljava/util/Map;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 1403
    iget-boolean v0, p0, Lcom/a/a/h/d;->m:Z

    return v0
.end method

.method public final k()Lcom/a/a/d/j;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/a/a/h/d;->q:Lcom/a/a/d/j;

    return-object v0
.end method

.method public final l()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/a/a/h/d;->s:Ljava/lang/Class;

    return-object v0
.end method

.method public final m()Lcom/a/a/d/b/h;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/a/a/h/d;->c:Lcom/a/a/d/b/h;

    return-object v0
.end method

.method public final n()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/a/a/h/d;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 1429
    iget v0, p0, Lcom/a/a/h/d;->f:I

    return v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 1434
    iget v0, p0, Lcom/a/a/h/d;->h:I

    return v0
.end method

.method public final q()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/a/a/h/d;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 1445
    iget v0, p0, Lcom/a/a/h/d;->p:I

    return v0
.end method

.method public final s()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/a/a/h/d;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final t()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/a/a/h/d;->u:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 1461
    iget-boolean v0, p0, Lcom/a/a/h/d;->i:Z

    return v0
.end method

.method public final v()Lcom/a/a/d/h;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/a/a/h/d;->l:Lcom/a/a/d/h;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 1470
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/a/a/h/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public final x()Lcom/a/a/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/a/a/h/d;->d:Lcom/a/a/g;

    return-object v0
.end method

.method public final y()I
    .locals 1

    .prologue
    .line 1479
    iget v0, p0, Lcom/a/a/h/d;->k:I

    return v0
.end method

.method public final z()Z
    .locals 2

    .prologue
    .line 1483
    iget v0, p0, Lcom/a/a/h/d;->k:I

    iget v1, p0, Lcom/a/a/h/d;->j:I

    invoke-static {v0, v1}, Lcom/a/a/j/i;->a(II)Z

    move-result v0

    return v0
.end method
