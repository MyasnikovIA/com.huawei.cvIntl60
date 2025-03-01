.class Landroid/support/design/bottomappbar/BottomAppBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/bottomappbar/BottomAppBar;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar$2;->a:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$2;->a:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-static {v0}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/bottomappbar/a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/design/bottomappbar/a;->a(F)V

    .line 329
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$2;->a:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-static {v0}, Landroid/support/design/bottomappbar/BottomAppBar;->b(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/g/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/g/c;->invalidateSelf()V

    .line 330
    return-void
.end method
