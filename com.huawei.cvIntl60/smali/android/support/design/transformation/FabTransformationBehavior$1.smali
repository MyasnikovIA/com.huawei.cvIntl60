.class Landroid/support/design/transformation/FabTransformationBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/design/transformation/FabTransformationBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->d:Landroid/support/design/transformation/FabTransformationBehavior;

    iput-boolean p2, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->a:Z

    iput-object p3, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->b:Landroid/view/View;

    iput-object p4, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->a:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 166
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->a:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 156
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_0
    return-void
.end method
