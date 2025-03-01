.class Landroid/support/transition/d$1;
.super Landroid/support/transition/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/support/transition/d;


# direct methods
.method constructor <init>(Landroid/support/transition/d;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Landroid/support/transition/d$1;->b:Landroid/support/transition/d;

    iput-object p2, p0, Landroid/support/transition/d$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/transition/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/l;)V
    .locals 2
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/transition/d$1;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/transition/ad;->a(Landroid/view/View;F)V

    .line 136
    iget-object v0, p0, Landroid/support/transition/d$1;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/transition/ad;->e(Landroid/view/View;)V

    .line 137
    invoke-virtual {p1, p0}, Landroid/support/transition/l;->b(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    .line 138
    return-void
.end method
