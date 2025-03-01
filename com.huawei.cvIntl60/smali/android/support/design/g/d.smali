.class public Landroid/support/design/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/g/d$a;,
        Landroid/support/design/g/d$b;,
        Landroid/support/design/g/d$c;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/g/d$c;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(FF)V
    .locals 1

    .prologue
    .line 49
    iput p1, p0, Landroid/support/design/g/d;->a:F

    .line 50
    iput p2, p0, Landroid/support/design/g/d;->b:F

    .line 51
    iput p1, p0, Landroid/support/design/g/d;->c:F

    .line 52
    iput p2, p0, Landroid/support/design/g/d;->d:F

    .line 53
    iget-object v0, p0, Landroid/support/design/g/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    return-void
.end method

.method public a(FFFFFF)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 104
    new-instance v0, Landroid/support/design/g/d$a;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/design/g/d$a;-><init>(FFFF)V

    .line 105
    iput p5, v0, Landroid/support/design/g/d$a;->e:F

    .line 106
    iput p6, v0, Landroid/support/design/g/d$a;->f:F

    .line 107
    iget-object v1, p0, Landroid/support/design/g/d;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-float v0, p1, p3

    mul-float/2addr v0, v4

    sub-float v1, p3, p1

    div-float/2addr v1, v5

    add-float v2, p5, p6

    float-to-double v2, v2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/g/d;->c:F

    .line 111
    add-float v0, p2, p4

    mul-float/2addr v0, v4

    sub-float v1, p4, p2

    div-float/2addr v1, v5

    add-float v2, p5, p6

    float-to-double v2, v2

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/g/d;->d:F

    .line 113
    return-void
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/g/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/design/g/d;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/g/d$c;

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/support/design/g/d$c;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public b(FF)V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/support/design/g/d$b;

    invoke-direct {v0}, Landroid/support/design/g/d$b;-><init>()V

    .line 64
    invoke-static {v0, p1}, Landroid/support/design/g/d$b;->a(Landroid/support/design/g/d$b;F)F

    .line 65
    invoke-static {v0, p2}, Landroid/support/design/g/d$b;->b(Landroid/support/design/g/d$b;F)F

    .line 66
    iget-object v1, p0, Landroid/support/design/g/d;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iput p1, p0, Landroid/support/design/g/d;->c:F

    .line 69
    iput p2, p0, Landroid/support/design/g/d;->d:F

    .line 70
    return-void
.end method
