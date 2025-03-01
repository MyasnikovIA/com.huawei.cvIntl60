.class LGeneralFunction/Player/player/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/player/h;->d()V
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
    .line 866
    iput-object p1, p0, LGeneralFunction/Player/player/h$1;->a:LGeneralFunction/Player/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 869
    iget-object v1, p0, LGeneralFunction/Player/player/h$1;->a:LGeneralFunction/Player/player/h;

    const-string v0, "focalLength"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, LGeneralFunction/Player/player/h;->l:F

    .line 870
    iget-object v0, p0, LGeneralFunction/Player/player/h$1;->a:LGeneralFunction/Player/player/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, LGeneralFunction/Player/player/h;->y:Z

    .line 871
    return-void
.end method
