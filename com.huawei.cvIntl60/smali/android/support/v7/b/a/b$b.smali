.class abstract Landroid/support/v7/b/a/b$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field A:Z

.field B:I

.field C:I

.field D:I

.field E:Z

.field F:Landroid/graphics/ColorFilter;

.field G:Z

.field H:Landroid/content/res/ColorStateList;

.field I:Landroid/graphics/PorterDuff$Mode;

.field J:Z

.field K:Z

.field final c:Landroid/support/v7/b/a/b;

.field d:Landroid/content/res/Resources;

.field e:I

.field f:I

.field g:I

.field h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field i:[Landroid/graphics/drawable/Drawable;

.field j:I

.field k:Z

.field l:Z

.field m:Landroid/graphics/Rect;

.field n:Z

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:I

.field t:Z

.field u:I

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method constructor <init>(Landroid/support/v7/b/a/b$b;Landroid/support/v7/b/a/b;Landroid/content/res/Resources;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 687
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 652
    const/16 v0, 0xa0

    iput v0, p0, Landroid/support/v7/b/a/b$b;->e:I

    .line 658
    iput-boolean v1, p0, Landroid/support/v7/b/a/b$b;->k:Z

    .line 661
    iput-boolean v1, p0, Landroid/support/v7/b/a/b$b;->n:Z

    .line 673
    iput-boolean v3, p0, Landroid/support/v7/b/a/b$b;->z:Z

    .line 676
    iput v1, p0, Landroid/support/v7/b/a/b$b;->C:I

    .line 677
    iput v1, p0, Landroid/support/v7/b/a/b$b;->D:I

    .line 688
    iput-object p2, p0, Landroid/support/v7/b/a/b$b;->c:Landroid/support/v7/b/a/b;

    .line 689
    if-eqz p3, :cond_5

    move-object v0, p3

    :goto_0
    iput-object v0, p0, Landroid/support/v7/b/a/b$b;->d:Landroid/content/res/Resources;

    .line 690
    if-eqz p1, :cond_7

    iget v0, p1, Landroid/support/v7/b/a/b$b;->e:I

    :goto_1
    invoke-static {p3, v0}, Landroid/support/v7/b/a/b;->a(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/b/a/b$b;->e:I

    .line 691
    if-eqz p1, :cond_a

    .line 692
    iget v0, p1, Landroid/support/v7/b/a/b$b;->f:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->f:I

    .line 693
    iget v0, p1, Landroid/support/v7/b/a/b$b;->g:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->g:I

    .line 694
    iput-boolean v3, p0, Landroid/support/v7/b/a/b$b;->x:Z

    .line 695
    iput-boolean v3, p0, Landroid/support/v7/b/a/b$b;->y:Z

    .line 696
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->k:Z

    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->k:Z

    .line 697
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->n:Z

    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->n:Z

    .line 698
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->z:Z

    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->z:Z

    .line 699
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->A:Z

    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->A:Z

    .line 700
    iget v0, p1, Landroid/support/v7/b/a/b$b;->B:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->B:I

    .line 701
    iget v0, p1, Landroid/support/v7/b/a/b$b;->C:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->C:I

    .line 702
    iget v0, p1, Landroid/support/v7/b/a/b$b;->D:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->D:I

    .line 703
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->E:Z

    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->E:Z

    .line 704
    iget-object v0, p1, Landroid/support/v7/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/support/v7/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    .line 705
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->G:Z

    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->G:Z

    .line 706
    iget-object v0, p1, Landroid/support/v7/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    .line 707
    iget-object v0, p1, Landroid/support/v7/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/v7/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    .line 708
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->J:Z

    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->J:Z

    .line 709
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->K:Z

    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->K:Z

    .line 710
    iget v0, p1, Landroid/support/v7/b/a/b$b;->e:I

    iget v2, p0, Landroid/support/v7/b/a/b$b;->e:I

    if-ne v0, v2, :cond_1

    .line 711
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->l:Z

    if-eqz v0, :cond_0

    .line 712
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/support/v7/b/a/b$b;->m:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/support/v7/b/a/b$b;->m:Landroid/graphics/Rect;

    .line 713
    iput-boolean v3, p0, Landroid/support/v7/b/a/b$b;->l:Z

    .line 715
    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->o:Z

    if-eqz v0, :cond_1

    .line 716
    iget v0, p1, Landroid/support/v7/b/a/b$b;->p:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->p:I

    .line 717
    iget v0, p1, Landroid/support/v7/b/a/b$b;->q:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->q:I

    .line 718
    iget v0, p1, Landroid/support/v7/b/a/b$b;->r:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->r:I

    .line 719
    iget v0, p1, Landroid/support/v7/b/a/b$b;->s:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->s:I

    .line 720
    iput-boolean v3, p0, Landroid/support/v7/b/a/b$b;->o:Z

    .line 723
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->t:Z

    if-eqz v0, :cond_2

    .line 724
    iget v0, p1, Landroid/support/v7/b/a/b$b;->u:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->u:I

    .line 725
    iput-boolean v3, p0, Landroid/support/v7/b/a/b$b;->t:Z

    .line 727
    :cond_2
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->v:Z

    if-eqz v0, :cond_3

    .line 728
    iget-boolean v0, p1, Landroid/support/v7/b/a/b$b;->w:Z

    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->w:Z

    .line 729
    iput-boolean v3, p0, Landroid/support/v7/b/a/b$b;->v:Z

    .line 733
    :cond_3
    iget-object v0, p1, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 734
    array-length v2, v0

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 735
    iget v2, p1, Landroid/support/v7/b/a/b$b;->j:I

    iput v2, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 736
    iget-object v2, p1, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    .line 737
    if-eqz v2, :cond_8

    .line 738
    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    .line 745
    :goto_2
    iget v2, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 746
    :goto_3
    if-ge v1, v2, :cond_b

    .line 747
    aget-object v3, v0, v1

    if-eqz v3, :cond_4

    .line 748
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 749
    if-eqz v3, :cond_9

    .line 750
    iget-object v4, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 746
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 689
    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/support/v7/b/a/b$b;->d:Landroid/content/res/Resources;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 690
    goto/16 :goto_1

    .line 740
    :cond_8
    new-instance v2, Landroid/util/SparseArray;

    iget v3, p0, Landroid/support/v7/b/a/b$b;->j:I

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    goto :goto_2

    .line 752
    :cond_9
    iget-object v3, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v0, v1

    aput-object v4, v3, v1

    goto :goto_4

    .line 757
    :cond_a
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 758
    iput v1, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 760
    :cond_b
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 817
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 818
    iget v0, p0, Landroid/support/v7/b/a/b$b;->B:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 820
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 821
    iget-object v1, p0, Landroid/support/v7/b/a/b$b;->c:Landroid/support/v7/b/a/b;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 822
    return-object v0
.end method

.method private o()V
    .locals 6

    .prologue
    .line 805
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 807
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 808
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 809
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 810
    iget-object v4, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/support/v7/b/a/b$b;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/b/a/b$b;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v4, v3

    .line 807
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 812
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    .line 814
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 774
    iget v0, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 775
    iget-object v1, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 776
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/b/a/b$b;->e(II)V

    .line 778
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 779
    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 780
    iget-object v1, p0, Landroid/support/v7/b/a/b$b;->c:Landroid/support/v7/b/a/b;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 781
    iget-object v1, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v1, v0

    .line 782
    iget v1, p0, Landroid/support/v7/b/a/b$b;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 783
    iget v1, p0, Landroid/support/v7/b/a/b$b;->g:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/b/a/b$b;->g:I

    .line 784
    invoke-virtual {p0}, Landroid/support/v7/b/a/b$b;->b()V

    .line 785
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/b/a/b$b;->m:Landroid/graphics/Rect;

    .line 786
    iput-boolean v3, p0, Landroid/support/v7/b/a/b$b;->l:Z

    .line 787
    iput-boolean v3, p0, Landroid/support/v7/b/a/b$b;->o:Z

    .line 788
    iput-boolean v3, p0, Landroid/support/v7/b/a/b$b;->x:Z

    .line 789
    return v0
.end method

.method a()V
    .locals 4

    .prologue
    .line 937
    iget v1, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 938
    iget-object v2, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 939
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 940
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 941
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 939
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 944
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->A:Z

    .line 945
    return-void
.end method

.method final a(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 898
    if-eqz p1, :cond_2

    .line 899
    invoke-direct {p0}, Landroid/support/v7/b/a/b$b;->o()V

    .line 900
    iget v1, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 901
    iget-object v2, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 902
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 903
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 904
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 906
    iget v3, p0, Landroid/support/v7/b/a/b$b;->g:I

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/b/a/b$b;->g:I

    .line 902
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/b/a/b$b;->a(Landroid/content/res/Resources;)V

    .line 911
    :cond_2
    return-void
.end method

.method final a(Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 882
    if-eqz p1, :cond_0

    .line 883
    iput-object p1, p0, Landroid/support/v7/b/a/b$b;->d:Landroid/content/res/Resources;

    .line 886
    iget v0, p0, Landroid/support/v7/b/a/b$b;->e:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/b;->a(Landroid/content/res/Resources;I)I

    move-result v0

    .line 887
    iget v1, p0, Landroid/support/v7/b/a/b$b;->e:I

    .line 888
    iput v0, p0, Landroid/support/v7/b/a/b$b;->e:I

    .line 889
    if-eq v1, v0, :cond_0

    .line 890
    iput-boolean v2, p0, Landroid/support/v7/b/a/b$b;->o:Z

    .line 891
    iput-boolean v2, p0, Landroid/support/v7/b/a/b$b;->l:Z

    .line 894
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 964
    iput-boolean p1, p0, Landroid/support/v7/b/a/b$b;->k:Z

    .line 965
    return-void
.end method

.method public final b(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 833
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    .line 834
    if-eqz v0, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-object v0

    .line 838
    :cond_1
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 840
    if-ltz v2, :cond_2

    .line 841
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 842
    iget-object v3, p0, Landroid/support/v7/b/a/b$b;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/b/a/b$b;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 843
    iget-object v3, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, p1

    .line 844
    iget-object v3, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 845
    iget-object v2, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 846
    iput-object v1, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 851
    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 796
    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->t:Z

    .line 797
    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->v:Z

    .line 798
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 996
    iput-boolean p1, p0, Landroid/support/v7/b/a/b$b;->n:Z

    .line 997
    return-void
.end method

.method final c()I
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 1067
    iput p1, p0, Landroid/support/v7/b/a/b$b;->C:I

    .line 1068
    return-void
.end method

.method public canApplyTheme()Z
    .locals 6
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 916
    iget v4, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 917
    iget-object v5, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v3, v2

    .line 918
    :goto_0
    if-ge v3, v4, :cond_2

    .line 919
    aget-object v0, v5, v3

    .line 920
    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 931
    :goto_1
    return v0

    .line 925
    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 926
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 927
    goto :goto_1

    .line 918
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 931
    goto :goto_1
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Landroid/support/v7/b/a/b$b;->j:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 1075
    iput p1, p0, Landroid/support/v7/b/a/b$b;->D:I

    .line 1076
    return-void
.end method

.method final d(II)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 855
    .line 858
    iget v4, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 859
    iget-object v5, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v3, v2

    move v1, v2

    .line 860
    :goto_0
    if-ge v3, v4, :cond_0

    .line 861
    aget-object v0, v5, v3

    if-eqz v0, :cond_1

    .line 863
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v0, v6, :cond_2

    .line 864
    aget-object v0, v5, v3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v0

    .line 866
    :goto_1
    if-ne v3, p2, :cond_1

    .line 860
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    .line 871
    :cond_0
    iput p1, p0, Landroid/support/v7/b/a/b$b;->B:I

    .line 872
    return v1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 971
    iget-boolean v1, p0, Landroid/support/v7/b/a/b$b;->k:Z

    if-eqz v1, :cond_0

    .line 992
    :goto_0
    return-object v0

    .line 974
    :cond_0
    iget-object v1, p0, Landroid/support/v7/b/a/b$b;->m:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/b/a/b$b;->l:Z

    if-eqz v1, :cond_2

    .line 975
    :cond_1
    iget-object v0, p0, Landroid/support/v7/b/a/b$b;->m:Landroid/graphics/Rect;

    goto :goto_0

    .line 977
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/b/a/b$b;->o()V

    .line 979
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 980
    iget v4, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 981
    iget-object v5, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v1, v2

    .line 982
    :goto_1
    if-ge v1, v4, :cond_8

    .line 983
    aget-object v6, v5, v1

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 984
    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 985
    :cond_3
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_4

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 986
    :cond_4
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 987
    :cond_5
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 988
    :cond_6
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_7

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 982
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 991
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/b/a/b$b;->l:Z

    .line 992
    iput-object v0, p0, Landroid/support/v7/b/a/b$b;->m:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public e(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1127
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    .line 1128
    iget-object v1, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1129
    iput-object v0, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 1130
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 1003
    iget-boolean v0, p0, Landroid/support/v7/b/a/b$b;->n:Z

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 1010
    iget-boolean v0, p0, Landroid/support/v7/b/a/b$b;->o:Z

    if-nez v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Landroid/support/v7/b/a/b$b;->k()V

    .line 1013
    :cond_0
    iget v0, p0, Landroid/support/v7/b/a/b$b;->p:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 764
    iget v0, p0, Landroid/support/v7/b/a/b$b;->f:I

    iget v1, p0, Landroid/support/v7/b/a/b$b;->g:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 1020
    iget-boolean v0, p0, Landroid/support/v7/b/a/b$b;->o:Z

    if-nez v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Landroid/support/v7/b/a/b$b;->k()V

    .line 1023
    :cond_0
    iget v0, p0, Landroid/support/v7/b/a/b$b;->q:I

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Landroid/support/v7/b/a/b$b;->o:Z

    if-nez v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Landroid/support/v7/b/a/b$b;->k()V

    .line 1033
    :cond_0
    iget v0, p0, Landroid/support/v7/b/a/b$b;->r:I

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 1040
    iget-boolean v0, p0, Landroid/support/v7/b/a/b$b;->o:Z

    if-nez v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Landroid/support/v7/b/a/b$b;->k()V

    .line 1043
    :cond_0
    iget v0, p0, Landroid/support/v7/b/a/b$b;->s:I

    return v0
.end method

.method protected k()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1047
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/b/a/b$b;->o:Z

    .line 1048
    invoke-direct {p0}, Landroid/support/v7/b/a/b$b;->o()V

    .line 1049
    iget v1, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 1050
    iget-object v2, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 1051
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/b/a/b$b;->q:I

    iput v3, p0, Landroid/support/v7/b/a/b$b;->p:I

    .line 1052
    iput v0, p0, Landroid/support/v7/b/a/b$b;->s:I

    iput v0, p0, Landroid/support/v7/b/a/b$b;->r:I

    .line 1053
    :goto_0
    if-ge v0, v1, :cond_4

    .line 1054
    aget-object v3, v2, v0

    .line 1055
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1056
    iget v5, p0, Landroid/support/v7/b/a/b$b;->p:I

    if-le v4, v5, :cond_0

    iput v4, p0, Landroid/support/v7/b/a/b$b;->p:I

    .line 1057
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1058
    iget v5, p0, Landroid/support/v7/b/a/b$b;->q:I

    if-le v4, v5, :cond_1

    iput v4, p0, Landroid/support/v7/b/a/b$b;->q:I

    .line 1059
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 1060
    iget v5, p0, Landroid/support/v7/b/a/b$b;->r:I

    if-le v4, v5, :cond_2

    iput v4, p0, Landroid/support/v7/b/a/b$b;->r:I

    .line 1061
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 1062
    iget v4, p0, Landroid/support/v7/b/a/b$b;->s:I

    if-le v3, v4, :cond_3

    iput v3, p0, Landroid/support/v7/b/a/b$b;->s:I

    .line 1053
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    :cond_4
    return-void
.end method

.method public final l()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1086
    iget-boolean v0, p0, Landroid/support/v7/b/a/b$b;->t:Z

    if-eqz v0, :cond_0

    .line 1087
    iget v0, p0, Landroid/support/v7/b/a/b$b;->u:I

    .line 1098
    :goto_0
    return v0

    .line 1089
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/b/a/b$b;->o()V

    .line 1090
    iget v3, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 1091
    iget-object v4, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 1092
    if-lez v3, :cond_1

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :goto_1
    move v1, v2

    .line 1093
    :goto_2
    if-ge v1, v3, :cond_2

    .line 1094
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v0, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    .line 1093
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1092
    :cond_1
    const/4 v0, -0x2

    goto :goto_1

    .line 1096
    :cond_2
    iput v0, p0, Landroid/support/v7/b/a/b$b;->u:I

    .line 1097
    iput-boolean v2, p0, Landroid/support/v7/b/a/b$b;->t:Z

    goto :goto_0
.end method

.method public final m()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1105
    iget-boolean v2, p0, Landroid/support/v7/b/a/b$b;->v:Z

    if-eqz v2, :cond_0

    .line 1106
    iget-boolean v0, p0, Landroid/support/v7/b/a/b$b;->w:Z

    .line 1120
    :goto_0
    return v0

    .line 1108
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/b/a/b$b;->o()V

    .line 1109
    iget v3, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 1110
    iget-object v4, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v2, v0

    .line 1112
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1113
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    .line 1118
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->w:Z

    .line 1119
    iput-boolean v1, p0, Landroid/support/v7/b/a/b$b;->v:Z

    goto :goto_0

    .line 1112
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized n()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1136
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/support/v7/b/a/b$b;->x:Z

    if-eqz v2, :cond_0

    .line 1137
    iget-boolean v0, p0, Landroid/support/v7/b/a/b$b;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    :goto_0
    monitor-exit p0

    return v0

    .line 1139
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/support/v7/b/a/b$b;->o()V

    .line 1140
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/b/a/b$b;->x:Z

    .line 1141
    iget v3, p0, Landroid/support/v7/b/a/b$b;->j:I

    .line 1142
    iget-object v4, p0, Landroid/support/v7/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v2, v0

    .line 1143
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1144
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1145
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/b/a/b$b;->y:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1143
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1149
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/support/v7/b/a/b$b;->y:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 1150
    goto :goto_0
.end method
