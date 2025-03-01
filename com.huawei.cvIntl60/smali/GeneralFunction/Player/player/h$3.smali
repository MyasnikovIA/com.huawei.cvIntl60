.class LGeneralFunction/Player/player/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/player/h;->a(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/h;


# direct methods
.method constructor <init>(LGeneralFunction/Player/player/h;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, LGeneralFunction/Player/player/h$3;->a:LGeneralFunction/Player/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 904
    iget-object v1, p0, LGeneralFunction/Player/player/h$3;->a:LGeneralFunction/Player/player/h;

    const-string v0, "xAxis"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, LGeneralFunction/Player/player/h;->q:F

    .line 905
    iget-object v1, p0, LGeneralFunction/Player/player/h$3;->a:LGeneralFunction/Player/player/h;

    const-string v0, "yAxis"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, LGeneralFunction/Player/player/h;->b(F)V

    .line 906
    iget-object v1, p0, LGeneralFunction/Player/player/h$3;->a:LGeneralFunction/Player/player/h;

    const-string v0, "fovY"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, LGeneralFunction/Player/player/h;->e:F

    .line 907
    iget-object v0, p0, LGeneralFunction/Player/player/h$3;->a:LGeneralFunction/Player/player/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, LGeneralFunction/Player/player/h;->y:Z

    .line 908
    return-void
.end method
