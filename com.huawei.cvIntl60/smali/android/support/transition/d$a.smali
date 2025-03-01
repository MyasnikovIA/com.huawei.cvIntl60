.class Landroid/support/transition/d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/d$a;->b:Z

    .line 184
    iput-object p1, p0, Landroid/support/transition/d$a;->a:Landroid/view/View;

    .line 185
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/transition/d$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/transition/ad;->a(Landroid/view/View;F)V

    .line 199
    iget-boolean v0, p0, Landroid/support/transition/d$a;->b:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/support/transition/d$a;->a:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 202
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/transition/d$a;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/d$a;->a:Landroid/view/View;

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/d$a;->b:Z

    .line 192
    iget-object v0, p0, Landroid/support/transition/d$a;->a:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 194
    :cond_0
    return-void
.end method
