.class Landroid/support/v7/widget/al$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/al;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/al;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Landroid/support/v7/widget/al$b;->a:Landroid/support/v7/widget/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 591
    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 592
    iget-object v1, p0, Landroid/support/v7/widget/al$b;->a:Landroid/support/v7/widget/al;

    iget-object v1, v1, Landroid/support/v7/widget/al;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 593
    iget-object v1, p0, Landroid/support/v7/widget/al$b;->a:Landroid/support/v7/widget/al;

    iget-object v1, v1, Landroid/support/v7/widget/al;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/al$b;->a:Landroid/support/v7/widget/al;

    invoke-virtual {v0}, Landroid/support/v7/widget/al;->a()V

    .line 595
    return-void
.end method
