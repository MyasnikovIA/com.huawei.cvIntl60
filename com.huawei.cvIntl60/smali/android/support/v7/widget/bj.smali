.class Landroid/support/v7/widget/bj;
.super Landroid/support/v7/widget/ax;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ax;-><init>(Landroid/content/res/Resources;)V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/widget/bj;->a:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/widget/ax;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 47
    iget-object v0, p0, Landroid/support/v7/widget/bj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 48
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Landroid/support/v7/widget/k;->a()Landroid/support/v7/widget/k;

    invoke-static {v0, p1, v1}, Landroid/support/v7/widget/k;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    .line 51
    :cond_0
    return-object v1
.end method
