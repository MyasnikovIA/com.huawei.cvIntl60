.class Lcom/a/a/d/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/a/b$a;
.implements Lcom/a/a/d/b/d;
.implements Lcom/a/a/d/b/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/a/b$a",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/a/a/d/b/d;",
        "Lcom/a/a/d/b/d$a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/e",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/b/d$a;

.field private c:I

.field private d:Lcom/a/a/d/b/a;

.field private e:Ljava/lang/Object;

.field private volatile f:Lcom/a/a/d/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/n$a",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Lcom/a/a/d/b/b;


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/e;Lcom/a/a/d/b/d$a;)V
    .locals 0
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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    .line 37
    iput-object p2, p0, Lcom/a/a/d/b/w;->b:Lcom/a/a/d/b/d$a;

    .line 38
    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 72
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v2, p1}, Lcom/a/a/d/b/e;->a(Ljava/lang/Object;)Lcom/a/a/d/d;

    move-result-object v2

    .line 75
    new-instance v3, Lcom/a/a/d/b/c;

    iget-object v4, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    .line 76
    invoke-virtual {v4}, Lcom/a/a/d/b/e;->e()Lcom/a/a/d/j;

    move-result-object v4

    invoke-direct {v3, v2, p1, v4}, Lcom/a/a/d/b/c;-><init>(Lcom/a/a/d/d;Ljava/lang/Object;Lcom/a/a/d/j;)V

    .line 77
    new-instance v4, Lcom/a/a/d/b/b;

    iget-object v5, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v5, v5, Lcom/a/a/d/c/n$a;->a:Lcom/a/a/d/h;

    iget-object v6, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v6}, Lcom/a/a/d/b/e;->f()Lcom/a/a/d/h;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/a/a/d/b/b;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/h;)V

    iput-object v4, p0, Lcom/a/a/d/b/w;->g:Lcom/a/a/d/b/b;

    .line 78
    iget-object v4, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v4}, Lcom/a/a/d/b/e;->b()Lcom/a/a/d/b/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/a/a/d/b/w;->g:Lcom/a/a/d/b/b;

    invoke-interface {v4, v5, v3}, Lcom/a/a/d/b/b/a;->a(Lcom/a/a/d/h;Lcom/a/a/d/b/b/a$b;)V

    .line 79
    const-string v3, "SourceGenerator"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const-string v3, "SourceGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/a/a/d/b/w;->g:Lcom/a/a/d/b/b;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", encoder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    invoke-static {v0, v1}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v0, v0, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    invoke-interface {v0}, Lcom/a/a/d/a/b;->a()V

    .line 90
    new-instance v0, Lcom/a/a/d/b/a;

    iget-object v1, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v1, v1, Lcom/a/a/d/c/n$a;->a:Lcom/a/a/d/h;

    .line 91
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    invoke-direct {v0, v1, v2, p0}, Lcom/a/a/d/b/a;-><init>(Ljava/util/List;Lcom/a/a/d/b/e;Lcom/a/a/d/b/d$a;)V

    iput-object v0, p0, Lcom/a/a/d/b/w;->d:Lcom/a/a/d/b/a;

    .line 92
    return-void

    .line 87
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v1, v1, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    invoke-interface {v1}, Lcom/a/a/d/a/b;->a()V

    throw v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/a/a/d/b/w;->c:I

    iget-object v1, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v1}, Lcom/a/a/d/b/e;->k()Ljava/util/List;

    move-result-object v1

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
.method public a(Lcom/a/a/d/h;Ljava/lang/Exception;Lcom/a/a/d/a/b;Lcom/a/a/d/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Ljava/lang/Exception;",
            "Lcom/a/a/d/a/b",
            "<*>;",
            "Lcom/a/a/d/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/a/a/d/b/w;->b:Lcom/a/a/d/b/d$a;

    iget-object v1, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v1, v1, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    invoke-interface {v1}, Lcom/a/a/d/a/b;->c()Lcom/a/a/d/a;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/a/a/d/b/d$a;->a(Lcom/a/a/d/h;Ljava/lang/Exception;Lcom/a/a/d/a/b;Lcom/a/a/d/a;)V

    .line 141
    return-void
.end method

.method public a(Lcom/a/a/d/h;Ljava/lang/Object;Lcom/a/a/d/a/b;Lcom/a/a/d/a;Lcom/a/a/d/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Ljava/lang/Object;",
            "Lcom/a/a/d/a/b",
            "<*>;",
            "Lcom/a/a/d/a;",
            "Lcom/a/a/d/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/a/a/d/b/w;->b:Lcom/a/a/d/b/d$a;

    iget-object v1, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v1, v1, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    invoke-interface {v1}, Lcom/a/a/d/a/b;->c()Lcom/a/a/d/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/a/a/d/b/d$a;->a(Lcom/a/a/d/h;Ljava/lang/Object;Lcom/a/a/d/a/b;Lcom/a/a/d/a;Lcom/a/a/d/h;)V

    .line 135
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/a/a/d/b/w;->b:Lcom/a/a/d/b/d$a;

    iget-object v1, p0, Lcom/a/a/d/b/w;->g:Lcom/a/a/d/b/b;

    iget-object v2, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v2, v2, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    iget-object v3, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v3, v3, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    invoke-interface {v3}, Lcom/a/a/d/a/b;->c()Lcom/a/a/d/a;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/a/a/d/b/d$a;->a(Lcom/a/a/d/h;Ljava/lang/Exception;Lcom/a/a/d/a/b;Lcom/a/a/d/a;)V

    .line 119
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v0}, Lcom/a/a/d/b/e;->c()Lcom/a/a/d/b/h;

    move-result-object v0

    .line 105
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v1, v1, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    invoke-interface {v1}, Lcom/a/a/d/a/b;->c()Lcom/a/a/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/d/b/h;->a(Lcom/a/a/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-object p1, p0, Lcom/a/a/d/b/w;->e:Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/a/a/d/b/w;->b:Lcom/a/a/d/b/d$a;

    invoke-interface {v0}, Lcom/a/a/d/b/d$a;->c()V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/w;->b:Lcom/a/a/d/b/d$a;

    iget-object v1, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v1, v1, Lcom/a/a/d/c/n$a;->a:Lcom/a/a/d/h;

    iget-object v2, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v3, v2, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    iget-object v2, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v2, v2, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    .line 112
    invoke-interface {v2}, Lcom/a/a/d/a/b;->c()Lcom/a/a/d/a;

    move-result-object v4

    iget-object v5, p0, Lcom/a/a/d/b/w;->g:Lcom/a/a/d/b/b;

    move-object v2, p1

    .line 111
    invoke-interface/range {v0 .. v5}, Lcom/a/a/d/b/d$a;->a(Lcom/a/a/d/h;Ljava/lang/Object;Lcom/a/a/d/a/b;Lcom/a/a/d/a;Lcom/a/a/d/h;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/a/a/d/b/w;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/a/a/d/b/w;->e:Ljava/lang/Object;

    .line 44
    iput-object v2, p0, Lcom/a/a/d/b/w;->e:Ljava/lang/Object;

    .line 45
    invoke-direct {p0, v0}, Lcom/a/a/d/b/w;->b(Ljava/lang/Object;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/w;->d:Lcom/a/a/d/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/d/b/w;->d:Lcom/a/a/d/b/a;

    invoke-virtual {v0}, Lcom/a/a/d/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 64
    :goto_0
    return v0

    .line 51
    :cond_1
    iput-object v2, p0, Lcom/a/a/d/b/w;->d:Lcom/a/a/d/b/a;

    .line 53
    iput-object v2, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    .line 54
    const/4 v2, 0x0

    .line 55
    :cond_2
    :goto_1
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/a/a/d/b/w;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v0}, Lcom/a/a/d/b/e;->k()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/a/a/d/b/w;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/a/a/d/b/w;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/c/n$a;

    iput-object v0, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    .line 57
    iget-object v0, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    .line 58
    invoke-virtual {v0}, Lcom/a/a/d/b/e;->c()Lcom/a/a/d/b/h;

    move-result-object v0

    iget-object v3, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v3, v3, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    invoke-interface {v3}, Lcom/a/a/d/a/b;->c()Lcom/a/a/d/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/d/b/h;->a(Lcom/a/a/d/a;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    iget-object v3, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v3, v3, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    .line 59
    invoke-interface {v3}, Lcom/a/a/d/a/b;->d()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/d/b/e;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    iget-object v0, v0, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    iget-object v2, p0, Lcom/a/a/d/b/w;->a:Lcom/a/a/d/b/e;

    invoke-virtual {v2}, Lcom/a/a/d/b/e;->d()Lcom/a/a/g;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/a/a/d/a/b;->a(Lcom/a/a/g;Lcom/a/a/d/a/b$a;)V

    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 64
    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/a/a/d/b/w;->f:Lcom/a/a/d/c/n$a;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    iget-object v0, v0, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    invoke-interface {v0}, Lcom/a/a/d/a/b;->b()V

    .line 100
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
