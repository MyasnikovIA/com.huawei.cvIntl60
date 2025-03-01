.class Landroid/support/design/internal/e$b;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/design/internal/e$j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/e;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/e$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/view/menu/j;

.field private d:Z


# direct methods
.method private a(II)V
    .locals 2

    .prologue
    .line 551
    :goto_0
    if-ge p1, p2, :cond_0

    .line 552
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/e$f;

    .line 553
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/design/internal/e$f;->a:Z

    .line 551
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 555
    :cond_0
    return-void
.end method

.method private g()V
    .locals 14

    .prologue
    .line 482
    iget-boolean v0, p0, Landroid/support/design/internal/e$b;->d:Z

    if-eqz v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/e$b;->d:Z

    .line 486
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 487
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/design/internal/e$c;

    invoke-direct {v1}, Landroid/support/design/internal/e$c;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const/4 v5, -0x1

    .line 490
    const/4 v4, 0x0

    .line 491
    const/4 v3, 0x0

    .line 492
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v1, v1, Landroid/support/design/internal/e;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v0

    :goto_1
    if-ge v7, v8, :cond_e

    .line 493
    iget-object v0, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v0, v0, Landroid/support/design/internal/e;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    .line 494
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    invoke-virtual {p0, v0}, Landroid/support/design/internal/e$b;->a(Landroid/support/v7/view/menu/j;)V

    .line 497
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/j;->a(Z)V

    .line 500
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 501
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 502
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 503
    if-eqz v7, :cond_3

    .line 504
    iget-object v1, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/e$e;

    iget-object v6, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget v6, v6, Landroid/support/design/internal/e;->l:I

    const/4 v10, 0x0

    invoke-direct {v2, v6, v10}, Landroid/support/design/internal/e$e;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_3
    iget-object v1, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/e$f;

    invoke-direct {v2, v0}, Landroid/support/design/internal/e$f;-><init>(Landroid/support/v7/view/menu/j;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    const/4 v2, 0x0

    .line 508
    iget-object v1, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 509
    const/4 v1, 0x0

    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    move v6, v1

    :goto_2
    if-ge v6, v11, :cond_8

    .line 510
    invoke-interface {v9, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/j;

    .line 511
    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 512
    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 513
    const/4 v2, 0x1

    .line 515
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->isCheckable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 516
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/support/v7/view/menu/j;->a(Z)V

    .line 518
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 519
    invoke-virtual {p0, v0}, Landroid/support/design/internal/e$b;->a(Landroid/support/v7/view/menu/j;)V

    .line 521
    :cond_6
    iget-object v12, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    new-instance v13, Landroid/support/design/internal/e$f;

    invoke-direct {v13, v1}, Landroid/support/design/internal/e$f;-><init>(Landroid/support/v7/view/menu/j;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 524
    :cond_8
    if-eqz v2, :cond_9

    .line 525
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v10, v0}, Landroid/support/design/internal/e$b;->a(II)V

    :cond_9
    move v0, v5

    .line 492
    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v5, v0

    goto/16 :goto_1

    .line 529
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getGroupId()I

    move-result v6

    .line 530
    if-eq v6, v5, :cond_d

    .line 531
    iget-object v1, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 532
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    .line 533
    :goto_4
    if-eqz v7, :cond_b

    .line 534
    add-int/lit8 v2, v2, 0x1

    .line 535
    iget-object v3, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/design/internal/e$e;

    iget-object v5, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget v5, v5, Landroid/support/design/internal/e;->l:I

    iget-object v9, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget v9, v9, Landroid/support/design/internal/e;->l:I

    invoke-direct {v4, v5, v9}, Landroid/support/design/internal/e$e;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_b
    :goto_5
    new-instance v3, Landroid/support/design/internal/e$f;

    invoke-direct {v3, v0}, Landroid/support/design/internal/e$f;-><init>(Landroid/support/v7/view/menu/j;)V

    .line 542
    iput-boolean v1, v3, Landroid/support/design/internal/e$f;->a:Z

    .line 543
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v4, v2

    move v0, v6

    .line 544
    goto :goto_3

    .line 532
    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    .line 537
    :cond_d
    if-nez v3, :cond_f

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 538
    const/4 v1, 0x1

    .line 539
    iget-object v2, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v4, v2}, Landroid/support/design/internal/e$b;->a(II)V

    move v2, v4

    goto :goto_5

    .line 547
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/e$b;->d:Z

    goto/16 :goto_0

    :cond_f
    move v1, v3

    move v2, v4

    goto :goto_5
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 381
    int-to-long v0, p1

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/design/internal/e$j;
    .locals 3

    .prologue
    .line 409
    packed-switch p2, :pswitch_data_0

    .line 419
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 411
    :pswitch_0
    new-instance v0, Landroid/support/design/internal/e$g;

    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v1, v1, Landroid/support/design/internal/e;->d:Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v2, v2, Landroid/support/design/internal/e;->m:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, p1, v2}, Landroid/support/design/internal/e$g;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 413
    :pswitch_1
    new-instance v0, Landroid/support/design/internal/e$i;

    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v1, v1, Landroid/support/design/internal/e;->d:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/e$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 415
    :pswitch_2
    new-instance v0, Landroid/support/design/internal/e$h;

    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v1, v1, Landroid/support/design/internal/e;->d:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/e$h;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 417
    :pswitch_3
    new-instance v0, Landroid/support/design/internal/e$a;

    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v1, v1, Landroid/support/design/internal/e;->a:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/support/design/internal/e$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 596
    const-string v0, "android:menu:checked"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 597
    if-eqz v3, :cond_1

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/e$b;->d:Z

    .line 599
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    .line 600
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/e$d;

    .line 601
    instance-of v5, v0, Landroid/support/design/internal/e$f;

    if-eqz v5, :cond_3

    .line 602
    check-cast v0, Landroid/support/design/internal/e$f;

    invoke-virtual {v0}, Landroid/support/design/internal/e$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 604
    invoke-virtual {p0, v0}, Landroid/support/design/internal/e$b;->a(Landroid/support/v7/view/menu/j;)V

    .line 609
    :cond_0
    iput-boolean v1, p0, Landroid/support/design/internal/e$b;->d:Z

    .line 610
    invoke-direct {p0}, Landroid/support/design/internal/e$b;->g()V

    .line 613
    :cond_1
    const-string v0, "android:menu:action_views"

    .line 614
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 615
    if-eqz v2, :cond_5

    .line 616
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_5

    .line 617
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/e$d;

    .line 618
    instance-of v4, v0, Landroid/support/design/internal/e$f;

    if-nez v4, :cond_4

    .line 616
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 599
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 621
    :cond_4
    check-cast v0, Landroid/support/design/internal/e$f;

    invoke-virtual {v0}, Landroid/support/design/internal/e$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_2

    .line 625
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 626
    if-eqz v4, :cond_2

    .line 629
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/ParcelableSparseArray;

    .line 630
    if-eqz v0, :cond_2

    .line 633
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_2

    .line 636
    :cond_5
    return-void
.end method

.method public a(Landroid/support/design/internal/e$j;)V
    .locals 1

    .prologue
    .line 467
    instance-of v0, p1, Landroid/support/design/internal/e$g;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p1, Landroid/support/design/internal/e$j;->a:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->b()V

    .line 470
    :cond_0
    return-void
.end method

.method public a(Landroid/support/design/internal/e$j;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    invoke-virtual {p0, p2}, Landroid/support/design/internal/e$b;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 427
    :pswitch_0
    iget-object v0, p1, Landroid/support/design/internal/e$j;->a:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    .line 428
    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v1, v1, Landroid/support/design/internal/e;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 429
    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-boolean v1, v1, Landroid/support/design/internal/e;->f:Z

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget v1, v1, Landroid/support/design/internal/e;->e:I

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 432
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v1, v1, Landroid/support/design/internal/e;->g:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v1, v1, Landroid/support/design/internal/e;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 435
    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v1, v1, Landroid/support/design/internal/e;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget-object v1, v1, Landroid/support/design/internal/e;->i:Landroid/graphics/drawable/Drawable;

    .line 437
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 435
    :goto_1
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v1, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/e$f;

    .line 439
    iget-boolean v2, v1, Landroid/support/design/internal/e$f;->a:Z

    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 440
    iget-object v2, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget v2, v2, Landroid/support/design/internal/e;->j:I

    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    .line 441
    iget-object v2, p0, Landroid/support/design/internal/e$b;->a:Landroid/support/design/internal/e;

    iget v2, v2, Landroid/support/design/internal/e;->k:I

    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 442
    invoke-virtual {v1}, Landroid/support/design/internal/e$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->a(Landroid/support/v7/view/menu/j;I)V

    goto :goto_0

    .line 437
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 447
    :pswitch_1
    iget-object v0, p1, Landroid/support/design/internal/e$j;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 448
    iget-object v1, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/e$f;

    .line 449
    invoke-virtual {v1}, Landroid/support/design/internal/e$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 454
    :pswitch_2
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/e$e;

    .line 455
    iget-object v1, p1, Landroid/support/design/internal/e$j;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/design/internal/e$e;->a()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/design/internal/e$e;->b()I

    move-result v0

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/support/v7/view/menu/j;)V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Landroid/support/design/internal/e$b;->c:Landroid/support/v7/view/menu/j;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/j;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/e$b;->c:Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Landroid/support/design/internal/e$b;->c:Landroid/support/v7/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    .line 564
    :cond_2
    iput-object p1, p0, Landroid/support/design/internal/e$b;->c:Landroid/support/v7/view/menu/j;

    .line 565
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0

    .prologue
    .line 361
    check-cast p1, Landroid/support/design/internal/e$j;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/e$b;->a(Landroid/support/design/internal/e$j;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 0

    .prologue
    .line 361
    check-cast p1, Landroid/support/design/internal/e$j;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/e$b;->a(Landroid/support/design/internal/e$j;I)V

    return-void
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/e$d;

    .line 392
    instance-of v1, v0, Landroid/support/design/internal/e$e;

    if-eqz v1, :cond_0

    .line 393
    const/4 v0, 0x2

    .line 401
    :goto_0
    return v0

    .line 394
    :cond_0
    instance-of v1, v0, Landroid/support/design/internal/e$c;

    if-eqz v1, :cond_1

    .line 395
    const/4 v0, 0x3

    goto :goto_0

    .line 396
    :cond_1
    instance-of v1, v0, Landroid/support/design/internal/e$f;

    if-eqz v1, :cond_3

    .line 397
    check-cast v0, Landroid/support/design/internal/e$f;

    .line 398
    invoke-virtual {v0}, Landroid/support/design/internal/e$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    const/4 v0, 0x1

    goto :goto_0

    .line 401
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown item type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/e$b;->a(Landroid/view/ViewGroup;I)Landroid/support/design/internal/e$j;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Landroid/support/design/internal/e$b;->g()V

    .line 474
    invoke-virtual {p0}, Landroid/support/design/internal/e$b;->f()V

    .line 475
    return-void
.end method

.method public c()Landroid/support/v7/view/menu/j;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Landroid/support/design/internal/e$b;->c:Landroid/support/v7/view/menu/j;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 573
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 574
    iget-object v0, p0, Landroid/support/design/internal/e$b;->c:Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "android:menu:checked"

    iget-object v1, p0, Landroid/support/design/internal/e$b;->c:Landroid/support/v7/view/menu/j;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 579
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    .line 580
    iget-object v0, p0, Landroid/support/design/internal/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/e$d;

    .line 581
    instance-of v5, v0, Landroid/support/design/internal/e$f;

    if-eqz v5, :cond_1

    .line 582
    check-cast v0, Landroid/support/design/internal/e$f;

    invoke-virtual {v0}, Landroid/support/design/internal/e$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v5

    .line 583
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/support/v7/view/menu/j;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 584
    :goto_1
    if-eqz v0, :cond_1

    .line 585
    new-instance v6, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v6}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    .line 586
    invoke-virtual {v0, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 587
    invoke-virtual {v5}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v0

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 579
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 583
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 591
    :cond_3
    const-string v0, "android:menu:action_views"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 592
    return-object v2
.end method
