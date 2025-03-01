.class Landroid/support/v7/widget/ak$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ak;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ak;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Landroid/support/v7/widget/ak$b;->a:Landroid/support/v7/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Landroid/support/v7/widget/ak$b;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ak;->a:Landroid/support/v7/widget/ak$b;

    .line 712
    iget-object v0, p0, Landroid/support/v7/widget/ak$b;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ak;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 713
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Landroid/support/v7/widget/ak$b;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ak;->post(Ljava/lang/Runnable;)Z

    .line 717
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Landroid/support/v7/widget/ak$b;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ak;->a:Landroid/support/v7/widget/ak$b;

    .line 707
    iget-object v0, p0, Landroid/support/v7/widget/ak$b;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->drawableStateChanged()V

    .line 708
    return-void
.end method
