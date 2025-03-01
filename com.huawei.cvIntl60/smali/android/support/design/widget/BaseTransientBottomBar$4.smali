.class Landroid/support/design/widget/BaseTransientBottomBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$a;


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
    .line 482
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->a:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 491
    packed-switch p1, :pswitch_data_0

    .line 504
    :goto_0
    return-void

    .line 495
    :pswitch_0
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->a:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Landroid/support/design/widget/BaseTransientBottomBar;->c:Landroid/support/design/widget/n$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->c(Landroid/support/design/widget/n$a;)V

    goto :goto_0

    .line 499
    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->a:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Landroid/support/design/widget/BaseTransientBottomBar;->c:Landroid/support/design/widget/n$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->d(Landroid/support/design/widget/n$a;)V

    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 485
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->a:Landroid/support/design/widget/BaseTransientBottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar;->a(I)V

    .line 487
    return-void
.end method
