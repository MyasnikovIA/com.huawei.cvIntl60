.class Lcom/a/a/d/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/a/b$a;
.implements Lcom/a/a/d/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/a/b$a",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/a/a/d/b/d;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/h;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/e",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/d/b/d$a;

.field private d:I

.field private e:Lcom/a/a/d/h;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/c/n",
            "<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:I

.field private volatile h:Lcom/a/a/d/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/n$a",
            "<*>;"
        }
    .end annotation
.end field

.field private i:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/a/a/d/b/e;Lcom/a/a/d/b/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/e",
            "<*>;",
            "Lcom/a/a/d/b/d$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/a/a/d/b/e;->l()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/d/b/a;-><init>(Ljava/util/List;Lcom/a/a/d/b/e;Lcom/a/a/d/b/d$a;)V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/a/a/d/b/e;Lcom/a/a/d/b/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/h;",
            ">;",
            "Lcom/a/a/d/b/e",
            "<*>;",
            "Lcom/a/a/d/b/d$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/d/b/a;->d:I

    .line 39
    iput-object p1, p0, Lcom/a/a/d/b/a;->a:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/e;

    .line 41
    iput-object p3, p0, Lcom/a/a/d/b/a;->c:Lcom/a/a/d/b/d$a;

    .line 42
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/a/a/d/b/a;->g:I

    iget-object v1, p0, Lcom/a/a/d/b/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/a/a/d/b/a;->c:Lcom/a/a/d/b/d$a;

    iget-object v1, p0, Lcom/a/a/d/b/a;->e:Lcom/a/a/d/h;

    iget-object v2, p0, Lcom/a/a/d/b/a;->h:Lcom/a/a/d/c/n$a;

    iget-object v2, v2, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    sget-object v3, Lcom/a/a/d/a;->c:Lcom/a/a/d/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/a/a/d/b/d$a;->a(Lcom/a/a/d/h;Ljava/lang/Exception;Lcom/a/a/d/a/b;Lcom/a/a/d/a;)V

    .line 97
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lcom/a/a/d/b/a;->c:Lcom/a/a/d/b/d$a;

    iget-object v1, p0, Lcom/a/a/d/b/a;->e:Lcom/a/a/d/h;

    iget-object v2, p0, Lcom/a/a/d/b/a;->h:Lcom/a/a/d/c/n$a;

    iget-object v3, v2, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    sget-object v4, Lcom/a/a/d/a;->c:Lcom/a/a/d/a;

    iget-object v5, p0, Lcom/a/a/d/b/a;->e:Lcom/a/a/d/h;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/a/a/d/b/d$a;->a(Lcom/a/a/d/h;Ljava/lang/Object;Lcom/a/a/d/a/b;Lcom/a/a/d/a;Lcom/a/a/d/h;)V

    .line 92
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/a/a/d/b/a;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/d/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 47
    :cond_1
    iget v0, p0, Lcom/a/a/d/b/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/d/b/a;->d:I

    .line 48
    iget v0, p0, Lcom/a/a/d/b/a;->d:I

    iget-object v2, p0, Lcom/a/a/d/b/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 74
    :cond_2
    return v1

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/a/a/d/b/a;->a:Ljava/util/List;

    iget v2, p0, Lcom/a/a/d/b/a;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/h;

    .line 53
    new-instance v2, Lcom/a/a/d/b/b;

    iget-object v3, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/e;

    invoke-virtual {v3}, Lcom/a/a/d/b/e;->f()Lcom/a/a/d/h;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/a/a/d/b/b;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/h;)V

    .line 54
    iget-object v3, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/e;

    invoke-virtual {v3}, Lcom/a/a/d/b/e;->b()Lcom/a/a/d/b/b/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/a/a/d/b/b/a;->a(Lcom/a/a/d/h;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/d/b/a;->i:Ljava/io/File;

    .line 55
    iget-object v2, p0, Lcom/a/a/d/b/a;->i:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 56
    iput-object v0, p0, Lcom/a/a/d/b/a;->e:Lcom/a/a/d/h;

    .line 57
    iget-object v0, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/e;

    iget-object v2, p0, Lcom/a/a/d/b/a;->i:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/a/a/d/b/e;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/a;->f:Ljava/util/List;

    .line 58
    iput v1, p0, Lcom/a/a/d/b/a;->g:I

    goto :goto_0

    .line 62
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/d/b/a;->h:Lcom/a/a/d/c/n$a;

    .line 64
    :goto_1
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/a/a/d/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/a/a/d/b/a;->f:Ljava/util/List;

    iget v2, p0, Lcom/a/a/d/b/a;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/d/b/a;->g:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/c/n;

    .line 66
    iget-object v2, p0, Lcom/a/a/d/b/a;->i:Ljava/io/File;

    iget-object v3, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/e;

    .line 67
    invoke-virtual {v3}, Lcom/a/a/d/b/e;->g()I

    move-result v3

    iget-object v4, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/e;

    invoke-virtual {v4}, Lcom/a/a/d/b/e;->h()I

    move-result v4

    iget-object v5, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/e;

    .line 68
    invoke-virtual {v5}, Lcom/a/a/d/b/e;->e()Lcom/a/a/d/j;

    move-result-object v5

    .line 67
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/a/a/d/c/n;->a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/c/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/a;->h:Lcom/a/a/d/c/n$a;

    .line 69
    iget-object v0, p0, Lcom/a/a/d/b/a;->h:Lcom/a/a/d/c/n$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/e;

    iget-object v2, p0, Lcom/a/a/d/b/a;->h:Lcom/a/a/d/c/n$a;

    iget-object v2, v2, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    invoke-interface {v2}, Lcom/a/a/d/a/b;->d()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/d/b/e;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lcom/a/a/d/b/a;->h:Lcom/a/a/d/c/n$a;

    iget-object v1, v1, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    iget-object v2, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/e;

    invoke-virtual {v2}, Lcom/a/a/d/b/e;->d()Lcom/a/a/g;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/a/a/d/a/b;->a(Lcom/a/a/g;Lcom/a/a/d/a/b$a;)V

    :goto_2
    move v1, v0

    .line 73
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/a/a/d/b/a;->h:Lcom/a/a/d/c/n$a;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    iget-object v0, v0, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    invoke-interface {v0}, Lcom/a/a/d/a/b;->b()V

    .line 87
    :cond_0
    return-void
.end method
