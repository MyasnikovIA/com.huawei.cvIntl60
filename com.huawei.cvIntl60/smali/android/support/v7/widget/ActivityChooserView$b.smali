.class Landroid/support/v7/widget/ActivityChooserView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method private a()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->f:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->f:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 657
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->c:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    .line 614
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->b()Z

    .line 615
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 616
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView$a;->d()Landroid/support/v7/widget/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/c;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 617
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView$a;->d()Landroid/support/v7/widget/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/c;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_0

    .line 619
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 620
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_2

    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/ActivityChooserView;->g:Z

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget v1, v1, Landroid/support/v7/widget/ActivityChooserView;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->a(I)V

    goto :goto_0

    .line 626
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 647
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView$b;->a()V

    .line 648
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->d:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->d:Landroid/support/v4/view/ActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 651
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserView$a;

    .line 582
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/ActivityChooserView$a;->getItemViewType(I)I

    move-result v0

    .line 583
    packed-switch v0, :pswitch_data_0

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 585
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->a(I)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 588
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->b()Z

    .line 589
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActivityChooserView;->g:Z

    if-eqz v0, :cond_1

    .line 591
    if-lez p3, :cond_0

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->d()Landroid/support/v7/widget/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/c;->c(I)V

    goto :goto_0

    .line 597
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->d()Landroid/support/v7/widget/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/c;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_0

    .line 600
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 601
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 597
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 633
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->c:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    .line 634
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 635
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iput-boolean v2, v0, Landroid/support/v7/widget/ActivityChooserView;->g:Z

    .line 636
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget v1, v1, Landroid/support/v7/widget/ActivityChooserView;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->a(I)V

    .line 641
    :cond_0
    return v2

    .line 639
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
