.class final Landroid/support/design/c/a$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/c/a;->a(Landroid/support/design/c/d;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/c/d;


# direct methods
.method constructor <init>(Landroid/support/design/c/d;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Landroid/support/design/c/a$1;->a:Landroid/support/design/c/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/design/c/a$1;->a:Landroid/support/design/c/d;

    invoke-interface {v0}, Landroid/support/design/c/d;->b()V

    .line 127
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/design/c/a$1;->a:Landroid/support/design/c/d;

    invoke-interface {v0}, Landroid/support/design/c/d;->a()V

    .line 122
    return-void
.end method
