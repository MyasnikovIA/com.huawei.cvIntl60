.class Landroid/support/v7/widget/RecyclerView$r;
.super Landroid/support/v7/widget/RecyclerView$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "r"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5276
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$c;-><init>()V

    .line 5277
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5281
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5282
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    .line 5284
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->c(Z)V

    .line 5285
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5286
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 5288
    :cond_0
    return-void
.end method
