.class public final Landroid/support/v7/view/menu/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/support/v4/view/ActionProvider;

.field private C:Landroid/view/MenuItem$OnActionExpandListener;

.field private D:Z

.field private E:Landroid/view/ContextMenu$ContextMenuInfo;

.field a:Landroid/support/v7/view/menu/h;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:Landroid/content/Intent;

.field private i:C

.field private j:I

.field private k:C

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Landroid/support/v7/view/menu/u;

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private r:Ljava/lang/CharSequence;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/graphics/PorterDuff$Mode;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/h;IIIILjava/lang/CharSequence;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x1000

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Landroid/support/v7/view/menu/j;->j:I

    .line 70
    iput v0, p0, Landroid/support/v7/view/menu/j;->l:I

    .line 80
    iput v1, p0, Landroid/support/v7/view/menu/j;->n:I

    .line 93
    iput-object v2, p0, Landroid/support/v7/view/menu/j;->t:Landroid/content/res/ColorStateList;

    .line 94
    iput-object v2, p0, Landroid/support/v7/view/menu/j;->u:Landroid/graphics/PorterDuff$Mode;

    .line 95
    iput-boolean v1, p0, Landroid/support/v7/view/menu/j;->v:Z

    .line 96
    iput-boolean v1, p0, Landroid/support/v7/view/menu/j;->w:Z

    .line 97
    iput-boolean v1, p0, Landroid/support/v7/view/menu/j;->x:Z

    .line 99
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/j;->y:I

    .line 107
    iput v1, p0, Landroid/support/v7/view/menu/j;->z:I

    .line 112
    iput-boolean v1, p0, Landroid/support/v7/view/menu/j;->D:Z

    .line 139
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    .line 140
    iput p3, p0, Landroid/support/v7/view/menu/j;->b:I

    .line 141
    iput p2, p0, Landroid/support/v7/view/menu/j;->c:I

    .line 142
    iput p4, p0, Landroid/support/v7/view/menu/j;->d:I

    .line 143
    iput p5, p0, Landroid/support/v7/view/menu/j;->e:I

    .line 144
    iput-object p6, p0, Landroid/support/v7/view/menu/j;->f:Ljava/lang/CharSequence;

    .line 145
    iput p7, p0, Landroid/support/v7/view/menu/j;->z:I

    .line 146
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 570
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->x:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->w:Z

    if-eqz v0, :cond_3

    .line 571
    :cond_0
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 574
    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->v:Z

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->t:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 578
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->w:Z

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->u:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 582
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->x:Z

    .line 585
    :cond_3
    return-object p1
.end method

.method private static a(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 402
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    .line 403
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 3

    .prologue
    .line 756
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v0

    .line 757
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 758
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/j;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    .line 759
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2

    .prologue
    .line 745
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->A:Landroid/view/View;

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    .line 747
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/j;->b:I

    if-lez v0, :cond_0

    .line 748
    iget v0, p0, Landroid/support/v7/view/menu/j;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 750
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/j;)V

    .line 751
    return-object p0
.end method

.method a(Landroid/support/v7/view/menu/p$a;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 446
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v7/view/menu/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/u;)V
    .locals 1

    .prologue
    .line 428
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->o:Landroid/support/v7/view/menu/u;

    .line 430
    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/u;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 431
    return-void
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 683
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/j;->y:I

    .line 606
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 154
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    iget-object v2, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->p:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->p:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->h:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 169
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/view/menu/j;->h:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_3
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Landroid/support/v7/view/menu/j;->e:I

    return v0
.end method

.method public b(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0

    .prologue
    .line 812
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->setShowAsAction(I)V

    .line 813
    return-object p0
.end method

.method b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 631
    iget v2, p0, Landroid/support/v7/view/menu/j;->y:I

    .line 632
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/j;->y:I

    .line 633
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    if-eq v2, v0, :cond_0

    .line 634
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 636
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 632
    goto :goto_0
.end method

.method c()C
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroid/support/v7/view/menu/j;->k:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Landroid/support/v7/view/menu/j;->i:C

    goto :goto_0
.end method

.method c(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 655
    iget v2, p0, Landroid/support/v7/view/menu/j;->y:I

    .line 656
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/j;->y:I

    .line 657
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 656
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 832
    iget v1, p0, Landroid/support/v7/view/menu/j;->z:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v0

    .line 835
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->A:Landroid/view/View;

    if-nez v1, :cond_2

    .line 837
    const/4 v0, 0x1

    goto :goto_0

    .line 840
    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->C:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->C:Landroid/view/MenuItem$OnActionExpandListener;

    .line 841
    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    :cond_3
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->d(Landroid/support/v7/view/menu/j;)Z

    move-result v0

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->c()C

    move-result v1

    .line 353
    if-nez v1, :cond_0

    .line 354
    const-string v0, ""

    .line 398
    :goto_0
    return-object v0

    .line 357
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_prepend_shortcut_label:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    .line 365
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/view/menu/j;->l:I

    .line 366
    :goto_1
    const/high16 v4, 0x10000

    sget v5, Landroid/support/v7/appcompat/R$string;->abc_menu_meta_shortcut_label:I

    .line 367
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-static {v3, v0, v4, v5}, Landroid/support/v7/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 368
    const/16 v4, 0x1000

    sget v5, Landroid/support/v7/appcompat/R$string;->abc_menu_ctrl_shortcut_label:I

    .line 369
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v3, v0, v4, v5}, Landroid/support/v7/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 370
    const/4 v4, 0x2

    sget v5, Landroid/support/v7/appcompat/R$string;->abc_menu_alt_shortcut_label:I

    .line 371
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-static {v3, v0, v4, v5}, Landroid/support/v7/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 372
    const/4 v4, 0x1

    sget v5, Landroid/support/v7/appcompat/R$string;->abc_menu_shift_shortcut_label:I

    .line 373
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-static {v3, v0, v4, v5}, Landroid/support/v7/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 374
    const/4 v4, 0x4

    sget v5, Landroid/support/v7/appcompat/R$string;->abc_menu_sym_shortcut_label:I

    .line 375
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 374
    invoke-static {v3, v0, v4, v5}, Landroid/support/v7/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 376
    const/16 v4, 0x8

    sget v5, Landroid/support/v7/appcompat/R$string;->abc_menu_function_shortcut_label:I

    .line 377
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 376
    invoke-static {v3, v0, v4, v5}, Landroid/support/v7/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 379
    sparse-switch v1, :sswitch_data_0

    .line 394
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_2
    iget v0, p0, Landroid/support/v7/view/menu/j;->j:I

    goto :goto_1

    .line 382
    :sswitch_0
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_menu_enter_shortcut_label:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 386
    :sswitch_1
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_menu_delete_shortcut_label:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 390
    :sswitch_2
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_menu_space_shortcut_label:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 714
    if-eqz p1, :cond_0

    .line 715
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/view/menu/j;->y:I

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/view/menu/j;->y:I

    goto :goto_0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 859
    iput-boolean p1, p0, Landroid/support/v7/view/menu/j;->D:Z

    .line 860
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 861
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->c()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 818
    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v0

    .line 822
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->C:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->C:Landroid/view/MenuItem$OnActionExpandListener;

    .line 823
    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->c(Landroid/support/v7/view/menu/j;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/j;)V

    .line 692
    return-void
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 782
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->A:Landroid/view/View;

    .line 770
    :goto_0
    return-object v0

    .line 766
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/j;->A:Landroid/view/View;

    .line 768
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->A:Landroid/view/View;

    goto :goto_0

    .line 770
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Landroid/support/v7/view/menu/j;->l:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 243
    iget-char v0, p0, Landroid/support/v7/view/menu/j;->k:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->r:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/support/v7/view/menu/j;->c:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/j;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 511
    :goto_0
    return-object v0

    .line 504
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/j;->n:I

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/view/menu/j;->n:I

    invoke-static {v0, v1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 506
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/view/menu/j;->n:I

    .line 507
    iput-object v0, p0, Landroid/support/v7/view/menu/j;->m:Landroid/graphics/drawable/Drawable;

    .line 508
    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/j;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 511
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->t:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->u:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->h:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 209
    iget v0, p0, Landroid/support/v7/view/menu/j;->b:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Landroid/support/v7/view/menu/j;->j:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 280
    iget-char v0, p0, Landroid/support/v7/view/menu/j;->i:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Landroid/support/v7/view/menu/j;->d:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->o:Landroid/support/v7/view/menu/u;

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->g:Ljava/lang/CharSequence;

    .line 473
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 477
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_0
    return-object v0

    .line 471
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->f:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->r()Z

    move-result v0

    return v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->o:Landroid/support/v7/view/menu/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 702
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->D:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 590
    iget v1, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 614
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 640
    iget-object v2, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 641
    iget v2, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 641
    goto :goto_0

    .line 643
    :cond_2
    iget v2, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 706
    iget v1, p0, Landroid/support/v7/view/menu/j;->z:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 710
    iget v0, p0, Landroid/support/v7/view/menu/j;->z:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 722
    iget v0, p0, Landroid/support/v7/view/menu/j;->z:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 849
    iget v1, p0, Landroid/support/v7/view/menu/j;->z:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 850
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->A:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/j;->A:Landroid/view/View;

    .line 853
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->A:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 855
    :cond_1
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 776
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->a(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 248
    iget-char v0, p0, Landroid/support/v7/view/menu/j;->k:C

    if-ne v0, p1, :cond_0

    .line 256
    :goto_0
    return-object p0

    .line 252
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/j;->k:C

    .line 254
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    goto :goto_0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 261
    iget-char v0, p0, Landroid/support/v7/view/menu/j;->k:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/j;->l:I

    if-ne v0, p2, :cond_0

    .line 270
    :goto_0
    return-object p0

    .line 266
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/j;->k:C

    .line 267
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/j;->l:I

    .line 269
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    goto :goto_0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 595
    iget v2, p0, Landroid/support/v7/view/menu/j;->y:I

    .line 596
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/j;->y:I

    .line 597
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    if-eq v2, v0, :cond_0

    .line 598
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 601
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 596
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;)V

    .line 627
    :goto_0
    return-object p0

    .line 624
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->b(Z)V

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2

    .prologue
    .line 876
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->r:Ljava/lang/CharSequence;

    .line 878
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 880
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/j;->y:I

    .line 196
    :goto_0
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 198
    return-object p0

    .line 193
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/j;->y:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/view/menu/j;->y:I

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/j;->m:Landroid/graphics/drawable/Drawable;

    .line 527
    iput p1, p0, Landroid/support/v7/view/menu/j;->n:I

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->x:Z

    .line 531
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 533
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 516
    iput v1, p0, Landroid/support/v7/view/menu/j;->n:I

    .line 517
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->m:Landroid/graphics/drawable/Drawable;

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->x:Z

    .line 519
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 521
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 539
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->t:Landroid/content/res/ColorStateList;

    .line 540
    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->v:Z

    .line 541
    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->x:Z

    .line 543
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 545
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 555
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->u:Landroid/graphics/PorterDuff$Mode;

    .line 556
    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->w:Z

    .line 557
    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->x:Z

    .line 559
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 561
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->h:Landroid/content/Intent;

    .line 229
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 290
    iget-char v0, p0, Landroid/support/v7/view/menu/j;->i:C

    if-ne v0, p1, :cond_0

    .line 298
    :goto_0
    return-object p0

    .line 294
    :cond_0
    iput-char p1, p0, Landroid/support/v7/view/menu/j;->i:C

    .line 296
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    goto :goto_0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 303
    iget-char v0, p0, Landroid/support/v7/view/menu/j;->i:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/j;->j:I

    if-ne v0, p2, :cond_0

    .line 312
    :goto_0
    return-object p0

    .line 307
    :cond_0
    iput-char p1, p0, Landroid/support/v7/view/menu/j;->i:C

    .line 308
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/j;->j:I

    .line 310
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->C:Landroid/view/MenuItem$OnActionExpandListener;

    .line 871
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 673
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 317
    iput-char p1, p0, Landroid/support/v7/view/menu/j;->i:C

    .line 318
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/j;->k:C

    .line 320
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 322
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 328
    iput-char p1, p0, Landroid/support/v7/view/menu/j;->i:C

    .line 329
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/j;->j:I

    .line 330
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/j;->k:C

    .line 331
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/j;->l:I

    .line 333
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 335
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    .prologue
    .line 727
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :pswitch_0
    iput p1, p0, Landroid/support/v7/view/menu/j;->z:I

    .line 740
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/j;)V

    .line 741
    return-void

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->b(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->reset()V

    .line 796
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/j;->A:Landroid/view/View;

    .line 797
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    .line 798
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 799
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->B:Landroid/support/v4/view/ActionProvider;

    new-instance v1, Landroid/support/v7/view/menu/j$1;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/j$1;-><init>(Landroid/support/v7/view/menu/j;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    .line 807
    :cond_1
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/j;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 453
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->f:Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 457
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->o:Landroid/support/v7/view/menu/u;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->o:Landroid/support/v7/view/menu/u;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/u;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 461
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 486
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->g:Ljava/lang/CharSequence;

    .line 489
    if-nez p1, :cond_0

    .line 490
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->f:Ljava/lang/CharSequence;

    .line 493
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 495
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2

    .prologue
    .line 890
    iput-object p1, p0, Landroid/support/v7/view/menu/j;->s:Ljava/lang/CharSequence;

    .line 892
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 894
    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/j;)V

    .line 667
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
