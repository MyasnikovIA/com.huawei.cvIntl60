.class Lcom/a/a/d/d/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/e/g$a;,
        Lcom/a/a/d/d/e/g$c;,
        Lcom/a/a/d/d/e/g$b;
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/j;

.field private final b:Lcom/a/a/b/a;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/d/e/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/a/a/d/b/a/e;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/a/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/a/a/d/d/e/g$a;

.field private k:Z

.field private l:Lcom/a/a/d/d/e/g$a;

.field private m:Landroid/graphics/Bitmap;

.field private n:Lcom/a/a/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/c;Lcom/a/a/b/a;IILcom/a/a/d/m;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c;",
            "Lcom/a/a/b/a;",
            "II",
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/a/a/c;->a()Lcom/a/a/d/b/a/e;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/a/a/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c;->b(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v2

    const/4 v4, 0x0

    .line 63
    invoke-virtual {p1}, Lcom/a/a/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c;->b(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/a/a/d/d/e/g;->a(Lcom/a/a/j;II)Lcom/a/a/i;

    move-result-object v5

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 58
    invoke-direct/range {v0 .. v7}, Lcom/a/a/d/d/e/g;-><init>(Lcom/a/a/d/b/a/e;Lcom/a/a/j;Lcom/a/a/b/a;Landroid/os/Handler;Lcom/a/a/i;Lcom/a/a/d/m;Landroid/graphics/Bitmap;)V

    .line 66
    return-void
.end method

.method constructor <init>(Lcom/a/a/d/b/a/e;Lcom/a/a/j;Lcom/a/a/b/a;Landroid/os/Handler;Lcom/a/a/i;Lcom/a/a/d/m;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/a/e;",
            "Lcom/a/a/j;",
            "Lcom/a/a/b/a;",
            "Landroid/os/Handler;",
            "Lcom/a/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/d/e/g;->d:Ljava/util/List;

    .line 37
    iput-boolean v1, p0, Lcom/a/a/d/d/e/g;->f:Z

    .line 38
    iput-boolean v1, p0, Lcom/a/a/d/d/e/g;->g:Z

    .line 39
    iput-boolean v1, p0, Lcom/a/a/d/d/e/g;->h:Z

    .line 77
    iput-object p2, p0, Lcom/a/a/d/d/e/g;->a:Lcom/a/a/j;

    .line 78
    if-nez p4, :cond_0

    .line 79
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/a/a/d/d/e/g$c;

    invoke-direct {v1, p0}, Lcom/a/a/d/d/e/g$c;-><init>(Lcom/a/a/d/d/e/g;)V

    invoke-direct {p4, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/a/a/d/d/e/g;->e:Lcom/a/a/d/b/a/e;

    .line 82
    iput-object p4, p0, Lcom/a/a/d/d/e/g;->c:Landroid/os/Handler;

    .line 83
    iput-object p5, p0, Lcom/a/a/d/d/e/g;->i:Lcom/a/a/i;

    .line 85
    iput-object p3, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/b/a;

    .line 87
    invoke-virtual {p0, p6, p7}, Lcom/a/a/d/d/e/g;->a(Lcom/a/a/d/m;Landroid/graphics/Bitmap;)V

    .line 88
    return-void
.end method

.method private static a(Lcom/a/a/j;II)Lcom/a/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/j;",
            "II)",
            "Lcom/a/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/a/a/j;->f()Lcom/a/a/i;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/b/h;->b:Lcom/a/a/d/b/h;

    .line 300
    invoke-static {v1}, Lcom/a/a/h/d;->a(Lcom/a/a/d/b/h;)Lcom/a/a/h/d;

    move-result-object v1

    const/4 v2, 0x1

    .line 301
    invoke-virtual {v1, v2}, Lcom/a/a/h/d;->a(Z)Lcom/a/a/h/d;

    move-result-object v1

    .line 302
    invoke-virtual {v1, p1, p2}, Lcom/a/a/h/d;->a(II)Lcom/a/a/h/d;

    move-result-object v1

    .line 299
    invoke-virtual {v0, v1}, Lcom/a/a/i;->a(Lcom/a/a/h/d;)Lcom/a/a/i;

    move-result-object v0

    .line 297
    return-object v0
.end method

.method static j()Lcom/a/a/d/h;
    .locals 4

    .prologue
    .line 308
    new-instance v0, Lcom/a/a/i/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/i/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private k()I
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/a/a/d/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/a/a/d/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 143
    invoke-virtual {p0}, Lcom/a/a/d/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 142
    invoke-static {v0, v1, v2}, Lcom/a/a/j/i;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/a/a/d/d/e/g;->f:Z

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/d/e/g;->f:Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/d/d/e/g;->k:Z

    .line 165
    invoke-direct {p0}, Lcom/a/a/d/d/e/g;->n()V

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/d/d/e/g;->f:Z

    .line 170
    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/a/a/d/d/e/g;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/d/d/e/g;->g:Z

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-boolean v0, p0, Lcom/a/a/d/d/e/g;->h:Z

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/b/a;

    invoke-interface {v0}, Lcom/a/a/b/a;->f()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/d/d/e/g;->h:Z

    .line 200
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/d/e/g;->g:Z

    .line 203
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/b/a;

    invoke-interface {v0}, Lcom/a/a/b/a;->c()I

    move-result v0

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 206
    iget-object v2, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/b/a;

    invoke-interface {v2}, Lcom/a/a/b/a;->b()V

    .line 207
    new-instance v2, Lcom/a/a/d/d/e/g$a;

    iget-object v3, p0, Lcom/a/a/d/d/e/g;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/b/a;

    invoke-interface {v4}, Lcom/a/a/b/a;->e()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/a/a/d/d/e/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v2, p0, Lcom/a/a/d/d/e/g;->l:Lcom/a/a/d/d/e/g$a;

    .line 208
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->i:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->b()Lcom/a/a/i;

    move-result-object v0

    invoke-static {}, Lcom/a/a/d/d/e/g;->j()Lcom/a/a/d/h;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/h/d;->a(Lcom/a/a/d/h;)Lcom/a/a/h/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/i;->a(Lcom/a/a/h/d;)Lcom/a/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/b/a;

    invoke-virtual {v0, v1}, Lcom/a/a/i;->a(Ljava/lang/Object;)Lcom/a/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/d/e/g;->l:Lcom/a/a/d/d/e/g$a;

    invoke-virtual {v0, v1}, Lcom/a/a/i;->a(Lcom/a/a/h/a/h;)Lcom/a/a/h/a/h;

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->e:Lcom/a/a/d/b/a/e;

    iget-object v1, p0, Lcom/a/a/d/d/e/g;->m:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/a/a/d/b/a/e;->a(Landroid/graphics/Bitmap;)V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/d/d/e/g;->m:Landroid/graphics/Bitmap;

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method a(Lcom/a/a/d/d/e/g$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 225
    iget-boolean v0, p0, Lcom/a/a/d/d/e/g;->k:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/d/e/g$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 231
    invoke-direct {p0}, Lcom/a/a/d/d/e/g;->o()V

    .line 232
    iget-object v2, p0, Lcom/a/a/d/d/e/g;->j:Lcom/a/a/d/d/e/g$a;

    .line 233
    iput-object p1, p0, Lcom/a/a/d/d/e/g;->j:Lcom/a/a/d/d/e/g$a;

    .line 236
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/e/g$b;

    .line 238
    invoke-interface {v0}, Lcom/a/a/d/d/e/g$b;->f()V

    .line 236
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 240
    :cond_1
    if-eqz v2, :cond_2

    .line 241
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 245
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/d/d/e/g;->g:Z

    .line 246
    invoke-direct {p0}, Lcom/a/a/d/d/e/g;->n()V

    goto :goto_0
.end method

.method a(Lcom/a/a/d/d/e/g$b;)V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/a/a/d/d/e/g;->k:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a cleared frame loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/a/a/d/d/e/g;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe twice in a row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/a/a/d/d/e/g;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/a/a/d/d/e/g;->l()V

    .line 116
    :cond_2
    return-void
.end method

.method a(Lcom/a/a/d/m;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/m;

    iput-object v0, p0, Lcom/a/a/d/d/e/g;->n:Lcom/a/a/d/m;

    .line 92
    invoke-static {p2}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/a/a/d/d/e/g;->m:Landroid/graphics/Bitmap;

    .line 93
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->i:Lcom/a/a/i;

    new-instance v1, Lcom/a/a/h/d;

    invoke-direct {v1}, Lcom/a/a/h/d;-><init>()V

    invoke-virtual {v1, p1}, Lcom/a/a/h/d;->a(Lcom/a/a/d/m;)Lcom/a/a/h/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/i;->a(Lcom/a/a/h/d;)Lcom/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/d/e/g;->i:Lcom/a/a/i;

    .line 94
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/a/a/d/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method b(Lcom/a/a/d/d/e/g$b;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/a/a/d/d/e/g;->m()V

    .line 123
    :cond_0
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/a/a/d/d/e/g;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method d()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/b/a;

    invoke-interface {v0}, Lcom/a/a/b/a;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/a/a/d/d/e/g;->k()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->j:Lcom/a/a/d/d/e/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/d/e/g;->j:Lcom/a/a/d/d/e/g$a;

    iget v0, v0, Lcom/a/a/d/d/e/g$a;->a:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method f()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/b/a;

    invoke-interface {v0}, Lcom/a/a/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/b/a;

    invoke-interface {v0}, Lcom/a/a/b/a;->d()I

    move-result v0

    return v0
.end method

.method h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    invoke-direct {p0}, Lcom/a/a/d/d/e/g;->o()V

    .line 175
    invoke-direct {p0}, Lcom/a/a/d/d/e/g;->m()V

    .line 176
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->j:Lcom/a/a/d/d/e/g$a;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->a:Lcom/a/a/j;

    iget-object v1, p0, Lcom/a/a/d/d/e/g;->j:Lcom/a/a/d/d/e/g$a;

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/h/a/h;)V

    .line 178
    iput-object v2, p0, Lcom/a/a/d/d/e/g;->j:Lcom/a/a/d/d/e/g$a;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->l:Lcom/a/a/d/d/e/g$a;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->a:Lcom/a/a/j;

    iget-object v1, p0, Lcom/a/a/d/d/e/g;->l:Lcom/a/a/d/d/e/g$a;

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/h/a/h;)V

    .line 182
    iput-object v2, p0, Lcom/a/a/d/d/e/g;->l:Lcom/a/a/d/d/e/g$a;

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/b/a;

    invoke-interface {v0}, Lcom/a/a/b/a;->i()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/d/e/g;->k:Z

    .line 186
    return-void
.end method

.method i()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->j:Lcom/a/a/d/d/e/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/d/e/g;->j:Lcom/a/a/d/d/e/g$a;

    invoke-virtual {v0}, Lcom/a/a/d/d/e/g$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/d/e/g;->m:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
