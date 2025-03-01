.class Landroid/support/transition/ai$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ai;->b(Landroid/view/ViewGroup;Landroid/support/transition/s;ILandroid/support/transition/s;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/w;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/transition/ai;


# direct methods
.method constructor <init>(Landroid/support/transition/ai;Landroid/support/transition/w;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Landroid/support/transition/ai$1;->c:Landroid/support/transition/ai;

    iput-object p2, p0, Landroid/support/transition/ai$1;->a:Landroid/support/transition/w;

    iput-object p3, p0, Landroid/support/transition/ai$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Landroid/support/transition/ai$1;->a:Landroid/support/transition/w;

    iget-object v1, p0, Landroid/support/transition/ai$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/transition/w;->b(Landroid/view/View;)V

    .line 415
    return-void
.end method
