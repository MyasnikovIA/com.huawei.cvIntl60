.class Landroid/support/transition/l$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/l;->a(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/util/ArrayMap;

.field final synthetic b:Landroid/support/transition/l;


# direct methods
.method constructor <init>(Landroid/support/transition/l;Landroid/support/v4/util/ArrayMap;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Landroid/support/transition/l$2;->b:Landroid/support/transition/l;

    iput-object p2, p0, Landroid/support/transition/l$2;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Landroid/support/transition/l$2;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v0, p0, Landroid/support/transition/l$2;->b:Landroid/support/transition/l;

    iget-object v0, v0, Landroid/support/transition/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 906
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Landroid/support/transition/l$2;->b:Landroid/support/transition/l;

    iget-object v0, v0, Landroid/support/transition/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    return-void
.end method
