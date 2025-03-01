.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$a;,
        Landroid/support/design/widget/TabLayout$d;,
        Landroid/support/design/widget/TabLayout$i;,
        Landroid/support/design/widget/TabLayout$g;,
        Landroid/support/design/widget/TabLayout$e;,
        Landroid/support/design/widget/TabLayout$h;,
        Landroid/support/design/widget/TabLayout$f;,
        Landroid/support/design/widget/TabLayout$c;,
        Landroid/support/design/widget/TabLayout$b;
    }
.end annotation


# static fields
.field private static final w:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Landroid/support/design/widget/TabLayout$e;

.field private final B:I

.field private final C:I

.field private final D:I

.field private E:I

.field private F:Landroid/support/design/widget/TabLayout$b;

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/support/design/widget/TabLayout$b;

.field private I:Landroid/animation/ValueAnimator;

.field private J:Landroid/support/v4/view/PagerAdapter;

.field private K:Landroid/database/DataSetObserver;

.field private L:Landroid/support/design/widget/TabLayout$g;

.field private M:Landroid/support/design/widget/TabLayout$a;

.field private N:Z

.field private final O:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$h;",
            ">;"
        }
    .end annotation
.end field

.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/content/res/ColorStateList;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/content/res/ColorStateList;

.field i:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field j:Landroid/graphics/PorterDuff$Mode;

.field k:F

.field l:F

.field final m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:Z

.field t:Z

.field u:Z

.field v:Landroid/support/v4/view/ViewPager;

.field private final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/support/design/widget/TabLayout$f;

.field private final z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 399
    sget v0, Landroid/support/design/R$attr;->tabStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 403
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    .line 342
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/graphics/RectF;

    .line 363
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->O:Landroid/support/v4/util/Pools$Pool;

    .line 406
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 409
    new-instance v0, Landroid/support/design/widget/TabLayout$e;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$e;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    .line 410
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v6, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 416
    sget-object v2, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v4, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    new-array v5, v8, [I

    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    aput v0, v5, v6

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 417
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 425
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 426
    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 425
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$e;->b(I)V

    .line 427
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    .line 428
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 427
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$e;->a(I)V

    .line 429
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabIndicator:I

    .line 430
    invoke-static {p1, v0, v1}, Landroid/support/design/e/a;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 429
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 431
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorGravity:I

    .line 432
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 431
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 433
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 435
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    .line 438
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->c:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->b:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->a:I

    .line 439
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->a:I

    .line 440
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->a:I

    .line 441
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->b:I

    .line 442
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->c:I

    .line 443
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->d:I

    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    .line 446
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v2, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    .line 447
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    .line 450
    iget v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    .line 451
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 454
    :try_start_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    .line 455
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->k:F

    .line 457
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 458
    invoke-static {p1, v1, v2}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    .line 469
    invoke-static {p1, v0, v1}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    .line 472
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 477
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/design/widget/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    .line 480
    :cond_1
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabIconTint:I

    .line 481
    invoke-static {p1, v0, v1}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->g:Landroid/content/res/ColorStateList;

    .line 482
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabIconTintMode:I

    .line 483
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/design/internal/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->j:Landroid/graphics/PorterDuff$Mode;

    .line 485
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabRippleColor:I

    .line 486
    invoke-static {p1, v0, v1}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->h:Landroid/content/res/ColorStateList;

    .line 488
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorAnimationDuration:I

    const/16 v2, 0x12c

    .line 489
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    .line 491
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    .line 492
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->B:I

    .line 493
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    .line 494
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->C:I

    .line 495
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->m:I

    .line 496
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->E:I

    .line 498
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->r:I

    .line 499
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->o:I

    .line 500
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabInlineLabel:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TabLayout;->s:Z

    .line 501
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TabLayout;->u:Z

    .line 502
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 505
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 506
    sget v1, Landroid/support/design/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->l:F

    .line 507
    sget v1, Landroid/support/design/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->D:I

    .line 510
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->h()V

    .line 511
    return-void

    .line 463
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(IF)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1625
    iget v1, p0, Landroid/support/design/widget/TabLayout;->r:I

    if-nez v1, :cond_1

    .line 1626
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1627
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    .line 1628
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    add-int/lit8 v2, p1, 0x1

    .line 1629
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1631
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1632
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1635
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1637
    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 1639
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4

    add-int/2addr v0, v2

    .line 1643
    :cond_1
    :goto_2
    return v0

    .line 1629
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 1631
    goto :goto_1

    .line 1639
    :cond_4
    sub-int v0, v2, v0

    goto :goto_2
.end method

.method private static a(II)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 2704
    new-array v0, v1, [[I

    .line 2705
    new-array v1, v1, [I

    .line 2706
    const/4 v2, 0x0

    .line 2708
    sget-object v3, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v0, v2

    .line 2709
    aput p1, v1, v2

    .line 2710
    const/4 v2, 0x1

    .line 2713
    sget-object v3, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v0, v2

    .line 2714
    aput p0, v1, v2

    .line 2717
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/graphics/RectF;

    return-object v0
.end method

.method private a(Landroid/support/design/widget/TabLayout$f;I)V
    .locals 3

    .prologue
    .line 1359
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$f;->b(I)V

    .line 1360
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1362
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1363
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1364
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$f;->b(I)V

    .line 1363
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1366
    :cond_0
    return-void
.end method

.method private a(Landroid/support/design/widget/p;)V
    .locals 2
    .param p1    # Landroid/support/design/widget/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    .line 629
    iget-object v1, p1, Landroid/support/design/widget/p;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p1, Landroid/support/design/widget/p;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$f;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;

    .line 632
    :cond_0
    iget-object v1, p1, Landroid/support/design/widget/p;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 633
    iget-object v1, p1, Landroid/support/design/widget/p;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$f;

    .line 635
    :cond_1
    iget v1, p1, Landroid/support/design/widget/p;->c:I

    if-eqz v1, :cond_2

    .line 636
    iget v1, p1, Landroid/support/design/widget/p;->c:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$f;->a(I)Landroid/support/design/widget/TabLayout$f;

    .line 638
    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/p;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 639
    invoke-virtual {p1}, Landroid/support/design/widget/p;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$f;->b(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;

    .line 641
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;)V

    .line 642
    return-void
.end method

.method private a(Landroid/support/v4/view/ViewPager;ZZ)V
    .locals 3
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 1193
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 1195
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1198
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 1203
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/support/design/widget/TabLayout$b;

    if-eqz v0, :cond_2

    .line 1205
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$b;)V

    .line 1206
    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/support/design/widget/TabLayout$b;

    .line 1209
    :cond_2
    if-eqz p1, :cond_6

    .line 1210
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/view/ViewPager;

    .line 1213
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    if-nez v0, :cond_3

    .line 1214
    new-instance v0, Landroid/support/design/widget/TabLayout$g;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$g;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    .line 1216
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$g;->a()V

    .line 1217
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1220
    new-instance v0, Landroid/support/design/widget/TabLayout$i;

    invoke-direct {v0, p1}, Landroid/support/design/widget/TabLayout$i;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/support/design/widget/TabLayout$b;

    .line 1221
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    .line 1223
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_4

    .line 1227
    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 1231
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    if-nez v0, :cond_5

    .line 1232
    new-instance v0, Landroid/support/design/widget/TabLayout$a;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$a;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    .line 1234
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/TabLayout$a;->a(Z)V

    .line 1235
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 1238
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    .line 1246
    :goto_0
    iput-boolean p3, p0, Landroid/support/design/widget/TabLayout;->N:Z

    .line 1247
    return-void

    .line 1242
    :cond_6
    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/view/ViewPager;

    .line 1243
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/PagerAdapter;Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1394
    instance-of v0, p1, Landroid/support/design/widget/p;

    if-eqz v0, :cond_0

    .line 1395
    check-cast p1, Landroid/support/design/widget/p;

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/p;)V

    .line 1399
    return-void

    .line 1397
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 1409
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    if-nez v0, :cond_0

    .line 1410
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1411
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1416
    :goto_0
    return-void

    .line 1413
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1414
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 1500
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    .line 1501
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$e;->removeViewAt(I)V

    .line 1502
    if-eqz v0, :cond_0

    .line 1503
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$h;->a()V

    .line 1504
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->O:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1506
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 1507
    return-void
.end method

.method private d(Landroid/support/design/widget/TabLayout$f;)Landroid/support/design/widget/TabLayout$h;
    .locals 2
    .param p1    # Landroid/support/design/widget/TabLayout$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1343
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->O:Landroid/support/v4/util/Pools$Pool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->O:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    .line 1344
    :goto_0
    if-nez v0, :cond_0

    .line 1345
    new-instance v0, Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$h;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    .line 1347
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/support/design/widget/TabLayout$f;)V

    .line 1348
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$h;->setFocusable(Z)V

    .line 1349
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$h;->setMinimumWidth(I)V

    .line 1350
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/support/design/widget/TabLayout$f;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1351
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$f;->b(Landroid/support/design/widget/TabLayout$f;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1355
    :goto_1
    return-object v0

    .line 1343
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1353
    :cond_2
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/support/design/widget/TabLayout$f;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private d(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1510
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1535
    :goto_0
    return-void

    .line 1514
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1515
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    .line 1516
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1519
    :cond_1
    invoke-virtual {p0, p1, v1, v5}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    goto :goto_0

    .line 1523
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 1524
    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    .line 1526
    if-eq v0, v1, :cond_3

    .line 1527
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->g()V

    .line 1529
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1530
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1534
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    iget v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/TabLayout$e;->b(II)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 1337
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1338
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->g()V

    .line 1337
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1340
    :cond_0
    return-void
.end method

.method private e(Landroid/support/design/widget/TabLayout$f;)V
    .locals 4

    .prologue
    .line 1369
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    .line 1370
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$f;->c()I

    move-result v2

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->f()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/design/widget/TabLayout$e;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1371
    return-void
.end method

.method private f()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 1402
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1404
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1405
    return-object v0
.end method

.method private f(Landroid/support/design/widget/TabLayout$f;)V
    .locals 2
    .param p1    # Landroid/support/design/widget/TabLayout$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1607
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1608
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$b;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$b;->a(Landroid/support/design/widget/TabLayout$f;)V

    .line 1607
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1610
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 1538
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1539
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    .line 1540
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1541
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1542
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1550
    :cond_0
    return-void
.end method

.method private g(Landroid/support/design/widget/TabLayout$f;)V
    .locals 2
    .param p1    # Landroid/support/design/widget/TabLayout$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1613
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1614
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$b;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$b;->b(Landroid/support/design/widget/TabLayout$f;)V

    .line 1613
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1616
    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2722
    .line 2723
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 2724
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    .line 2725
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2726
    const/4 v0, 0x1

    .line 2730
    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->s:Z

    if-nez v0, :cond_1

    const/16 v0, 0x48

    :goto_2
    return v0

    .line 2723
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2730
    :cond_1
    const/16 v0, 0x30

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getTabMinWidth()I
    .locals 2

    .prologue
    .line 2734
    iget v0, p0, Landroid/support/design/widget/TabLayout;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2736
    iget v0, p0, Landroid/support/design/widget/TabLayout;->B:I

    .line 2739
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->D:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabScrollRange()I
    .locals 3

    .prologue
    .line 1293
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    .line 1294
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$e;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1293
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1647
    .line 1648
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    if-nez v0, :cond_0

    .line 1650
    iget v0, p0, Landroid/support/design/widget/TabLayout;->E:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->a:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1652
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1654
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    packed-switch v0, :pswitch_data_0

    .line 1663
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->a(Z)V

    .line 1664
    return-void

    .line 1656
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$e;->setGravity(I)V

    goto :goto_1

    .line 1659
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->setGravity(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1654
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h(Landroid/support/design/widget/TabLayout$f;)V
    .locals 2
    .param p1    # Landroid/support/design/widget/TabLayout$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1619
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1620
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$b;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$b;->c(Landroid/support/design/widget/TabLayout$f;)V

    .line 1619
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1622
    :cond_0
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1558
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v4

    .line 1559
    if-ge p1, v4, :cond_2

    move v3, v2

    .line 1560
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1561
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1562
    if-ne v3, p1, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1563
    if-ne v3, p1, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setActivated(Z)V

    .line 1560
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1562
    goto :goto_1

    :cond_1
    move v0, v2

    .line 1563
    goto :goto_2

    .line 1566
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Landroid/support/design/widget/TabLayout$f;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->b()Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    .line 702
    iput-object p0, v0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    .line 703
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(Landroid/support/design/widget/TabLayout$f;)Landroid/support/design/widget/TabLayout$h;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$h;

    .line 704
    return-object v0
.end method

.method public a(I)Landroid/support/design/widget/TabLayout$f;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 733
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    goto :goto_0
.end method

.method public a(IFZ)V
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/TabLayout;->a(IFZZ)V

    .line 548
    return-void
.end method

.method a(IFZZ)V
    .locals 3

    .prologue
    .line 555
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 556
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    if-eqz p4, :cond_2

    .line 562
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v1, p1, p2}, Landroid/support/design/widget/TabLayout$e;->a(IF)V

    .line 566
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 569
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 572
    if-eqz p3, :cond_0

    .line 573
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_0
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$f;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 584
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;Z)V

    .line 585
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$f;IZ)V
    .locals 2
    .param p1    # Landroid/support/design/widget/TabLayout$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 616
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    if-eq v0, p0, :cond_0

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;I)V

    .line 620
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->e(Landroid/support/design/widget/TabLayout$f;)V

    .line 622
    if-eqz p3, :cond_1

    .line 623
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$f;->e()V

    .line 625
    :cond_1
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$f;Z)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 605
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;IZ)V

    .line 606
    return-void
.end method

.method a(Landroid/support/v4/view/PagerAdapter;Z)V
    .locals 2
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1298
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->K:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->K:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1303
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/view/PagerAdapter;

    .line 1305
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1307
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->K:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 1308
    new-instance v0, Landroid/support/design/widget/TabLayout$d;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$d;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->K:Landroid/database/DataSetObserver;

    .line 1310
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->K:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1314
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->d()V

    .line 1315
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;Z)V
    .locals 1
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 1189
    return-void
.end method

.method a(Z)V
    .locals 3

    .prologue
    .line 1667
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1668
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1669
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1670
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1671
    if-eqz p1, :cond_0

    .line 1672
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1667
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1675
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1375
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 1376
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1380
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 1381
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 1390
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 1391
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 1385
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 1386
    return-void
.end method

.method b(I)I
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x1
    .end annotation

    .prologue
    .line 1420
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected b()Landroid/support/design/widget/TabLayout$f;
    .locals 1

    .prologue
    .line 709
    sget-object v0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    .line 710
    if-nez v0, :cond_0

    .line 711
    new-instance v0, Landroid/support/design/widget/TabLayout$f;

    invoke-direct {v0}, Landroid/support/design/widget/TabLayout$f;-><init>()V

    .line 713
    :cond_0
    return-object v0
.end method

.method public b(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 684
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 685
    return-void
.end method

.method b(Landroid/support/design/widget/TabLayout$f;Z)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1573
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/TabLayout$f;

    .line 1575
    if-ne v2, p1, :cond_1

    .line 1576
    if-eqz v2, :cond_0

    .line 1577
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->h(Landroid/support/design/widget/TabLayout$f;)V

    .line 1578
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$f;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$f;->c()I

    move-result v0

    .line 1582
    :goto_1
    if-eqz p2, :cond_3

    .line 1583
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$f;->c()I

    move-result v3

    if-ne v3, v1, :cond_6

    :cond_2
    if-eq v0, v1, :cond_6

    .line 1586
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    .line 1590
    :goto_2
    if-eq v0, v1, :cond_3

    .line 1591
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 1596
    :cond_3
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/TabLayout$f;

    .line 1597
    if-eqz v2, :cond_4

    .line 1598
    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->g(Landroid/support/design/widget/TabLayout$f;)V

    .line 1600
    :cond_4
    if-eqz p1, :cond_0

    .line 1601
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->f(Landroid/support/design/widget/TabLayout$f;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1581
    goto :goto_1

    .line 1588
    :cond_6
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    goto :goto_2
.end method

.method protected b(Landroid/support/design/widget/TabLayout$f;)Z
    .locals 1

    .prologue
    .line 718
    sget-object v0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 789
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->c(I)V

    .line 788
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    .line 794
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 795
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->h()V

    .line 796
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$f;)Z

    goto :goto_1

    .line 799
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/TabLayout$f;

    .line 800
    return-void
.end method

.method c(Landroid/support/design/widget/TabLayout$f;)V
    .locals 1

    .prologue
    .line 1569
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$f;Z)V

    .line 1570
    return-void
.end method

.method d()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1318
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->c()V

    .line 1320
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1321
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    move v0, v1

    .line 1322
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1323
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$f;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$f;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;Z)V

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1327
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    if-lez v2, :cond_1

    .line 1328
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1329
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1330
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout$f;)V

    .line 1334
    :cond_1
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 2748
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/TabLayout$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabIndicatorGravity()I
    .locals 1

    .prologue
    .line 887
    iget v0, p0, Landroid/support/design/widget/TabLayout;->q:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .prologue
    .line 2752
    iget v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1073
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1267
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1269
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 1272
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1273
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1276
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0, v2, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 1279
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1283
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1285
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->N:Z

    if-eqz v0, :cond_0

    .line 1287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1288
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout;->N:Z

    .line 1290
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 1426
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1427
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1428
    instance-of v2, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v2, :cond_0

    .line 1429
    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    invoke-static {v0, p1}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/Canvas;)V

    .line 1426
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1433
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1434
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1440
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 1441
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1454
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1455
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1458
    iget v3, p0, Landroid/support/design/widget/TabLayout;->C:I

    if-lez v3, :cond_2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->C:I

    .line 1461
    :goto_1
    iput v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    .line 1465
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1467
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1470
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1473
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 1485
    :goto_2
    if-eqz v0, :cond_1

    .line 1490
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1491
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1488
    invoke-static {p2, v0, v1}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1493
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1494
    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1497
    :cond_1
    return-void

    .line 1445
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1444
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1448
    :sswitch_1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1458
    :cond_2
    const/16 v3, 0x38

    .line 1461
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1

    .line 1477
    :pswitch_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v0, v4, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    .line 1481
    :pswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v0, v4, :cond_4

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 1441
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 1473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInlineLabel(Z)V
    .locals 3

    .prologue
    .line 930
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->s:Z

    if-eq v0, p1, :cond_2

    .line 931
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->s:Z

    .line 932
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 933
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 934
    instance-of v2, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v2, :cond_0

    .line 935
    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$h;->c()V

    .line 932
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 938
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->h()V

    .line 940
    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 951
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setInlineLabel(Z)V

    .line 952
    return-void
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->F:Landroid/support/design/widget/TabLayout$b;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->F:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$b;)V

    .line 657
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->F:Landroid/support/design/widget/TabLayout$b;

    .line 658
    if-eqz p1, :cond_1

    .line 659
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    .line 661
    :cond_1
    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 1553
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->g()V

    .line 1554
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1555
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1151
    if-eqz p1, :cond_0

    .line 1153
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1152
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    :goto_0
    return-void

    .line 1155
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1134
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1135
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    .line 1136
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1138
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$e;->a(I)V

    .line 521
    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Landroid/support/design/widget/TabLayout;->q:I

    if-eq v0, p1, :cond_0

    .line 873
    iput p1, p0, Landroid/support/design/widget/TabLayout;->q:I

    .line 874
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 876
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$e;->b(I)V

    .line 534
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    if-eq v0, p1, :cond_0

    .line 842
    iput p1, p0, Landroid/support/design/widget/TabLayout;->o:I

    .line 843
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->h()V

    .line 845
    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->g:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1044
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->g:Landroid/content/res/ColorStateList;

    .line 1045
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()V

    .line 1047
    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1056
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    .line 1057
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 1

    .prologue
    .line 906
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->t:Z

    .line 907
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 908
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    if-eq p1, v0, :cond_0

    .line 819
    iput p1, p0, Landroid/support/design/widget/TabLayout;->r:I

    .line 820
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->h()V

    .line 822
    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1087
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->h:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1088
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->h:Landroid/content/res/ColorStateList;

    .line 1089
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1090
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1091
    instance-of v2, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v2, :cond_0

    .line 1092
    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/support/design/widget/TabLayout$h;Landroid/content/Context;)V

    .line 1089
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1096
    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1108
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1109
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1015
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1016
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    .line 1017
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()V

    .line 1019
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 1257
    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 3

    .prologue
    .line 975
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->u:Z

    if-eq v0, p1, :cond_1

    .line 976
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->u:Z

    .line 977
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 978
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 979
    instance-of v2, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v2, :cond_0

    .line 980
    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/support/design/widget/TabLayout$h;Landroid/content/Context;)V

    .line 977
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 984
    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 995
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setUnboundedRipple(Z)V

    .line 996
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1168
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;Z)V

    .line 1169
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1262
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
