.class public Lcom/a/a/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/h/a;
.implements Lcom/a/a/h/b;


# instance fields
.field private a:Lcom/a/a/h/a;

.field private b:Lcom/a/a/h/a;

.field private c:Lcom/a/a/h/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/h/g;-><init>(Lcom/a/a/h/b;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/a/a/h/b;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/a/a/h/g;->c:Lcom/a/a/h/b;

    .line 22
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/a/a/h/g;->c:Lcom/a/a/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/g;->c:Lcom/a/a/h/b;

    invoke-interface {v0, p0}, Lcom/a/a/h/b;->b(Lcom/a/a/h/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/a/a/h/g;->c:Lcom/a/a/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/g;->c:Lcom/a/a/h/b;

    invoke-interface {v0, p0}, Lcom/a/a/h/b;->c(Lcom/a/a/h/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/a/a/h/g;->c:Lcom/a/a/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/g;->c:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/h/g;->d:Z

    .line 90
    iget-object v0, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->a()V

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/a/a/h/g;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->a()V

    .line 96
    :cond_1
    return-void
.end method

.method public a(Lcom/a/a/h/a;Lcom/a/a/h/a;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    .line 26
    iput-object p2, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    .line 27
    return-void
.end method

.method public a(Lcom/a/a/h/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 165
    instance-of v1, p1, Lcom/a/a/h/g;

    if-eqz v1, :cond_0

    .line 166
    check-cast p1, Lcom/a/a/h/g;

    .line 167
    iget-object v1, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    if-nez v1, :cond_0

    .line 168
    :goto_1
    const/4 v0, 0x1

    .line 170
    :cond_0
    return v0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    iget-object v2, p1, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v1, v2}, Lcom/a/a/h/a;->a(Lcom/a/a/h/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    iget-object v2, p1, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    .line 168
    invoke-interface {v1, v2}, Lcom/a/a/h/a;->a(Lcom/a/a/h/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/h/g;->d:Z

    .line 101
    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->b()V

    .line 102
    iget-object v0, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->b()V

    .line 103
    return-void
.end method

.method public b(Lcom/a/a/h/a;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/a/a/h/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/h/g;->d:Z

    .line 111
    iget-object v0, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->c()V

    .line 112
    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->c()V

    .line 113
    return-void
.end method

.method public c(Lcom/a/a/h/a;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/a/a/h/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/h/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/a/a/h/a;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/a/a/h/g;->c:Lcom/a/a/h/b;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/a/a/h/g;->c:Lcom/a/a/h/b;

    invoke-interface {v0, p0}, Lcom/a/a/h/b;->d(Lcom/a/a/h/a;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->c()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/a/a/h/g;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/h/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->e()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->h()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/a/a/h/g;->a:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->i()V

    .line 160
    iget-object v0, p0, Lcom/a/a/h/g;->b:Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->i()V

    .line 161
    return-void
.end method
