.class Landroid/support/design/widget/BaseTransientBottomBar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/BaseTransientBottomBar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$5;->a:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 517
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$5;->a:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->a:Landroid/os/Handler;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$5$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$5$1;-><init>(Landroid/support/design/widget/BaseTransientBottomBar$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    :cond_0
    return-void
.end method
