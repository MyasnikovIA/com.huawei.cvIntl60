.class final Landroid/support/v7/app/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/g;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/support/v7/app/g;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 2

    .prologue
    .line 568
    iget-boolean v0, p0, Landroid/support/v7/app/g$a;->b:Z

    if-eqz v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 572
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/g$a;->b:Z

    .line 573
    iget-object v0, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    iget-object v0, v0, Landroid/support/v7/app/g;->a:Landroid/support/v7/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/widget/ah;->n()V

    .line 574
    iget-object v0, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    iget-object v0, v0, Landroid/support/v7/app/g;->b:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    iget-object v0, v0, Landroid/support/v7/app/g;->b:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 577
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/g$a;->b:Z

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/h;)Z
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    iget-object v0, v0, Landroid/support/v7/app/g;->b:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    iget-object v0, v0, Landroid/support/v7/app/g;->b:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 561
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
