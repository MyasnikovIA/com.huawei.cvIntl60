.class Lcom/a/a/d/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/b/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/b/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/b/s",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:Lcom/a/a/d/b/n$a;

.field private c:Lcom/a/a/d/h;

.field private d:I

.field private e:Z

.field private final f:Lcom/a/a/d/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/s",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/d/b/s;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<TZ;>;Z)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/s;

    iput-object v0, p0, Lcom/a/a/d/b/n;->f:Lcom/a/a/d/b/s;

    .line 27
    iput-boolean p2, p0, Lcom/a/a/d/b/n;->a:Z

    .line 28
    return-void
.end method


# virtual methods
.method a(Lcom/a/a/d/h;Lcom/a/a/d/b/n$a;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/a/a/d/b/n;->c:Lcom/a/a/d/h;

    .line 32
    iput-object p2, p0, Lcom/a/a/d/b/n;->b:Lcom/a/a/d/b/n$a;

    .line 33
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/a/a/d/b/n;->a:Z

    return v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/a/a/d/b/n;->f:Lcom/a/a/d/b/s;

    invoke-interface {v0}, Lcom/a/a/d/b/s;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/a/a/d/b/n;->f:Lcom/a/a/d/b/s;

    invoke-interface {v0}, Lcom/a/a/d/b/s;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/a/a/d/b/n;->f:Lcom/a/a/d/b/s;

    invoke-interface {v0}, Lcom/a/a/d/b/s;->d()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/a/a/d/b/n;->d:I

    if-lez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/a/a/d/b/n;->e:Z

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/b/n;->e:Z

    .line 63
    iget-object v0, p0, Lcom/a/a/d/b/n;->f:Lcom/a/a/d/b/s;

    invoke-interface {v0}, Lcom/a/a/d/b/s;->e()V

    .line 64
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/a/a/d/b/n;->e:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iget v0, p0, Lcom/a/a/d/b/n;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/d/b/n;->d:I

    .line 83
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/a/a/d/b/n;->d:I

    if-gtz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    iget v0, p0, Lcom/a/a/d/b/n;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/d/b/n;->d:I

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/a/a/d/b/n;->b:Lcom/a/a/d/b/n$a;

    iget-object v1, p0, Lcom/a/a/d/b/n;->c:Lcom/a/a/d/h;

    invoke-interface {v0, v1, p0}, Lcom/a/a/d/b/n$a;->b(Lcom/a/a/d/h;Lcom/a/a/d/b/n;)V

    .line 103
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineResource{isCacheable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/a/a/d/b/n;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/n;->b:Lcom/a/a/d/b/n$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/n;->c:Lcom/a/a/d/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/d/b/n;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/a/a/d/b/n;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/n;->f:Lcom/a/a/d/b/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
