.class LGeneralFunction/Player/player/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/player/h;->a(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/h;

.field private b:J


# direct methods
.method constructor <init>(LGeneralFunction/Player/player/h;)V
    .locals 2

    .prologue
    .line 940
    iput-object p1, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LGeneralFunction/Player/player/h$5;->b:J

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x43b40000    # 360.0f

    const/high16 v7, -0x3b860000    # -1000.0f

    const v6, 0x3dcccccd    # 0.1f

    .line 946
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    .line 947
    iget-wide v0, p0, LGeneralFunction/Player/player/h$5;->b:J

    sub-long v4, v2, v0

    .line 948
    const-string v0, "vx"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    long-to-float v1, v4

    mul-float/2addr v0, v1

    div-float/2addr v0, v7

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v1, v0

    .line 949
    const-string v0, "vy"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    long-to-float v4, v4

    mul-float/2addr v0, v4

    div-float/2addr v0, v7

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    .line 950
    iput-wide v2, p0, LGeneralFunction/Player/player/h$5;->b:J

    .line 952
    iget-object v2, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->s:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 955
    iget-object v2, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    neg-float v1, v1

    mul-float/2addr v1, v6

    iget-object v3, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    iget v3, v3, LGeneralFunction/Player/player/h;->q:F

    add-float/2addr v1, v3

    rem-float/2addr v1, v8

    iput v1, v2, LGeneralFunction/Player/player/h;->q:F

    .line 956
    iget-object v1, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    neg-float v0, v0

    mul-float/2addr v0, v6

    iget-object v2, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->r:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, LGeneralFunction/Player/player/h;->b(F)V

    .line 972
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    iput-boolean v9, v0, LGeneralFunction/Player/player/h;->y:Z

    .line 973
    iget-object v0, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    iput-boolean v9, v0, LGeneralFunction/Player/player/h;->y:Z

    .line 974
    return-void

    .line 960
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 962
    iget-object v0, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    neg-float v1, v1

    mul-float/2addr v1, v6

    iget-object v2, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->q:F

    add-float/2addr v1, v2

    rem-float/2addr v1, v8

    iput v1, v0, LGeneralFunction/Player/player/h;->q:F

    goto :goto_0

    .line 967
    :cond_1
    iget-object v1, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    neg-float v0, v0

    mul-float/2addr v0, v6

    iget-object v2, p0, LGeneralFunction/Player/player/h$5;->a:LGeneralFunction/Player/player/h;

    iget v2, v2, LGeneralFunction/Player/player/h;->r:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, LGeneralFunction/Player/player/h;->b(F)V

    goto :goto_0
.end method
