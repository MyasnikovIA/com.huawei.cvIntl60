.class Landroid/support/v7/widget/ActivityChooserView$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActivityChooserView;

.field private b:Landroid/support/v7/widget/c;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z


# virtual methods
.method public a()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 791
    iget v5, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    .line 792
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    .line 797
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 798
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 799
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->getCount()I

    move-result v8

    move v0, v1

    move-object v2, v3

    move v4, v1

    .line 801
    :goto_0
    if-ge v0, v8, :cond_0

    .line 802
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/ActivityChooserView$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 803
    invoke-virtual {v1, v6, v7}, Landroid/view/View;->measure(II)V

    .line 804
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 801
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    goto :goto_0

    .line 807
    :cond_0
    iput v5, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    .line 809
    return v4
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    if-eq v0, p1, :cond_0

    .line 814
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    .line 815
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    .line 817
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/c;)V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->d()Landroid/support/v7/widget/c;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->e:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/c;->unregisterObserver(Ljava/lang/Object;)V

    .line 693
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/c;

    .line 694
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->e:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/c;->registerObserver(Ljava/lang/Object;)V

    .line 697
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    .line 698
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->f:Z

    if-eq v0, p1, :cond_0

    .line 825
    iput-boolean p1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->f:Z

    .line 826
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    .line 828
    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->e:Z

    if-eq v0, p2, :cond_1

    .line 846
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    .line 847
    iput-boolean p2, p0, Landroid/support/v7/widget/ActivityChooserView$a;->e:Z

    .line 848
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    .line 850
    :cond_1
    return-void
.end method

.method public b()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->a()I

    move-result v0

    return v0
.end method

.method public d()Landroid/support/v7/widget/c;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/c;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 716
    .line 717
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->a()I

    move-result v0

    .line 718
    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/c;

    invoke-virtual {v1}, Landroid/support/v7/widget/c;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 719
    add-int/lit8 v0, v0, -0x1

    .line 721
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 722
    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->f:Z

    if-eqz v1, :cond_1

    .line 723
    add-int/lit8 v0, v0, 0x1

    .line 725
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$a;->getItemViewType(I)I

    move-result v0

    .line 731
    packed-switch v0, :pswitch_data_0

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 733
    :pswitch_0
    const/4 v0, 0x0

    .line 738
    :goto_0
    return-object v0

    .line 735
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    add-int/lit8 p1, p1, 0x1

    .line 738
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->b:Landroid/support/v7/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/c;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    .line 731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 746
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 703
    const/4 v0, 0x1

    .line 705
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 751
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$a;->getItemViewType(I)I

    move-result v0

    .line 752
    packed-switch v0, :pswitch_data_0

    .line 784
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 754
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 755
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 757
    invoke-virtual {p2, v5}, Landroid/view/View;->setId(I)V

    .line 758
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 759
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    :cond_1
    :goto_0
    return-object p2

    .line 764
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v7/appcompat/R$id;->list_item:I

    if-eq v0, v1, :cond_3

    .line 765
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 768
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 770
    sget v0, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 771
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 772
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 775
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->d:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$a;->e:Z

    if-eqz v0, :cond_4

    .line 778
    invoke-virtual {p2, v5}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 780
    :cond_4
    invoke-virtual {p2, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x3

    return v0
.end method
