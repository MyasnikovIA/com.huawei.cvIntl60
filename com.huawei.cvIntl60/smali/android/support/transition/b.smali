.class public Landroid/support/transition/b;
.super Landroid/support/transition/p;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/transition/p;-><init>()V

    .line 38
    invoke-direct {p0}, Landroid/support/transition/b;->r()V

    .line 39
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-virtual {p0, v2}, Landroid/support/transition/b;->a(I)Landroid/support/transition/p;

    .line 48
    new-instance v0, Landroid/support/transition/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/transition/d;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/transition/b;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    move-result-object v0

    new-instance v1, Landroid/support/transition/c;

    invoke-direct {v1}, Landroid/support/transition/c;-><init>()V

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    move-result-object v0

    new-instance v1, Landroid/support/transition/d;

    invoke-direct {v1, v2}, Landroid/support/transition/d;-><init>(I)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    .line 51
    return-void
.end method
