.class Landroid/support/v7/widget/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/ae;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j(Landroid/support/v7/widget/ad;)Landroid/support/v7/widget/ay;
    .locals 1

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/support/v7/widget/ad;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/ad;)F
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ab;->j(Landroid/support/v7/widget/ad;)Landroid/support/v7/widget/ay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->a()F

    move-result v0

    return v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public a(Landroid/support/v7/widget/ad;F)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ab;->j(Landroid/support/v7/widget/ad;)Landroid/support/v7/widget/ay;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ay;->a(F)V

    .line 43
    return-void
.end method

.method public a(Landroid/support/v7/widget/ad;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/support/v7/widget/ay;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/ay;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 32
    invoke-interface {p1, v0}, Landroid/support/v7/widget/ad;->a(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-interface {p1}, Landroid/support/v7/widget/ad;->d()Landroid/view/View;

    move-result-object v0

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 36
    invoke-virtual {v0, p5}, Landroid/view/View;->setElevation(F)V

    .line 37
    invoke-virtual {p0, p1, p6}, Landroid/support/v7/widget/ab;->b(Landroid/support/v7/widget/ad;F)V

    .line 38
    return-void
.end method

.method public a(Landroid/support/v7/widget/ad;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ab;->j(Landroid/support/v7/widget/ad;)Landroid/support/v7/widget/ay;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ay;->a(Landroid/content/res/ColorStateList;)V

    .line 114
    return-void
.end method

.method public b(Landroid/support/v7/widget/ad;)F
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ab;->d(Landroid/support/v7/widget/ad;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public b(Landroid/support/v7/widget/ad;F)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ab;->j(Landroid/support/v7/widget/ad;)Landroid/support/v7/widget/ay;

    move-result-object v0

    .line 52
    invoke-interface {p1}, Landroid/support/v7/widget/ad;->a()Z

    move-result v1

    invoke-interface {p1}, Landroid/support/v7/widget/ad;->b()Z

    move-result v2

    .line 51
    invoke-virtual {v0, p2, v1, v2}, Landroid/support/v7/widget/ay;->a(FZZ)V

    .line 53
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ab;->f(Landroid/support/v7/widget/ad;)V

    .line 54
    return-void
.end method

.method public c(Landroid/support/v7/widget/ad;)F
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ab;->d(Landroid/support/v7/widget/ad;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public c(Landroid/support/v7/widget/ad;F)V
    .locals 1

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/support/v7/widget/ad;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    .line 79
    return-void
.end method

.method public d(Landroid/support/v7/widget/ad;)F
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ab;->j(Landroid/support/v7/widget/ad;)Landroid/support/v7/widget/ay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->b()F

    move-result v0

    return v0
.end method

.method public e(Landroid/support/v7/widget/ad;)F
    .locals 1

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/support/v7/widget/ad;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public f(Landroid/support/v7/widget/ad;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-interface {p1}, Landroid/support/v7/widget/ad;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-interface {p1, v1, v1, v1, v1}, Landroid/support/v7/widget/ad;->a(IIII)V

    .line 99
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ab;->a(Landroid/support/v7/widget/ad;)F

    move-result v0

    .line 93
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ab;->d(Landroid/support/v7/widget/ad;)F

    move-result v1

    .line 95
    invoke-interface {p1}, Landroid/support/v7/widget/ad;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/az;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 97
    invoke-interface {p1}, Landroid/support/v7/widget/ad;->b()Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/support/v7/widget/az;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 98
    invoke-interface {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/ad;->a(IIII)V

    goto :goto_0
.end method

.method public g(Landroid/support/v7/widget/ad;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ab;->a(Landroid/support/v7/widget/ad;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ab;->b(Landroid/support/v7/widget/ad;F)V

    .line 104
    return-void
.end method

.method public h(Landroid/support/v7/widget/ad;)V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ab;->a(Landroid/support/v7/widget/ad;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ab;->b(Landroid/support/v7/widget/ad;F)V

    .line 109
    return-void
.end method

.method public i(Landroid/support/v7/widget/ad;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ab;->j(Landroid/support/v7/widget/ad;)Landroid/support/v7/widget/ay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
