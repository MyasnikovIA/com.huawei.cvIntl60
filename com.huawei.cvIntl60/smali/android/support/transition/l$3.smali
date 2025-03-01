.class Landroid/support/transition/l$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/l;->a(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/l;


# direct methods
.method constructor <init>(Landroid/support/transition/l;)V
    .locals 0

    .prologue
    .line 1907
    iput-object p1, p0, Landroid/support/transition/l$3;->a:Landroid/support/transition/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Landroid/support/transition/l$3;->a:Landroid/support/transition/l;

    invoke-virtual {v0}, Landroid/support/transition/l;->k()V

    .line 1911
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1912
    return-void
.end method
