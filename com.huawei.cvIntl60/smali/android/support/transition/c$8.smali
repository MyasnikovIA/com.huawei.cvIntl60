.class Landroid/support/transition/c$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/c;->a(Landroid/view/ViewGroup;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/c$a;

.field final synthetic b:Landroid/support/transition/c;

.field private mViewBounds:Landroid/support/transition/c$a;


# direct methods
.method constructor <init>(Landroid/support/transition/c;Landroid/support/transition/c$a;)V
    .locals 1

    .prologue
    .line 323
    iput-object p1, p0, Landroid/support/transition/c$8;->b:Landroid/support/transition/c;

    iput-object p2, p0, Landroid/support/transition/c$8;->a:Landroid/support/transition/c$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 326
    iget-object v0, p0, Landroid/support/transition/c$8;->a:Landroid/support/transition/c$a;

    iput-object v0, p0, Landroid/support/transition/c$8;->mViewBounds:Landroid/support/transition/c$a;

    return-void
.end method
