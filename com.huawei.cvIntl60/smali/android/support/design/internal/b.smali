.class public Landroid/support/design/internal/b;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/p;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final c:Landroid/support/transition/p;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Landroid/view/View$OnClickListener;

.field private final j:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I

.field private m:[Landroid/support/design/internal/a;

.field private n:I

.field private o:I

.field private p:Landroid/content/res/ColorStateList;

.field private q:I
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation
.end field

.field private r:Landroid/content/res/ColorStateList;

.field private final s:Landroid/content/res/ColorStateList;

.field private t:I
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field

.field private u:I
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:I

.field private x:[I

.field private y:Landroid/support/design/internal/BottomNavigationPresenter;

.field private z:Landroid/support/v7/view/menu/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/internal/b;->a:[I

    .line 54
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/internal/b;->b:[I

    return-void
.end method

.method private a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 581
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    const/4 v2, 0x3

    if-le p2, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getNewItem()Landroid/support/design/internal/a;
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Landroid/support/design/internal/b;->j:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/a;

    .line 570
    if-nez v0, :cond_0

    .line 571
    new-instance v0, Landroid/support/design/internal/a;

    invoke-virtual {p0}, Landroid/support/design/internal/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/a;-><init>(Landroid/content/Context;)V

    .line 573
    :cond_0
    return-object v0
.end method


# virtual methods
.method a(I)V
    .locals 4

    .prologue
    .line 587
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v1

    .line 588
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 589
    iget-object v2, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 590
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 591
    iput p1, p0, Landroid/support/design/internal/b;->n:I

    .line 592
    iput v0, p0, Landroid/support/design/internal/b;->o:I

    .line 593
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 597
    :cond_0
    return-void

    .line 588
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    .line 126
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/support/design/internal/b;->k:Z

    return v0
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 487
    invoke-virtual {p0}, Landroid/support/design/internal/b;->removeAllViews()V

    .line 488
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    if-eqz v0, :cond_1

    .line 489
    iget-object v1, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    array-length v3, v1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 490
    if-eqz v4, :cond_0

    .line 491
    iget-object v5, p0, Landroid/support/design/internal/b;->j:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v5, v4}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 489
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 496
    iput v2, p0, Landroid/support/design/internal/b;->n:I

    .line 497
    iput v2, p0, Landroid/support/design/internal/b;->o:I

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    .line 530
    :goto_1
    return-void

    .line 501
    :cond_2
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/design/internal/a;

    iput-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    .line 502
    iget v0, p0, Landroid/support/design/internal/b;->l:I

    iget-object v1, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/internal/b;->a(II)Z

    move-result v3

    move v1, v2

    .line 503
    :goto_2
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 504
    iget-object v0, p0, Landroid/support/design/internal/b;->y:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v6}, Landroid/support/design/internal/BottomNavigationPresenter;->b(Z)V

    .line 505
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 506
    iget-object v0, p0, Landroid/support/design/internal/b;->y:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->b(Z)V

    .line 507
    invoke-direct {p0}, Landroid/support/design/internal/b;->getNewItem()Landroid/support/design/internal/a;

    move-result-object v4

    .line 508
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    aput-object v4, v0, v1

    .line 509
    iget-object v0, p0, Landroid/support/design/internal/b;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v0}, Landroid/support/design/internal/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 510
    iget v0, p0, Landroid/support/design/internal/b;->q:I

    invoke-virtual {v4, v0}, Landroid/support/design/internal/a;->setIconSize(I)V

    .line 512
    iget-object v0, p0, Landroid/support/design/internal/b;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v0}, Landroid/support/design/internal/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 513
    iget v0, p0, Landroid/support/design/internal/b;->t:I

    invoke-virtual {v4, v0}, Landroid/support/design/internal/a;->setTextAppearanceInactive(I)V

    .line 514
    iget v0, p0, Landroid/support/design/internal/b;->u:I

    invoke-virtual {v4, v0}, Landroid/support/design/internal/a;->setTextAppearanceActive(I)V

    .line 515
    iget-object v0, p0, Landroid/support/design/internal/b;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v0}, Landroid/support/design/internal/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 516
    iget-object v0, p0, Landroid/support/design/internal/b;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Landroid/support/design/internal/b;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/support/design/internal/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 521
    :goto_3
    invoke-virtual {v4, v3}, Landroid/support/design/internal/a;->setShifting(Z)V

    .line 522
    iget v0, p0, Landroid/support/design/internal/b;->l:I

    invoke-virtual {v4, v0}, Landroid/support/design/internal/a;->setLabelVisibilityMode(I)V

    .line 523
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v4, v0, v2}, Landroid/support/design/internal/a;->a(Landroid/support/v7/view/menu/j;I)V

    .line 524
    invoke-virtual {v4, v1}, Landroid/support/design/internal/a;->setItemPosition(I)V

    .line 525
    iget-object v0, p0, Landroid/support/design/internal/b;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/support/design/internal/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    invoke-virtual {p0, v4}, Landroid/support/design/internal/b;->addView(Landroid/view/View;)V

    .line 503
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 519
    :cond_3
    iget v0, p0, Landroid/support/design/internal/b;->w:I

    invoke-virtual {v4, v0}, Landroid/support/design/internal/a;->setItemBackground(I)V

    goto :goto_3

    .line 528
    :cond_4
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/design/internal/b;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/b;->o:I

    .line 529
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    iget v1, p0, Landroid/support/design/internal/b;->o:I

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v3

    .line 538
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    array-length v0, v0

    if-eq v3, v0, :cond_2

    .line 540
    invoke-virtual {p0}, Landroid/support/design/internal/b;->b()V

    goto :goto_0

    .line 544
    :cond_2
    iget v1, p0, Landroid/support/design/internal/b;->n:I

    move v0, v2

    .line 546
    :goto_1
    if-ge v0, v3, :cond_4

    .line 547
    iget-object v4, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v4, v0}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 548
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 549
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Landroid/support/design/internal/b;->n:I

    .line 550
    iput v0, p0, Landroid/support/design/internal/b;->o:I

    .line 546
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 553
    :cond_4
    iget v0, p0, Landroid/support/design/internal/b;->n:I

    if-eq v1, v0, :cond_5

    .line 555
    iget-object v0, p0, Landroid/support/design/internal/b;->c:Landroid/support/transition/p;

    invoke-static {p0, v0}, Landroid/support/transition/n;->a(Landroid/view/ViewGroup;Landroid/support/transition/l;)V

    .line 558
    :cond_5
    iget v0, p0, Landroid/support/design/internal/b;->l:I

    iget-object v1, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/internal/b;->a(II)Z

    move-result v4

    move v1, v2

    .line 559
    :goto_2
    if-ge v1, v3, :cond_0

    .line 560
    iget-object v0, p0, Landroid/support/design/internal/b;->y:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/support/design/internal/BottomNavigationPresenter;->b(Z)V

    .line 561
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    aget-object v0, v0, v1

    iget v5, p0, Landroid/support/design/internal/b;->l:I

    invoke-virtual {v0, v5}, Landroid/support/design/internal/a;->setLabelVisibilityMode(I)V

    .line 562
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/support/design/internal/a;->setShifting(Z)V

    .line 563
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    aget-object v5, v0, v1

    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v5, v0, v2}, Landroid/support/design/internal/a;->a(Landroid/support/v7/view/menu/j;I)V

    .line 564
    iget-object v0, p0, Landroid/support/design/internal/b;->y:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->b(Z)V

    .line 559
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/design/internal/b;->p:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 407
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/design/internal/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/b;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    iget v0, p0, Landroid/support/design/internal/b;->w:I

    return v0
.end method

.method public getItemIconSize()I
    .locals 1
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 274
    iget v0, p0, Landroid/support/design/internal/b;->q:I

    return v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 355
    iget v0, p0, Landroid/support/design/internal/b;->u:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 326
    iget v0, p0, Landroid/support/design/internal/b;->t:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/design/internal/b;->r:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Landroid/support/design/internal/b;->l:I

    return v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Landroid/support/design/internal/b;->n:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0}, Landroid/support/design/internal/b;->getChildCount()I

    move-result v3

    .line 209
    sub-int v4, p4, p2

    .line 210
    sub-int v5, p5, p3

    move v1, v2

    move v0, v2

    .line 212
    :goto_0
    if-ge v1, v3, :cond_2

    .line 213
    invoke-virtual {p0, v1}, Landroid/support/design/internal/b;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 214
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 212
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 218
    sub-int v7, v4, v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v8, v4, v0

    invoke-virtual {v6, v7, v2, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 222
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v6, v0, v2, v7, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 224
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/16 v10, 0x8

    const/4 v3, 0x0

    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 132
    iget-object v0, p0, Landroid/support/design/internal/b;->z:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 134
    invoke-virtual {p0}, Landroid/support/design/internal/b;->getChildCount()I

    move-result v6

    .line 136
    iget v0, p0, Landroid/support/design/internal/b;->h:I

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 138
    iget v0, p0, Landroid/support/design/internal/b;->l:I

    invoke-direct {p0, v0, v4}, Landroid/support/design/internal/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/support/design/internal/b;->k:Z

    if-eqz v0, :cond_6

    .line 139
    iget v0, p0, Landroid/support/design/internal/b;->o:I

    invoke-virtual {p0, v0}, Landroid/support/design/internal/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 140
    iget v0, p0, Landroid/support/design/internal/b;->g:I

    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v10, :cond_0

    .line 144
    iget v8, p0, Landroid/support/design/internal/b;->f:I

    const/high16 v9, -0x80000000

    .line 145
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 144
    invoke-virtual {v1, v8, v7}, Landroid/view/View;->measure(II)V

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 148
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_1

    move v1, v2

    :goto_0
    sub-int v1, v4, v1

    .line 149
    iget v4, p0, Landroid/support/design/internal/b;->e:I

    mul-int/2addr v4, v1

    sub-int v4, v5, v4

    .line 150
    iget v8, p0, Landroid/support/design/internal/b;->f:I

    .line 151
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 152
    sub-int v0, v5, v4

    if-nez v1, :cond_2

    :goto_1
    div-int/2addr v0, v2

    .line 154
    iget v2, p0, Landroid/support/design/internal/b;->d:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 155
    sub-int v0, v5, v4

    mul-int/2addr v1, v2

    sub-int v1, v0, v1

    move v5, v3

    .line 157
    :goto_2
    if-ge v5, v6, :cond_a

    .line 158
    invoke-virtual {p0, v5}, Landroid/support/design/internal/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 159
    iget-object v8, p0, Landroid/support/design/internal/b;->x:[I

    iget v0, p0, Landroid/support/design/internal/b;->o:I

    if-ne v5, v0, :cond_3

    move v0, v4

    :goto_3
    aput v0, v8, v5

    .line 163
    if-lez v1, :cond_5

    .line 164
    iget-object v0, p0, Landroid/support/design/internal/b;->x:[I

    aget v8, v0, v5

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v5

    .line 165
    add-int/lit8 v0, v1, -0x1

    .line 157
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    move v1, v3

    .line 148
    goto :goto_0

    :cond_2
    move v2, v1

    .line 152
    goto :goto_1

    :cond_3
    move v0, v2

    .line 159
    goto :goto_3

    .line 168
    :cond_4
    iget-object v0, p0, Landroid/support/design/internal/b;->x:[I

    aput v3, v0, v5

    :cond_5
    move v0, v1

    goto :goto_4

    .line 172
    :cond_6
    if-nez v4, :cond_8

    :goto_5
    div-int v0, v5, v2

    .line 173
    iget v1, p0, Landroid/support/design/internal/b;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 174
    mul-int v0, v2, v4

    sub-int v0, v5, v0

    move v1, v3

    .line 175
    :goto_6
    if-ge v1, v6, :cond_a

    .line 176
    invoke-virtual {p0, v1}, Landroid/support/design/internal/b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_9

    .line 177
    iget-object v4, p0, Landroid/support/design/internal/b;->x:[I

    aput v2, v4, v1

    .line 178
    if-lez v0, :cond_7

    .line 179
    iget-object v4, p0, Landroid/support/design/internal/b;->x:[I

    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    .line 180
    add-int/lit8 v0, v0, -0x1

    .line 175
    :cond_7
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    move v2, v4

    .line 172
    goto :goto_5

    .line 183
    :cond_9
    iget-object v4, p0, Landroid/support/design/internal/b;->x:[I

    aput v3, v4, v1

    goto :goto_7

    :cond_a
    move v1, v3

    move v0, v3

    .line 189
    :goto_8
    if-ge v1, v6, :cond_c

    .line 190
    invoke-virtual {p0, v1}, Landroid/support/design/internal/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v10, :cond_b

    .line 189
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 194
    :cond_b
    iget-object v4, p0, Landroid/support/design/internal/b;->x:[I

    aget v4, v4, v1

    .line 195
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 194
    invoke-virtual {v2, v4, v7}, Landroid/view/View;->measure(II)V

    .line 196
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_9

    .line 202
    :cond_c
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 201
    invoke-static {v0, v1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    iget v1, p0, Landroid/support/design/internal/b;->h:I

    .line 203
    invoke-static {v1, v7, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 200
    invoke-virtual {p0, v0, v1}, Landroid/support/design/internal/b;->setMeasuredDimension(II)V

    .line 204
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 237
    iput-object p1, p0, Landroid/support/design/internal/b;->p:Landroid/content/res/ColorStateList;

    .line 238
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 240
    invoke-virtual {v3, p1}, Landroid/support/design/internal/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 389
    iput-object p1, p0, Landroid/support/design/internal/b;->v:Landroid/graphics/drawable/Drawable;

    .line 390
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    if-eqz v0, :cond_0

    .line 391
    iget-object v1, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 392
    invoke-virtual {v3, p1}, Landroid/support/design/internal/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .prologue
    .line 364
    iput p1, p0, Landroid/support/design/internal/b;->w:I

    .line 365
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 367
    invoke-virtual {v3, p1}, Landroid/support/design/internal/a;->setItemBackground(I)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    .prologue
    .line 448
    iput-boolean p1, p0, Landroid/support/design/internal/b;->k:Z

    .line 449
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 263
    iput p1, p0, Landroid/support/design/internal/b;->q:I

    .line 264
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 266
    invoke-virtual {v3, p1}, Landroid/support/design/internal/a;->setIconSize(I)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 335
    iput p1, p0, Landroid/support/design/internal/b;->u:I

    .line 336
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    if-eqz v0, :cond_1

    .line 337
    iget-object v1, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 338
    invoke-virtual {v3, p1}, Landroid/support/design/internal/a;->setTextAppearanceActive(I)V

    .line 341
    iget-object v4, p0, Landroid/support/design/internal/b;->r:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 342
    iget-object v4, p0, Landroid/support/design/internal/b;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 337
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 306
    iput p1, p0, Landroid/support/design/internal/b;->t:I

    .line 307
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    if-eqz v0, :cond_1

    .line 308
    iget-object v1, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 309
    invoke-virtual {v3, p1}, Landroid/support/design/internal/a;->setTextAppearanceInactive(I)V

    .line 312
    iget-object v4, p0, Landroid/support/design/internal/b;->r:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 313
    iget-object v4, p0, Landroid/support/design/internal/b;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 283
    iput-object p1, p0, Landroid/support/design/internal/b;->r:Landroid/content/res/ColorStateList;

    .line 284
    iget-object v0, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Landroid/support/design/internal/b;->m:[Landroid/support/design/internal/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 286
    invoke-virtual {v3, p1}, Landroid/support/design/internal/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .prologue
    .line 427
    iput p1, p0, Landroid/support/design/internal/b;->l:I

    .line 428
    return-void
.end method

.method public setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Landroid/support/design/internal/b;->y:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 484
    return-void
.end method
