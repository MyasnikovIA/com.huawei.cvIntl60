.class Landroid/support/v7/widget/bc$c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bc;

.field private final b:[I

.field private c:Landroid/support/v7/app/a$c;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/bc;Landroid/content/Context;Landroid/support/v7/app/a$c;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 390
    iput-object p1, p0, Landroid/support/v7/widget/bc$c;->a:Landroid/support/v7/widget/bc;

    .line 391
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarTabStyle:I

    invoke-direct {p0, p2, v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 381
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    iput-object v0, p0, Landroid/support/v7/widget/bc$c;->b:[I

    .line 392
    iput-object p3, p0, Landroid/support/v7/widget/bc$c;->c:Landroid/support/v7/app/a$c;

    .line 394
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->b:[I

    sget v1, Landroid/support/v7/appcompat/R$attr;->actionBarTabStyle:I

    invoke-static {p2, v3, v0, v1, v2}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bk;

    move-result-object v0

    .line 396
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bk;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bc$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->a()V

    .line 401
    if-eqz p4, :cond_1

    .line 402
    const v0, 0x800013

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bc$c;->setGravity(I)V

    .line 405
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bc$c;->a()V

    .line 406
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v7, 0x8

    const/4 v2, 0x0

    const/4 v8, -0x2

    const/4 v1, 0x0

    .line 449
    iget-object v3, p0, Landroid/support/v7/widget/bc$c;->c:Landroid/support/v7/app/a$c;

    .line 450
    invoke-virtual {v3}, Landroid/support/v7/app/a$c;->c()Landroid/view/View;

    move-result-object v4

    .line 451
    if-eqz v4, :cond_4

    .line 452
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 453
    if-eq v0, p0, :cond_1

    .line 454
    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 455
    :cond_0
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/bc$c;->addView(Landroid/view/View;)V

    .line 457
    :cond_1
    iput-object v4, p0, Landroid/support/v7/widget/bc$c;->f:Landroid/view/View;

    .line 458
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    :cond_3
    :goto_0
    return-void

    .line 464
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->f:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 465
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bc$c;->removeView(Landroid/view/View;)V

    .line 466
    iput-object v1, p0, Landroid/support/v7/widget/bc$c;->f:Landroid/view/View;

    .line 469
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/app/a$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 470
    invoke-virtual {v3}, Landroid/support/v7/app/a$c;->b()Ljava/lang/CharSequence;

    move-result-object v4

    .line 472
    if-eqz v0, :cond_b

    .line 473
    iget-object v5, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    if-nez v5, :cond_6

    .line 474
    new-instance v5, Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/bc$c;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 475
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 477
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 478
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    invoke-virtual {p0, v5, v2}, Landroid/support/v7/widget/bc$c;->addView(Landroid/view/View;I)V

    .line 480
    iput-object v5, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    .line 482
    :cond_6
    iget-object v5, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    :cond_7
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 490
    :goto_2
    if-eqz v0, :cond_d

    .line 491
    iget-object v5, p0, Landroid/support/v7/widget/bc$c;->d:Landroid/widget/TextView;

    if-nez v5, :cond_8

    .line 492
    new-instance v5, Landroid/support/v7/widget/y;

    invoke-virtual {p0}, Landroid/support/v7/widget/bc$c;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v5, v6, v1, v7}, Landroid/support/v7/widget/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 494
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 495
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 497
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 498
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/bc$c;->addView(Landroid/view/View;)V

    .line 500
    iput-object v5, p0, Landroid/support/v7/widget/bc$c;->d:Landroid/widget/TextView;

    .line 502
    :cond_8
    iget-object v5, p0, Landroid/support/v7/widget/bc$c;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v4, p0, Landroid/support/v7/widget/bc$c;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    :cond_9
    :goto_3
    iget-object v2, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 510
    iget-object v2, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/support/v7/app/a$c;->e()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 512
    :cond_a
    if-eqz v0, :cond_e

    move-object v0, v1

    :goto_4
    invoke-static {p0, v0}, Landroid/support/v7/widget/bm;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 484
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 485
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    move v0, v2

    .line 489
    goto :goto_2

    .line 504
    :cond_d
    iget-object v2, p0, Landroid/support/v7/widget/bc$c;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    .line 505
    iget-object v2, p0, Landroid/support/v7/widget/bc$c;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v2, p0, Landroid/support/v7/widget/bc$c;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 512
    :cond_e
    invoke-virtual {v3}, Landroid/support/v7/app/a$c;->e()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4
.end method

.method public a(Landroid/support/v7/app/a$c;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Landroid/support/v7/widget/bc$c;->c:Landroid/support/v7/app/a$c;

    .line 410
    invoke-virtual {p0}, Landroid/support/v7/widget/bc$c;->a()V

    .line 411
    return-void
.end method

.method public b()Landroid/support/v7/app/a$c;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->c:Landroid/support/v7/app/a$c;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 426
    const-class v0, Landroid/support/v7/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 427
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 431
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 434
    const-class v0, Landroid/support/v7/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 439
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->a:Landroid/support/v7/widget/bc;

    iget v0, v0, Landroid/support/v7/widget/bc;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bc$c;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/bc$c;->a:Landroid/support/v7/widget/bc;

    iget v1, v1, Landroid/support/v7/widget/bc;->c:I

    if-le v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/bc$c;->a:Landroid/support/v7/widget/bc;

    iget v0, v0, Landroid/support/v7/widget/bc;->c:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 446
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Landroid/support/v7/widget/bc$c;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 416
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 417
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 418
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bc$c;->sendAccessibilityEvent(I)V

    .line 420
    :cond_0
    return-void

    .line 415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
