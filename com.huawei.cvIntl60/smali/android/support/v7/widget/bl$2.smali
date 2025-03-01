.class Landroid/support/v7/widget/bl$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/bl;->a(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/bl;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bl;I)V
    .locals 1

    .prologue
    .line 569
    iput-object p1, p0, Landroid/support/v7/widget/bl$2;->b:Landroid/support/v7/widget/bl;

    iput p2, p0, Landroid/support/v7/widget/bl$2;->a:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bl$2;->c:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bl$2;->c:Z

    .line 587
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 579
    iget-boolean v0, p0, Landroid/support/v7/widget/bl$2;->c:Z

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/support/v7/widget/bl$2;->b:Landroid/support/v7/widget/bl;

    iget-object v0, v0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/bl$2;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 582
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/bl$2;->b:Landroid/support/v7/widget/bl;

    iget-object v0, v0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 575
    return-void
.end method
