.class public Landroid/support/v7/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActivityChooserView$InnerLayout;,
        Landroid/support/v7/widget/ActivityChooserView$a;,
        Landroid/support/v7/widget/ActivityChooserView$b;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/widget/ActivityChooserView$a;

.field final b:Landroid/widget/FrameLayout;

.field final c:Landroid/widget/FrameLayout;

.field d:Landroid/support/v4/view/ActionProvider;

.field final e:Landroid/database/DataSetObserver;

.field f:Landroid/widget/PopupWindow$OnDismissListener;

.field g:Z

.field h:I

.field private final i:Landroid/support/v7/widget/ActivityChooserView$b;

.field private final j:Landroid/view/View;

.field private final k:Landroid/widget/ImageView;

.field private final l:I

.field private final m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private n:Landroid/support/v7/widget/ar;

.field private o:Z

.field private p:I


# virtual methods
.method a(I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->d()Landroid/support/v7/widget/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data model. Did you call #setDataModel?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 371
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->c:Landroid/widget/FrameLayout;

    .line 372
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 374
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$a;->c()I

    move-result v4

    .line 375
    if-eqz v0, :cond_5

    move v3, v1

    .line 376
    :goto_1
    const v5, 0x7fffffff

    if-eq p1, v5, :cond_6

    add-int/2addr v3, p1

    if-le v4, v3, :cond_6

    .line 378
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActivityChooserView$a;->a(Z)V

    .line 379
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserView$a;->a(I)V

    .line 385
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ar;

    move-result-object v3

    .line 386
    invoke-virtual {v3}, Landroid/support/v7/widget/ar;->f()Z

    move-result v4

    if-nez v4, :cond_3

    .line 387
    iget-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserView;->g:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_7

    .line 388
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v4, v1, v0}, Landroid/support/v7/widget/ActivityChooserView$a;->a(ZZ)V

    .line 392
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->a()I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/ActivityChooserView;->l:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 393
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ar;->g(I)V

    .line 394
    invoke-virtual {v3}, Landroid/support/v7/widget/ar;->d()V

    .line 395
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->d:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->d:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 398
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/ar;->g()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Landroid/support/v7/appcompat/R$string;->abc_activitychooserview_choose_application:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v3}, Landroid/support/v7/widget/ar;->g()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 402
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 372
    goto :goto_0

    :cond_5
    move v3, v2

    .line 375
    goto :goto_1

    .line 381
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ActivityChooserView$a;->a(Z)V

    .line 382
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ActivityChooserView$a;->a(I)V

    goto :goto_2

    .line 390
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0, v2, v2}, Landroid/support/v7/widget/ActivityChooserView$a;->a(ZZ)V

    goto :goto_3
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserView;->o:Z

    if-nez v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->g:Z

    .line 355
    iget v0, p0, Landroid/support/v7/widget/ActivityChooserView;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActivityChooserView;->a(I)V

    .line 356
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ar;->e()V

    .line 412
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 417
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ar;->f()Z

    move-result v0

    return v0
.end method

.method public getDataModel()Landroid/support/v7/widget/c;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->d()Landroid/support/v7/widget/c;

    move-result-object v0

    return-object v0
.end method

.method getListPopupWindow()Landroid/support/v7/widget/ar;
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->n:Landroid/support/v7/widget/ar;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Landroid/support/v7/widget/ar;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->n:Landroid/support/v7/widget/ar;

    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->n:Landroid/support/v7/widget/ar;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ar;->a(Landroid/widget/ListAdapter;)V

    .line 526
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->n:Landroid/support/v7/widget/ar;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ar;->b(Landroid/view/View;)V

    .line 527
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->n:Landroid/support/v7/widget/ar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ar;->a(Z)V

    .line 528
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->n:Landroid/support/v7/widget/ar;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->i:Landroid/support/v7/widget/ActivityChooserView$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ar;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 529
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->n:Landroid/support/v7/widget/ar;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->i:Landroid/support/v7/widget/ActivityChooserView$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ar;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 531
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->n:Landroid/support/v7/widget/ar;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->d()Landroid/support/v7/widget/c;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->e:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/c;->registerObserver(Ljava/lang/Object;)V

    .line 436
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->o:Z

    .line 437
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 441
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->d()Landroid/support/v7/widget/c;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    .line 444
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->e:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/c;->unregisterObserver(Ljava/lang/Object;)V

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 450
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->b()Z

    .line 453
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->o:Z

    .line 454
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 472
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->j:Landroid/view/View;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 473
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->b()Z

    .line 476
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->j:Landroid/view/View;

    .line 462
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 466
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 467
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 468
    return-void
.end method

.method public setActivityChooserModel(Landroid/support/v7/widget/c;)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActivityChooserView$a;->a(Landroid/support/v7/widget/c;)V

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->b()Z

    .line 302
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->a()Z

    .line 304
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0

    .prologue
    .line 514
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->p:I

    .line 515
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0

    .prologue
    .line 500
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->h:I

    .line 501
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->f:Landroid/widget/PopupWindow$OnDismissListener;

    .line 489
    return-void
.end method

.method public setProvider(Landroid/support/v4/view/ActionProvider;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 342
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->d:Landroid/support/v4/view/ActionProvider;

    .line 343
    return-void
.end method
