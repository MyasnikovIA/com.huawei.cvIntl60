.class Landroid/support/transition/p$1;
.super Landroid/support/transition/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/p;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/l;

.field final synthetic b:Landroid/support/transition/p;


# direct methods
.method constructor <init>(Landroid/support/transition/p;Landroid/support/transition/l;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Landroid/support/transition/p$1;->b:Landroid/support/transition/p;

    iput-object p2, p0, Landroid/support/transition/p$1;->a:Landroid/support/transition/l;

    invoke-direct {p0}, Landroid/support/transition/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/l;)V
    .locals 1
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 496
    iget-object v0, p0, Landroid/support/transition/p$1;->a:Landroid/support/transition/l;

    invoke-virtual {v0}, Landroid/support/transition/l;->e()V

    .line 497
    invoke-virtual {p1, p0}, Landroid/support/transition/l;->b(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    .line 498
    return-void
.end method
