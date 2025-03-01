.class public Lui_Controller/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lui_Controller/b/c;->b:I

    .line 21
    iput p2, p0, Lui_Controller/b/c;->c:I

    .line 23
    iput v0, p0, Lui_Controller/b/c;->d:I

    .line 24
    iput-boolean v0, p0, Lui_Controller/b/c;->e:Z

    .line 25
    iput v0, p0, Lui_Controller/b/c;->a:I

    .line 27
    iput-wide p3, p0, Lui_Controller/b/c;->f:J

    .line 28
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lui_Controller/b/c;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lui_Controller/b/c;->d:I

    .line 64
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lui_Controller/b/c;->b:I

    .line 58
    iput p2, p0, Lui_Controller/b/c;->c:I

    .line 59
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lui_Controller/b/c;->e:Z

    .line 69
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lui_Controller/b/c;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lui_Controller/b/c;->a:I

    .line 74
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lui_Controller/b/c;->d:I

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lui_Controller/b/c;->f:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lui_Controller/b/c;->e:Z

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 83
    iget v1, p0, Lui_Controller/b/c;->a:I

    if-ne v1, v0, :cond_0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lui_Controller/b/c;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lHeaderId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui_Controller/b/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nbIsSelected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lui_Controller/b/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nlStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui_Controller/b/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nlGroupIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui_Controller/b/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nlFileIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui_Controller/b/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nlSortTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lui_Controller/b/c;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method
